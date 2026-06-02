# Authoritative PDF Provenance - 2026-06-02

Resolved worker queue item: `navier-stokes-verify-authoritative-pdf-provenance`.

Artifact:

- Path: `build/output/authoritative-edge/navier-stokes.pdf`
- SHA-256: `b7446769dc6b3c56b9cf6a7b7af1e831fc05cc87b0f39fb22cd474da7f5a0c80`
- PDF metadata: 1222 pages, `pdfTeX-1.40.28`, created `2026-06-01 13:53:11 MDT`
- Child-repo dirt before resolution: this PDF only

Judgment:

This PDF is preserved as an authoritative-edge export artifact. It is not treated
as a regeneration from `manuscript/generated/main.tex`, and it must not be
overwritten by the smaller scratch build output from `build/main.pdf`.

Resolution:

Commit the PDF as a preserved export artifact, with this note recording the
source/export split. Future paper-worker runs should see the child repo as clean
and continue theorem-paper work from the machine source and export surfaces.
