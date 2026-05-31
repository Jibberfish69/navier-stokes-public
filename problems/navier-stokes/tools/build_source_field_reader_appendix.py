#!/usr/bin/env python3
"""Build the Navier-Stokes source-field appendix as prose-first reader material.

This generator deliberately rejects escaped source text, path/provenance material,
and formula-heavy fragments. The appendix is allowed to be large, but its pages
must read like recovered mathematical prose rather than a raw source dump.
"""

from __future__ import annotations

import re
import subprocess
import unicodedata
from pathlib import Path


ROOT = Path(__file__).resolve().parents[3]
NS_ROOT = ROOT / "problems" / "navier-stokes"
OUT = NS_ROOT / "submission-bundle" / "source-field-reader-appendix.tex"
MASTER = NS_ROOT / "source-forensics" / "master-program-analysis.md"
THEOREM_DIR = NS_ROOT / "theorem-construction"
TARGET_BYTES = 4_150_000

FORBIDDEN = re.compile(
    r"(problems/navier-stokes|submission-bundle|source-forensics|theorem-construction|"
    r"system/runner|sha256|\bbytes\b|\bmtime\b|\.(?:md|tex|ya?ml|rb|py|json|txt|pdf)\b|"
    r"SOURCE\s+\d{4}|CATALOG OF CHRONOLOGICAL SOURCES|Chronological Source Chronicle|"
    r"Source chronicle page|lines\s+[0-9])",
    re.I,
)
PROCESS_RESIDUE = re.compile(
    r"\b(repo|on disk|formalized on disk|promotion\w*|release surfaces?|matrix/review|"
    r"review surfaces?|audit records?|operational action|status file|status surface|"
    r"project machinery|generated summaries|generated surface|bundle bookkeeping|check performed|services?|"
    r"define or prove|score=-?\d+|create the sharp|extract the residual defect|classify its invariant data|"
    r"full-MPP closure|submission readiness|theorem creation|companion return note|chatgpt|loop closure audit|"
    r"this run reached|requested equivalent form|requested sequence)\b",
    re.I,
)
EARLY_NON_NS = re.compile(
    r"\b(Movement\s+0|moral|ethical|ethics|black[- ]?hole|cosmolog|\bCMB\b)\b",
    re.I,
)
RAW_MATH_RESIDUE = re.compile(
    r"(textbackslash|textasciicircum|textasciitilde|begin\(|end\(|substack|"
    r"boxed\(|texttt\(|frac\(|\bSothe\b|\binL\^|\bimplies[A-Z]|\b[a-z]{4,}and[A-Z]?)"
)
TABLE_LINE_RESIDUE = re.compile(
    r"^\s*\|[^|\n]{1,160}\|[^|\n]{1,160}\||"
    r"^\s*\|?\s*:?-{2,}:?\s*(?:\|\s*:?-{2,}:?\s*)+\|?\s*$"
)
TABLE_RESIDUE = re.compile(r"^\s*\|[^|\n]{1,160}\|[^|\n]{1,160}\|", re.M)
NOTE_STATUS_RESIDUE = re.compile(r"(?:^(?:status|claimed status)\s*:|\bcurrent status\s*:)", re.I)
PROMPT_RESIDUE = re.compile(
    r"\b(?:the prompt asks|new prompt|requested prompt|readback|release yaml|yamls|this note records)\b",
    re.I,
)
MATH_ASCII_RESIDUE = re.compile(
    r"<=|>=|\bint_\d|\b[A-Za-z]+_(?:[A-Za-z]{2,}|\{[A-Za-z]{2,}\})|/[a-z]{4,}"
)
MATH_LABEL_RESIDUE = re.compile(
    r"\b[A-Z][A-Za-z0-9]*(?:\.[A-Za-z0-9_{}\\]+)+\b|"
    r"\b[A-Z][a-z]+(?:[A-Z][A-Za-z0-9]+){1,}\b|"
    r"\b(?:Pack|Part|Field|Member|Exit|OriginalSmoothData|SourcePulseExclusion|"
    r"LocalPositiveSourceCarleson|PositiveSourceDepletion|TerminalSourceCoherence|"
    r"ActiveVorticityCoherence|ScaleInvariantParent|PositiveActiveCarlesonReserve|"
    r"ScaleCriticalTreeCarleson|SquareSourceEstimate|DiffuseParentEntropyCharge|"
    r"EntropyCarleson|Jumpavg|JumpAvg|EndNS|NOHOP|HFG|PCTP|READ|COVER|"
    r"DTC|SCF|TTU|FPC|FFPB|FFSRC|FCI|LCI|CSP|OFP|CFI|CJ|ORIGIN|AVG|"
    r"ATD|SGC|BASAC|ASAC|FIRP|SSE)\b"
)
NOT_BUT = re.compile(r"\bnot\b[^.\n]{0,160}\bbut\b", re.I)
DANGLING_REFERENCE = re.compile(
    r"(?:\b(?:recorded|localized|isolated|captured|supplied|reduced|shown|proved|closed)\s+(?:separately\s+)?(?:in|by)|"
    r"\bone of the following:|\ball of the following:|\bthe following:|"
    r"\breopened at:|\bnarrows the next target to:|\bthe exact remaining theorem burden is still:|"
    r"\bcoming from|\bthe companion [a-z-]+ note|\bthe follow-up (?:audit|split audit|note|resolution note))\s*$",
    re.I,
)
DANGLING_SENTENCE_TAIL = re.compile(
    r"(?::|\b(?:with|where|thus|hence|therefore)|"
    r"\b(?:does not|do not|did not|cannot|must|would|should|could)\s+"
    r"(?:supply|prove|yield|give|show|force|produce|close))\s*$",
    re.I,
)
SKIP_NAME = re.compile(r"(^ym-|yang|riemann|hodge|bsd|birch|p-vs-np|pnp|pvnp|theorem-creation)", re.I)

