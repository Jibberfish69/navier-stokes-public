# Combined Navier–Stokes manuscript

**Global Smoothness for the Three-Dimensional Incompressible Navier–Stokes Equations, with a Refutation of OpenAI’s Finite-Time Blowup Claim** — Thomas Birnie.

[Read the current PDF](unified-unforced-forced-openai-refutation.pdf) · [Figshare version 3](https://doi.org/10.6084/m9.figshare.34005666.v3) · [Custody object](../../../proof/)

## Current edition

The current manuscript revision is dated October 17, 2026. It includes the title correction and the manuscript custody revisions.
The tagged native PDF has 230 letter-size pages. Its bytes match the public Figshare version 3 download.
[CURRENT-RELEASE.json](CURRENT-RELEASE.json) records the PDF hashes, source hashes, and edition details.

[Download the current source ZIP](current-source.zip), or use the 42 TeX inputs in this directory.
[CURRENT-SOURCE-SHA256.json](CURRENT-SOURCE-SHA256.json) records the SHA-256 hash of each input.

With a recent TeX Live installation, run this command from the directory that contains `main.tex`:

```sh
latexmk -norc -lualatex -interaction=nonstopmode -halt-on-error -outdir=build main.tex
```

## Portable pdfLaTeX edition

[Download the portable PDF](pdflatex-submission.pdf) or [its source ZIP](pdflatex-submission-source.zip).
The portable PDF has 232 letter-size pages. It includes the current title, prose, mathematics, and custody revisions.
Its 41 body inputs match the native source bytes. Two build declarations in `main.tex` differ for pdfLaTeX compatibility.
Its typography and pagination differ from the native PDF.

Extract the portable source ZIP into an empty directory. Then run this command:

```sh
latexmk -norc -pdf -interaction=nonstopmode -halt-on-error -outdir=build main.tex
```

## Original published edition

[original-source.zip](original-source.zip) preserves all 42 published TeX inputs. [SOURCE-SHA256.json](SOURCE-SHA256.json) identifies those original inputs, and [BUILD-VERIFICATION.json](BUILD-VERIFICATION.json) records their October 2 rebuild.

That October 2 local rebuild has 229 letter-size pages, and its full extracted text matches the published PDF. All 229 page images match at 72 dpi. It retains the original tagging configuration. The build reports two package warnings: inputenc is ignored by the UTF-8 engine, and tagpdf reports that unicode-math is missing. Reproduction does not establish complete PDF/UA conformance.

## Custody object

[The portable custody object](../../../proof/) provides source snapshots, argument navigation, and offline reader tools.
Its release record identifies the packaged sources and file hashes.
The manuscript and custody object are separate distributions.
Source availability, build reproduction, and archive integrity do not establish independent mathematical validation or peer review.
