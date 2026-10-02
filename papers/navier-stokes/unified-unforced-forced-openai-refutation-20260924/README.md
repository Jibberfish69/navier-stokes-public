# Rebuild the combined Navier–Stokes manuscript

**Global Smoothness for the Unforced and Forced Three-Dimensional Incompressible Navier–Stokes Equations, with a Refutation of OpenAI’s Finite-Time Blowup Claim** — Thomas Birnie, September 2026.

[Published manuscript and DOI](https://doi.org/10.6084/m9.figshare.34005666.v1) · [Reading guide](https://thomas-birnie-research.thomasgbirnie.chatgpt.site/terminal-time-guide.html)

This directory contains the 42 original TeX inputs of the published combined manuscript. The inputs are unchanged. SOURCE-SHA256.json identifies every TeX file. The public Figshare record supplies the published PDF and publication provenance.

## Original tagged edition

[Download the original source ZIP](original-source.zip), or use the TeX files in this directory. From the directory containing main.tex, with a recent TeX Live installation:

```sh
latexmk -norc -lualatex -interaction=nonstopmode -halt-on-error -outdir=build main.tex
```

The October 2 local rebuild has 229 letter-size pages, and its full extracted text matches the published PDF. All 229 page images match at 72 dpi. It retains the original tagging configuration. The build reports two package warnings: inputenc is ignored by the UTF-8 engine, and tagpdf reports that unicode-math is missing. Reproduction does not establish complete PDF/UA conformance.

## pdfLaTeX submission copy

[Download the pdfLaTeX source ZIP](pdflatex-submission-source.zip). Extract it into a separate empty directory and run:

```sh
latexmk -norc -pdf -interaction=nonstopmode -halt-on-error -outdir=build main.tex
```

This copy omits the UA-2/tagging-on declaration and tagpdfsetup from main.tex. All manuscript prose and mathematics remain unchanged; all 41 other TeX inputs are byte-identical. Removing the tagging configuration avoids the tagged pdfLaTeX build’s main-memory limit. The local build has 231 letter-size pages and no final LaTeX warnings. Its typography and pagination differ from the published LuaLaTeX PDF. It makes no PDF/UA conformance claim.

The submission copy has not been uploaded to or compiled by arXiv. Local compilation does not establish server acceptance. Source availability and build reproduction also do not establish independent mathematical validation or peer review.
