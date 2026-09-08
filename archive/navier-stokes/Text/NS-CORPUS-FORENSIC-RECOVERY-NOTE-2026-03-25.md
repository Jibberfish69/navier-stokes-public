# NS Corpus Forensic Recovery Note

Date: 2026-03-25

## Canonical location

The Navier-Stokes `.tex` and `.pdf` recovery is now consolidated into one flat canonical folder:

`/Users/thomasbirnie/Research-Consolidation/Millennium Prize Problems/Navier-Stokes/Consolidated-NS-TEX-PDF-Corpus`

There are no nested landing folders inside that corpus root. All recovered artifacts now live directly in that one location, with provenance encoded in the filename.

The superseded intermediate split-layout root was moved out of the main NS tree to:

`/Users/thomasbirnie/Research-Consolidation/Millennium Prize Problems/Navier-Stokes/Recovered-Laptop-Sweep/superseded-layout-Consolidated-NS-TEX-PDF-Corpus-20260325-103223`

The earlier `RecoveredFolderMarker` trees under `TeX/Recovered` and `PDFs/Recovered` remain non-canonical and should be treated as contaminated recovery history, not as authoritative corpus state.

## What this pass actually fixed

The prior recovery had two separate problems:

1. It re-ingested the NS corpus itself and created recursive nested recovery paths.
2. It landed the clean recovery into source-family buckets instead of one usable corpus location.

This pass corrected both:

- the clean source families were preserved
- macOS tarball metadata junk was filtered out
- every recovered `.tex` and `.pdf` was moved into one canonical NS corpus folder
- the old split layout was archived out of the main NS tree

## Corpus counts

- recovered corpus artifacts: `74`
- recovered `.tex`: `65`
- recovered `.pdf`: `9`
- excluded metadata artifacts: `1`
- flat corpus directory entries: `78`

Those `78` root entries consist of:

- `74` recovered artifacts
- `4` forensic support files:
  - `canonical-summary.json`
  - `canonical-manifest.json`
  - `canonical-inventory.csv`
  - `NS-CANONICAL-CORPUS-FORENSIC-NOTE.md`

## Source families that were missing from the main corpus

The comparison baseline here is the preexisting non-`Recovered` NS corpus only, meaning `TeX`, `PDFs`, and `Projects` with all `Recovered` paths excluded.

Against that baseline, the recovered material filled three distinct missing families:

### 1. January 2025 zip working packet

Source:

`/Users/thomasbirnie/Desktop/Screenshot/Navier-stokes.zip`

Date window:

`2025-01-08` through `2025-01-29`

Recovered count:

`28` artifacts

This family is the missing January working-directory packet. It contains standalone TeX drafts that were not present cleanly in the main corpus. These are not packaged journal sources; they are active working manuscripts and route variants.

Key missing titles recovered from this packet:

- `A Framework Toward the Millennium Prize Problem on the Navier-Stokes Equations.tex`
- `A Rigorous Theoretical Framework for Global Regularity of the Navier-Stokes Equations.tex`
- `A Unified Framework for the Global Regularity of 3D Navier-Stokes Equations ... .tex`
- `Compactness Proof for Discrete Navier-Stokes Solutions.tex`
- `Comparisons to Known Results.tex`
- `Conclusion- Smooth Solutions for All Time.tex`
- `Energy Boundedness via Q(t) - A Refined Framework for Global Regularity.tex`
- `Energy Boundedness via Q(t) for Global Regularity.tex`
- `General Framework for Partial Differential Equations (PDEs).tex`
- `Global Regularity Framework for Arbitrary Initial Data in L2.tex`
- `Global Regularity for the 3D Navier-Stokes Equations.tex`
- `Global Regularity of the 3D Navier-Stokes Equations.tex`
- `Gradient Control Through Geometric Arguments.tex`
- `Mild Initial Conditions for Global Regularity.tex`
- `Proof of Global Regularity for Morphic-Regularized Navier-Stokes Equations.tex`
- `Rigorous Mapping Between Discrete and Continuous Representations of the Navier-Stokes Equations and Proof of Global Smoothness.tex`
- `Section 2- Scale-Barrier Principle.tex`
- `Section 3- Monotone Functional.tex`
- `Section 4- Non-Sobolev Compactness.tex`
- `Section 5- Curvature-Based Regularity.tex`
- `Section 6- Interdependencies Among Principles.tex`
- `Strong Convergence in L2 Using Compactness.tex`
- `Toward Global Regularity for Navier-Stokes Equations.tex`
- `Towards a Proof of Global Regularity for the Navier-Stokes Equations.tex`
- `Unifying Stability in PDEs- A Single Invariance Perspective.tex`
- `Unified Invariance in PDE Stability- Dissolving the Cyclical Framework.tex`
- `navier_stokes_proof.tex`
- `navier_stokes_proo2f.tex`

Forensic significance:

- this packet preserves the January 2025 proof-route expansion
- it adds routes not represented by the four-pillar March packet
- it contains the missing `Section 5` and `Section 6` route material
- it preserves alternate framing routes such as `Gradient Control`, `Mild Initial Conditions`, `Global Regularity Framework for Arbitrary Initial Data in L2`, and multiple titled proof attempts

### 2. January plus March 2025 loose priority packet

Source:

