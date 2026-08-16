# Workspace Bootstrap Audit -- 2026-08-07

Post-audit relocation: the copied root PDF was moved to `../Archive/navier-stokes-human-submission-reference.pdf`, the canonical source was renamed `../navier-stokes-manuscript.tex`, and the live build is now published as `../navier-stokes-manuscript.pdf`.
The paths below record the initial bootstrap state before that repair.

## Scope

Object checked: the initial Navier--Stokes human-submission VS Code workspace.

Reference objects:

- `../navier-stokes-human-submission.pdf` for the manuscript hierarchy and visible titles;
- `/Users/thomasbirnie/Workspace/ToE/monograph-V6` for reusable workspace architecture, naming, composition, editor configuration, and rule ownership.

## PDF evidence

The copied reference is an eight-page, US-letter PDF.
Its SHA-256 checksum at the beginning and end of construction was:

`dcc73a3aa62522d2e859557932b372b1b39be4fa22ce5ac4f05093e525e8687f`

Pages 1, 3, and 8 were rendered and inspected.
Text extraction and visual inspection agree on front matter, Introduction 1.1--1.7, and the single Section 2 heading.
No later manuscript unit was evidenced.

## Structural result

The source tree contains all eleven expected PDF-derived manuscript files:

- two front-matter files;
- one Section 1 composition file and seven subsection files;
- one Section 2 composition file.

All referenced TeX inputs exist.
All labels are unique.
Both VS Code JSON files parse successfully.
The source headings contain exactly two sections and seven subsections.

## Build result

The canonical root compiled successfully with TeX Live 2025 and `latexmk` through the workspace's own `.latexmkrc`.
The generated two-page structural PDF is US letter and lives at `.latexmk-out/navier-stokes-human-submission.pdf`.
The final LaTeX log contains no overfull boxes, underfull boxes, LaTeX warnings, or package warnings.
Rendered pages 1 and 2 were inspected at readable scale.
The long Section 2 title wraps inside the text block without changing its wording.

## Boundary result

The copied root PDF was not overwritten.
No Section 3, appendix, figure tree, hidden proof subsection, theorem-status surface, automated-manuscript source, or `.git/` repository was created.
The empty bibliography infrastructure is present but disabled until sourced citations enter the manuscript, keeping the initial visible hierarchy faithful to the copied PDF.

Result: pass.
