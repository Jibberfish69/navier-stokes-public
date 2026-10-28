#!/usr/bin/env python3
"""Stage a source-bound release in a new directory; perform no publication."""
from __future__ import annotations

import argparse
import base64
import copy
from datetime import date
import importlib.util
import json
from pathlib import Path
import re
import shutil
import subprocess
import sys
import tempfile
import zipfile

from canonical_release import digest, source_digest, verify_release


class PrepareError(ValueError):
    pass


PREPARED_FILES = "PREPARED-FILES.json"
PRIVATE_COMPONENTS = {".git", ".canonical-evidence", "__pycache__", ".pytest_cache"}


def public_relative_path(value: str) -> Path:
    path = Path(value)
    if path.is_absolute() or ".." in path.parts or not path.parts:
        raise PrepareError("Prepared-file path leaves the public candidate")
    if any(part in PRIVATE_COMPONENTS or part == ".env" or part.startswith(".env.") for part in path.parts):
        raise PrepareError("Prepared-file manifest contains a private path")
    return path


def write_json(path: Path, value: dict) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(value, ensure_ascii=False, indent=2) + "\n")


def identity(path: Path) -> dict:
    data = path.read_bytes()
    return {"bytes": len(data), "sha256": digest(data)}


def uncomment(text: str) -> str:
    return re.sub(r"(?<!\\)%[^\n]*", "", text)


def source_closure(master: Path) -> dict[str, bytes]:
    """Resolve literal project inputs using the master directory as TeX's cwd.

    Dynamic filenames and unresolved project inputs fail instead of creating a
    partial snapshot. Installed classes and packages belong to the TeX runtime.
    """
    master = master.resolve()
    root = master.parent
    found: dict[str, bytes] = {}
    queue = [master]
    commands = re.compile(r"\\(input|include|subfile|bibliography|addbibresource|includegraphics)\s*(?:\[[^\]]*\]\s*)?\{([^{}]*)\}")
    while queue:
        current = queue.pop()
        if not current.is_relative_to(root) or current.is_symlink():
            raise PrepareError("A source input leaves the master directory or uses a symlink")
        name = current.relative_to(root).as_posix()
        if name in found:
            continue
        try:
            raw = current.read_bytes()
            text = uncomment(raw.decode("utf-8"))
        except (OSError, UnicodeDecodeError) as exc:
            raise PrepareError(f"Source must be a readable UTF-8 project input: {name}") from exc
        found[name] = raw
        for command, value in commands.findall(text):
            if "\\" in value or "#" in value:
                raise PrepareError(f"Dynamic source filename requires an explicit supported resolver: {name}")
            for value in value.split(",") if command == "bibliography" else [value]:
                path = root / value.strip()
                if not path.suffix:
                    path = path.with_suffix(".bib" if command in {"bibliography", "addbibresource"} else ".tex")
                if any(part.is_symlink() for part in [path, *path.parents] if part.is_relative_to(root)):
                    raise PrepareError(f"Project input uses a symlink: {name}")
                path = path.resolve()
                if not path.is_file():
                    raise PrepareError(f"Unresolved project input in {name}: {value}")
                queue.append(path)
        # Local styles and classes are part of the snapshot; installed ones are not.
        for command, value in re.findall(r"\\(usepackage|RequirePackage|documentclass|LoadClass)\s*(?:\[[^\]]*\]\s*)?\{([^{}]+)\}", text):
            if "\\" in value or "#" in value:
                raise PrepareError(f"Dynamic local package filenames require an explicit resolver: {name}")
            for item in value.split(","):
                local = root / (item.strip() + (".cls" if command in {"documentclass", "LoadClass"} else ".sty"))
                if local.is_file():
                    queue.append(local.resolve())
        # TeX's unbraced input form must not disappear from the closure.
        if re.search(r"\\(?:input|include)\s+(?!\s|\{)[^\s%]+", text):
            raise PrepareError(f"Use literal braced project input filenames: {name}")
    return dict(sorted(found.items()))


def version_sources(previous: dict, inputs: dict[str, bytes], source_id: str,
                    manuscript_path: str) -> tuple[dict, dict]:
    """Add immutable snapshot IDs; preserve every existing envelope verbatim."""
    result = copy.deepcopy(previous)
    aliases = {}
    for name, raw in inputs.items():
        sid = "manuscript:" + source_id + ":" + name
        aliases[name] = sid
        if sid in result:
            old = result[sid]
            if base64.b64decode(old["content_b64"]) != raw or old["sha256"] != digest(raw):
                raise PrepareError("An immutable source ID already contains different bytes")
            continue
        result[sid] = {"id": sid, "path": manuscript_path + "/" + name,
            "origin": "canonical-manuscript-snapshot", "source_release": source_id,
            "sha256": digest(raw), "line_count": len(raw.decode().splitlines()),
            "content_b64": base64.b64encode(raw).decode()}
    if any(result[key] != value for key, value in previous.items()):
        raise PrepareError("A previous source envelope was modified")
    return result, aliases


