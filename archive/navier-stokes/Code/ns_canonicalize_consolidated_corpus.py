#!/usr/bin/env python3
"""
Build one flat canonical Navier-Stokes tex/pdf corpus from the latest
intermediate consolidated recovery root.

This script:
- consumes the latest timestamped `Consolidated-NS-TEX-PDF-Corpus-*` root
- filters out macOS AppleDouble metadata artifacts
- moves every recovered tex/pdf into one flat canonical destination
- preserves provenance in the filename and manifest
- archives the superseded timestamped layout under Recovered-Laptop-Sweep
"""

from __future__ import annotations

import csv
import hashlib
import json
import os
import re
import shutil
import unicodedata
from collections import Counter, defaultdict
from datetime import datetime
from pathlib import Path


CORPUS_ROOT = Path(
    "/Users/thomasbirnie/Documents/Research-Consolidation/Millennium Prize Problems/Navier-Stokes"
).resolve()
RECOVERY_ROOT = CORPUS_ROOT / "Recovered-Laptop-Sweep"
LEGACY_ROOTS = sorted(
    path
    for path in CORPUS_ROOT.iterdir()
    if path.is_dir() and path.name.startswith("Consolidated-NS-TEX-PDF-Corpus-")
)
if not LEGACY_ROOTS:
    raise SystemExit("No timestamped consolidated root found.")

SOURCE_ROOT = LEGACY_ROOTS[-1]
SOURCE_MANIFEST = SOURCE_ROOT / "consolidated-manifest.json"
CANONICAL_ROOT = CORPUS_ROOT / "Consolidated-NS-TEX-PDF-Corpus"
ARCHIVE_ROOT = RECOVERY_ROOT / f"superseded-layout-{SOURCE_ROOT.name}"
SUMMARY_JSON = CANONICAL_ROOT / "canonical-summary.json"
MANIFEST_JSON = CANONICAL_ROOT / "canonical-manifest.json"
INVENTORY_CSV = CANONICAL_ROOT / "canonical-inventory.csv"
NOTE_MD = CANONICAL_ROOT / "NS-CANONICAL-CORPUS-FORENSIC-NOTE.md"


def ensure_clean_destination(path: Path) -> None:
    if path.exists():
        ts = datetime.now().strftime("%Y%m%d-%H%M%S")
        archived = RECOVERY_ROOT / f"superseded-layout-{path.name}-{ts}"
        shutil.move(str(path), str(archived))
    path.mkdir(parents=True, exist_ok=True)


def repair_mojibake(text: str) -> str:
    replacements = {
        "ΓÇô": "-",
        "ΓÇö": "-",
        "ΓÇÓ": '"',
        "ΓÇ¥": '"',
        "ΓÇÖ": "'",
        "ΓÇÖ": "'",
        "∩¼ü": "fi",
        "∩¼Ç": "ff",
        "ﬁ": "fi",
        "ﬀ": "ff",
        "–": "-",
        "—": "-",
        "−": "-",
    }
    for old, new in replacements.items():
        text = text.replace(old, new)
    return text


def safe_component(name: str) -> str:
    name = repair_mojibake(name)
    normalized = unicodedata.normalize("NFKD", name)
    normalized = normalized.encode("ascii", "ignore").decode("ascii")
    normalized = normalized.replace(os.sep, "_").replace("/", "_")
    normalized = normalized.replace(":", "-")
    normalized = " ".join(normalized.split())
    if not normalized:
        return "unnamed"
    return normalized


def safe_stem(name: str) -> str:
    stem = Path(name).stem
    stem = safe_component(stem)
    stem = stem.replace(".", " ")
    stem = re.sub(r"\s+", " ", stem).strip()
    return stem or "unnamed"


