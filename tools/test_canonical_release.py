#!/usr/bin/env python3
"""Regression checks for release drift using copies of the real frozen release."""

import copy
import hashlib
import io
import json
import os
from pathlib import Path
import shutil
import tempfile
import unittest
import zipfile

from canonical_release import digest, release_context, verify_release


ROOT = Path(os.environ.get("CANONICAL_TEST_ROOT", Path(__file__).resolve().parents[1])).resolve()


def write_json(path, value):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(value, indent=2) + "\n")


def replace_zip_member(path, member, value):
    with zipfile.ZipFile(path) as old:
        contents = {n: old.read(n) for n in old.namelist()}
    contents[member] = value
    with zipfile.ZipFile(path, "w", compression=zipfile.ZIP_DEFLATED) as output:
        for name, data in contents.items():
            output.writestr(name, data)


def copy_parent_archives(source_root, fixture_root, canonical):
    """Copy only artifacts referenced by the complete retained parent chain."""
    source_root = Path(source_root).resolve()
    fixture_root = Path(fixture_root)
    visited = set()

    def copy_path(relative):
        source = (source_root / relative).resolve()
        if not source.is_relative_to(source_root):
            raise ValueError("Fixture archive path leaves its source repository")
        target = fixture_root / source.relative_to(source_root)
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(source, target)
        return source

    while canonical.get("parent_release"):
        parent = canonical["parent_release"]
        if parent["path"] in visited:
            raise ValueError("Fixture parent chain contains a cycle")
        visited.add(parent["path"])
        previous = json.loads(copy_path(parent["path"]).read_text())
        for key in ("archived_native_pdf", "archived_custody_zip", "archived_manuscript_release"):
            copy_path(parent[key]["path"])
        archived_release_path = Path(parent["archived_manuscript_release"]["path"])
        archived_release = json.loads((source_root / archived_release_path).read_text())
        for key in ("native_pdf", "portable_pdf", "excerpt", "current_source", "portable_source"):
            copy_path(archived_release_path.parent / archived_release[key]["path"])
        copy_path(archived_release_path.parent / archived_release["current_source"]["manifest"])
        canonical = previous
    return len(visited)


class CanonicalReleaseTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.root = Path(self.temp.name).resolve()
        self.canonical = json.loads((ROOT / "CANONICAL.json").read_text())
        for relative in self.canonical.get("release_workflow", {}).values():
            source = (ROOT / relative).resolve()
            target = (self.root / relative).resolve()
            if Path(relative).is_absolute() or not source.is_relative_to(ROOT) or not target.is_relative_to(self.root):
                raise ValueError("Fixture workflow path leaves its repository")
            target.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(source, target)
        release_path = Path(self.canonical["manuscript_release"]["path"])
        self.directory = self.root / release_path.parent
        shutil.copytree(ROOT / release_path.parent, self.directory,
                        ignore=shutil.ignore_patterns("archive", "original-source", "build*", "tmp"))
        proof = self.root / "proof"
        proof.mkdir()
        original_release = json.loads((ROOT / "proof/RELEASE.json").read_text())
        for name in list(original_release["files"]) + ["RELEASE.json", "SHA256SUMS"]:
            target = proof / name
            target.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(ROOT / "proof" / name, target)
        shutil.copytree(ROOT / "proof/current-sources", proof / "current-sources")
        previous = Path(original_release["previous_edition"]) / "NS.proof.pyz"
        (proof / previous).parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(ROOT / "proof" / previous, proof / previous)
        self.copied_parent_count = copy_parent_archives(ROOT, self.root, self.canonical)
        self.canonical["distribution"] = "DISTRIBUTION.json"
        write_json(self.root / "CANONICAL.json", self.canonical)
        self.context = release_context(self.root)
        self.source_id = self.context["source_manifest_sha256"]
        evidence_artifacts = {name: {"sha256": self.context["artifacts"][name]["sha256"],
                                     "url": "https://raw.githubusercontent.com/Jibberfish69/navier-stokes-public/" +
                                            "1" * 40 + "/" + self.context["artifacts"][name]["path"]}
                              for name in ("native_pdf", "custody_zip", "current_source")}
        self.write_citation("https://github.com/Jibberfish69/navier-stokes-public/blob/" + "1" * 40 + "/" +
                            self.context["artifacts"]["native_pdf"]["path"])
        self.evidence = {"mode": "download-verified", "source_manifest_sha256": self.source_id,
                         "artifacts": evidence_artifacts, "destination": "git",
                         "verified_at_utc": "2026-10-28T00:00:00Z"}
        self.evidence_path = self.root / "release/receipts/git.json"
        write_json(self.evidence_path, self.evidence)
        self.ledger = {"source_manifest_sha256": self.source_id,
                       "required_destinations": ["git", "figshare", "rob_reader", "rob_email"],
                       "destinations": {name: {"status": "pending"} for name in
                                        ("git", "figshare", "rob_reader", "rob_email")}}
        self.ledger["destinations"]["git"] = {
            "status": "verified-current", "source_manifest_sha256": self.source_id,
            "verified_at_utc": "2026-10-28T00:00:00Z", "artifacts": evidence_artifacts,
            "evidence": {"path": "release/receipts/git.json", "sha256": digest(self.evidence_path.read_bytes()),
                         "mode": "download-verified"}}
        self.save_ledger()

    def save_ledger(self):
        write_json(self.root / "DISTRIBUTION.json", self.ledger)

    def write_citation(self, url, doi=None):
        text = "cff-version: 1.2.0\ntitle: Release test fixture\npreferred-citation:\n  type: article\n  url: " + url + "\n"
        if doi is not None:
            text += "  doi: " + doi + "\n"
        (self.root / "CITATION.cff").write_text(text)

    def verify(self, **options):
        return verify_release(self.root, **options)

    def assert_failed_with(self, phrase, **options):
        result = self.verify(**options)
        self.assertFalse(result["ok"], result)
        self.assertTrue(any(phrase in message for message in result["errors"]), result["errors"])

    def refresh_release_descriptor(self, key):
        release_path = self.directory / "CURRENT-RELEASE.json"
        release = json.loads(release_path.read_text())
        artifact_path = self.directory / release[key]["path"]
        release[key].update(sha256=digest(artifact_path.read_bytes()), bytes=artifact_path.stat().st_size)
        write_json(release_path, release)
        self.canonical["manuscript_release"].update(sha256=digest(release_path.read_bytes()),
                                                   bytes=release_path.stat().st_size)
        write_json(self.root / "CANONICAL.json", self.canonical)

    def test_real_release_links_pass_and_pending_destinations_stay_visible(self):
        result = self.verify()
        self.assertTrue(result["ok"], result)
        self.assertEqual(len(self.context["inputs"]), result["source_count"])
        self.assertEqual(["figshare", "rob_email", "rob_reader"], result["pending_destinations"])

    def test_missing_declared_workflow_file_is_rejected(self):
        workflow = self.canonical.get("release_workflow")
        if workflow is None:
            self.canonical["release_workflow"] = {role: "tools/check.py" for role in
                                                 ("owner", "prepare", "destination_recorder", "documentation", "push_gate", "ci")}
            path = self.root / "tools/check.py"
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text("# Fixture workflow entry\n")
            workflow = self.canonical["release_workflow"]
            write_json(self.root / "CANONICAL.json", self.canonical)
        (self.root / workflow["prepare"]).unlink()
        self.assert_failed_with("Canonical workflow file is missing:")

    def test_workflow_path_cannot_leave_the_repository(self):
        workflow = self.canonical.setdefault("release_workflow", {role: "CITATION.cff" for role in
                                                    ("owner", "prepare", "destination_recorder", "documentation", "push_gate", "ci")})
        workflow["prepare"] = "../outside.py"
        write_json(self.root / "CANONICAL.json", self.canonical)
        self.assert_failed_with("Release path leaves repository")

    def test_fixture_copies_the_complete_declared_parent_archive_graph(self):
        if self.canonical.get("parent_release"):
            self.assertGreater(self.copied_parent_count, 0)
            self.assertTrue(self.verify()["ok"])
        else:
            self.add_parent_release()
            with tempfile.TemporaryDirectory() as temp:
                count = copy_parent_archives(self.root, Path(temp), self.canonical)
                self.assertEqual(1, count)
                parent = self.canonical["parent_release"]
                for key in ("archived_native_pdf", "archived_custody_zip", "archived_manuscript_release"):
                    record = parent[key]
                    self.assertEqual(record["sha256"], digest((Path(temp) / record["path"]).read_bytes()))

    def test_source_edit_fails_before_it_can_be_published_as_current(self):
        source = self.directory / "parts/forced/01-setting-mixed-jet.tex"
        source.write_bytes(source.read_bytes() + b"\nChanged construction sentence.\n")
        self.assert_failed_with("Source changed:")

    def test_stale_pdf_and_package_are_detected(self):
        native = self.directory / self.context["release"]["native_pdf"]["path"]
        native.write_bytes(native.read_bytes() + b"drift")
        self.assert_failed_with("Hash differs: native_pdf")
        native.write_bytes((ROOT / native.relative_to(self.root)).read_bytes())
        package = self.root / "proof/NS.proof-handoff.zip"
        package.write_bytes(package.read_bytes() + b"drift")
        self.assert_failed_with("Hash differs: custody")

    def test_source_zip_drift_is_rejected_even_after_its_outer_hash_is_refreshed(self):
        archive = self.directory / "current-source.zip"
        replace_zip_member(archive, "main.tex", b"An older manuscript body.\n")
        self.refresh_release_descriptor("current_source")
        self.assert_failed_with("Source ZIP copy differs: main.tex")

    def test_portable_body_drift_cannot_hide_behind_an_updated_zip_hash(self):
        archive = self.directory / "pdflatex-submission-source.zip"
        member = "parts/forced/01-setting-mixed-jet.tex"
        replace_zip_member(archive, member, b"An older force argument.\n")
        self.refresh_release_descriptor("portable_source")
        self.assert_failed_with("Portable body differs:")

    def test_reader_current_source_and_original_history_are_both_checked(self):
        reader = self.root / "proof/NS.proof.pyz"
        with zipfile.ZipFile(reader) as archive:
            sources = json.loads(archive.read("sources.json"))
        sources["contract"]["line_count"] += 1
        replace_zip_member(reader, "sources.json", json.dumps(sources).encode())
        self.assert_failed_with("Historical source removed or overwritten: contract")

    def test_direct_custody_owner_hash_cannot_change_only_in_the_public_index(self):
        path = self.root / self.canonical["current_direct_custody"]
        index = json.loads(path.read_text())
        index[next(iter(index))]["source_sha256"] = "0" * 64
        write_json(path, index)
        self.assert_failed_with("Direct custody metadata differs from its reader envelope:")

    def test_direct_custody_index_cannot_drop_one_source(self):
        path = self.root / self.canonical["current_direct_custody"]
        index = json.loads(path.read_text())
        index.pop(next(iter(index)))
        write_json(path, index)
        self.assert_failed_with("Direct custody index source set differs")

    def test_direct_custody_index_cannot_be_empty(self):
        path = self.root / self.canonical["current_direct_custody"]
        write_json(path, {})
        self.assert_failed_with("Direct custody index source set differs")

    def test_direct_custody_path_and_snapshot_metadata_are_bound(self):
        path = self.root / self.canonical["current_direct_custody"]
        index = json.loads(path.read_text())
        record = index[next(iter(index))]
        record["path"] = "problems/navier-stokes/different-source.md"
        record["snapshot_id"] = "0" * 64
        write_json(path, index)
        self.assert_failed_with("Direct custody metadata differs from its reader envelope:")

    def test_destination_cannot_claim_current_with_old_artifact_hash(self):
        entry = copy.deepcopy(self.ledger["destinations"]["git"])
        entry["artifacts"]["native_pdf"]["sha256"] = "0" * 64
        self.ledger["destinations"]["figshare"] = entry
        self.save_ledger()
        self.assert_failed_with("Destination artifact differs: figshare/native_pdf")

    def test_ledger_artifact_url_bytes_and_resolved_host_cannot_leave_the_receipt(self):
        original = copy.deepcopy(self.ledger)
        changes = {"url": "https://raw.githubusercontent.com/Jibberfish69/navier-stokes-public/" + "2" * 40 +
                          "/" + self.context["artifacts"]["native_pdf"]["path"],
                   "bytes": 1, "resolved_host": "different.example.test"}
        for field, value in changes.items():
            with self.subTest(field=field):
                self.ledger = copy.deepcopy(original)
                self.ledger["destinations"]["git"]["artifacts"]["native_pdf"][field] = value
                if field == "url":
                    self.write_citation(value)
                self.save_ledger()
                self.assert_failed_with("Destination observation differs from its receipt: git/native_pdf")

    def test_signed_or_credentialed_urls_cannot_enter_stored_evidence(self):
        original = copy.deepcopy(self.evidence)
        for url in ("https://example.test/object?signature=example", "https://person:sample@example.test/object",
                    "https://example.test/object#fragment"):
            with self.subTest(url=url):
                evidence = copy.deepcopy(original)
                evidence["observation"] = {"nested": {"url": url}}
                write_json(self.evidence_path, evidence)
                self.ledger["destinations"]["git"]["evidence"]["sha256"] = digest(self.evidence_path.read_bytes())
                self.save_ledger()
                self.assert_failed_with("Persisted evidence URL contains private or unstable components")

    def test_optional_destination_current_claim_is_checked_too(self):
        entry = copy.deepcopy(self.ledger["destinations"]["git"])
        entry["artifacts"]["native_pdf"]["sha256"] = "0" * 64
        self.ledger["destinations"]["additional_mirror"] = entry
        self.save_ledger()
        self.assert_failed_with("Destination artifact differs: additional_mirror/native_pdf")

    def test_evidence_bytes_and_source_identity_are_bound(self):
        self.evidence["source_manifest_sha256"] = "0" * 64
        write_json(self.evidence_path, self.evidence)
        self.assert_failed_with("Hash differs: destination evidence git")
        self.ledger["destinations"]["git"]["evidence"]["sha256"] = digest(self.evidence_path.read_bytes())
        self.save_ledger()
        self.assert_failed_with("Destination evidence source identity differs: git")

    def test_strict_mode_does_not_silently_complete_blocked_destinations(self):
        self.assert_failed_with("Destination is pending:", require_synchronized=True)

    def set_connector_evidence(self, name, details):
        artifact = "source_manifest" if name == "rob_reader" else "custody_zip"
        artifacts = {artifact: {"sha256": self.context["artifacts"][artifact]["sha256"]}}
        evidence = {"mode": "connector-verified", "source_manifest_sha256": self.source_id,
                    "destination": name, "verified_at_utc": "2026-10-28T00:00:00Z", "service": "test connector",
                    "observation": "read", "artifacts": artifacts, **details}
        path = self.root / f"release/receipts/{name}.json"
        write_json(path, evidence)
        self.ledger["destinations"][name] = {"status": "verified-current", "source_manifest_sha256": self.source_id,
            "verified_at_utc": evidence["verified_at_utc"], "artifacts": artifacts,
            "evidence": {"path": path.relative_to(self.root).as_posix(), "sha256": digest(path.read_bytes()),
                         "mode": "connector-verified"}}
        self.save_ledger()

    def test_reader_receipt_must_match_all_approved_master_inputs(self):
        self.set_connector_evidence("rob_reader", {"selected_library_sha256": "1" * 64, "source_inputs": {}})
        self.assert_failed_with("Rob reader source inputs differ")

    def test_draft_email_and_floating_package_url_cannot_count_as_delivery(self):
        self.set_connector_evidence("rob_email", {"delivery_status": "draft"})
        self.assert_failed_with("Rob email has not been sent")
        path = self.root / "release/receipts/rob_email.json"
        evidence = json.loads(path.read_text())
        evidence["delivery_status"] = "sent"
        evidence["artifacts"]["custody_zip"]["url"] = "https://github.com/Jibberfish69/navier-stokes-public/raw/main/proof/NS.proof-handoff.zip"
        write_json(path, evidence)
        self.ledger["destinations"]["rob_email"]["evidence"]["sha256"] = digest(path.read_bytes())
        self.save_ledger()
        self.assert_failed_with("Rob email package URL is not an immutable release link")

    def test_internal_base_check_can_prepare_receipt_repair_without_public_bypass(self):
        self.ledger["source_manifest_sha256"] = "0" * 64
        self.save_ledger()
        self.assert_failed_with("Distribution ledger source identity differs")
        self.assertTrue(self.verify(include_distribution=False)["ok"])

    def add_parent_release(self):
        parent_file = self.root / "proof/archive/test-parent/CANONICAL.json"
        parent_file.parent.mkdir(parents=True, exist_ok=True)
        parent_file.write_bytes((self.root / "CANONICAL.json").read_bytes())
        old_release = self.context["release"]
        archived_paper = self.directory / "archive/test-parent"
        paths = {"CURRENT-RELEASE.json", "CURRENT-SOURCE-SHA256.json"}
        paths.update(old_release[kind]["path"] for kind in
                     ("native_pdf", "portable_pdf", "excerpt", "current_source", "portable_source"))
        for name in paths:
            target = archived_paper / name
            target.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(self.directory / name, target)
        archived_zip = parent_file.parent / "NS.proof-handoff.zip"
        shutil.copy2(self.root / "proof/NS.proof-handoff.zip", archived_zip)

        def descriptor(path):
            return {"path": path.relative_to(self.root).as_posix(), "sha256": digest(path.read_bytes()),
                    "bytes": path.stat().st_size}

        self.canonical["parent_release"] = {
            **descriptor(parent_file), "source_manifest_sha256": self.source_id,
            "native_pdf_sha256": old_release["native_pdf"]["sha256"],
            "custody_zip_sha256": self.context["artifacts"]["custody_zip"]["sha256"],
            "archived_native_pdf": descriptor(archived_paper / old_release["native_pdf"]["path"]),
            "archived_custody_zip": descriptor(archived_zip),
            "archived_manuscript_release": descriptor(archived_paper / "CURRENT-RELEASE.json")}
        write_json(self.root / "CANONICAL.json", self.canonical)
        return archived_paper

    def test_parent_release_retains_prior_artifact_and_source_identities(self):
        self.add_parent_release()
        result = self.verify()
        self.assertTrue(result["ok"], result)

    def test_missing_archived_portable_pdf_is_rejected_after_copy(self):
        archive = self.add_parent_release()
        (archive / self.context["release"]["portable_pdf"]["path"]).unlink()
        self.assert_failed_with("pdflatex-submission.pdf")

    def test_parent_source_and_artifact_hashes_cannot_be_substituted(self):
        self.add_parent_release()
        self.canonical["parent_release"]["source_manifest_sha256"] = "0" * 64
        write_json(self.root / "CANONICAL.json", self.canonical)
        self.assert_failed_with("Parent source identity differs")

    def test_parent_git_link_cannot_float_to_a_branch(self):
        self.add_parent_release()
        parent = self.canonical["parent_release"]
        parent["git_commit"] = "1" * 40
        parent["canonical_url"] = "https://github.com/Jibberfish69/navier-stokes-public/blob/main/CANONICAL.json"
        write_json(self.root / "CANONICAL.json", self.canonical)
        self.assert_failed_with("Parent canonical URL is not pinned")

    def test_old_figshare_citation_cannot_replace_verified_git_edition(self):
        doi = "10.6084/m9.figshare.34005666.v3"
        self.write_citation("https://doi.org/" + doi, doi)
        self.assert_failed_with("Preferred citation differs from the verified Git manuscript")

    def test_citation_requires_exact_verified_commit(self):
        self.write_citation("https://github.com/Jibberfish69/navier-stokes-public/blob/" + "2" * 40 + "/" +
                            self.context["artifacts"]["native_pdf"]["path"])
        self.assert_failed_with("Preferred citation differs from the verified Git manuscript")

    def test_pending_candidate_uses_canonical_branch_path_without_doi(self):
        self.ledger["destinations"]["git"]["status"] = "pending"
        self.save_ledger()
        self.write_citation("https://github.com/Jibberfish69/navier-stokes-public/blob/main/" + self.canonical["manuscript"])
        self.assertTrue(self.verify()["ok"])

    def test_verified_figshare_citation_binds_observed_published_doi(self):
        doi = "10.6084/m9.figshare.34005666.v999"
        artifacts = {"native_pdf": copy.deepcopy(self.evidence["artifacts"]["native_pdf"])}
        evidence = {"mode": "download-verified", "destination": "figshare", "source_manifest_sha256": self.source_id,
                    "verified_at_utc": "2026-10-28T00:00:00Z", "artifacts": artifacts, "observation": {"doi": doi}}
        path = self.root / "release/receipts/figshare.json"
        write_json(path, evidence)
        self.ledger["destinations"]["figshare"] = {"status": "verified-current", "source_manifest_sha256": self.source_id,
            "verified_at_utc": evidence["verified_at_utc"], "artifacts": artifacts,
            "evidence": {"path": path.relative_to(self.root).as_posix(), "sha256": digest(path.read_bytes()),
                         "mode": "download-verified"}}
        self.save_ledger()
        self.write_citation("https://doi.org/" + doi, doi)
        self.assertTrue(self.verify()["ok"])
        self.write_citation("https://doi.org/" + doi.replace("v999", "v998"), doi.replace("v999", "v998"))
        self.assert_failed_with("Preferred citation differs from the verified Figshare edition")


if __name__ == "__main__":
    unittest.main()