REPLACEMENTS = {
    "∎": ".",
    "□": ".",
    "→": " to ",
    "⇒": " implies ",
    "⟹": " implies ",
    "⇔": " iff ",
    "↦": " maps to ",
    "≤": "<=",
    "≥": ">=",
    "≠": " not equal ",
    "≈": " approximately ",
    "∞": " infinity ",
    "∧": " and ",
    "∨": " or ",
    "¬": " not ",
    "∀": " for all ",
    "∃": " exists ",
    "∈": " in ",
    "∉": " not in ",
    "⊂": " subset ",
    "⊆": " subseteq ",
    "∂": " partial ",
    "∇": " gradient ",
    "Δ": " Delta ",
    "Γ": "Gamma",
    "γ": "gamma",
    "Φ": "Phi",
    "φ": "phi",
    "Ψ": "Psi",
    "ψ": "psi",
    "Ω": "Omega",
    "ω": "omega",
    "ε": "epsilon",
    "θ": "theta",
    "λ": "lambda",
    "Λ": "Lambda",
    "μ": "mu",
    "ν": "nu",
    "τ": "tau",
    "σ": "sigma",
    "α": "alpha",
    "β": "beta",
    "κ": "kappa",
    "ρ": "rho",
    "η": "eta",
    "δ": "delta",
    "ζ": "zeta",
    "–": "-",
    "—": "-",
    "−": "-",
    "“": '"',
    "”": '"',
    "‘": "'",
    "’": "'",
    "…": "...",
    "\u00a0": " ",
}


def normalize_ascii(text: str) -> str:
    for old, new in REPLACEMENTS.items():
        text = text.replace(old, new)
    text = unicodedata.normalize("NFKD", text).encode("ascii", "ignore").decode("ascii")
    text = "".join(ch if ch in "\n\t\r" or 32 <= ord(ch) <= 126 else " " for ch in text)
    return text.strip()


def latex_escape(text: str) -> str:
    text = normalize_ascii(text)
    replacements = {
        "\\": r"\textbackslash{}",
        "&": r"\&",
        "%": r"\%",
        "$": r"\$",
        "#": r"\#",
        "_": r"\_",
        "{": r"\{",
        "}": r"\}",
        "~": r"\textasciitilde{}",
        "^": r"\textasciicircum{}",
    }
    return "".join(replacements.get(ch, ch) for ch in text)


