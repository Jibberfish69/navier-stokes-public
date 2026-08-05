# Proof-source map

This map records where each mathematical block in the reader-facing proof was
recovered. It is provenance for the manuscript, not a second theorem authority.

| Manuscript block | Proof-bearing source |
|---|---|
| One datum, pressure Poisson formula, pure-time binomial recurrence, and mixed space-time recurrence | `theorem-construction/thomas-one-fluid-reversible-intersection-proof-spine-20260803.md`, (TIR.1)--(TIR.6); attachment `06c98f2c-225e-4b66-a132-fc18a391756b/pasted-text.txt`, lines 5--41 |
| Critical height, completed VPI row, and velocity/height/Sobolev column relation | the same proof spine, (TIR.7)--(TIR.11); the same attachment, lines 42--123 |
| Datum-generated finite rectangles and compatible all-orders intersection | `live-theorem-edge.yaml`, closure authority beginning at line 16; the proof spine, (TIR.11a) |
| Projective compatibility and automatic zeroth-row projection | Codex task `Assess NS matrix smoothness claim`; proof spine, Section 5 |
| Four intersection-to-smoothness implications | proof spine, (TIR.12)--(TIR.15b); July 29 source history around lines 58615--58820 |
| Complete spatial row to `W^{1,1}` endpoint traces | proof spine, Section 6; attachment `46f2b868-1a08-4213-9dd3-25de3ac2d37c/pasted-text.txt`, lines 1513--1579 |
| Adjacent `E_{3/2}` and critical-current block | attachment `5b1b6468-ac8d-4346-b092-5ba1849a7783/pasted-text.txt`, lines 113--141; task `Proof Completion Discussion` |
| Compatible `H^infinity` endpoint, pressure-complete endpoint jet, and restart | proof spine, Section 6; attachment `46f2b868-1a08-4213-9dd3-25de3ac2d37c/pasted-text.txt`, lines 1513--1579 |

The manuscript follows this order without importing Gold, Silver, CM, dome,
shell, current-supplier, or route-search machinery:

\[
u_0
\longrightarrow
\{\mathcal R_{N,M}[u_0]\}_{N,M}
\longrightarrow
\mathcal I[u_0]
\xrightarrow{\pi_0}
\mathscr S_0(0,T_*)
\longrightarrow
u_*\in H^\infty
\longrightarrow
\text{endpoint jet}
\longrightarrow
\text{restart}
\longrightarrow
T_*=\infty.
\]