def freeze_sources(args) -> dict:
    """Write one exact source snapshot before any build or artifact audit."""
    output = args.output.resolve()
    if output.exists() or output.is_relative_to(args.root.resolve()):
        raise PrepareError("Output must be a new directory outside the current repository")
    release_date = date.fromisoformat(args.release_date)
    inputs = source_closure(args.master.resolve())
    hashes = {name: digest(raw) for name, raw in inputs.items()}
    record = {"format": "navier-stokes-source-freeze/1", "release_date": release_date.isoformat(),
              "source_root": "source", "master": args.master.name,
              "inputs": hashes, "input_count": len(inputs),
              "source_manifest_sha256": source_digest(hashes)}
    output.parent.mkdir(parents=True, exist_ok=True)
    with tempfile.TemporaryDirectory(prefix="canonical-freeze-", dir=output.parent) as temp:
        snapshot = Path(temp) / "snapshot"
        for name, raw in inputs.items():
            target = snapshot / "source" / name
            target.parent.mkdir(parents=True, exist_ok=True)
            target.write_bytes(raw)
        write_json(snapshot / "source-freeze.json", record)
        shutil.move(str(snapshot), output)
    return {"frozen": True, "source_manifest_sha256": record["source_manifest_sha256"],
            "input_count": len(inputs), "snapshot": str(output), "publication_performed": False}


def audit_receipt(path: Path, source_id: str, pdfs: dict[str, Path], inputs: dict | None = None) -> dict:
    receipt = json.loads(path.read_text())
    if receipt.get("source_manifest_sha256") != source_id:
        raise PrepareError("Audit receipt is for a different source snapshot")
    final = receipt.get("final_review", {})
    if final.get("source_manifest_sha256") != source_id:
        raise PrepareError("Final source review is missing or stale")
    if not final.get("source_fidelity", {}).get("result", "").startswith("pass"):
        raise PrepareError("Source fidelity review has not passed")
    for kind, file in pdfs.items():
        item = receipt.get("pdfs", {}).get(kind, {})
        visual = final.get("visual_review", {}).get(kind, {})
        expected = digest(file.read_bytes())
        if item.get("sha256") != expected or visual.get("pdf_sha256") != expected:
            raise PrepareError(f"PDF audit or visual review is stale: {kind}")
        if item.get("errors") != 0 or item.get("undefined") != 0:
            raise PrepareError(f"PDF build diagnostics are not clear: {kind}")
        if visual.get("concrete_layout_defects_detected") != 0:
            raise PrepareError(f"PDF layout review has unresolved findings: {kind}")
        if not isinstance(item.get("pages"), int) or item["pages"] < 1:
            raise PrepareError(f"Audited page count missing: {kind}")
        info = subprocess.run(["pdfinfo", str(file)], capture_output=True, text=True, check=True).stdout
        measured = re.search(r"^Pages:\s+(\d+)", info, re.M)
        if not measured or int(measured[1]) != item["pages"]:
            raise PrepareError(f"Audited page count differs from the PDF: {kind}")
        if kind in {"native", "portable"} and inputs is not None:
            expected_tex = {name for name in inputs if name.endswith(".tex")}
            if set(item.get("local_tex_inputs", [])) != expected_tex:
                raise PrepareError(f"Audited TeX build closure differs: {kind}")
        if kind in {"native", "excerpt"} and visual.get("pages_reviewed") != item["pages"]:
            raise PrepareError(f"Complete visual review is missing: {kind}")
    def public(value):
        if isinstance(value, dict):
            return {key: public(item) for key, item in value.items()}
        if isinstance(value, list):
            return [public(item) for item in value]
        if isinstance(value, str) and value.startswith("/Users/"):
            return Path(value).name
        return value
    receipt = public(receipt)
    if "/Users/" in json.dumps(receipt):
        raise PrepareError("Audit receipt contains a local host path inside text")
    return receipt


def zip_sources(path: Path, inputs: dict[str, bytes], release_date: date) -> None:
    with zipfile.ZipFile(path, "w", compression=zipfile.ZIP_DEFLATED) as archive:
        for name, raw in sorted(inputs.items()):
            entry = zipfile.ZipInfo(name, (max(1980, release_date.year), release_date.month, release_date.day, 0, 0, 0))
            entry.compress_type = zipfile.ZIP_DEFLATED
            archive.writestr(entry, raw)


