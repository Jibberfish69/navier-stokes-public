#!/usr/bin/env python3
"""
Clean Navier-Stokes tex/pdf corpus recovery.

This pass deliberately excludes the Navier-Stokes corpus destination tree from
search so the recovery can land clean canonical copies from original sources
without recursively re-ingesting previous recovery folders.
"""

from __future__ import annotations

import csv
import hashlib
import json
import os
import re
import shutil
import subprocess
import tarfile
import tempfile
import unicodedata
import zipfile
from collections import Counter, defaultdict
from dataclasses import asdict, dataclass
from datetime import datetime, timezone
from pathlib import Path
from typing import Dict, Iterable, List, Optional, Sequence, Tuple


RUN_TS = datetime.now().strftime("%Y%m%d-%H%M%S")

SEARCH_ROOTS = [
    "/Users/thomasbirnie/AutoGPT",
    "/Users/thomasbirnie/Desktop",
    "/Users/thomasbirnie/Documents",
    "/Users/thomasbirnie/Downloads",
    "/Users/thomasbirnie/my_project",
    "/Users/thomasbirnie/my_project_backup",
    "/Users/thomasbirnie/Research-Consolidation",
    "/Users/thomasbirnie/Documents/Research-Consolidation",
]

CORPUS_ROOT = Path(
    "/Users/thomasbirnie/Documents/Research-Consolidation/Millennium Prize Problems/Navier-Stokes"
).resolve()
TEXT_ROOT = CORPUS_ROOT / "Text"
TEX_RECOVERED_ROOT = CORPUS_ROOT / "TeX" / "Recovered"
PDF_RECOVERED_ROOT = CORPUS_ROOT / "PDFs" / "Recovered"
RUN_ROOT = (
    CORPUS_ROOT
    / "Recovered-Laptop-Sweep"
    / f"2026-03-25-ns-clean-corpus-recovery-{RUN_TS}"
)
RUN_ROOT.mkdir(parents=True, exist_ok=True)

CANONICAL_TEX_ROOT = TEX_RECOVERED_ROOT / "Clean-Forensic-Recovery" / RUN_TS
CANONICAL_PDF_ROOT = PDF_RECOVERED_ROOT / "Clean-Forensic-Recovery" / RUN_TS
CANONICAL_TEX_ROOT.mkdir(parents=True, exist_ok=True)
CANONICAL_PDF_ROOT.mkdir(parents=True, exist_ok=True)
TEXT_ROOT.mkdir(parents=True, exist_ok=True)

REPORT_CSV = RUN_ROOT / "ns-clean-forensic-inventory.csv"
REPORT_JSON = RUN_ROOT / "ns-clean-forensic-manifest.json"
REPORT_MOVE = RUN_ROOT / "ns-clean-forensic-move-log.md"
REPORT_SKIP = RUN_ROOT / "ns-clean-forensic-skipped.md"
REPORT_SUMMARY = RUN_ROOT / "ns-clean-forensic-summary.json"
REPORT_NOTE = RUN_ROOT / "ns-clean-forensic-note.md"
ROOT_NOTE = TEXT_ROOT / f"NS-CORPUS-FORENSIC-RECOVERY-NOTE-{datetime.now().strftime('%Y-%m-%d')}.md"

POSITIVE_PATTERNS: Sequence[Tuple[re.Pattern[str], int, str]] = [
    (re.compile(r"navier[\s_\-]*stokes", re.I), 12, "navier_stokes"),
    (re.compile(r"global regularity", re.I), 5, "global_regularity"),
    (re.compile(r"scale[\s_\-]*barrier", re.I), 5, "scale_barrier"),
    (re.compile(r"monotone functional", re.I), 5, "monotone_functional"),
    (re.compile(r"strong convergence", re.I), 4, "strong_convergence"),
    (re.compile(r"compactness", re.I), 3, "compactness"),
    (re.compile(r"gradient control", re.I), 4, "gradient_control"),
    (re.compile(r"curvature[\s_\-]*based", re.I), 4, "curvature_based"),
    (re.compile(r"smooth solutions for all time", re.I), 6, "smooth_solutions_all_time"),
    (re.compile(r"partial differential equations|pdes?", re.I), 2, "pde"),
    (re.compile(r"morphic[\s_\-]*regularized", re.I), 4, "morphic_regularized"),
    (re.compile(r"millennium prize", re.I), 4, "millennium_prize"),
    (re.compile(r"fluid|incompressible|vorticity|leray", re.I), 2, "fluid_context"),
]

