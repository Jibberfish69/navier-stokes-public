#!/usr/bin/env python3
"""
Flatten the clean Navier-Stokes recovery into one consolidated corpus root.

The input is the latest clean recovery manifest. The output is a single
canonical landing under the NS folder with flat tex/pdf holdings and a
provenance manifest.
"""

from __future__ import annotations

import csv
import hashlib
import json
import os
import shutil
import tarfile
import unicodedata
import zipfile
from datetime import datetime
from pathlib import Path
from typing import Dict, List, Tuple


CORPUS_ROOT = Path(
    "/Users/thomasbirnie/Documents/Research-Consolidation/Millennium Prize Problems/Navier-Stokes"
).resolve()
RECOVERY_ROOT = CORPUS_ROOT / "Recovered-Laptop-Sweep"
LATEST_RUN = sorted(
    path
    for path in RECOVERY_ROOT.iterdir()
    if path.is_dir() and path.name.startswith("2026-03-25-ns-clean-corpus-recovery-")
)[-1]
MANIFEST_CSV = LATEST_RUN / "ns-clean-forensic-inventory.csv"
RUN_TS = datetime.now().strftime("%Y%m%d-%H%M%S")
CONSOLIDATED_ROOT = CORPUS_ROOT / f"Consolidated-NS-TEX-PDF-Corpus-{RUN_TS}"
TEX_ROOT = CONSOLIDATED_ROOT / "tex"
PDF_ROOT = CONSOLIDATED_ROOT / "pdf"
TEX_ROOT.mkdir(parents=True, exist_ok=True)
PDF_ROOT.mkdir(parents=True, exist_ok=True)

SUMMARY_JSON = CONSOLIDATED_ROOT / "consolidated-summary.json"
MANIFEST_JSON = CONSOLIDATED_ROOT / "consolidated-manifest.json"
INVENTORY_CSV = CONSOLIDATED_ROOT / "consolidated-inventory.csv"
NOTE_MD = CONSOLIDATED_ROOT / "consolidated-recovery-note.md"


def safe_component(name: str) -> str:
    normalized = unicodedata.normalize("NFKD", name)
    normalized = normalized.encode("ascii", "ignore").decode("ascii")
    normalized = normalized.replace(os.sep, "_")
    normalized = normalized.replace("/", "_")
    normalized = " ".join(normalized.split())
    if not normalized:
        return "unnamed"
    return normalized


def safe_stem(name: str) -> str:
    stem = Path(name).stem
    stem = safe_component(stem)
    stem = stem.replace(".", " ")
    stem = " ".join(stem.split())
    return stem


