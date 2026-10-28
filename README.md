# Navier-Stokes Research Record

Research notes, theorem development, manuscript sources, manuscripts, and retained revision history by Thomas Birnie.

## Current proof

[CANONICAL.json](CANONICAL.json) identifies the current combined manuscript, its 42 source inputs, the portable custody object and the governing sanitized proof sources by their hashes.

- [Read the current combined manuscript](papers/navier-stokes/unified-unforced-forced-openai-refutation-20260924/unified-unforced-forced-openai-refutation.pdf). Begin with “How the Proof Works.”
- [Read that opening as a standalone excerpt](papers/navier-stokes/unified-unforced-forced-openai-refutation-20260924/excerpt/how-the-proof-works-ns-excerpt.pdf).
- [Download the current manuscript source](papers/navier-stokes/unified-unforced-forced-openai-refutation-20260924/current-source.zip), or [rebuild the manuscript](papers/navier-stokes/unified-unforced-forced-openai-refutation-20260924/).
- [Download the portable proof object](proof/NS.proof-handoff.zip) and [read its instructions](proof/START.md).
- [Read the current sanitized proof-source index](proof/current-sources/SOURCE-INDEX.json).
- [Figshare record](https://doi.org/10.6084/m9.figshare.34005666). The current Git edition is dated October 28, 2026; the manifest records whether that exact PDF has also reached Figshare.

Earlier papers, source snapshots, attempts and working notes remain in the retained research directories and edition archives. Their source dates and original scope remain available. The current reading route starts with the manuscript and sources identified above.

## Forced manuscript retained in this archive

**Global Smoothness for the Forced Three-Dimensional Incompressible Navier--Stokes Equations**

September 2026 version.

- [Read the PDF](papers/navier-stokes/global-smoothness-forced-navier-stokes-20260921/global-smoothness-forced-navier-stokes.pdf)
- [LaTeX source](papers/navier-stokes/global-smoothness-forced-navier-stokes-20260921/main.tex)

This archive contains the September 2026 forced Navier–Stokes manuscript; the other research directories retain historical working material.

## Contents

- `problems/navier-stokes/`: research notes and theorem-development files.
- `papers/navier-stokes/`: manuscript sources, documents, and paper artifacts.
- `proof/`: the current portable custody object, reader instructions, and release hashes.
- `workspaces/VSC-workspaces/navier-stokes/`: the manuscript workspace.
- `archive/navier-stokes/`: earlier NS source material.
- `provenance/`: retained commit mappings and the captured file inventory.

These materials include working notes, abandoned attempts, conditional arguments, and draft artifacts. Inclusion records research activity; it does not certify every mathematical claim.

## History

The history was extracted from several source repositories. Recorded author and commit timestamps are preserved for retained historical commits. Filtering changes commit identifiers. `provenance/commit-map.csv` connects each retained source revision to its exported revision.

Revision messages and contact fields are standardized. This is a selected NS research archive, not a full export of its source workspaces.

Source histories are joined by new archive commits. Those joins do not represent historical merges. Work that was present on disk without a Git commit is captured in the new file-snapshot commit; no earlier commit date is invented for it.

Git timestamps and filesystem modification times are recorded metadata. They are not independent certification of when a result was first written or publicly disclosed.

The directory grouping of retained files is preserved. Shared private infrastructure is outside this release, so tools depending on that infrastructure may need separate adaptation.