def copy_archive(source: Path, target: Path, skip: set[str]) -> None:
    for file in source.rglob("*"):
        relative = file.relative_to(source)
        if any(part in skip for part in relative.parts) or not file.is_file():
            continue
        destination = target / relative
        if destination.exists() and destination.read_bytes() != file.read_bytes():
            raise PrepareError("An existing historical archive would be overwritten")
        destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(file, destination)


def copy_baseline(source: Path, target: Path) -> None:
    """Copy the public tree, excluding unrelated untracked checkout files."""
    if not (source / ".git").exists():
        manifest_path = source / PREPARED_FILES
        if not manifest_path.is_file():
            raise PrepareError("A non-Git baseline requires its generated prepared-files manifest")
        manifest = json.loads(manifest_path.read_text())
        if manifest.get("format") != "navier-stokes-prepared-files/1" or not manifest.get("files"):
            raise PrepareError("Prepared-files manifest is missing or unsupported")
        selected = []
        for name, expected in manifest["files"].items():
            relative = public_relative_path(name)
            file = source / relative
            if not file.resolve().is_relative_to(source.resolve()) or any(part.is_symlink() for part in [file, *file.parents] if part.is_relative_to(source)):
                raise PrepareError("Prepared-file manifest refers to a symlink or external path")
            if not file.is_file() or digest(file.read_bytes()) != expected:
                raise PrepareError("Prepared public file changed or is missing: " + name)
            selected.append(relative)
        # Unknown files are deliberately ignored, even when they sit beside the
        # prepared candidate. Validate the entire allowlist before copying.
        target.mkdir()
        for relative in selected:
            destination = target / relative
            destination.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(source / relative, destination)
        shutil.copy2(manifest_path, target / PREPARED_FILES)
        return
    tracked = subprocess.run(["git", "ls-files", "-z"], cwd=source, capture_output=True, check=True).stdout
    paths = {Path(name.decode()) for name in tracked.split(b"\0") if name}
    paths.update(Path(name) for name in ("CANONICAL.json", "DISTRIBUTION.json", "AGENTS.md"))
    canonical_path = source / "CANONICAL.json"
    if canonical_path.is_file():
        declared = json.loads(canonical_path.read_text()).get("release_workflow", {})
        for relative in declared.values():
            paths.add(public_relative_path(relative))
    ledger = source / "DISTRIBUTION.json"
    if ledger.is_file():
        def references(value):
            if isinstance(value, dict):
                for key, item in value.items():
                    if key in {"path", "receipt"} and isinstance(item, str) and not item.startswith("https://"):
                        resolved = (source / item).resolve()
                        if not resolved.is_relative_to(source):
                            raise PrepareError("A distribution receipt leaves the public tree")
                        paths.add(resolved.relative_to(source))
                    references(item)
            elif isinstance(value, list):
                for item in value:
                    references(item)
        references(json.loads(ledger.read_text()))
    target.mkdir()
    for relative in sorted(paths):
        try:
            public_relative_path(relative.as_posix())
        except PrepareError:
            continue
        file = source / relative
        if not file.is_file():  # A sparse checkout can omit unrelated historical files.
            continue
        if not file.resolve().is_relative_to(source.resolve()) or any(part.is_symlink() for part in [file, *file.parents] if part.is_relative_to(source)):
            raise PrepareError("A public tree copy contains a symlink")
        destination = target / relative
        destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(file, destination)


def write_prepared_files(root: Path, source_id: str) -> None:
    """Allow only the public files produced by this controlled preparation."""
    files = {}
    for file in root.rglob("*"):
        if not file.is_file() or file == root / PREPARED_FILES:
            continue
        relative = file.relative_to(root)
        public_relative_path(relative.as_posix())
        if file.is_symlink():
            raise PrepareError("Prepared candidate contains a symlink")
        files[relative.as_posix()] = digest(file.read_bytes())
    write_json(root / PREPARED_FILES, {"format": "navier-stokes-prepared-files/1",
        "source_manifest_sha256": source_id, "files": dict(sorted(files.items()))})


