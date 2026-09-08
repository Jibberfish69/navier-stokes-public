# Navier--Stokes Manuscript Workspace

This is the editable VS Code workspace for *The Three-Dimensional Navier--Stokes Regularity Problem*.
Its initial manuscript hierarchy came from the copied eight-page PDF, and Thomas subsequently authorized Section 3; its surrounding authoring architecture comes from `monograph-V6`.

The preserved reference is `Archive/navier-stokes-human-submission-reference.pdf`.
The editable root is `navier-stokes-manuscript.tex`.
The live reader-facing file is `navier-stokes-manuscript.pdf` at the workspace root.
Normal builds keep their auxiliary material in `.latexmk-out/` and publish the completed PDF at the workspace root.

## Workspace map

```text
navier-stokes/
├── AGENTS.md
├── ProjectInstructions/
├── FrontMatter/
├── Section1-Introduction/
├── Section2-ProofProgram/
├── Section3-CompatibleIntersectionClosure/
├── preamble/
├── Archive/
├── Audit/
├── docs/
├── reports/
├── tools/
├── navier-stokes-manuscript.tex
├── navier-stokes-manuscript.pdf
├── refs.bib
├── TODO.md
└── RulesChangelog.txt
```

The initial manuscript files stop where the copied PDF stops.
Section 3 is the first explicitly authorized expansion beyond that inherited skeleton.

## Build

From this directory:

```sh
latexmk -pdf navier-stokes-manuscript.tex
```

The result is `navier-stokes-manuscript.pdf` at the workspace root.
The copied snapshot remains untouched in `Archive/`.
When this folder is opened in VS Code with LaTeX Workshop, saving any imported TeX file runs the same build and refreshes the root PDF.
When the first sourced citation enters the manuscript, set `\workspacebibliographytrue` in the root TeX file; the V6-style `biblatex` and `biber` configuration is already wired to `refs.bib`.

Read `AGENTS.md` first, then the files in `ProjectInstructions/` in the authority order stated there.