def file_sha(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as handle:
        for block in iter(lambda: handle.read(1024 * 1024), b""):
            h.update(block)
    return h.hexdigest()


def provenance_token(row: dict) -> str:
    family = row["source_family"]
    if family == "my_project_priority":
        return "my_project_priority"
    if family == "desktop_zip_working_directory":
        return "desktop_navier_stokes_zip"
    if family == "problem_tree_submission_package":
        container = row["container_path"] or row["source_path"]
        return safe_component(Path(container).name.replace(".tar.gz", ""))
    return safe_component(family)


def canonical_name(row: dict) -> str:
    repaired = repair_mojibake(row["original_name"])
    ext = Path(repaired).suffix.lower()
    stem = safe_stem(repaired)
    date_token = row["source_mtime"][:10]
    return f"{stem}__{provenance_token(row)}__{date_token}{ext}"


def next_available(path: Path, digest: str) -> tuple[Path, str]:
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
    raise RuntimeError(f"Could not allocate filename for {path}")


def destination_for(row: dict) -> Path:
    return CANONICAL_ROOT / canonical_name(row)


def normalized_title(text: str) -> str:
    text = repair_mojibake(text)
    text = unicodedata.normalize("NFKD", text).encode("ascii", "ignore").decode("ascii")
    text = Path(text).stem.lower().replace("_", " ")
    text = re.sub(r"\s+", " ", text).strip()
    return text


def scan_existing_non_recovered_titles() -> set[str]:
    titles: set[str] = set()
    for sub in ["TeX", "PDFs", "Projects"]:
        root = CORPUS_ROOT / sub
        if not root.exists():
            continue
        for path in root.rglob("*"):
            if not path.is_file():
                continue
            if path.suffix.lower() not in {".tex", ".pdf"}:
                continue
            if "Recovered" in path.parts:
                continue
            titles.add(normalized_title(path.name))
    return titles


def build_note(rows: list[dict], skipped: list[dict], existing_titles: set[str]) -> str:
    by_family = Counter(row["source_family"] for row in rows)
    by_role = Counter(row["document_role"] for row in rows)
    by_family_titles = defaultdict(list)
    by_family_dates = defaultdict(list)
    for row in rows:
        by_family_titles[row["source_family"]].append(repair_mojibake(row["original_name"]))
        by_family_dates[row["source_family"]].append(row["source_mtime"][:10])

    baseline_missing = defaultdict(set)
    for row in rows:
        title = normalized_title(row["original_name"])
        if title not in existing_titles:
            baseline_missing[row["source_family"]].add(repair_mojibake(row["original_name"]))

    zip_vs_priority = []
    by_title = defaultdict(list)
    for row in rows:
        by_title[repair_mojibake(row["original_name"])].append(row)
    for title, title_rows in sorted(by_title.items()):
        families = {row["source_family"] for row in title_rows}
        if families == {"desktop_zip_working_directory", "my_project_priority"} and title.endswith(".tex"):
            digests = {row["sha256"] for row in title_rows}
            zip_vs_priority.append((title, len(digests) > 1))

    fragment_titles = sorted(
        repair_mojibake(row["original_name"])
        for row in rows
        if row["source_family"] == "my_project_priority" and row["original_name"].startswith("Section_")
        or row["original_name"].startswith("Strong_")
        or row["original_name"].startswith("Comparisons_")
        or row["original_name"].startswith("Unifying_")
    )

    lines = [
        "# NS Canonical Corpus Forensic Note",
        "",
        f"Generated: {datetime.now().isoformat(timespec='seconds')}",
        f"Canonical root: {CANONICAL_ROOT}",
        f"Superseded intermediate root archived to: {ARCHIVE_ROOT}",
        "",
        "This is the one canonical landing for the recovered Navier-Stokes tex/pdf corpus.",
        "All recovered tex/pdf files now live directly in this folder. Provenance is carried in the filename and in the manifest files here.",
        "",
        f"- total files: {len(rows)}",
        f"- tex files: {sum(1 for row in rows if row['destination_path'].endswith('.tex'))}",
        f"- pdf files: {sum(1 for row in rows if row['destination_path'].endswith('.pdf'))}",
        f"- excluded metadata artifacts: {len(skipped)}",
        "",
        "## Source families",
        f"- my_project_priority: {by_family['my_project_priority']} artifacts",
        f"- desktop_zip_working_directory: {by_family['desktop_zip_working_directory']} artifacts",
        f"- problem_tree_submission_package: {by_family['problem_tree_submission_package']} artifacts",
        "",
        "## Date windows",
        *[
            f"- {family}: {min(dates)} to {max(dates)}"
            for family, dates in sorted(by_family_dates.items())
        ],
        "",
        "## Material absent from the preexisting non-Recovered NS corpus",
        *[
            f"- {family}: {len(sorted(titles))} recovered titles absent by normalized filename comparison"
            for family, titles in sorted(baseline_missing.items())
        ],
        "",
        "## Shared-title revision chain between January zip and March loose packet",
        "The following titles exist in both source families and were retained as distinct states because their hashes differ:",
        *[
            f"- {title}: {'hash-different' if changed else 'same-hash'}"
            for title, changed in zip_vs_priority
        ],
        "",
        "## Fragment packet",
        "The underscore-named March 7, 2025 files are wrapperless include-style fragments rather than duplicate standalone papers.",
        "Representative first lines begin with \\section{Placeholder Title} instead of \\documentclass.",
        *[f"- {title}" for title in fragment_titles],
        "",
        "## Packaged submission structure",
        "The 2026 tarball family adds assembled submission architecture rather than standalone essays.",
        "Recovered section/source names include main.tex, appendix.tex, metadata.tex, abstract.tex, introduction.tex, setup-notation.tex, prior-work-limits.tex, main-result.tex, main-proof.tex, bridge-scale-barrier.tex, bridge-compactness.tex, bridge-gradient-control.tex, conclusion.tex, and journal-package main.pdf outputs.",
        "",
        "## Excluded artifacts",
        *[f"- {item['original_name']} from {item['source_path']}" for item in skipped],
        "",
        "## File role counts",
        *[f"- {role}: {count}" for role, count in sorted(by_role.items())],
        "",
    ]
    return "\n".join(lines) + "\n"


def main() -> None:
    ensure_clean_destination(CANONICAL_ROOT)
    rows = json.loads(SOURCE_MANIFEST.read_text(encoding="utf-8"))
    existing_titles = scan_existing_non_recovered_titles()

    canonical_rows = []
    skipped = []
    for row in rows:
        original_name = row["original_name"]
        if original_name.startswith("._"):
            skipped.append(
                {
                    "original_name": original_name,
                    "source_path": row["source_path"],
                    "reason": "appledouble_metadata",
                }
            )
            continue
        src = Path(row["destination_path"])
        if not src.exists():
            raise FileNotFoundError(src)
        digest = file_sha(src)
        dst, state = next_available(destination_for(row), digest)
        if state != "same_hash":
            shutil.move(str(src), str(dst))
        canonical_rows.append(
            {
                "kind": row["kind"],
                "source_kind": row["source_kind"],
                "source_family": row["source_family"],
                "source_path": row["source_path"],
                "container_path": row["container_path"],
                "archive_member": row["archive_member"],
                "source_mtime": row["source_mtime"],
                "document_role": row["document_role"],
                "sha256": digest,
                "original_name": repair_mojibake(original_name),
                "legacy_destination_path": row["destination_path"],
                "destination_path": str(dst),
            }
        )

    summary = {
        "canonical_root": str(CANONICAL_ROOT),
        "source_root": str(SOURCE_ROOT),
        "archived_source_root": str(ARCHIVE_ROOT),
        "total_count": len(canonical_rows),
        "tex_count": sum(1 for row in canonical_rows if row["destination_path"].endswith(".tex")),
        "pdf_count": sum(1 for row in canonical_rows if row["destination_path"].endswith(".pdf")),
        "excluded_metadata_artifacts": skipped,
        "source_family_counts": Counter(row["source_family"] for row in canonical_rows),
        "document_role_counts": Counter(row["document_role"] for row in canonical_rows),
    }

    SUMMARY_JSON.write_text(json.dumps(summary, indent=2, default=dict), encoding="utf-8")
    MANIFEST_JSON.write_text(json.dumps(canonical_rows, indent=2), encoding="utf-8")

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
                "original_name",
                "legacy_destination_path",
                "destination_path",
            ],
        )
        writer.writeheader()
        writer.writerows(canonical_rows)

    NOTE_MD.write_text(build_note(canonical_rows, skipped, existing_titles), encoding="utf-8")

    if SOURCE_ROOT.exists():
        shutil.move(str(SOURCE_ROOT), str(ARCHIVE_ROOT))

    print(
        json.dumps(
            {
                "canonical_root": str(CANONICAL_ROOT),
                "source_root": str(SOURCE_ROOT),
                "archived_source_root": str(ARCHIVE_ROOT),
                "total_count": summary["total_count"],
                "tex_count": summary["tex_count"],
                "pdf_count": summary["pdf_count"],
                "excluded_metadata_artifacts": len(skipped),
            },
            indent=2,
        )
    )


if __name__ == "__main__":
    main()