def rebuild_reader(root: Path, proof: Path, inputs: dict[str, bytes], source_id: str,
                   manuscript_path: str, release_date: str, archive_name: str,
                   custody_library: Path | None = None) -> dict:
    with zipfile.ZipFile(proof / "NS.proof.pyz") as archive:
        original = {name: archive.read(name) for name in archive.namelist()}
    workspace = json.loads(original["content/workspace.json"])
    prior = json.loads(original["sources.json"])
    sources, aliases = version_sources(prior, inputs, source_id, manuscript_path)
    old_date = workspace.get("canonical_release", {}).get("date", "previous release")
    reused_ids = {"current-" + source_id[:16] + "-" + branch for branch in ("unforced", "forced")}
    # An unchanged source snapshot reuses its entry IDs; the full previous reader
    # is already retained in the archive, and every source envelope stays exact.
    workspace["transitions"] = [item for item in workspace["transitions"] if item["id"] not in reused_ids]
    workspace["workflows"] = [item for item in workspace.get("workflows", []) if item["id"] not in {key + "-entry" for key in reused_ids}]
    for item in workspace["transitions"]:
        if item.get("presentation_role") == "current-canonical-manuscript":
            item["presentation_role"] = "historical-source-context"
            item["title"] = "Retained " + old_date + ": " + item["title"]
    for workflow in workspace.get("workflows", []):
        if workflow.get("entry") == "current":
            workflow["entry"] = "retained-" + digest(workflow["id"].encode())[:16]
            workflow["title"] = "Retained " + old_date + ": " + workflow["title"]
    custody_aliases = workspace.get("canonical_release", {}).get("custody_sources", {})
    custody_snapshot = workspace.get("canonical_release", {}).get("custody_snapshot_id")
    if not custody_aliases:
        custody_aliases = {sid.split(":")[-1]: sid for sid in sources if sid.startswith("canonical:custody:")}
    if custody_library is not None:
        library = json.loads(custody_library.read_text())
        if library.get("access") != "read-only-sanitized-snapshot":
            raise PrepareError("Custody input must be an approved sanitized snapshot")
        selected = {item["id"]: item for item in library["documents"] if item["id"] in custody_aliases}
        if set(selected) != set(custody_aliases):
            raise PrepareError("The approved custody snapshot omits a governing source role")
        custody_snapshot = library["snapshot_id"]
        for role, item in selected.items():
            raw = item["text"].encode()
            source_path = Path(item["path"])
            if source_path.is_absolute() or ".." in source_path.parts or not item["path"].startswith(("papers/navier-stokes/", "problems/navier-stokes/")):
                raise PrepareError("Approved custody source path is outside the public proof namespace")
            if not re.fullmatch(r"[0-9a-f]{64}", item.get("source_sha256", "")):
                raise PrepareError("Approved custody owner-source hash is missing or invalid")
            if digest(raw) != item["sanitized_sha256"] or re.search(r"/Users/|\.codex/sessions/|rollout-\d", item["text"]):
                raise PrepareError("Approved custody source digest or privacy check failed")
            sid = "custody:" + item["sanitized_sha256"] + ":" + role
            custody_aliases[role] = sid
            if sid in sources:
                if base64.b64decode(sources[sid]["content_b64"]) != raw:
                    raise PrepareError("Immutable custody source ID collision")
            else:
                sources[sid] = {"id": sid, "path": item["path"],
                    "origin": "approved-sanitized-proof-source", "sha256": digest(raw),
                    "source_sha256": item["source_sha256"], "sanitized_sha256": item["sanitized_sha256"],
                    "snapshot_id": custody_snapshot, "line_count": len(raw.decode().splitlines()),
                    "content_b64": base64.b64encode(raw).decode()}
    workspace["canonical_release"] = {"date": release_date,
        "source_manifest_sha256": source_id, "manuscript_path": manuscript_path,
        "manuscript_sources": aliases, "custody_sources": custody_aliases,
        "custody_snapshot_id": custody_snapshot,
        "source_scope": "Current manuscript snapshot; previous source envelopes retain their original bytes and scope."}
    workspace["overview"] = "Begin with the current manuscript entry. Its source snapshot is " + source_id + ". Retained entries identify earlier presentations."
    workspace["frame"] = "Current manuscript source snapshot: " + source_id + ". Publication destinations are pending until their matching receipts are recorded."
    workspace["author_sources"] = []
    workspace["critical_sources"] = []
    new_entries, new_workflows = [], []
    for branch in ("unforced", "forced"):
        guide = f"parts/{branch}/00-how-proof-works.tex"
        if guide not in aliases:
            raise PrepareError("Both manuscript branch openings are required")
        ref = {"id": aliases[guide], "start": 1, "end": sources[aliases[guide]]["line_count"]}
        workspace["author_sources"].append(ref)
        tid = "current-" + source_id[:16] + "-" + branch
        # Only exact frozen source is used for the proof exposition.
        new_entries.append({"id": tid, "title": "Current manuscript: " + branch,
            "branch": branch, "aliases": ["current", "canonical manuscript"],
            "inputs": [{"statement": "The current frozen manuscript source."}],
            "body": "Source: `" + ref["id"] + "`.\n\n```latex\n" + inputs[guide].decode() + "\n```",
            "outputs": ["The exact current manuscript opening and its source locator."],
            "uses": [], "independent": [], "sources": [ref], "stage_ids": [],
            "presentation_role": "current-canonical-manuscript"})
        new_workflows.append({"id": tid + "-entry", "title": "Current manuscript — " + branch,
            "branch": branch, "entry": "current", "entry_context": "Read the frozen manuscript source verbatim.",
            "available_at_entry": ["The current source snapshot and its cited proof sources."],
            "steps": [{"transition": tid, "role": "Read the current manuscript opening.", "available_after": ["The current source text and locator."]}],
            "continuation_context": "Continue through the complete current manuscript and its source references."})
    workspace["transitions"] = new_entries + workspace["transitions"]
    workspace["workflows"] = new_workflows + workspace.get("workflows", [])
    with tempfile.TemporaryDirectory(prefix="canonical-reader-") as temp:
        reader = Path(temp)
        for name, raw in original.items():
            destination = reader / name
            destination.parent.mkdir(parents=True, exist_ok=True)
            destination.write_bytes(raw)
        write_json(reader / "sources.json", sources)
        write_json(reader / "content/workspace.json", workspace)
        html = (proof / "NS.proof.html").read_text()
        marker = re.search(r"const DATA = (.*);\nconst W=DATA.workspace", html)
        if not marker:
            raise PrepareError("Reader HTML template cannot be recovered")
        html = html[:marker.start(1)] + "/*__WORKSPACE_DATA__*/" + html[marker.end(1):]
        helper = "function isCurrentSource(id){return Object.values(W.canonical_release?.manuscript_sources||{}).concat(Object.values(W.canonical_release?.custody_sources||{})).includes(id)}\n"
        if "function isCurrentSource" not in html:
            html = html.replace("const FORBIDDEN=", helper + "const FORBIDDEN=", 1)
        for name in ("a", "b", "id"):
            html = html.replace(name + ".startsWith('canonical:')", "isCurrentSource(" + name + ")")
        (reader / "view.html").write_text(html)
        spec = importlib.util.spec_from_file_location("canonical_snapshot_pack", reader / "pack.py")
        packer = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(packer)
        packer.pack(reader, proof / "NS.proof.pyz", html_output=proof / "NS.proof.html", markdown_output=proof / "NS.proof.md")
    index_path = proof / "current-sources/SOURCE-INDEX.json"
    old_index = json.loads(index_path.read_text())
    by_role = {key.split(":")[-1]: value for key, value in old_index.items()}
    index = {}
    for role, sid in custody_aliases.items():
        record = {key: value for key, value in sources[sid].items() if key != "content_b64"}
        record["download"] = by_role[role]["download"]
        index[sid] = record
        (index_path.parent / record["download"]).write_bytes(base64.b64decode(sources[sid]["content_b64"]))
    write_json(index_path, index)
    if any(sources[key] != value for key, value in prior.items()):
        raise PrepareError("A previous source envelope was modified")
    return {"source_count": len(sources), "previous_source_count": len(prior),
            "custody_snapshot_id": custody_snapshot,
            "transition_count": len(workspace["transitions"]), "previous_edition": "archive/" + archive_name + "/"}


