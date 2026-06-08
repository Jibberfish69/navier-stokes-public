# Authoritative PDF Provenance - 2026-06-07, refreshed 2026-06-08

Supersedes the June 2 provenance note for the current Codex-owned `papers/**`
Navier-Stokes machine-paper track.

Artifact:

- Path: `build/output/authoritative-edge/navier-stokes.pdf`
- SHA-256: `b7c610f7d8ed18e05b8c7fde51591a4ab1d9c3a6555de447ef23e1adfb8b97ad`
- Pages: 47
- File size: 513,323 bytes
- PDF engine: `pdfTeX-1.40.28`
- Created: `2026-06-08 02:31:24 MDT`

Source:

- Path: `manuscript/generated/main.tex`
- SHA-256: `a51052a894382c5ed6b3572d766c70b3d83df6f01393c640f89bb9a4bb64987d`
- Lines: 1,997
- Export copy: `build/output/authoritative-edge/navier-stokes.tex`
- Export copy SHA-256: `a51052a894382c5ed6b3572d766c70b3d83df6f01393c640f89bb9a4bb64987d`
- Export copy lines: 1,997

Companion PDF track:

- Path: `problems/navier-stokes/submission-bundle/navier-stokes-human-submission.pdf`
- Role: preferred `problems/**` human/app-aligned submission track
- SHA-256: `f450e756f5f0d8bcf69fd2019b0d96af7a91a8e339c175e3a2c63cf067b9bc9e`
- Pages: 1082
- File size: 3,940,256 bytes
- Created: `2026-06-08 02:31:15 MDT`
- Required for Clay submission: yes

Build and visual checks:

- Build command: `pdflatex -interaction=nonstopmode -halt-on-error -jobname=navier-stokes -output-directory=build/output/authoritative-edge manuscript/generated/main.tex`
- Build passes: yes, two passes completed.
- Log scan: no fatal errors, LaTeX errors, undefined controls, or overfull boxes found.
- Render check: first page and final page rendered to PNG and inspected.

Judgment:

This is the current Codex-owned machine-paper track. It is separate from the
preferred `problems/**` human/app-aligned PDF track. Both tracks remain
first-class work surfaces and both are required for Clay submission readiness.

The refreshed June 8 source is a 34-page referee-scale draft with explicit Clay
setup, continuation use, terminal record entry, Pack/Part/Field exhaustion,
whole-space Duhamel source split, dyadic survivor face landing, no-circularity
audit, referee objection map, and dependency proof ledger.

Clay readiness follows the current direct-live CM proof authority, not the older
June 1 generic bridge wording. The paper now uses the finite-obstruction
inventory readout: every promoted finite terminal obstruction row enters the CM
test and lands in Pack, Part, or Field, while the pass branch is the only
in-class continuation branch. `live-theorem-edge.yaml` records that gate as
`passed-current-finite-obstruction-inventory-gate` with no blockers. The
whole-space R3 exterior survivor branch is consumed by the CM endpoint matrix;
the direct positive exterior `H^s` tail theorem remains a stronger optional
export result, not the live CM blocker.