def clean_inline(text: str) -> str:
    text = normalize_ascii(text)
    text = re.sub(r"\[[^\]]*\]\([^)]*\)", lambda m: m.group(0).split("](")[0].strip("["), text)
    text = re.sub(r"<[^>]+>", " ", text)
    text = text.replace("`", "")
    text = text.replace("**", "")
    text = text.replace("~", " approximately ")
    text = re.sub(r"\\[A-Za-z]+", " ", text)
    text = re.sub(r"\\.", " ", text)
    text = text.replace("{", " ").replace("}", " ")
    text = text.replace("_", " ")
    text = text.replace("^", " ")
    text = re.sub(r"\bon disk\b", "in the current written argument", text, flags=re.I)
    text = re.sub(r"\bformalized on disk\b", "recorded in the current written argument", text, flags=re.I)
    text = re.sub(r"\brepo surfaces?\b", "source surfaces", text, flags=re.I)
    text = re.sub(r"\brepo\b", "source record", text, flags=re.I)
    text = re.sub(r"\bQED\.?\b", "", text)
    text = re.sub(r"\bsquare\b", "", text)
    text = re.sub(r"\binL\b", "in L", text)
    text = re.sub(r"\bimplies([A-Z])", r"implies \1", text)
    text = re.sub(r"\bSothe\b", "So the", text)
    text = re.sub(r"\b[Tt]his note\b", lambda m: "This section" if m.group(0)[0].isupper() else "this section", text)
    text = re.sub(r"([a-z])([A-Z][a-z])", r"\1 \2", text)
    text = re.sub(r"\s+", " ", text).strip()
    text = re.sub(
        r"\s+(?:Both branches were closed in|The follow-up(?: note)?|The companion return note)\s*:?\s*$",
        "",
        text,
        flags=re.I,
    ).strip()
    text = re.sub(r"\s+It would require one of the same missing inputs:\s*$", "", text).strip()
    text = re.sub(r"\s+Equivalently, after terminal extraction there is a positive Radon measure:\s*$", "", text).strip()
    text = re.sub(r"\s+The parent theorem is first reduced by\s*$", "", text).strip()
    text = re.sub(r"\s+It proves the non-Zeno entrance-leaf decay already\s*$", "", text).strip()
    return text


def too_formula_like(text: str) -> bool:
    if RAW_MATH_RESIDUE.search(text):
        return True
    symbol_count = sum(text.count(ch) for ch in "{}_^=<>|[]")
    if symbol_count > max(12, len(text) * 0.045):
        return True
    compact_tokens = re.findall(r"\b[A-Za-z]+(?:[-_][A-Za-z0-9]+){3,}\b", text)
    if len(compact_tokens) > 3:
        return True
    if re.search(r"\b(?:begin|end|substack|boxed|texttt|frac|tag)\b", text):
        return True
    return False


def keep_paragraph(text: str) -> bool:
    if len(text) < 80:
        return False
    if FORBIDDEN.search(text) or PROCESS_RESIDUE.search(text) or EARLY_NON_NS.search(text):
        return False
    if too_formula_like(text):
        return False
    if TABLE_RESIDUE.search(text):
        return False
    if NOTE_STATUS_RESIDUE.search(text) or PROMPT_RESIDUE.search(text):
        return False
    if NOT_BUT.search(text):
        return False
    if DANGLING_REFERENCE.search(text):
        return False
    if DANGLING_SENTENCE_TAIL.search(text):
        return False
    if re.match(r"^[a-z]", text) and not re.match(r"^(where|provided|for|and|so|then|thus|if|when|does)\b", text):
        return False
    if text.count(".") + text.count("?") + text.count("!") == 0:
        return False
    return True


def clean_math_block(text: str) -> str | None:
    text = normalize_ascii(text).strip()
    if not text:
        return None
    text = "\n".join(line.rstrip() for line in text.splitlines() if line.strip())
    text = re.sub(r"\\tag\{[^}]*\}", "", text)
    text = text.replace(r"\Chi", r"\chi")
    text = text.replace(r"\Alpha", r"\alpha")
    text = text.replace(r"\fint", r"\int")
    text = text.replace(r"\mathscr", r"\mathcal")
    text = text.replace(r"\centernot\Longrightarrow", r"\not\Longrightarrow")
    text = text.replace("_{fullSCF}", r"_{\mathrm{fullSCF}}")
    text = text.replace("SCF_{base}", r"\mathrm{SCF}_{\mathrm{base}}")
    text = text.replace("Jump_{avg}", r"\mathrm{Jump}_{\mathrm{avg}}")
    text = text.replace("Field_{avg}", r"\mathrm{Field}_{\mathrm{avg}}")
    text = text.replace("r_{good}", r"r_{\mathrm{good}}")
    if FORBIDDEN.search(text) or PROCESS_RESIDUE.search(text) or EARLY_NON_NS.search(text):
        return None
    if "?" in text or "`" in text or "\\texttt" in text or "\\verb" in text or "\\textbf" in text:
        return None
    if "\\boxed" in text and "\\text{" in text:
        return None
    if re.search(r"\\text\{[^{}]*[_^][^{}]*\}", text):
        return None
    if MATH_ASCII_RESIDUE.search(text):
        return None
    if "=>" in text or re.search(r"[A-Za-z]\\ [A-Za-z]", text):
        return None
    if MATH_LABEL_RESIDUE.search(text):
        return None
    if NOT_BUT.search(text):
        return None
    if re.fullmatch(r"(?:\\text\{[^{}]*\}[,;.]?\s*)+", text, re.S):
        return None
    if re.fullmatch(r"\\boxed\{\s*\\text\{[^{}]*\}\.?\s*\}", text, re.S):
        return None
    textless = re.sub(r"\\text\{[^{}]*\}", "", text)
    macroless = re.sub(r"\\[A-Za-z]+", "", textless)
    if not re.search(r"[A-Za-z0-9]", macroless):
        return None
    if "\\text{" in text and len(text) > 320:
        return None
    if re.search(r"\b[A-Za-z]+_[A-Za-z0-9]+_[A-Za-z0-9_]*\b", text):
        return None
    if text.count("{") != text.count("}"):
        return None
    if len(text.splitlines()) > 18 or len(text) > 1_800:
        return None
    return text