def file_sha(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as handle:
        for block in iter(lambda: handle.read(1024 * 1024), b""):
            h.update(block)
    return h.hexdigest()


def bytes_sha(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def provenance_token(row: Dict[str, str]) -> str:
    family = row["source_family"]
    if family == "my_project_priority":
        return "my_project_priority"
    if family == "desktop_zip_working_directory":
        return "desktop_navier_stokes_zip"
    if family == "problem_tree_submission_package":
        container = Path(row["container_path"]).name
        container = container.replace(".tar.gz", "")
        return safe_component(container)
    return safe_component(family)


def dated_name(row: Dict[str, str]) -> str:
    stem = safe_stem(row["original_name"])
    date_token = row["source_mtime"][:10]
    suffix = "." + row["file_type"]
    return f"{stem}__{provenance_token(row)}__{date_token}{suffix}"


def next_available(path: Path, digest: str) -> Tuple[Path, str]:
    if not path.exists():
        return path, "new"
    existing = file_sha(path)
    if existing == digest:
        return path, "same_hash"
    for idx in range(2, 100):
        trial = path.with_name(f"{path.stem}__variant{idx:02d}{path.suffix}")
        if not trial.exists():
            return trial, "variant"
        if file_sha(trial) == digest:
            return trial, "same_hash"
    raise RuntimeError(f"Could not find available name for {path}")


def destination_for(row: Dict[str, str]) -> Path:
    root = TEX_ROOT if row["file_type"] == "tex" else PDF_ROOT
    return root / dated_name(row)


def move_existing_recovery(row: Dict[str, str], manifest: List[Dict[str, str]]) -> None:
    src = Path(row["destination_path"])
    if not src.exists():
        raise FileNotFoundError(src)
    digest = file_sha(src)
    dst, state = next_available(destination_for(row), digest)
    if state == "same_hash" and dst.exists():
        src.unlink()
    else:
        shutil.move(str(src), str(dst))
    manifest.append(
        {
            "kind": "moved_clean_recovery",
            "source_kind": row["source_kind"],
            "source_family": row["source_family"],
            "source_path": row["source_path"],
            "container_path": row["container_path"],
            "archive_member": row["archive_member"],
            "source_mtime": row["source_mtime"],
            "document_role": row["document_role"],
            "sha256": digest,
            "destination_path": str(dst),
            "original_name": row["original_name"],
        }
    )


def add_manual_file(source_path: Path, family: str, source_mtime: str, manifest: List[Dict[str, str]]) -> None:
    digest = file_sha(source_path)
    row = {
        "source_kind": "filesystem",
        "source_family": family,
        "source_path": str(source_path),
        "container_path": "",
        "archive_member": "",
        "source_mtime": source_mtime,
        "document_role": "pdf_output" if source_path.suffix.lower() == ".pdf" else "standalone_tex",
        "file_type": source_path.suffix.lower().lstrip("."),
        "original_name": source_path.name,
    }
    dst, state = next_available(destination_for(row), digest)
    if state != "same_hash":
        shutil.move(str(source_path), str(dst))
    manifest.append(
        {
            "kind": "manual_filesystem_addition",
            "source_kind": "filesystem",
            "source_family": family,
            "source_path": str(source_path),
            "container_path": "",
            "archive_member": "",
            "source_mtime": source_mtime,
            "document_role": row["document_role"],
            "sha256": digest,
            "destination_path": str(dst),
            "original_name": source_path.name,
        }
    )


def add_manual_zip_member(
    zip_path: Path, member_name: str, source_mtime: str, manifest: List[Dict[str, str]]
) -> None:
    with zipfile.ZipFile(zip_path) as handle:
        data = handle.read(member_name)
    digest = bytes_sha(data)
    row = {
        "source_kind": "zip_entry",
        "source_family": "desktop_zip_working_directory",
        "source_path": str(zip_path),
        "container_path": str(zip_path),
        "archive_member": member_name,
        "source_mtime": source_mtime,
        "document_role": "standalone_tex",
        "file_type": Path(member_name).suffix.lower().lstrip("."),
        "original_name": Path(member_name).name,
    }
    dst, state = next_available(destination_for(row), digest)
    if state != "same_hash":
        dst.write_bytes(data)
    manifest.append(
        {
            "kind": "manual_zip_addition",
            "source_kind": "zip_entry",
            "source_family": "desktop_zip_working_directory",
            "source_path": str(zip_path),
            "container_path": str(zip_path),
            "archive_member": member_name,
            "source_mtime": source_mtime,
            "document_role": "standalone_tex",
            "sha256": digest,
            "destination_path": str(dst),
            "original_name": Path(member_name).name,
        }
    )


def main() -> None:
    rows = list(csv.DictReader(MANIFEST_CSV.open()))
    moved_rows = [
        row
        for row in rows
        if row["destination_action"] in {"moved_from_filesystem", "extracted_from_archive"}
    ]

    manifest: List[Dict[str, str]] = []
    for row in moved_rows:
        move_existing_recovery(row, manifest)

    manual_files = [
        (
            Path("/Users/thomasbirnie/my_project/project-documents/priority/Comparisons to Known Results.pdf"),
            "my_project_priority",
            "2025-01-13T00:00:02+00:00",
        ),
        (
            Path("/Users/thomasbirnie/my_project/project-documents/priority/Section 4- Non-Sobolev Compactness.pdf"),
            "my_project_priority",
            "2025-01-13T00:17:52+00:00",
        ),
        (
            Path("/Users/thomasbirnie/my_project/project-documents/priority/Unifying Stability in PDEs- A Single Invariance Perspective.pdf"),
            "my_project_priority",
            "2025-01-12T22:42:44+00:00",
        ),
    ]
    for source_path, family, source_mtime in manual_files:
        if source_path.exists():
            add_manual_file(source_path, family, source_mtime, manifest)

    zip_path = Path("/Users/thomasbirnie/Desktop/Screenshot/Navier-stokes.zip")
    if zip_path.exists():
        add_manual_zip_member(
            zip_path,
            "Toward Global Regularity for NavierΓÇôStokes Equations.tex",
            "2025-01-17T06:33:54+00:00",
            manifest,
        )

    summary = {
        "source_run": str(LATEST_RUN),
        "consolidated_root": str(CONSOLIDATED_ROOT),
        "tex_count": len(list(TEX_ROOT.glob("*"))),
        "pdf_count": len(list(PDF_ROOT.glob("*"))),
        "total_count": len(manifest),
    }
    SUMMARY_JSON.write_text(json.dumps(summary, indent=2), encoding="utf-8")
    MANIFEST_JSON.write_text(json.dumps(manifest, indent=2), encoding="utf-8")

    with INVENTORY_CSV.open("w", newline="", encoding="utf-8") as handle:
        writer = csv.DictWriter(
            handle,
            fieldnames=[
                "kind",
                "source_kind",
                "source_family",
                "source_path",
                "container_path",
                "archive_member",
                "source_mtime",
                "document_role",
                "sha256",
                "destination_path",
                "original_name",
            ],
        )
        writer.writeheader()
        for row in manifest:
            writer.writerow(row)

    note_lines = [
        "# Consolidated NS Recovery Note",
        "",
        f"Source run: {LATEST_RUN}",
        f"Consolidated root: {CONSOLIDATED_ROOT}",
        "",
        "This root is the flat canonical landing for the clean NS tex/pdf recovery.",
        "Files are intentionally not nested by source family. Provenance is encoded in the filename and in the inventory/manifest files here.",
        "",
        f"- tex files: {summary['tex_count']}",
        f"- pdf files: {summary['pdf_count']}",
        f"- total files: {summary['total_count']}",
        "",
        "Manual corrections added during flattening:",
        "- Comparisons to Known Results.pdf",
        "- Section 4- Non-Sobolev Compactness.pdf",
        "- Unifying Stability in PDEs- A Single Invariance Perspective.pdf",
        "- Toward Global Regularity for Navier-Stokes Equations.tex",
        "",
    ]
    NOTE_MD.write_text("\n".join(note_lines), encoding="utf-8")

    print(json.dumps(summary, indent=2))
    print(f"CONSOLIDATED_ROOT={CONSOLIDATED_ROOT}")


if __name__ == "__main__":
    main()