def prepare(args) -> dict:
    baseline = args.root.resolve()
    output = args.output.resolve()
    if output.exists() or output.is_relative_to(baseline):
        raise PrepareError("Output must be a new directory outside the current repository")
    checked_parent = verify_release(baseline)
    if not checked_parent["ok"]:
        raise PrepareError("Current canonical release does not verify: " + "; ".join(checked_parent["errors"]))
    master = args.master.resolve()
    if master.name != "main.tex":
        raise PrepareError("This manuscript workflow requires a master named main.tex")
    inputs = source_closure(master)
    hashes = {name: digest(raw) for name, raw in inputs.items()}
    source_id = source_digest(hashes)
    pdf_paths = {"native": args.native_pdf.resolve(), "portable": args.portable_pdf.resolve(), "excerpt": args.excerpt_pdf.resolve()}
    qa = audit_receipt(args.qa_receipt.resolve(), source_id, pdf_paths, inputs)
    portable = source_closure(args.portable_source.resolve() / "main.tex")
    if set(portable) != set(inputs):
        raise PrepareError("Portable source closure differs from native source closure")
    for name, raw in inputs.items():
        expected = portable[name]
        if name == "main.tex":
            marker = b"\\begin{document}"
            if marker not in raw or marker not in expected or raw.partition(marker)[2] != expected.partition(marker)[2]:
                raise PrepareError("Portable master body differs")
        elif expected != raw:
            raise PrepareError("Portable source body differs: " + name)
    excerpt = source_closure(args.excerpt_source.resolve() / "main.tex")
    if excerpt.get("guide.tex") != inputs.get("parts/unforced/00-how-proof-works.tex"):
        raise PrepareError("Excerpt guide differs from the current manuscript")
    current = json.loads((baseline / "CANONICAL.json").read_text())
    prior_release_path = baseline / current["manuscript_release"]["path"]
    prior_release = json.loads(prior_release_path.read_text())
    paper_relative = prior_release_path.parent.relative_to(baseline)
    proof_relative = Path(current["custody_release"]["path"]).parent
    release_date = date.fromisoformat(args.release_date)
    if release_date < date.fromisoformat(prior_release["release_date"]):
        raise PrepareError("A prepared release date cannot precede its parent release")
    archive_name = "source-" + prior_release["source_manifest_sha256"][:16] + "-" + digest((baseline / "CANONICAL.json").read_bytes())[:12]
    output.parent.mkdir(parents=True, exist_ok=True)
    with tempfile.TemporaryDirectory(prefix="canonical-candidate-", dir=output.parent) as temp:
        candidate = Path(temp) / "repository"
        copy_baseline(baseline, candidate)
        paper, proof = candidate / paper_relative, candidate / proof_relative
        copy_archive(paper, paper / "archive" / archive_name, {"archive"})
        copy_archive(proof, proof / "archive" / archive_name, {"archive"})
        for name in ("CANONICAL.json", "DISTRIBUTION.json"):
            if (candidate / name).is_file():
                shutil.copy2(candidate / name, proof / "archive" / archive_name / name)
        previous_map = json.loads((paper / prior_release["current_source"]["manifest"]).read_text())
        for name in previous_map.keys() - inputs.keys():
            (paper / name).unlink()
        for name, raw in inputs.items():
            target = paper / name
            target.parent.mkdir(parents=True, exist_ok=True)
            target.write_bytes(raw)
        write_json(paper / "CURRENT-SOURCE-SHA256.json", hashes)
        zip_sources(paper / "current-source.zip", inputs, release_date)
        zip_sources(paper / "pdflatex-submission-source.zip", portable, release_date)
        for name, raw in excerpt.items():
            target = paper / "excerpt" / name
            target.parent.mkdir(parents=True, exist_ok=True)
            target.write_bytes(raw)
        zip_sources(paper / "excerpt/source.zip", excerpt, release_date)
        names = {"native": prior_release["native_pdf"]["path"], "portable": prior_release["portable_pdf"]["path"], "excerpt": prior_release["excerpt"]["path"]}
        for kind, source in pdf_paths.items():
            shutil.copy2(source, paper / names[kind])
        reader = rebuild_reader(candidate, proof, inputs, source_id, paper_relative.as_posix(), args.release_date, archive_name,
                                args.custody_library.resolve() if args.custody_library else None)
        write_json(paper / "CURRENT-VERIFICATION.json", qa)
        pending = copy.deepcopy(current.get("figshare_sync", {}))
        pending.update(status="pending-current-edition-publication", expected_source_manifest_sha256=source_id,
                       expected_pdf_sha256=digest(pdf_paths["native"].read_bytes()))
        release = copy.deepcopy(prior_release)
        release.update(release_date=args.release_date, source_manifest_sha256=source_id, figshare_sync=pending,
                       previous_edition={"path": "archive/" + archive_name + "/"})
        for kind, key in (("native", "native_pdf"), ("portable", "portable_pdf"), ("excerpt", "excerpt")):
            release[key].update(identity(paper / names[kind]), pages=qa["pdfs"][kind]["pages"])
        release["current_source"].update(identity(paper / "current-source.zip"), input_count=len(inputs))
        release["portable_source"].update(identity(paper / "pdflatex-submission-source.zip"), body_inputs_match_native=len(inputs)-1)
        release["verification"] = {"receipt": "CURRENT-VERIFICATION.json", "receipt_sha256": digest((paper / "CURRENT-VERIFICATION.json").read_bytes()),
            "source_inputs": len(inputs), "portable_identical_body_inputs": len(inputs)-1,
            "excerpt_source_identical_to_current_guide": True,
            "scope": "Source, build and presentation audit linked to this snapshot."}
        release["governing_custody"]["snapshot_id"] = reader["custody_snapshot_id"]
        write_json(paper / "CURRENT-RELEASE.json", release)
        shutil.copy2(paper / names["native"], proof / "presentations" / Path(names["native"]).name)
        shutil.copy2(paper / names["excerpt"], proof / "presentations/how-the-proof-works-ns-excerpt.pdf")
        shutil.copy2(paper / "current-source.zip", proof / "sources/current-source.zip")
        member_names = ["NS.proof.pyz", "NS.proof.md", "NS.proof.html", "START.md", "presentations/" + Path(names["native"]).name,
                        "presentations/how-the-proof-works-ns-excerpt.pdf", "sources/current-source.zip"]
        handoff = json.loads((proof / "HANDOFF.json").read_text())
        handoff.update(source_manifest_sha256=source_id, source_count=reader["source_count"], figshare_sync_status=pending["status"],
                       members={name: digest((proof / name).read_bytes()) for name in member_names})
        write_json(proof / "HANDOFF.json", handoff)
        zip_sources(proof / "NS.proof-handoff.zip", {name: (proof / name).read_bytes() for name in member_names + ["HANDOFF.json"]}, release_date)
        custody = json.loads((proof / "RELEASE.json").read_text())
        custody.update(release_date=args.release_date, source_manifest_sha256=source_id,
            manuscript_pdf_sha256=digest((paper / names["native"]).read_bytes()), source_count=reader["source_count"],
            transition_count=reader["transition_count"], previous_edition=reader["previous_edition"], figshare_sync=pending,
            manuscript_release={"path": "../" + (paper_relative / "CURRENT-RELEASE.json").as_posix(), **identity(paper / "CURRENT-RELEASE.json")},
            files={name: identity(proof / name) for name in member_names + ["HANDOFF.json", "NS.proof-handoff.zip"]})
        custody["integrity"] = json.loads(subprocess.run([sys.executable, str(proof / "NS.proof.pyz"), "verify"],capture_output=True,text=True,check=True).stdout)
        write_json(proof / "RELEASE.json", custody)
        (proof / "SHA256SUMS").write_text("".join(digest((proof / name).read_bytes()) + "  " + name + "\n" for name in member_names + ["HANDOFF.json", "NS.proof-handoff.zip", "RELEASE.json"]))
        canonical = copy.deepcopy(current)
        canonical.update(release_date=args.release_date, figshare_sync=pending, distribution="DISTRIBUTION.json")
        for field in ("manuscript_release", "source_manifest", "portable_custody", "custody_release"):
            canonical[field].update(identity(candidate / canonical[field]["path"]))
        canonical["source_manifest"]["source_manifest_sha256"] = source_id
        archived_canonical = proof / "archive" / archive_name / "CANONICAL.json"
        archived_manuscript = paper / "archive" / archive_name / "CURRENT-RELEASE.json"
        archived_pdf = paper / "archive" / archive_name / prior_release["native_pdf"]["path"]
        archived_zip = proof / "archive" / archive_name / "NS.proof-handoff.zip"
        parent = {"path": archived_canonical.relative_to(candidate).as_posix(), **identity(archived_canonical),
            "source_manifest_sha256": prior_release["source_manifest_sha256"],
            "native_pdf_sha256": prior_release["native_pdf"]["sha256"],
            "custody_zip_sha256": current["portable_custody"]["sha256"],
            "archived_native_pdf": {"path": archived_pdf.relative_to(candidate).as_posix(), **identity(archived_pdf)},
            "archived_custody_zip": {"path": archived_zip.relative_to(candidate).as_posix(), **identity(archived_zip)},
            "archived_manuscript_release": {"path": archived_manuscript.relative_to(candidate).as_posix(), **identity(archived_manuscript)}}
        # A dirty local metadata snapshot must not acquire an invented Git identity.
        if (baseline / ".git").exists():
            committed = subprocess.run(["git", "show", "HEAD:CANONICAL.json"], cwd=baseline, capture_output=True)
            head = subprocess.run(["git", "rev-parse", "HEAD"], cwd=baseline, capture_output=True, text=True)
            if committed.returncode == 0 and head.returncode == 0 and committed.stdout == archived_canonical.read_bytes():
                parent["git_commit"] = head.stdout.strip()
                citation = baseline / "CITATION.cff"
                if citation.is_file():
                    url = re.search(r"^url: (https://github.com/[^\s]+)$", citation.read_text(), re.M)
                    if url:
                        parent["canonical_url"] = url[1].rstrip("/") + "/blob/" + parent["git_commit"] + "/CANONICAL.json"
        canonical["parent_release"] = parent
        write_json(candidate / "CANONICAL.json", canonical)
        from release_destinations import reset_distribution
        write_json(candidate / "DISTRIBUTION.json", reset_distribution(source_id))
        # Update navigation from measured release data, without authoring a new proof account.
        old_human = date.fromisoformat(prior_release["release_date"]).strftime("%B %d, %Y").replace(" 0", " ")
        new_human = release_date.strftime("%B %d, %Y").replace(" 0", " ")
        for path in (candidate / "README.md", paper / "README.md"):
            if path.is_file():
                text = path.read_text().replace(old_human, new_human)
                text = text.replace("its " + str(prior_release["current_source"]["input_count"]) + " source inputs",
                                    "its " + str(len(inputs)) + " source inputs")
                text = text.replace("contains the " + str(prior_release["current_source"]["input_count"]) + " current TeX inputs",
                                    "contains the " + str(len(inputs)) + " current source inputs")
                text = text.replace("has " + str(prior_release["native_pdf"]["pages"]) + " pages",
                                    "has " + str(release["native_pdf"]["pages"]) + " pages")
                text = text.replace("(" + str(prior_release["portable_pdf"]["pages"]) + " pages)",
                                    "(" + str(release["portable_pdf"]["pages"]) + " pages)")
                text = text.replace("(" + str(prior_release["excerpt"]["pages"]) + " pages)",
                                    "(" + str(release["excerpt"]["pages"]) + " pages)")
                text = text.replace("Its " + str(len(previous_map)-1) + " body inputs", "Its " + str(len(inputs)-1) + " body inputs")
                if path == paper / "README.md":
                    text = text.partition("## Retained editions")[0] + "## Retained editions\n\n[Previous current edition](archive/" + archive_name + "/) retains its source files, PDFs and release records. Earlier archives remain available unchanged.\n"
                path.write_text(text)
        (proof / "README.md").write_text("# Current Navier–Stokes proof object\n\n"
            "[Canonical release](../CANONICAL.json) · [Instructions](START.md) · [Complete ZIP](NS.proof-handoff.zip)\n\n"
            + "Source snapshot: `" + source_id + "`. The reader contains " + str(reader["source_count"])
            + " source envelopes, preserving all " + str(reader["previous_source_count"]) + " prior records byte for byte. "
            "Its current entries reproduce the frozen manuscript openings. Retained entries carry their earlier scope.\n\n"
            "[Current release hashes](RELEASE.json) · [Prior release](" + reader["previous_edition"] + ")\n\n"
            "Git, Figshare and Rob distribution states remain pending until matching destination receipts are recorded.\n")
        citation = candidate / "CITATION.cff"
        if citation.is_file():
            text = citation.read_text()
            text = re.sub(r"^message:.*$", "message: Prepared Git edition; publication destinations remain pending.", text, count=1, flags=re.M)
            text = re.sub(r"^  doi:.*\n", "", text, flags=re.M)
            match = re.search(r"^url: (https://github.com/[^\s]+)$", text, re.M)
            if match:
                target = match[1].rstrip("/") + "/blob/main/" + canonical["manuscript"]
                text = re.sub(r"^  url:.*$", "  url: " + target, text, flags=re.M)
            citation.write_text(text)
        result = verify_release(candidate)
        if not result["ok"]:
            raise PrepareError("Candidate verification failed: " + "; ".join(result["errors"]))
        receipt = {"format": "navier-stokes-prepared-release/1", "ready": True,
            "source_manifest_sha256": source_id, "input_count": len(inputs),
            "previous_source_count": reader["previous_source_count"], "source_count": reader["source_count"],
            "all_previous_source_envelopes_preserved": True,
            "canonical_manifest_sha256": digest((candidate / "CANONICAL.json").read_bytes()),
            "verification": result, "publication_performed": False,
            "citation_permalink_pending": True,
            "archived_pdf_staging": "Stage every archived PDF explicitly with git add -f; a clean checkout must retain every parent artifact referenced by CANONICAL.json."}
        write_json(candidate / "PREPARE-RECEIPT.json", receipt)
        write_prepared_files(candidate, source_id)
        shutil.move(str(candidate), output)
    return receipt