`/Users/thomasbirnie/my_project/project-documents/priority`

Date window:

`2025-01-12` through `2025-03-07`

Recovered count:

`19` artifacts

This family is structurally different from the January zip packet. It contains:

- January 2025 PDF outputs
- March 7, 2025 standalone TeX revisions
- March 7, 2025 underscore-named fragment TeX files

Recovered titles from this packet:

- `Comparisons to Known Results.pdf`
- `Comparisons to Known Results.tex`
- `Comparisons_to_Known_Results.tex`
- `Conclusion- Smooth Solutions for All Time.pdf`
- `Section 2- Scale-Barrier Principle.pdf`
- `Section 2- Scale-Barrier Principle.tex`
- `Section 3- Monotone Functional.pdf`
- `Section 3- Monotone Functional.tex`
- `Section 4- Non-Sobolev Compactness.pdf`
- `Section 4- Non-Sobolev Compactness.tex`
- `Section_2-_Scale-Barrier_Principle.tex`
- `Section_3-_Monotone_Functional.tex`
- `Section_4-_Non-Sobolev_Compactness.tex`
- `Strong Convergence in L2 Using Compactness.pdf`
- `Strong Convergence in L2 Using Compactness.tex`
- `Strong_Convergence_in_L2_Using_Compactness.tex`
- `Unifying Stability in PDEs- A Single Invariance Perspective.pdf`
- `Unifying Stability in PDEs- A Single Invariance Perspective.tex`
- `Unifying_Stability_in_PDEs-_A_Single_Invariance_Perspective.tex`

Forensic significance:

- this is the cleanest recovered four-pillar packet
- it preserves January PDF outputs that were missing from the main corpus
- it preserves a March 7 revision state that is later than the January zip drafts
- it preserves fragment files that are not duplicates

The fragment files are specifically important. Their first lines begin with `\section{Placeholder Title}` rather than `\documentclass`, which shows they are wrapperless include-style section files intended for assembly, not standalone papers copied under another name.

Representative fragment files:

- `Comparisons_to_Known_Results.tex`
- `Section_2-_Scale-Barrier_Principle.tex`
- `Section_3-_Monotone_Functional.tex`
- `Section_4-_Non-Sobolev_Compactness.tex`
- `Strong_Convergence_in_L2_Using_Compactness.tex`
- `Unifying_Stability_in_PDEs-_A_Single_Invariance_Perspective.tex`

### 3. March 2026 submission-package family

Source:

`/Users/thomasbirnie/Research-Consolidation/problems/navier-stokes/external-paper/dist/*.tar.gz`

Date window:

`2026-03-16` through `2026-03-17`

Recovered count:

`27` artifacts

This family is not a loose-draft packet. It is packaged submission architecture from four tarballs:

- `navier-stokes-conditional-journal-package.tar.gz`
- `navier-stokes-full-claim-journal-package.tar.gz`
- `navier-stokes-conditional-arxiv-source.tar.gz`
- `navier-stokes-full-claim-arxiv-source.tar.gz`

Meaningful recovered package titles absent from the main corpus by normalized filename comparison:

- `main.tex`
- `appendix.tex`
- `metadata.tex`
- `abstract.tex`
- `introduction.tex`
- `setup-notation.tex`
- `prior-work-limits.tex`
- `main-result.tex`
- `main-proof.tex`
- `bridge-scale-barrier.tex`
- `bridge-compactness.tex`
- `bridge-gradient-control.tex`
- `conclusion.tex`
- `main.pdf`

Forensic significance:

- this family records the later packaged submission architecture
- it shows a shift from standalone essays to assembled paper structure
- it preserves both `conditional` and `full-claim` package states
- it adds two packaged `main.pdf` outputs from the journal bundles

## Exact differences that were missing from the main corpus

These are the concrete gap statements supported by the recovery:

- `28` January zip titles were absent from the preexisting non-`Recovered` NS corpus by normalized filename comparison
- `19` priority-folder titles were absent from that same baseline
- `14` meaningful packaged-submission titles were absent from that same baseline

There was also a revision-chain gap:

- six titles occur in both the January zip packet and the March loose packet
- every one of those six pairs is hash-different
- those are revision states, not duplicates

The six shared titles retained as distinct states are:

- `Comparisons to Known Results.tex`
- `Section 2- Scale-Barrier Principle.tex`
- `Section 3- Monotone Functional.tex`
- `Section 4- Non-Sobolev Compactness.tex`
- `Strong Convergence in L2 Using Compactness.tex`
- `Unifying Stability in PDEs- A Single Invariance Perspective.tex`

This matters because the main corpus was missing not only titles, but also version-state history.

## Filtered junk and contamination handling

One tarball metadata sidecar was excluded deliberately:

- `._main.tex`

This is a macOS AppleDouble metadata artifact, not a usable NS source document.

The earlier `RecoveredFolderMarker` material under `TeX/Recovered` and `PDFs/Recovered` should still be treated as contaminated history because it mixed recursive NS self-ingest with cross-problem material from other MPP lanes.

## Reports now available

Inside the canonical corpus root:

- `canonical-summary.json`
- `canonical-manifest.json`
- `canonical-inventory.csv`
- `NS-CANONICAL-CORPUS-FORENSIC-NOTE.md`

These files should be treated as the usable audit trail for this consolidation.