def title_from_path(path: Path) -> str:
    title = path.stem
    title = re.sub(r"^[0-9]{4,}[-_]*", "", title)
    title = re.sub(r"-[0-9a-f]{8,}$", "", title)
    title = re.sub(r"-20[0-9]{6}$", "", title)
    words = [w for w in re.split(r"[-_\s]+", title) if w]
    words = [w for w in words if w.lower() not in {"mpp", "mcp", "ttu", "chatgpt"}]
    cleaned = " ".join(words)
    cleaned = re.sub(r"\bA\b", "A", cleaned)
    return cleaned.title()[:96]


def title_from_markdown(raw: str, path: Path) -> str:
    for line in raw.splitlines()[:30]:
        if line.startswith("# "):
            title = clean_inline(line[2:])
            if title and not FORBIDDEN.search(title) and not PROCESS_RESIDUE.search(title):
                return title[:96]
    return title_from_path(path)


def source_paths() -> list[Path]:
    paths = [p for p in THEOREM_DIR.glob("*.md") if not SKIP_NAME.search(p.stem)]
    order: dict[Path, int] = {}
    try:
        proc = subprocess.run(
            ["git", "log", "--reverse", "--format=@@@%ct", "--name-only", "--", str(THEOREM_DIR)],
            cwd=ROOT,
            stdout=subprocess.PIPE,
            stderr=subprocess.DEVNULL,
            text=True,
            timeout=30,
            check=False,
        )
        ts = 0
        for line in proc.stdout.splitlines():
            if line.startswith("@@@"):
                try:
                    ts = int(line[3:])
                except ValueError:
                    ts = 0
            elif line.strip():
                p = Path(line.strip())
                if p in paths and p not in order:
                    order[p] = ts
    except Exception:
        pass
    return sorted(paths, key=lambda p: (order.get(p, int(p.stat().st_mtime)), p.name))


def blocks_from_markdown(raw: str) -> list[tuple[str, str]]:
    raw = normalize_ascii(raw)
    lines = raw.splitlines()
    if lines and lines[0].strip() == "---":
        for idx, line in enumerate(lines[1:], 1):
            if line.strip() == "---":
                lines = lines[idx + 1 :]
                break

    blocks: list[tuple[str, str]] = []
    buf: list[str] = []
    code_lang: str | None = None
    code_buf: list[str] = []

    def flush() -> None:
        nonlocal buf
        if not buf:
            return
        text = clean_inline(" ".join(buf))
        if keep_paragraph(text):
            blocks.append(("text", text))
        buf = []

    def flush_code() -> None:
        nonlocal code_buf
        if code_lang == "math":
            text = clean_math_block("\n".join(code_buf))
            if text:
                blocks.append(("math", text))
        code_buf = []

    for line in lines:
        stripped = line.strip()
        if stripped.startswith("```"):
            if code_lang is not None:
                flush_code()
                code_lang = None
            else:
                flush()
                code_lang = stripped[3:].strip().lower() or ""
            continue
        if code_lang is not None:
            code_buf.append(line)
            continue
        if not stripped or stripped.startswith("---"):
            flush()
            continue
        if stripped.startswith("#"):
            flush()
            continue
        if FORBIDDEN.search(stripped) or PROCESS_RESIDUE.search(stripped) or EARLY_NON_NS.search(stripped):
            flush()
            continue
        if NOTE_STATUS_RESIDUE.search(stripped) or PROMPT_RESIDUE.search(stripped):
            flush()
            continue
        if TABLE_LINE_RESIDUE.search(stripped):
            flush()
            continue
        stripped = re.sub(r"^[-*+]\s+", "", stripped)
        stripped = re.sub(r"^\d+[.)]\s+", "", stripped)
        stripped = re.sub(r"^>\s*", "", stripped)
        buf.append(stripped)
    flush()
    return blocks