NEGATIVE_PATTERNS: Sequence[Tuple[re.Pattern[str], int, str]] = [
    (
        re.compile(r"language models?|llms?|decision structures", re.I),
        -12,
        "llm_material",
    ),
    (re.compile(r"moral|morality|hermit crab|morphism", re.I), -12, "moral_framework"),
    (
        re.compile(r"hodge|yang[\s_\-]*mills|p\s*vs\s*np|riemann", re.I),
        -12,
        "other_mpp_lane",
    ),
]

SKIP_DIRS = {
    ".git",
    ".hg",
    ".svn",
    "__pycache__",
    "node_modules",
    ".cache",
}


@dataclass
class Candidate:
    source_kind: str
    source_family: str
    source_root: str
    source_path: str
    container_path: str
    archive_member: str
    file_type: str
    original_name: str
    normalized_name: str
    document_role: str
    source_mtime: str
    marker_context: str
    score: int
    positive_reasons: List[str]
    negative_reasons: List[str]
    classification: str
    decision_basis: str
    existing_state: str
    existing_paths: List[str]
    sha256: str
    size: int
    destination_path: str
    destination_action: str
    uncertainty: str


def real_roots(paths: Sequence[str]) -> List[Path]:
    seen: set[str] = set()
    roots: List[Path] = []
    for raw in paths:
        resolved = Path(raw).resolve()
        if str(resolved) in seen or not resolved.exists():
            continue
        seen.add(str(resolved))
        roots.append(resolved)
    return roots


SEARCH_ROOT_PATHS = real_roots(SEARCH_ROOTS)


def is_excluded_path(path: Path) -> bool:
    try:
        resolved = path.resolve()
    except FileNotFoundError:
        resolved = path
    path_str = str(resolved)
    if path_str.startswith(str(CORPUS_ROOT)):
        return True
    if "RecoveredFolderMarker" in path_str or "Recovered-Laptop-Sweep" in path_str:
        return True
    return False


