# Combined Navier–Stokes manuscript

**Global Smoothness for the Three-Dimensional Incompressible Navier–Stokes Equations, with a Refutation of OpenAI’s Finite-Time Blowup Claim** — Thomas Birnie.

[Read the current PDF](unified-unforced-forced-openai-refutation.pdf) · [Canonical release record](../../../CANONICAL.json) · [Figshare record](https://doi.org/10.6084/m9.figshare.34005666) · [Portable proof object](../../../proof/)

The current source edition is dated October 28, 2026. [CURRENT-RELEASE.json](CURRENT-RELEASE.json) identifies its files and records Figshare synchronization separately. The current native PDF has 233 pages.

## Rebuild the current manuscript

[current-source.zip](current-source.zip) contains the 42 current TeX inputs. [CURRENT-SOURCE-SHA256.json](CURRENT-SOURCE-SHA256.json) records each input hash. Extract into an empty directory and run:

```sh
latexmk -norc -lualatex -interaction=nonstopmode -halt-on-error -outdir=build main.tex
```

## Portable pdfLaTeX edition

[Read the portable PDF](pdflatex-submission.pdf) (235 pages) or [download its source](pdflatex-submission-source.zip). Its 41 body inputs match the current native source exactly; its main preamble uses the pdfLaTeX compatibility configuration. Run:

```sh
latexmk -norc -pdf -interaction=nonstopmode -halt-on-error -outdir=build main.tex
```

## Opening excerpt

[Read “How the Proof Works”](excerpt/how-the-proof-works-ns-excerpt.pdf) (11 pages) or [download its standalone source](excerpt/source.zip). Its [guide.tex](excerpt/guide.tex) is the current manuscript's unforced opening input verbatim.

## Retained editions

[The October 20 edition](archive/2026-10-20-v4/) preserves the previous native and portable PDFs, source archives, excerpt and release metadata unchanged. [original-source.zip](original-source.zip) and [SOURCE-SHA256.json](SOURCE-SHA256.json) retain the original 229-page edition's source inputs.

[CURRENT-VERIFICATION.json](CURRENT-VERIFICATION.json) records this edition's source, build and presentation checks. Mathematical statements retain the scope of the manuscript and its governing proof sources.