def render_source(path: Path, master_mode: bool = False) -> str:
    raw = path.read_text(errors="replace")
    if master_mode:
        marker = "## Original Framework"
        index = raw.find(marker)
        if index >= 0:
            raw = raw[index:]
    title = "Canonical Source Stack And Original Framework" if master_mode else title_from_markdown(raw, path)
    if PROMPT_RESIDUE.search(title):
        return ""
    blocks = blocks_from_markdown(raw)
    text_count = sum(1 for kind, _value in blocks if kind == "text")
    if text_count < 2:
        return ""
    lines = [f"\\subsection{{{latex_escape(title)}}}\n"]
    text_seen = 0
    math_seen = 0
    for kind, value in blocks:
        if kind == "text":
            if text_seen >= 12:
                continue
            lines.append(latex_escape(value) + "\n")
            text_seen += 1
        elif kind == "math":
            if math_seen >= 5:
                continue
            lines.append("\\[\n" + value.strip() + "\n\\]\n")
            math_seen += 1
        if text_seen >= 12 and math_seen >= 5:
            break
    return "\n".join(lines) + "\n"


def build() -> None:
    pieces = [
        "\\section{Source-Field Reader Appendix}\n",
        latex_escape(
            "This appendix reconstructs recovered Navier-Stokes source work as reader-facing mathematical material. "
            "It is not a source inventory, provenance manifest, or page-count ledger. Retained material is included "
            "only when it explains a definition, reduction, estimate, obstruction, failed attempt that changes the "
            "proof burden, or CM witness logic for Pack, Part, Field, and readout."
        )
        + "\n",
    ]
    pieces.append(render_source(MASTER, master_mode=True))
    total = sum(len(piece.encode()) for piece in pieces)
    used = 0
    for path in source_paths():
        rendered = render_source(path)
        if not rendered:
            continue
        pieces.append(rendered)
        total += len(rendered.encode())
        used += 1
        if total >= TARGET_BYTES:
            break
    pieces.append("\\subsection{Reader-Facing Closure Of The Source Field}\n")
    pieces.append(
        latex_escape(
            "The source field is long because the proof program is long. Its length does not prove regularity. "
            "The proof force comes only when a recovered object is placed on the same witness record and then read "
            "through carrier, participation, and field coherence. Source material becomes proof material only through "
            "a selected terminal packet, a pass-side membership readout, a first Pack, Part, or Field face failure, "
            "or a clearly quarantined support role."
        )
        + "\n"
    )
    text = "\n".join(piece for piece in pieces if piece)
    text = normalize_ascii(text)
    bad_lines = []
    in_display_math = False
    for line in text.splitlines():
        if line.strip() == "\\[":
            in_display_math = True
            continue
        if line.strip() == "\\]":
            in_display_math = False
            continue
        if line.startswith(("\\section{", "\\subsection{")):
            continue
        if FORBIDDEN.search(line) or PROCESS_RESIDUE.search(line):
            bad_lines.append(line)
            continue
        if in_display_math and MATH_LABEL_RESIDUE.search(line):
            bad_lines.append(line)
            continue
        if in_display_math and MATH_ASCII_RESIDUE.search(line):
            bad_lines.append(line)
            continue
        if NOT_BUT.search(line):
            bad_lines.append(line)
            continue
        if not in_display_math and TABLE_RESIDUE.search(line):
            bad_lines.append(line)
            continue
        if not in_display_math and (NOTE_STATUS_RESIDUE.search(line) or PROMPT_RESIDUE.search(line)):
            bad_lines.append(line)
            continue
        if not in_display_math and DANGLING_SENTENCE_TAIL.search(line):
            bad_lines.append(line)
            continue
        if not in_display_math and RAW_MATH_RESIDUE.search(line):
            bad_lines.append(line)
    if bad_lines:
        sample = "\n".join(bad_lines[:10])
        raise SystemExit(f"refusing to write source-field appendix with residue:\n{sample}")
    OUT.write_text(text.rstrip() + "\n")
    print(f"SOURCE_FIELD_READER_APPENDIX sources={used} bytes={OUT.stat().st_size}")


if __name__ == "__main__":
    build()
