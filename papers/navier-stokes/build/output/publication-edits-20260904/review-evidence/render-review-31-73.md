# Render and copy review: pages 31–73

Reviewed the 73-page native visual build at `papers/navier-stokes/build/output/publication-edits-20260904/main.pdf`, SHA-256 `1b0cf49411e72dd16f6c1aefd2c14a9af6dda7076af7b5b0b6a34b2b06131bbd`.

**Result:** requested copy corrections are visible. Three additional equation-range spaces remain on two pages. No clipping, missing mathematical glyph, colliding equation tag, missing page, or broken page-number sequence was observed in the assigned range.

Every page from 31 through 73 was inspected in the 108-dpi sheets. Pages 32, 33, 49, 65, 71, 72, and 73 also received individual-page inspection. Per-page text was used to verify copy details. This pass addresses rendering and copy completion only; it does not reopen the theorem review. The separate MathML-sidecar build issue was not treated as a visible layout defect.

## Confirmed corrections

| Current page | Check | Result |
|---|---|---|
| 32 | Corollary 5.4 proof reference noun and range | The plural “Equations” and compact range (92)–(96) render correctly. |
| 49 | Description of the repeated minimum | The proof says “two special energy cases,” with no claim that both are improvements. |
| 65 | Cutoff derivative range | The line above the Leibniz estimate reads `0 ≤ a ≤ r`; the range endpoint and formula are legible. |
| 71 | Catalogue dependence wording | The paragraph after (352) says “explicit finite expression.” The following distinction between coordinate bounds and finite datum-norm formulas remains visible. |
| 73 | Bibliography order | Kato [7] and Koch–Tataru [8] precede Leray [9] and Lieb [10]. All 14 entries fit; representative updated in-text citations were visible in the assigned pages. |

## Residual copy defect

Three ranges retain a space after their dash:

| Page | Rendered text | Governing source |
|---|---|---|
| 33 | `(101)– (102)` | `papers/navier-stokes/manuscript/generated/04-intersection-endpoint-restart.tex:282–283` |
| 72 | `(332)– (335)` | `papers/navier-stokes/manuscript/generated/03-quantitative-consequences.tex:1835–1836` |
| 72 | `(336)– (339)` | `papers/navier-stokes/manuscript/generated/03-quantitative-consequences.tex:1845–1846` |

Each source range has a line break immediately after the double hyphen, which contributes the space. Remove that source whitespace, or suppress it with a comment marker at the line ending. These are small copy corrections; their references and equation numbers are present and readable. No source edits were made in this review.

## Complete visual coverage

| Pages inspected | Material | Visible result |
|---|---|---|
| 31–36 | Compatible intersection, endpoint traces, pressure jet, restart, global statement | Complete statements, formulas, and proof continuations. One range-space issue on page 33. |
| 37–40 | Global proof completion, matrix forms, start of quantitative consequences | Matrices and tags fit. No visible defect. |
| 41–44 | Mild-class completion and canonical-coordinate setup | Displays, citations, and continuations fit. No visible defect. |
| 45–48 | Coordinate definitions, minima, viscosity scaling, height re-expression | Complete and legible. Lower-page whitespace on page 45 is a pagination choice, not missing content. |
| 49–52 | Majorant proofs, pressure bounds, frequency consequences | Updated description confirmed. No clipping or tag collision. |
| 53–56 | Critical-height bounds, quantitative restart, start of small-critical results | Complete statements and proof transitions. No visible defect. |
| 57–60 | Small-critical proof, finite recursion and matrix, scale-content consequences | Dense matrix fits. The existing parameter/bound page turn remains complete. |
| 61–64 | Vorticity, material flow, weak-class setup and density construction | Formulas and long proof continuations fit. No visible defect. |
| 65–68 | Density completion, relative energy, weak-class identification, conclusion | Corrected derivative range confirmed. No visible defect. |
| 69–72 | Canonical coordinate catalogue and proof | Corrected finite-expression wording confirmed. Two residual range spaces on page 72; no display collision or missing tag. |
| 73 | References | Reordering confirmed; all entries visible. |

The review artifact was written to `/tmp/ns-publication-edits-20260904/render-review-31-73.md`.
