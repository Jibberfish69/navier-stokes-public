#!/usr/bin/env python3
"""Check the canonical manuscript and its distribution links without changing files."""

from __future__ import annotations

import argparse
import base64
import hashlib
import io
import json
from pathlib import Path, PurePosixPath
import re
import sys
from urllib.parse import urlparse
import zipfile


CURRENT_STATES = {"verified-current", "current", "synchronized", "published-current", "delivered-current"}
PENDING_STATES = {"pending", "blocked", "prepared", "older-edition", "not-started"}
REQUIRED_DESTINATIONS = {"git", "figshare", "rob_reader", "rob_email"}
DESTINATION_ARTIFACTS = {"git": ["native_pdf", "custody_zip", "current_source"],
                         "figshare": ["native_pdf"], "rob_reader": ["source_manifest"],
                         "rob_email": ["custody_zip"]}
OBSERVED_ARTIFACT_FIELDS = {"sha256", "bytes", "url", "resolved_host"}
WORKFLOW_ROLES = {"owner", "prepare", "destination_recorder", "documentation", "push_gate", "ci"}


def digest(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def source_digest(inputs: dict) -> str:
    return digest(json.dumps(inputs, sort_keys=True, separators=(",", ":")).encode())


def git_file_identity(url: str) -> tuple | None:
    """Normalize supported Git file links without contacting the network."""
    parsed = urlparse(url)
    if parsed.scheme != "https" or parsed.query or parsed.fragment:
        return None
    pieces = parsed.path.strip("/").split("/")
    if parsed.hostname == "raw.githubusercontent.com" and len(pieces) >= 4:
        return tuple(pieces[:3]) + ("/".join(pieces[3:]),)
    if parsed.hostname == "github.com" and len(pieces) >= 5 and pieces[2] in {"blob", "raw"}:
        return tuple(pieces[:2]) + (pieces[3], "/".join(pieces[4:]))
    return None


class ReleaseCheck:
    def __init__(self, root: Path):
        self.root = root.resolve()
        self.errors: list[str] = []
        self.pending: list[str] = []
        self.inputs: dict[str, str] = {}
        self.expected_artifacts: dict[str, str] = {}
        self.source_id = ""
        self.check_count = 0

    def require(self, condition: bool, message: str) -> None:
        self.check_count += 1
        if not condition:
            self.errors.append(message)

    def path(self, value: str, base: Path | None = None) -> Path:
        if not isinstance(value, str) or not value:
            raise ValueError("Missing release path")
        candidate = ((base or self.root) / value).resolve()
        if not candidate.is_relative_to(self.root):
            raise ValueError("Release path leaves repository")
        return candidate

    def read_json(self, path: Path) -> dict:
        value = json.loads(path.read_text())
        if not isinstance(value, dict):
            raise ValueError(f"Expected object: {path.name}")
        return value

    def descriptor(self, record: dict, base: Path, label: str, path: str | None = None) -> bytes:
        file_path = self.path(path or record["path"], base)
        data = file_path.read_bytes()
        self.require(record.get("sha256") == digest(data), f"Hash differs: {label}")
        if "bytes" in record:
            self.require(record["bytes"] == len(data), f"Byte count differs: {label}")
        return data

    def archive(self, data: bytes, label: str) -> dict[str, bytes]:
        with zipfile.ZipFile(io.BytesIO(data)) as bundle:
            names = bundle.namelist()
            self.require(len(names) == len(set(names)), f"Duplicate ZIP member: {label}")
            result = {}
            for name in names:
                parts = PurePosixPath(name)
                if parts.is_absolute() or ".." in parts.parts:
                    raise ValueError(f"Unsafe ZIP member: {label}")
                if not name.endswith("/"):
                    result[name] = bundle.read(name)
            return result

    def public_receipt_urls(self, value, label: str) -> None:
        if isinstance(value, dict):
            for key, item in value.items():
                self.public_receipt_urls(item, f"{label}/{key}")
        elif isinstance(value, list):
            for index, item in enumerate(value):
                self.public_receipt_urls(item, f"{label}/{index}")
        elif isinstance(value, str) and value.startswith(("https://", "http://")):
            parsed = urlparse(value)
            self.require(parsed.scheme == "https" and bool(parsed.hostname) and parsed.username is None and
                         parsed.password is None and not parsed.query and not parsed.fragment,
                         f"Persisted evidence URL contains private or unstable components: {label}")

    def verify_workflow(self, canonical: dict) -> None:
        workflow = canonical.get("release_workflow")
        if workflow is None:
            return
        self.require(isinstance(workflow, dict) and WORKFLOW_ROLES.issubset(workflow),
                     "Canonical workflow roles are incomplete")
        if not isinstance(workflow, dict):
            return
        for role, relative in workflow.items():
            self.require(isinstance(relative, str) and bool(relative) and not PurePosixPath(relative).is_absolute(),
                         f"Canonical workflow path must be relative: {role}")
            if isinstance(relative, str) and relative:
                self.require(self.path(relative).is_file(), f"Canonical workflow file is missing: {role}")

    def verify_sources(self, canonical: dict, release: dict, directory: Path) -> dict[str, bytes]:
        raw = self.descriptor(canonical["source_manifest"], self.root, "source map")
        self.inputs = json.loads(raw)
        self.require(bool(self.inputs), "Empty source map")
        self.source_id = source_digest(self.inputs)
        self.require(canonical["source_manifest"].get("source_manifest_sha256") == self.source_id,
                     "Canonical source identity differs")
        self.require(release.get("source_manifest_sha256") == self.source_id, "Manuscript source identity differs")
        source_bytes = {}
        for name, expected in self.inputs.items():
            data = self.path(name, directory).read_bytes()
            source_bytes[name] = data
            self.require(digest(data) == expected, f"Source changed: {name}")
        archive = self.archive(self.descriptor(release["current_source"], directory, "current source ZIP"), "current source")
        self.require(set(archive) == set(self.inputs), "Source ZIP file set differs")
        self.require(release["current_source"].get("input_count") == len(self.inputs), "Source count differs")
        for name, data in source_bytes.items():
            self.require(archive.get(name) == data, f"Source ZIP copy differs: {name}")

        portable = self.archive(self.descriptor(release["portable_source"], directory, "portable source ZIP"), "portable source")
        self.require(set(portable) == set(self.inputs), "Portable source file set differs")
        for name, data in source_bytes.items():
            if name != "main.tex":
                self.require(portable.get(name) == data, f"Portable body differs: {name}")
            else:
                marker = b"\\begin{document}"
                self.require(marker in data and marker in portable.get(name, b""), "Portable document body missing")
                self.require(data.partition(marker)[2] == portable.get(name, b"").partition(marker)[2],
                             "Portable main body differs")
        self.require(release["portable_source"].get("body_inputs_match_native") == len(self.inputs) - 1,
                     "Portable body count differs")
        guide = source_bytes["parts/unforced/00-how-proof-works.tex"]
        excerpt = release["excerpt"]
        self.require(self.path(excerpt["source"], directory).read_bytes() == guide, "Excerpt guide differs")
        if excerpt.get("source_archive"):
            excerpt_zip = self.archive(self.path(excerpt["source_archive"], directory).read_bytes(), "excerpt source")
            self.require(excerpt_zip.get("guide.tex") == guide, "Excerpt source ZIP guide differs")
        return source_bytes

    def verify_reader(self, canonical: dict, release: dict, source_bytes: dict[str, bytes]) -> None:
        proof_release_path = self.path(canonical["custody_release"]["path"])
        proof_directory = proof_release_path.parent
        proof_release = json.loads(self.descriptor(canonical["custody_release"], self.root, "custody release"))
        self.require(proof_release.get("source_manifest_sha256") == self.source_id, "Custody source identity differs")
        self.require(proof_release.get("manuscript_pdf_sha256") == self.expected_artifacts["native_pdf"],
                     "Custody manuscript PDF differs")
        files = {}
        for name, desc in proof_release["files"].items():
            files[name] = self.descriptor(desc, proof_directory, f"custody {name}", name)
        self.descriptor(proof_release["manuscript_release"], proof_directory, "custody manuscript record")
        self.require(files.get("presentations/" + Path(release["native_pdf"]["path"]).name) ==
                     self.path(release["native_pdf"]["path"], self.manuscript_directory).read_bytes(),
                     "Custody PDF copy differs")
        self.require(files.get("presentations/how-the-proof-works-ns-excerpt.pdf") ==
                     self.path(release["excerpt"]["path"], self.manuscript_directory).read_bytes(),
                     "Custody excerpt copy differs")
        self.require(files.get("sources/current-source.zip") ==
                     self.path(release["current_source"]["path"], self.manuscript_directory).read_bytes(),
                     "Custody source ZIP copy differs")

        handoff = json.loads(files["HANDOFF.json"])
        self.require(handoff.get("source_manifest_sha256") == self.source_id, "Handoff source identity differs")
        self.require(handoff.get("current_entry") == "current", "Handoff default entry is not current")
        for name, expected in handoff["members"].items():
            self.require(name in files and digest(files[name]) == expected, f"Handoff member differs: {name}")
        outer = self.archive(self.descriptor(canonical["portable_custody"], self.root, "custody ZIP"), "custody ZIP")
        self.require(set(outer) == set(handoff["members"]) | {"HANDOFF.json"}, "Custody ZIP file set differs")
        for name, data in outer.items():
            self.require(data == files.get(name), f"Custody ZIP copy differs: {name}")

        pyz = self.archive(files["NS.proof.pyz"], "proof reader")
        manifest = json.loads(pyz["manifest.json"])
        self.require(set(manifest["members"]) == set(pyz) - {"manifest.json"}, "Reader manifest file set differs")
        for name, expected in manifest["members"].items():
            self.require(digest(pyz[name]) == expected, f"Reader member differs: {name}")
        sources = json.loads(pyz["sources.json"])
        workspace = json.loads(pyz["content/workspace.json"])
        for label, metadata in (("reader", manifest), ("custody", proof_release), ("handoff", handoff)):
            self.require(metadata.get("source_count") == len(sources), f"Declared {label} source count differs")
        for label, metadata in (("reader", manifest), ("custody", proof_release)):
            self.require(metadata.get("transition_count") == len(workspace["transitions"]), f"Declared {label} transition count differs")
        self.require(workspace["transitions"][0].get("presentation_role") == "current-canonical-manuscript",
                     "Reader default route starts from historical material")
        self.require(workspace["canonical_release"].get("source_manifest_sha256") == self.source_id,
                     "Reader source identity differs")
        source_map = workspace["canonical_release"].get("manuscript_sources")
        if source_map is None:
            source_map = {k.removeprefix("canonical:manuscript:"): k for k in sources
                          if k.startswith("canonical:manuscript:")}
        self.require(isinstance(source_map, dict), "Reader manuscript map is missing")
        self.require(len(set(source_map.values())) == len(source_map), "Reader manuscript map reuses a source ID")
        canonical_sources = {name: sources.get(source_id, {}) for name, source_id in source_map.items()}
        self.require(set(canonical_sources) == set(self.inputs), "Reader current manuscript file set differs")
        for name, record in sources.items():
            data = base64.b64decode(record["content_b64"], validate=True)
            self.require(digest(data) == record["sha256"], f"Reader source envelope differs: {name}")
        for name, expected in source_bytes.items():
            record = canonical_sources.get(name, {})
            self.require(base64.b64decode(record.get("content_b64", "")) == expected,
                         f"Reader manuscript copy differs: {name}")
            self.require(record.get("source_release") == self.source_id, f"Reader manuscript linkage differs: {name}")
        for branch in ("unforced", "forced"):
            guide_name = f"parts/{branch}/00-how-proof-works.tex"
            entries = [entry for entry in workspace["transitions"] if entry.get("presentation_role") ==
                       "current-canonical-manuscript" and entry.get("branch") == branch]
            guide_text = source_bytes[guide_name].decode()
            self.require(len(entries) == 1 and guide_text in entries[0].get("body", ""),
                         f"Current {branch} reader guide differs")
            if entries:
                self.require(source_map.get(guide_name) in [item.get("id") for item in entries[0].get("sources", [])],
                             f"Current {branch} reader source reference differs")
            self.require(guide_text in files["NS.proof.md"].decode(), f"Current {branch} text reader guide differs")
        html = files["NS.proof.html"].decode()
        match = re.search(r"const\s+DATA\s*=\s*", html)
        self.require(match is not None, "HTML reader data missing")
        if match:
            html_data, _ = json.JSONDecoder().raw_decode(html[match.end():])
            self.require(html_data.get("workspace") == workspace, "HTML reader workspace differs")
            self.require(html_data.get("sources") == sources, "HTML reader source envelopes differ")

        if proof_release.get("previous_edition"):
            previous_path = self.path(proof_release["previous_edition"], proof_directory) / "NS.proof.pyz"
            previous = self.archive(previous_path.read_bytes(), "previous proof reader")
            previous_sources = json.loads(previous["sources.json"])
            for name, record in previous_sources.items():
                self.require(sources.get(name) == record, f"Historical source removed or overwritten: {name}")

        index_path = self.path(canonical["current_direct_custody"])
        index = self.read_json(index_path)
        for name, record in index.items():
            data = self.path(record["download"], index_path.parent).read_bytes()
            self.require(digest(data) == record["sha256"], f"Direct custody source differs: {name}")
            self.require(sources.get(name, {}).get("sha256") == record["sha256"], f"Direct custody reader link differs: {name}")
        sums = proof_directory / "SHA256SUMS"
        for line in sums.read_text().splitlines():
            expected, name = line.split(None, 1)
            self.require(digest(self.path(name.strip(), proof_directory).read_bytes()) == expected,
                         f"Custody checksum differs: {name.strip()}")

    def destinations(self, canonical: dict, ledger_path: Path | None, strict: bool) -> None:
        descriptor = canonical.get("distribution")
        if ledger_path is None and descriptor:
            if isinstance(descriptor, dict):
                ledger = json.loads(self.descriptor(descriptor, self.root, "distribution ledger"))
            else:
                ledger = self.read_json(self.path(descriptor))
        else:
            target = ledger_path or self.root / "DISTRIBUTION.json"
            ledger = self.read_json(target) if target.is_file() else None
        if ledger is None:
            figshare = canonical.get("figshare_sync", {})
            if figshare.get("status") in CURRENT_STATES:
                self.require(figshare.get("verified_pdf_sha256", figshare.get("latest_verified_published_pdf_sha256")) ==
                             self.expected_artifacts["native_pdf"], "Figshare claims current with a different PDF")
            elif figshare:
                self.pending.append("figshare")
            if strict:
                self.require(False, "Distribution ledger is required for full synchronization")
            return
        self.require(ledger.get("source_manifest_sha256") == self.source_id, "Distribution ledger source identity differs")
        self.public_receipt_urls(ledger, "distribution")
        required = ledger.get("required_destinations", [])
        self.require(isinstance(required, list) and REQUIRED_DESTINATIONS.issubset(set(required)),
                     "Distribution ledger must name Git, Figshare, Rob reader and Rob email")
        records = ledger.get("destinations", {})
        if not isinstance(records, dict):
            raise ValueError("Distribution records must be an object")
        for name in sorted(set(required) | set(records)):
            record = records.get(name, {})
            if not isinstance(record, dict):
                self.require(False, f"Destination record is malformed: {name}")
                continue
            self.require(record.get("status") in CURRENT_STATES | PENDING_STATES, f"Destination state is missing or unknown: {name}")
            if record.get("status") not in CURRENT_STATES:
                self.pending.append(name)
                if strict and name in required:
                    self.require(False, f"Destination is pending: {name}")
                continue
            self.require(record.get("source_manifest_sha256") == self.source_id, f"Destination source identity differs: {name}")
            artifacts = record.get("artifacts", {})
            self.require(bool(artifacts), f"Destination lacks artifact evidence: {name}")
            if name in DESTINATION_ARTIFACTS:
                self.require(set(artifacts) == set(DESTINATION_ARTIFACTS[name]),
                             f"Destination artifact set differs: {name}")
            self.require(bool(record.get("verified_at_utc")), f"Destination lacks verification date: {name}")
            evidence_record = record.get("evidence", {})
            evidence = {}
            self.require(evidence_record.get("mode") in {"download-verified", "connector-verified"},
                         f"Destination evidence mode is missing: {name}")
            if evidence_record.get("path") and evidence_record.get("sha256"):
                evidence = json.loads(self.descriptor(evidence_record, self.root, f"destination evidence {name}"))
                self.public_receipt_urls(evidence, f"evidence/{name}")
                self.require(evidence.get("source_manifest_sha256") == self.source_id,
                             f"Destination evidence source identity differs: {name}")
                self.require(evidence.get("mode") == evidence_record.get("mode"), f"Destination evidence mode differs: {name}")
                self.require(evidence.get("destination") == name, f"Destination evidence target differs: {name}")
                self.require(evidence.get("verified_at_utc") == record.get("verified_at_utc"),
                             f"Destination evidence date differs: {name}")
                if name == "rob_reader":
                    approved_inputs = {path: sha for path, sha in self.inputs.items()
                                       if path in {"main.tex", "references.tex"} or
                                       path.startswith(("parts/unforced/", "parts/forced/"))}
                    self.require(evidence.get("mode") == "connector-verified", "Rob reader needs connector evidence")
                    self.require(evidence.get("source_inputs") == approved_inputs, "Rob reader source inputs differ")
                    self.require(re.fullmatch(r"[0-9a-f]{64}", str(evidence.get("selected_library_sha256", ""))) is not None,
                                 "Rob reader selected library identity is missing")
                if name == "rob_email":
                    self.require(evidence.get("mode") == "connector-verified", "Rob email needs connector evidence")
                    self.require(evidence.get("delivery_status") == "sent", "Rob email has not been sent")
                    url = evidence.get("artifacts", {}).get("custody_zip", {}).get("url", "")
                    parsed = urlparse(url)
                    pattern = (r"/Jibberfish69/navier-stokes-public/[0-9a-f]{40}/proof/NS\.proof-handoff\.zip"
                               if parsed.hostname == "raw.githubusercontent.com" else
                               r"/Jibberfish69/navier-stokes-public/(?:raw|blob)/[0-9a-f]{40}/proof/NS\.proof-handoff\.zip")
                    self.require(parsed.scheme == "https" and parsed.hostname in {"github.com", "raw.githubusercontent.com"}
                                 and re.fullmatch(pattern, parsed.path) is not None and not parsed.query and not parsed.fragment,
                                 "Rob email package URL is not an immutable release link")
                if name in {"rob_reader", "rob_email"}:
                    self.require(evidence.get("observation") == "read" and bool(evidence.get("service")),
                                 f"Destination connector read evidence is missing: {name}")
            else:
                self.require(False, f"Destination evidence receipt is missing: {name}")
            for kind, data in artifacts.items():
                self.require(kind in self.expected_artifacts, f"Unknown destination artifact: {name}/{kind}")
                self.require(set(data).issubset(OBSERVED_ARTIFACT_FIELDS), f"Destination artifact fields differ: {name}/{kind}")
                self.require(data.get("sha256") == self.expected_artifacts.get(kind), f"Destination artifact differs: {name}/{kind}")
                observed = evidence.get("artifacts", {}).get(kind, {})
                self.require(data == observed, f"Destination observation differs from its receipt: {name}/{kind}")
                self.require(observed.get("sha256") == self.expected_artifacts.get(kind),
                             f"Destination evidence artifact differs: {name}/{kind}")
                if "bytes" in data:
                    self.require(type(data["bytes"]) is int and data["bytes"] >= 0,
                                 f"Destination byte count is malformed: {name}/{kind}")
                if "resolved_host" in data:
                    self.require(re.fullmatch(r"[A-Za-z0-9.-]+", str(data["resolved_host"])) is not None,
                                 f"Destination resolved host is malformed: {name}/{kind}")
                url = data.get("url", "")
                receipt = data.get("receipt")
                self.require(isinstance(url, str) and url.startswith("https://") or bool(receipt) or bool(evidence),
                             f"Destination lacks location or receipt: {name}/{kind}")
                if receipt:
                    evidence = self.read_json(self.path(receipt))
                    self.require(evidence.get("source_manifest_sha256") == self.source_id,
                                 f"Destination receipt source identity differs: {name}/{kind}")
                    self.require(evidence.get("artifacts", {}).get(kind, {}).get("sha256") == self.expected_artifacts.get(kind),
                                 f"Destination receipt artifact differs: {name}/{kind}")
        self.verify_citation(canonical, records)

    def verify_citation(self, canonical: dict, records: dict) -> None:
        text = (self.root / "CITATION.cff").read_text()
        match = re.search(r"^preferred-citation:\s*\n((?:[ \t].*(?:\n|$))*)", text, re.M)
        self.require(match is not None, "Preferred citation is missing")
        if match is None:
            return
        values = {}
        for line in match.group(1).splitlines():
            field = re.match(r"^  (url|doi):\s*(.*?)\s*$", line)
            if field:
                values[field[1]] = field[2].strip("\"'")
        self.require(bool(values.get("url")), "Preferred citation URL is missing")
        figshare = records.get("figshare", {})
        git = records.get("git", {})
        if figshare.get("status") in CURRENT_STATES:
            evidence = self.read_json(self.path(figshare["evidence"]["path"]))
            doi = evidence.get("observation", {}).get("doi")
            self.require(bool(doi), "Figshare receipt lacks its observed DOI")
            self.require(values.get("doi") == doi and values.get("url") == "https://doi.org/" + str(doi),
                         "Preferred citation differs from the verified Figshare edition")
        elif git.get("status") in CURRENT_STATES:
            evidence = self.read_json(self.path(git["evidence"]["path"]))
            expected = evidence.get("artifacts", {}).get("native_pdf", {}).get("url", "")
            self.require(git_file_identity(expected) is not None and git_file_identity(values.get("url", "")) ==
                         git_file_identity(expected), "Preferred citation differs from the verified Git manuscript")
            self.require("doi" not in values, "Preferred citation DOI points to an unverified Figshare edition")
        else:
            identity = git_file_identity(values.get("url", ""))
            self.require(identity is not None and identity[2] == "main" and identity[3] == canonical["manuscript"],
                         "Prepared citation does not identify the canonical manuscript path")
            self.require("doi" not in values, "Prepared citation includes an unverified DOI")

    def verify_parent(self, canonical: dict) -> None:
        """Follow retained release links and check actual archived artifact bytes."""
        visited = set()
        while canonical.get("parent_release"):
            parent = canonical["parent_release"]
            parent_path = self.path(parent["path"])
            self.require("archive" in parent_path.relative_to(self.root).parts, "Parent record is outside the edition archive")
            if parent_path in visited:
                self.require(False, "Parent release chain contains a cycle")
                break
            visited.add(parent_path)
            previous = json.loads(self.descriptor(parent, self.root, "parent canonical record"))
            self.require(parent.get("source_manifest_sha256") == previous["source_manifest"]["source_manifest_sha256"],
                         "Parent source identity differs")
            manuscript_record = parent["archived_manuscript_release"]
            manuscript_path = self.path(manuscript_record["path"])
            self.require("archive" in manuscript_path.relative_to(self.root).parts, "Parent manuscript record is outside the edition archive")
            previous_release = json.loads(self.descriptor(manuscript_record, self.root, "parent manuscript release"))
            self.require(manuscript_record.get("sha256") == previous["manuscript_release"]["sha256"],
                         "Parent manuscript record link differs")
            self.require(previous_release.get("source_manifest_sha256") == parent.get("source_manifest_sha256"),
                         "Parent manuscript source identity differs")
            archive_directory = manuscript_path.parent
            for kind in ("native_pdf", "portable_pdf", "excerpt", "current_source", "portable_source"):
                self.descriptor(previous_release[kind], archive_directory, f"archived parent {kind}")
            source_map_path = self.path(previous_release["current_source"]["manifest"], archive_directory)
            source_map = self.read_json(source_map_path)
            self.require(digest(source_map_path.read_bytes()) == previous["source_manifest"]["sha256"],
                         "Archived parent source map differs")
            self.require(source_digest(source_map) == parent["source_manifest_sha256"], "Archived parent source identity differs")
            native = parent["archived_native_pdf"]
            self.descriptor(native, self.root, "archived parent native PDF link")
            self.require(self.path(native["path"]) == self.path(previous_release["native_pdf"]["path"], archive_directory),
                         "Archived parent native PDF location differs")
            self.require(native.get("sha256") == parent.get("native_pdf_sha256") == previous_release["native_pdf"]["sha256"],
                         "Parent native PDF identity differs")
            custody = parent["archived_custody_zip"]
            custody_path = self.path(custody["path"])
            self.descriptor(custody, self.root, "archived parent custody ZIP")
            self.require(custody_path.parent == parent_path.parent, "Archived parent custody ZIP location differs")
            self.require(custody.get("sha256") == parent.get("custody_zip_sha256") == previous["portable_custody"]["sha256"],
                         "Parent custody ZIP identity differs")
            commit = parent.get("git_commit")
            if commit is not None:
                self.require(re.fullmatch(r"[0-9a-f]{40}", str(commit)) is not None, "Parent Git commit is malformed")
            url = parent.get("canonical_url")
            if url:
                parsed = urlparse(url)
                pattern = (rf"/[^/]+/[^/]+/{re.escape(str(commit))}/CANONICAL\.json"
                           if parsed.hostname == "raw.githubusercontent.com" else
                           rf"/[^/]+/[^/]+/(?:blob|raw)/{re.escape(str(commit))}/CANONICAL\.json")
                self.require(commit is not None and parsed.scheme == "https" and parsed.hostname in
                             {"github.com", "raw.githubusercontent.com"} and re.fullmatch(pattern, parsed.path) is not None
                             and not parsed.query and not parsed.fragment, "Parent canonical URL is not pinned to its Git commit")
            canonical = previous

    def run(self, destinations_path: Path | None = None, strict: bool = False, include_distribution: bool = True) -> dict:
        try:
            canonical = self.read_json(self.root / "CANONICAL.json")
            self.verify_workflow(canonical)
            release_raw = self.descriptor(canonical["manuscript_release"], self.root, "manuscript release")
            release = json.loads(release_raw)
            self.manuscript_directory = self.path(canonical["manuscript_release"]["path"]).parent
            self.require(self.path(canonical["manuscript"]) == self.path(release["native_pdf"]["path"], self.manuscript_directory),
                         "Canonical manuscript path differs")
            source_bytes = self.verify_sources(canonical, release, self.manuscript_directory)
            for kind in ("native_pdf", "portable_pdf", "current_source", "portable_source", "excerpt"):
                data = self.descriptor(release[kind], self.manuscript_directory, kind)
                self.expected_artifacts[kind] = digest(data)
            self.expected_artifacts["custody_zip"] = canonical["portable_custody"]["sha256"]
            self.expected_artifacts["source_manifest"] = canonical["source_manifest"]["sha256"]
            verification = release.get("verification", {})
            if verification.get("receipt"):
                verified = json.loads(self.descriptor({"path": verification["receipt"], "sha256": verification["receipt_sha256"]},
                                                     self.manuscript_directory, "artifact verification"))
                self.require(verified.get("source_manifest_sha256") == self.source_id, "Verification source identity differs")
                for kind, key in (("native_pdf", "native"), ("portable_pdf", "portable"), ("excerpt", "excerpt")):
                    self.require(verified["pdfs"][key]["sha256"] == self.expected_artifacts[kind], f"Verification PDF differs: {kind}")
            self.verify_reader(canonical, release, source_bytes)
            self.verify_parent(canonical)
            if include_distribution:
                self.destinations(canonical, destinations_path, strict)
        except (OSError, ValueError, KeyError, TypeError, zipfile.BadZipFile) as error:
            self.errors.append(f"Release cannot be verified: {error}")
        return {"ok": not self.errors, "source_manifest_sha256": self.source_id, "source_count": len(self.inputs),
                "checks": self.check_count, "pending_destinations": sorted(set(self.pending)), "errors": self.errors,
                "scope": "Artifact identity and source linkage only; no theorem certification."}


def verify_release(root: Path | str, destinations_path: Path | str | None = None,
                   require_synchronized: bool = False, include_distribution: bool = True) -> dict:
    return ReleaseCheck(Path(root)).run(Path(destinations_path) if destinations_path else None,
                                        require_synchronized, include_distribution)


def release_context(root: Path | str) -> dict:
    """Read expected artifact identities from the canonical graph; perform no write."""
    check = ReleaseCheck(Path(root))
    canonical = check.read_json(check.root / "CANONICAL.json")
    release_path = check.path(canonical["manuscript_release"]["path"])
    release = check.read_json(release_path)
    artifacts = {}
    for kind in ("native_pdf", "portable_pdf", "current_source", "portable_source", "excerpt"):
        record = release[kind]
        path = check.path(record["path"], release_path.parent)
        artifacts[kind] = {"path": path.relative_to(check.root).as_posix(), "sha256": record["sha256"],
                           "bytes": record.get("bytes")}
    artifacts["custody_zip"] = dict(canonical["portable_custody"])
    artifacts["source_manifest"] = {key: value for key, value in canonical["source_manifest"].items()
                                    if key in {"path", "sha256", "bytes"}}
    inputs = check.read_json(check.path(canonical["source_manifest"]["path"]))
    return {"source_manifest_sha256": canonical["source_manifest"]["source_manifest_sha256"],
            "artifacts": artifacts, "canonical": canonical, "release": release, "inputs": inputs,
            "manuscript_directory": release_path.parent.relative_to(check.root).as_posix()}


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    commands = parser.add_subparsers(dest="command", required=True)
    verify = commands.add_parser("verify", help="Check source, compiled copies, reader and destination receipts")
    verify.add_argument("--root", type=Path, default=Path(__file__).resolve().parents[1])
    verify.add_argument("--destinations", type=Path)
    verify.add_argument("--require-synchronized", action="store_true")
    verify.add_argument("--json", action="store_true")
    args = parser.parse_args(argv)
    report = verify_release(args.root, args.destinations, args.require_synchronized)
    if args.json:
        print(json.dumps(report, indent=2))
    elif report["ok"]:
        print(f"Canonical release verified: {report['source_count']} source inputs, {report['checks']} checks.")
        if report["pending_destinations"]:
            print("Pending destinations: " + ", ".join(report["pending_destinations"]))
    else:
        for message in report["errors"]:
            print(message, file=sys.stderr)
    return 0 if report["ok"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
