# Authoritative PDF Provenance - 2026-06-07

Supersedes the June 2 provenance note for the current Codex-owned `papers/**`
Navier-Stokes machine-paper track.

Artifact:

- Path: `build/output/authoritative-edge/navier-stokes.pdf`
- SHA-256: `bc926f4568e5a2b9bb1a4e2a3fcebe84e47098292349e76fab3a0cfe639f24f1`
- Pages: 33
- File size: 462,148 bytes
- PDF engine: `pdfTeX-1.40.28`
- Created: `2026-06-07 19:16:50 MDT`

Source:

- Path: `manuscript/generated/main.tex`
- SHA-256: `7b6ad3a47dff5bfb95459d25306e5f23af691d446649101bc0810440f287ebf0`
- Lines: 2,014
- Export copy: `build/output/authoritative-edge/navier-stokes.tex`
- Export copy SHA-256: `7b6ad3a47dff5bfb95459d25306e5f23af691d446649101bc0810440f287ebf0`

Build and visual checks:

- Build command: `pdflatex -interaction=nonstopmode -halt-on-error -jobname=navier-stokes -output-directory=build/output/authoritative-edge manuscript/generated/main.tex`
- Build passes: yes, two passes completed.
- Log scan: no fatal errors, LaTeX errors, undefined controls, or overfull boxes found.
- Render check: first page and final page rendered to PNG and inspected.

Judgment:

This is the current Codex-owned machine-paper track. It is separate from the
preferred `problems/**` human/app-aligned PDF track. Both tracks remain
first-class work surfaces.

The June 7 evening source expands the previous 20-page shape correction into a
33-page referee-scale draft with explicit Clay setup, continuation use, terminal
record entry, Pack/Part/Field exhaustion, whole-space Duhamel source split,
dyadic survivor face landing, no-circularity audit, referee objection map, and
dependency proof ledger.

Clay readiness is not claimed. The paper now marks the final Clay-closing bridge
as conditional: a classified `Exit(Q;O_work)` record still needs a noncircular
argument showing it cannot be the actual finite terminal Clay obstruction for
the original smooth-data solution. The whole-space R3 exterior branch also still
needs either a direct noncircular `H^s` tail theorem or an accepted endpoint
exclusion for the dyadic survivor branch.