def main(argv=None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--root", type=Path, default=Path(__file__).resolve().parents[1])
    parser.add_argument("--master", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--freeze-only", action="store_true", help="Freeze source bytes before building; no release readiness claim")
    parser.add_argument("--native-pdf", type=Path)
    parser.add_argument("--portable-pdf", type=Path)
    parser.add_argument("--portable-source", type=Path)
    parser.add_argument("--excerpt-pdf", type=Path)
    parser.add_argument("--excerpt-source", type=Path)
    parser.add_argument("--qa-receipt", type=Path)
    parser.add_argument("--custody-library", type=Path, help="Optional approved sanitized governing-source snapshot")
    parser.add_argument("--release-date", required=True, help="ISO date of the prepared edition")
    args = parser.parse_args(argv)
    if not args.freeze_only:
        missing = ["--" + name.replace("_", "-") for name in ("native_pdf", "portable_pdf", "portable_source", "excerpt_pdf", "excerpt_source", "qa_receipt")
                   if getattr(args, name) is None]
        if missing:
            parser.error("Full preparation requires " + ", ".join(missing))
    try:
        result = freeze_sources(args) if args.freeze_only else prepare(args)
    except (PrepareError, OSError, ValueError, KeyError, subprocess.CalledProcessError) as error:
        print(json.dumps({("frozen" if args.freeze_only else "ready"): False, "error": str(error)}))
        return 1
    print(json.dumps(result, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
