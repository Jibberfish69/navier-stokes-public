# Workspace Architecture

This workspace combines two deliberately separate sources of structure.

## What came from the copied PDF

The archived `Archive/navier-stokes-human-submission-reference.pdf` supplies only:

- the original paper title, author, and displayed date;
- front matter consisting of title, abstract, and contents;
- Section 1, `Introduction`, and its seven named subsections;
- Section 2 and its exact displayed title.

Those observations determine the manuscript directories, `index.tex` composition files, subsection filenames, and printed headings.
The source scaffold does not infer later sections, appendices, figures, bibliography content, or internal units for Section 2.

## What came from monograph-V6

The reusable authoring architecture supplies:

- a root `AGENTS.md` with an explicit authority order;
- a canonical `ProjectInstructions/` layer;
- modular TeX composition through a root file, preamble files, section indices, and content files;
- numbered PascalCase filenames and globally unique typed labels;
- V6-style formal-environment numbering adapted from Volume.Section.Item to Section.Subsection.Item;
- VS Code LaTeX Workshop settings and PDF-preview navigation;
- isolated build and cache directories;
- separate archive, audit, reports, tools, and documentation surfaces;
- writing-anchor and tone-policy ownership without manufacturing an initial prose exemplar.

## Deliberate exclusions

The workspace does not copy monograph volume directories, historical build products, obsolete audits, project-specific theory-spine machinery, shared Research-Consolidation runtime state, or `.git/` history.
Those are contents or operational history of the source workspace, not reusable authoring structure for this paper.

The manuscript workspace also does not own the automated manuscript or the live theorem-status files.
Its rules name those boundaries so that later tools cannot conflate them.

## Output safety

The preserved reference snapshot lives in `Archive/`.
The `.latexmkrc` and VS Code settings keep auxiliary material in `.latexmk-out/` and publish the completed `navier-stokes-manuscript.pdf` at the workspace root.
Opening that root PDF gives the reader the current build rather than the archived snapshot.