def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def sha256_file(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as handle:
        for block in iter(lambda: handle.read(1024 * 1024), b""):
            h.update(block)
    return h.hexdigest()


def normalize_name(name: str) -> str:
    stem = name.lower()
    stem = unicodedata.normalize("NFKD", stem)
    stem = stem.encode("ascii", "ignore").decode("ascii")
    stem = re.sub(r"\.[^.]+$", "", stem)
    stem = re.sub(r"[_\-\s]+", " ", stem)
    stem = re.sub(r"[^\w\s]+", "", stem)
    stem = re.sub(r"\s+", " ", stem).strip()
    return stem


def safe_component(name: str) -> str:
    normalized = unicodedata.normalize("NFKD", name)
    normalized = normalized.encode("ascii", "ignore").decode("ascii")
    normalized = normalized.replace(os.sep, "_")
    normalized = re.sub(r"[^\w.\- ()]+", "_", normalized)
    normalized = re.sub(r"\s+", " ", normalized).strip()
    if not normalized:
        return "unnamed"
    return normalized


def read_pdf_text_from_bytes(data: bytes) -> str:
    pdftotext = shutil.which("pdftotext")
    if not pdftotext:
        return ""
    with tempfile.TemporaryDirectory() as tmpdir:
        pdf_path = Path(tmpdir) / "sample.pdf"
        pdf_path.write_bytes(data)
        result = subprocess.run(
            [pdftotext, "-f", "1", "-l", "4", "-layout", str(pdf_path), "-"],
            stdout=subprocess.PIPE,
            stderr=subprocess.DEVNULL,
            check=False,
        )
        return result.stdout.decode("utf-8", errors="ignore")


def read_pdf_text_from_path(path: Path) -> str:
    pdftotext = shutil.which("pdftotext")
    if not pdftotext:
        return ""
    result = subprocess.run(
        [pdftotext, "-f", "1", "-l", "4", "-layout", str(path), "-"],
        stdout=subprocess.PIPE,
        stderr=subprocess.DEVNULL,
        check=False,
    )
    return result.stdout.decode("utf-8", errors="ignore")


def sample_text(file_type: str, data: Optional[bytes], path: Optional[Path]) -> str:
    try:
        if file_type == "tex":
            if data is not None:
                return data.decode("utf-8", errors="ignore")[:200000]
            if path is not None:
                return path.read_text(encoding="utf-8", errors="ignore")[:200000]
        if file_type == "pdf":
            if data is not None:
                return read_pdf_text_from_bytes(data)
            if path is not None:
                return read_pdf_text_from_path(path)
    except Exception:
        return ""
    return ""


def evaluate_text(pathish: str, text: str) -> Tuple[int, List[str], List[str]]:
    score = 0
    positive: List[str] = []
    negative: List[str] = []
    combined = f"{pathish}\n{text}"
    for pattern, weight, label in POSITIVE_PATTERNS:
        if pattern.search(combined):
            score += weight
            positive.append(label)
    for pattern, weight, label in NEGATIVE_PATTERNS:
        if pattern.search(combined):
            score += weight
            negative.append(label)
    return score, positive, negative


def infer_role(file_type: str, text: str) -> str:
    if file_type == "pdf":
        return "pdf_output"
    lowered = text.lower()
    if "\\documentclass" in lowered:
        return "standalone_tex"
    return "fragment_tex"


def filesystem_family(path: Path) -> str:
    path_str = str(path)
    if "/my_project/project-documents/priority/" in path_str:
        return "my_project_priority"
    if "/problems/navier-stokes/" in path_str:
        return "navier_stokes_problem_tree"
    return "loose_filesystem"


def archive_family(path: Path) -> str:
    path_str = str(path)
    if path_str.endswith("Navier-stokes.zip"):
        return "desktop_zip_working_directory"
    if "/problems/navier-stokes/external-paper/dist/" in path_str:
        return "problem_tree_submission_package"
    return "archive_candidate"


def iso_from_epoch(epoch: float) -> str:
    return datetime.fromtimestamp(epoch, tz=timezone.utc).isoformat()


def iso_from_zipinfo(info: zipfile.ZipInfo) -> str:
    dt = datetime(*info.date_time, tzinfo=timezone.utc)
    return dt.isoformat()


def iso_from_tarinfo(info: tarfile.TarInfo) -> str:
    return datetime.fromtimestamp(info.mtime, tz=timezone.utc).isoformat()


def discover_loose_files() -> List[Tuple[Path, str]]:
    discovered: List[Tuple[Path, str]] = []
    for root in SEARCH_ROOT_PATHS:
        for dirpath, dirnames, filenames in os.walk(root, topdown=True):
            dirnames[:] = [d for d in dirnames if d not in SKIP_DIRS]
            current = Path(dirpath)
            if is_excluded_path(current):
                dirnames[:] = []
                continue
            for name in filenames:
                lower = name.lower()
                if not lower.endswith((".tex", ".pdf")):
                    continue
                path = current / name
                if is_excluded_path(path):
                    continue
                discovered.append((path, filesystem_family(path)))
    return discovered


def discover_archives() -> List[Path]:
    archives: List[Path] = []
    for root in SEARCH_ROOT_PATHS:
        for dirpath, dirnames, filenames in os.walk(root, topdown=True):
            dirnames[:] = [d for d in dirnames if d not in SKIP_DIRS]
            current = Path(dirpath)
            if is_excluded_path(current):
                dirnames[:] = []
                continue
            for name in filenames:
                lower = name.lower()
                if lower.endswith(".zip") or lower.endswith(".tar.gz") or lower.endswith(".tgz"):
                    path = current / name
                    path_str = str(path)
                    if (
                        re.search(r"navier|stokes", path_str, re.I)
                        or "/problems/navier-stokes/external-paper/dist/" in path_str
                    ):
                        archives.append(path)
    # Deduplicate with stable order.
    unique: List[Path] = []
    seen: set[str] = set()
    for path in archives:
        key = str(path.resolve())
        if key in seen:
            continue
        seen.add(key)
        unique.append(path)
    return unique


def build_existing_hash_index() -> Dict[str, List[str]]:
    index: Dict[str, List[str]] = defaultdict(list)
    for path in CORPUS_ROOT.rglob("*"):
        if not path.is_file() or path.suffix.lower() not in {".tex", ".pdf"}:
            continue
        try:
            digest = sha256_file(path)
        except OSError:
            continue
        index[digest].append(str(path))
    return index


def existing_state(paths: List[str]) -> str:
    if not paths:
        return "none"
    if all("RecoveredFolderMarker" in path or "Recovered-Laptop-Sweep" in path for path in paths):
        return "contaminated_copy_present"
    return "clean_copy_present"


def destination_root(file_type: str) -> Path:
    return CANONICAL_TEX_ROOT if file_type == "tex" else CANONICAL_PDF_ROOT


def write_loose_file(path: Path, destination: Path) -> None:
    destination.parent.mkdir(parents=True, exist_ok=True)
    stat = path.stat()
    shutil.move(str(path), str(destination))
    os.utime(destination, (stat.st_atime, stat.st_mtime))


def write_bytes_file(data: bytes, destination: Path, mtime_iso: str) -> None:
    destination.parent.mkdir(parents=True, exist_ok=True)
    destination.write_bytes(data)
    try:
        dt = datetime.fromisoformat(mtime_iso)
        ts = dt.timestamp()
        os.utime(destination, (ts, ts))
    except ValueError:
        pass


def classify_loose_candidates(loose_files: Sequence[Tuple[Path, str]]) -> Tuple[List[Candidate], set[str]]:
    pre_scores: Dict[str, Tuple[int, List[str], List[str]]] = {}
    marked_folders: set[str] = set()
    marker_contexts: Dict[str, str] = {}
    for path, _family in loose_files:
        score, positive, negative = evaluate_text(str(path), "")
        pre_scores[str(path)] = (score, positive, negative)
        if score >= 8:
            marked_folders.add(str(path.parent))
            marker_contexts[str(path.parent)] = "path_seed"

    candidates: List[Candidate] = []
    for path, family in loose_files:
        path_key = str(path)
        pre_score, pre_positive, pre_negative = pre_scores[path_key]
        folder_marked = str(path.parent) in marked_folders
        inspect = pre_score > 0 or folder_marked or family == "my_project_priority"
        text = sample_text(path.suffix.lower().lstrip("."), None, path) if inspect else ""
        content_score, content_positive, content_negative = evaluate_text(path_key, text)
        score = pre_score + content_score
        positive = list(dict.fromkeys(pre_positive + content_positive))
        negative = list(dict.fromkeys(pre_negative + content_negative))
        role = infer_role(path.suffix.lower().lstrip("."), text)

        classification = "exclude"
        basis = "no_ns_signal"
        if score >= 10 and not negative:
            classification = "move_now"
            basis = "strong_direct_signal"
        elif folder_marked and score >= 4 and "moral_framework" not in negative and "llm_material" not in negative:
            classification = "move_now"
            basis = "folder_marker_with_support"
        elif family == "my_project_priority" and role == "fragment_tex" and score >= 4:
            classification = "move_now"
            basis = "fragment_variant_in_ns_packet"

        digest = sha256_file(path)
        candidates.append(
            Candidate(
                source_kind="filesystem",
                source_family=family,
                source_root=str(next(root for root in SEARCH_ROOT_PATHS if str(path).startswith(str(root)))),
                source_path=str(path),
                container_path="",
                archive_member="",
                file_type=path.suffix.lower().lstrip("."),
                original_name=path.name,
                normalized_name=normalize_name(path.name),
                document_role=role,
                source_mtime=iso_from_epoch(path.stat().st_mtime),
                marker_context="folder_marker" if folder_marked else "standalone",
                score=score,
                positive_reasons=positive,
                negative_reasons=negative,
                classification=classification,
                decision_basis=basis,
                existing_state="",
                existing_paths=[],
                sha256=digest,
                size=path.stat().st_size,
                destination_path="",
                destination_action="pending",
                uncertainty="" if inspect else "content_uninspected_low_signal",
            )
        )
    return candidates, marked_folders


def classify_archive_candidates(archives: Sequence[Path]) -> List[Candidate]:
    candidates: List[Candidate] = []
    for archive_path in archives:
        family = archive_family(archive_path)
        archive_str = str(archive_path)
        is_ns_package = bool(
            re.search(r"navier|stokes", archive_str, re.I)
            or "/problems/navier-stokes/external-paper/dist/" in archive_str
        )
        if archive_path.suffix.lower() == ".zip":
            with zipfile.ZipFile(archive_path) as handle:
                infos = [info for info in handle.infolist() if not info.is_dir()]
                for info in infos:
                    if info.filename.startswith("__MACOSX/"):
                        continue
                    member_path = Path(info.filename)
                    if member_path.suffix.lower() not in {".tex", ".pdf"}:
                        continue
                    data = handle.read(info)
                    text = sample_text(member_path.suffix.lower().lstrip("."), data, None)
                    score, positive, negative = evaluate_text(f"{archive_str}::{info.filename}", text)
                    role = infer_role(member_path.suffix.lower().lstrip("."), text)
                    classification = "exclude"
                    basis = "archive_member_excluded"
                    if is_ns_package and "moral_framework" not in negative and "llm_material" not in negative:
                        if score >= 2 or role == "standalone_tex":
                            classification = "move_now"
                            basis = "ns_archive_member"
                    digest = sha256_bytes(data)
                    candidates.append(
                        Candidate(
                            source_kind="zip_entry",
                            source_family=family,
                            source_root=str(archive_path.parent),
                            source_path=archive_str,
                            container_path=archive_str,
                            archive_member=info.filename,
                            file_type=member_path.suffix.lower().lstrip("."),
                            original_name=member_path.name,
                            normalized_name=normalize_name(member_path.name),
                            document_role=role,
                            source_mtime=iso_from_zipinfo(info),
                            marker_context="ns_archive" if is_ns_package else "archive",
                            score=score,
                            positive_reasons=positive,
                            negative_reasons=negative,
                            classification=classification,
                            decision_basis=basis,
                            existing_state="",
                            existing_paths=[],
                            sha256=digest,
                            size=len(data),
                            destination_path="",
                            destination_action="pending",
                            uncertainty="",
                        )
                    )
        else:
            with tarfile.open(archive_path, "r:gz") as handle:
                members = [member for member in handle.getmembers() if member.isfile()]
                for member in members:
                    member_path = Path(member.name)
                    if member_path.suffix.lower() not in {".tex", ".pdf"}:
                        continue
                    extracted = handle.extractfile(member)
                    if extracted is None:
                        continue
                    data = extracted.read()
                    text = sample_text(member_path.suffix.lower().lstrip("."), data, None)
                    score, positive, negative = evaluate_text(f"{archive_str}::{member.name}", text)
                    role = infer_role(member_path.suffix.lower().lstrip("."), text)
                    classification = "exclude"
                    basis = "archive_member_excluded"
                    if is_ns_package and "moral_framework" not in negative and "llm_material" not in negative:
                        classification = "move_now"
                        basis = "ns_submission_package_member"
                    digest = sha256_bytes(data)
                    candidates.append(
                        Candidate(
                            source_kind="tar_entry",
                            source_family=family,
                            source_root=str(archive_path.parent),
                            source_path=archive_str,
                            container_path=archive_str,
                            archive_member=member.name,
                            file_type=member_path.suffix.lower().lstrip("."),
                            original_name=member_path.name,
                            normalized_name=normalize_name(member_path.name),
                            document_role=role,
                            source_mtime=iso_from_tarinfo(member),
                            marker_context="ns_archive" if is_ns_package else "archive",
                            score=score,
                            positive_reasons=positive,
                            negative_reasons=negative,
                            classification=classification,
                            decision_basis=basis,
                            existing_state="",
                            existing_paths=[],
                            sha256=digest,
                            size=len(data),
                            destination_path="",
                            destination_action="pending",
                            uncertainty="",
                        )
                    )
    return candidates


def rel_source_prefix(candidate: Candidate) -> str:
    if candidate.source_kind == "filesystem":
        source_path = Path(candidate.source_path)
        if candidate.source_family == "my_project_priority":
            return safe_component("my_project/project-documents/priority")
        if candidate.source_family == "navier_stokes_problem_tree":
            return safe_component("Research-Consolidation/problems/navier-stokes")
        root = Path(candidate.source_root)
        try:
            return safe_component(str(source_path.parent.relative_to(root)))
        except ValueError:
            return safe_component(source_path.parent.name)
    archive_name = safe_component(Path(candidate.container_path).name)
    member_parent = safe_component(str(Path(candidate.archive_member).parent))
    if member_parent == ".":
        return archive_name
    return str(Path(archive_name) / member_parent)


def clean_destination_name(candidate: Candidate) -> str:
    return safe_component(candidate.original_name)


def land_candidates(candidates: List[Candidate], existing_hashes: Dict[str, List[str]]) -> None:
    archive_cache: Dict[str, object] = {}
    for candidate in candidates:
        existing_paths = existing_hashes.get(candidate.sha256, [])
        candidate.existing_paths = existing_paths
        candidate.existing_state = existing_state(existing_paths)
        if candidate.classification != "move_now":
            candidate.destination_action = "skipped_excluded"
            continue
        if candidate.existing_state == "clean_copy_present":
            candidate.destination_action = "skipped_existing_clean_copy"
            continue

        base_root = destination_root(candidate.file_type)
        family_root = base_root / safe_component(candidate.source_family)
        destination = family_root / rel_source_prefix(candidate) / clean_destination_name(candidate)
        destination.parent.mkdir(parents=True, exist_ok=True)
        if destination.exists():
            existing_digest = sha256_file(destination)
            if existing_digest == candidate.sha256:
                candidate.destination_path = str(destination)
                candidate.destination_action = "skipped_existing_same_run"
                continue
            stem = destination.stem
            suffix = destination.suffix
            for idx in range(1, 1000):
                trial = destination.with_name(f"{stem}_dup{idx:02d}{suffix}")
                if not trial.exists():
                    destination = trial
                    break

        if candidate.source_kind == "filesystem":
            write_loose_file(Path(candidate.source_path), destination)
        elif candidate.source_kind == "zip_entry":
            handle = archive_cache.get(candidate.container_path)
            if handle is None:
                handle = zipfile.ZipFile(candidate.container_path)
                archive_cache[candidate.container_path] = handle
            assert isinstance(handle, zipfile.ZipFile)
            data = handle.read(candidate.archive_member)
            write_bytes_file(data, destination, candidate.source_mtime)
        else:
            handle = archive_cache.get(candidate.container_path)
            if handle is None:
                handle = tarfile.open(candidate.container_path, "r:gz")
                archive_cache[candidate.container_path] = handle
            assert isinstance(handle, tarfile.TarFile)
            extracted = handle.extractfile(candidate.archive_member)
            if extracted is None:
                candidate.destination_action = "archive_extract_failed"
                continue
            data = extracted.read()
            write_bytes_file(data, destination, candidate.source_mtime)

        candidate.destination_path = str(destination)
        candidate.destination_action = (
            "moved_from_filesystem" if candidate.source_kind == "filesystem" else "extracted_from_archive"
        )
        existing_hashes[candidate.sha256].append(str(destination))

    for handle in archive_cache.values():
        handle.close()


def summarize(candidates: Sequence[Candidate]) -> Dict[str, object]:
    moved = [candidate for candidate in candidates if candidate.destination_action in {"moved_from_filesystem", "extracted_from_archive"}]
    skipped = [candidate for candidate in candidates if candidate.destination_action.startswith("skipped")]
    source_family_counts = Counter(candidate.source_family for candidate in moved)
    role_counts = Counter(candidate.document_role for candidate in moved)
    contaminated_only = sum(1 for candidate in moved if candidate.existing_state == "contaminated_copy_present")
    return {
        "run_timestamp": RUN_TS,
        "candidate_count": len(candidates),
        "moved_count": len(moved),
        "skipped_count": len(skipped),
        "source_family_counts": dict(source_family_counts),
        "document_role_counts": dict(role_counts),
        "contaminated_only_recovered": contaminated_only,
    }


def write_reports(candidates: Sequence[Candidate], summary: Dict[str, object]) -> None:
    with REPORT_CSV.open("w", newline="", encoding="utf-8") as handle:
        writer = csv.writer(handle)
        writer.writerow(
            [
                "source_kind",
                "source_family",
                "source_root",
                "source_path",
                "container_path",
                "archive_member",
                "file_type",
                "original_name",
                "normalized_name",
                "document_role",
                "source_mtime",
                "marker_context",
                "score",
                "positive_reasons",
                "negative_reasons",
                "classification",
                "decision_basis",
                "existing_state",
                "existing_paths",
                "sha256",
                "size",
                "destination_path",
                "destination_action",
                "uncertainty",
            ]
        )
        for candidate in candidates:
            writer.writerow(
                [
                    candidate.source_kind,
                    candidate.source_family,
                    candidate.source_root,
                    candidate.source_path,
                    candidate.container_path,
                    candidate.archive_member,
                    candidate.file_type,
                    candidate.original_name,
                    candidate.normalized_name,
                    candidate.document_role,
                    candidate.source_mtime,
                    candidate.marker_context,
                    candidate.score,
                    ";".join(candidate.positive_reasons),
                    ";".join(candidate.negative_reasons),
                    candidate.classification,
                    candidate.decision_basis,
                    candidate.existing_state,
                    " | ".join(candidate.existing_paths),
                    candidate.sha256,
                    candidate.size,
                    candidate.destination_path,
                    candidate.destination_action,
                    candidate.uncertainty,
                ]
            )

    REPORT_JSON.write_text(
        json.dumps([asdict(candidate) for candidate in candidates], indent=2),
        encoding="utf-8",
    )
    REPORT_SUMMARY.write_text(json.dumps(summary, indent=2), encoding="utf-8")

    moved = [candidate for candidate in candidates if candidate.destination_action in {"moved_from_filesystem", "extracted_from_archive"}]
    skipped = [candidate for candidate in candidates if candidate.destination_action.startswith("skipped")]

    with REPORT_MOVE.open("w", encoding="utf-8") as handle:
        handle.write("# ns-clean-forensic-move-log.md\n\n")
        for candidate in moved:
            handle.write(
                f"- {candidate.source_kind} | {candidate.source_family} | {candidate.source_path}"
                f"{' :: ' + candidate.archive_member if candidate.archive_member else ''}"
                f" -> {candidate.destination_path} | {candidate.document_role} | {candidate.source_mtime}\n"
            )

    with REPORT_SKIP.open("w", encoding="utf-8") as handle:
        handle.write("# ns-clean-forensic-skipped.md\n\n")
        for candidate in skipped:
            handle.write(
                f"- {candidate.source_kind} | {candidate.source_family} | {candidate.source_path}"
                f"{' :: ' + candidate.archive_member if candidate.archive_member else ''}"
                f" | {candidate.destination_action} | basis={candidate.decision_basis}"
                f" | negative={','.join(candidate.negative_reasons)}\n"
            )


def write_notes(candidates: Sequence[Candidate], summary: Dict[str, object]) -> None:
    moved = [candidate for candidate in candidates if candidate.destination_action in {"moved_from_filesystem", "extracted_from_archive"}]
    loose_moved = [candidate for candidate in moved if candidate.source_family == "my_project_priority"]
    zip_moved = [candidate for candidate in moved if candidate.source_family == "desktop_zip_working_directory"]
    package_moved = [candidate for candidate in moved if candidate.source_family == "problem_tree_submission_package"]
    fragment_variants = [candidate for candidate in loose_moved if candidate.document_role == "fragment_tex"]
    contaminated_recovered = [candidate for candidate in moved if candidate.existing_state == "contaminated_copy_present"]

    root_lines = [
        "# NS Corpus Forensic Recovery Note",
        "",
        f"Date: {datetime.now().strftime('%Y-%m-%d')}",
        "",
        "## Why this pass exists",
        "",
        "This clean pass was run because the prior folder-marker sweep recursively re-ingested the Navier-Stokes corpus itself.",
        "The earlier recovered tree is not canonical: it contains nested recovery paths and cross-problem contamination inside the NS lane.",
        "",
        "## Clean recovery result",
        "",
        f"- Clean run folder: {RUN_ROOT}",
        f"- Clean TeX landing: {CANONICAL_TEX_ROOT}",
        f"- Clean PDF landing: {CANONICAL_PDF_ROOT}",
        f"- Files landed in this pass: {summary['moved_count']}",
        f"- Files whose only prior corpus presence was contaminated recovery: {summary['contaminated_only_recovered']}",
        "",
        "## Core missing material families",
        "",
        "1. `my_project/project-documents/priority`",
        "This folder contributed the clearest external Jan/Mar 2025 proof packet.",
        f"Moved from this family: {len(loose_moved)} files.",
        "It contains four-pillar section files, paired January 2025 PDFs, March 7 2025 standalone TeX revisions, and March 7 2025 inclusion-style fragment variants.",
        "",
        "2. `Desktop/Screenshot/Navier-stokes.zip`",
        "This archive preserved a January 2025 working-directory style source packet that the main corpus did not hold cleanly.",
        f"Moved from this family: {len(zip_moved)} files.",
        "This source adds several TeX items not present as loose originals in the external priority folder, including Section 5, Section 6, Gradient Control, Q(t) papers, multiple global-regularity drafts, and a TeX version of the conclusion document.",
        "",
        "3. `Research-Consolidation/problems/navier-stokes/external-paper/dist/*.tar.gz`",
        "These archives contribute later packaged submission sources and journal/arXiv layouts.",
        f"Moved from this family: {len(package_moved)} files.",
        "These are structurally different from the Jan 2025 standalone note packet: they are assembled paper packages with `main.tex`, `appendix.tex`, bridge sections, and journal-package PDFs.",
        "",
        "## Specific structural differences now recorded",
        "",
        f"- Inclusion-style fragment variants recovered: {len(fragment_variants)}",
        "These fragment files omit `\\documentclass` and the document wrapper, so they are not duplicate standalones; they are assembly-ready section inserts.",
        "- The January zip packet and the March loose files share several titles but are not byte-identical.",
        "The same-titled documents exist in separate states, which preserves revision history rather than duplicate clutter.",
        "- The clean recovery distinguishes standalone papers, fragment includes, PDF outputs, zip working-directory sources, and tarball submission packages.",
        "",
        "## Contamination record from the prior recovery tree",
        "",
        "The previous recovered corpus under `RecoveredFolderMarker` should be treated as non-canonical for source provenance.",
        "It contains cross-lane material from `General`, `Hodge Conjecture`, `P vs NP`, and `Yang-Mills`, plus clearly non-NS titles such as morality/LLM framework documents and untitled drafts.",
        "",
        "## Reports",
        "",
        f"- Inventory CSV: {REPORT_CSV}",
        f"- Manifest JSON: {REPORT_JSON}",
        f"- Move log: {REPORT_MOVE}",
        f"- Skip log: {REPORT_SKIP}",
        f"- Run summary JSON: {REPORT_SUMMARY}",
        f"- Run note: {REPORT_NOTE}",
        "",
    ]
    ROOT_NOTE.write_text("\n".join(root_lines), encoding="utf-8")

    report_lines = [
        "# ns-clean-forensic-note.md",
        "",
        f"Run timestamp: {RUN_TS}",
        "",
        "This clean recovery pass excluded the Navier-Stokes corpus destination tree and re-landed canonical tex/pdf materials from original sources.",
        "",
        "## Summary",
        "",
        json.dumps(summary, indent=2),
        "",
        "## Important source families",
        "",
    ]
    for family in ("my_project_priority", "desktop_zip_working_directory", "problem_tree_submission_package"):
        family_items = [candidate for candidate in moved if candidate.source_family == family]
        report_lines.append(f"### {family}")
        report_lines.append("")
        report_lines.append(f"- moved: {len(family_items)}")
        for candidate in family_items[:25]:
            report_lines.append(
                f"- {candidate.original_name} | role={candidate.document_role} | time={candidate.source_mtime}"
            )
        report_lines.append("")
    REPORT_NOTE.write_text("\n".join(report_lines), encoding="utf-8")


def main() -> None:
    loose_files = discover_loose_files()
    archives = discover_archives()
    existing_hashes = build_existing_hash_index()

    loose_candidates, _ = classify_loose_candidates(loose_files)
    archive_candidates = classify_archive_candidates(archives)
    candidates = loose_candidates + archive_candidates

    land_candidates(candidates, existing_hashes)
    summary = summarize(candidates)
    write_reports(candidates, summary)
    write_notes(candidates, summary)

    print(json.dumps(summary, indent=2))
    print(f"RUN_ROOT={RUN_ROOT}")
    print(f"ROOT_NOTE={ROOT_NOTE}")


if __name__ == "__main__":
    main()
