# Post-contents publication audit — revised after proof recovery

**Implementation update — 4 September 2026:** The exposition recommendation and six copyediting items below have been applied. The resulting working PDF has 73 pages. [Implementation and verification record](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/papers/navier-stokes/review/publication-edits-20260904.md). Page numbers below identify the earlier 71-page audit copy.

**Verdict: editorial revisions recommended.** The main recommendation is to explain the four compatible representations and their roles in the existing proof more clearly. Six minor copyediting items follow. The rendered body is complete and legible.

This report replaces the earlier audit of 4 September 2026. The renewed review followed recovery of the governing proof architecture, its firsthand provenance, the full endpoint construction, and the downstream quantitative arguments. Every earlier finding was reconsidered. The demand to re-establish Theorem 4.6 is withdrawn, along with the finite-endpoint and conclusion-scope objections. Catalogue length and several navigation suggestions are optional editorial choices.

**Object and scope:** [automated authoritative-edge PDF](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/papers/navier-stokes/build/output/authoritative-edge/navier-stokes.pdf), 71 pages. The contents occupy page 6. The audit covers **every page from 7 through 71**, including the main theorem, Sections 1–9, Appendix A, and all references. Physical and printed page numbers agree. Front matter was consulted for context but excluded from editorial assessment.

The report assesses how the publication communicates the existing proof, together with notation, citation navigation, copyediting, composition, and file integrity. The manuscript and PDF were not edited during that audit.

## Recovered proof order governing this audit

The [direct authority](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/live-theorem-edge.yaml:20), [operating contract](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/target-operating-contract.yaml:23), [canonical proof spine](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/thomas-one-fluid-reversible-intersection-proof-spine-20260803.md:255), and [endpoint construction](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/complete-mixed-intersection-global-closure-and-upstream-boundary-20260801.md:10) fix the following movement.

1. **One fluid history.** Fix a smooth, divergence-free finite-energy datum and one viscosity. Velocity, pressure, time derivatives, spatial derivatives, and heights are simultaneous coordinates of its pressure-normalized Navier–Stokes history. Pressure is determined by the velocity. Differentiation retains the complete signed transport and pressure terms.
2. **Whole-terminal finite coordinates.** Under the finite-maximal-time contradiction hypothesis, the governing first theorem supplies every independently chosen finite temporal and spatial rectangle on the entire proposed interval. Bounds may depend on those orders. Restrictions identify the actual derivatives across overlapping coordinates. Finite coordinate bounds assemble the compatible intersection; no common all-order constant, infinite norm sum, or analyticity assumption is required.
3. **Each representation has its own smoothness implication.** The spatial Sobolev intersection gives spatial smoothness; the temporal-height intersection gives temporal smoothness, with its full pressure/nonlinear graph retained for the velocity readout; the velocity-time intersection gives smoothness in each spatial Sobolev space; the original pressure-explicit mixed-jet intersection gives joint smoothness. Scalar height regularity alone does not reconstruct velocity. These implications consume the whole-interval membership supplied by the first theorem.
4. **A common endpoint and an actual continuation.** The complete zeroth temporal row contains every finite spatial order. Sobolev multiplication and the equation give integrable time derivatives and a common endpoint in every spatial Sobolev space. Adjacent traces identify actual derivative limits, and the pressure/velocity recurrence determines their endpoint jet. A local solution started at a late preterminal slice crosses the proposed endpoint. Uniqueness identifies its left overlap with the original history and its right overlap with the endpoint restart. This extends the original history and contradicts finite maximality.
5. **Consequences retain their distinct roles.** Matrices reorganize the completed object. General quantitative bounds retain finitely many exact solution coordinates. Height reconstruction is a coordinate conversion. The small-critical result supplies an additional finite-datum-norm formula in its stated regime. Relative energy, material flow, weak-class identification, and the refined appendix estimates consume the completed solution.

This order governs both the retained findings and the withdrawals below. In particular, no downstream critical estimate has been inserted as a new premise of the first theorem.

## Main exposition recommendation

### 1. P2 — Explain the four representations and their handoffs

**Pages 7–8 and 24–29.** [Introduction](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/papers/navier-stokes/manuscript/generated/00-introduction.tex:56); [height construction](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/papers/navier-stokes/manuscript/generated/02-compatible-rectangles.tex:37); [rectangle transition](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/papers/navier-stokes/manuscript/generated/02-compatible-rectangles.tex:168).

The introduction explains the mixed derivatives, rectangles, intersection, and zeroth-row endpoint argument. The reader would benefit from an explicit account of why each complete compatible representation carries its own intersection-to-smoothness implication. At present, the height identities arrive between kinetic energy and rectangles with little explanation of their role in the full pressure/nonlinear graph.

**Reader consequence:** the body can give the impression that smoothness appears only at the final spatial embedding and that the height construction is an auxiliary scalar detour. The intended relationship between the representations deserves a clearer explanation at their introduction.

**Editorial recommendation:** identify the spatial Sobolev, temporal-height, velocity-time, and original pressure-explicit jet representations at the recurrence-to-intersection transition. Explain that each complete compatible intersection has its own smoothness implication, and that the height readout retains the full pressure and nonlinear currents. Link that explanation to the relevant existing definitions and results.

On page 26, clarify each result's role: Theorem 4.6 supplies the whole-terminal adjacent rows of the fixed history; Proposition 4.7 expresses those rows as finite rectangle bounds and identifies their full-interval norms by monotone exhaustion. Point forward to the restriction maps, which preserve overlapping derivative coordinates and assemble the compatible family used in Section 5. The complete spatial row then provides the economical endpoint and continuation argument.

This is a request for explanation and navigation within the existing proof. The earlier demand for another derivation or proof payment at Theorem 4.6 has been removed from the audit.

## Minor copyediting corrections

These are P3 copyediting items.

| Item | Page and evidence | Bounded correction |
|---|---|---|
| 2. Cutoff derivative range | **63**, Lemma 8.10, before (308). The stated Leibniz range stops at r−1, while (307) with j=r uses derivatives through r. [Source](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/papers/navier-stokes/manuscript/generated/05-three-dimensional-applications.tex:881). | Extend the stated range through r. The displayed formula already applies at that order. |
| 3. Exponential described as algebraic | **69**, after (352). The formula contains a coordinate-dependent exponential; the following sentence calls every right-hand side algebraic. [Source](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/papers/navier-stokes/manuscript/generated/03-quantitative-consequences.tex:1749). | Use “explicit finite expression,” or identify the exponential exception. Preserve the existing explanation of coordinate dependence. |
| 4. Repeated minimum called an improvement | **44, 47**, (178), (181), (182), and Lemma 7.8. The raw minimum already contains the energy term repeated in (182), so that special definition leaves its value unchanged. [Definition](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/papers/navier-stokes/manuscript/generated/03-quantitative-consequences.tex:527); [description](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/papers/navier-stokes/manuscript/generated/03-quantitative-consequences.tex:880). | Describe the two energy cases neutrally, or reserve “improvement” for the distinct H1 case. The explicit energy case can remain. |
| 5. First-use class locator | **16**, Lemma 2.10 uses the pressure-complete classical-history class defined precisely on p.21. [Source](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/papers/navier-stokes/manuscript/generated/00-analytic-framework.tex:639). | Add a forward reference to Definition 3.2. |
| 6. Bibliography ordering | **71**, entries [7]–[11]. Leray and Lieb precede Kato and Koch in an otherwise alphabetical progression; the list is not in first-citation order. [Source](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/papers/navier-stokes/manuscript/generated/main.tex:287). | Apply the selected ordering consistently and regenerate citation numbers. Alphabetical order needs the fewest changes; a destination journal may specify another convention. |
| 7. Typography and reference grammar | **7:** italic BMO abbreviation. **8, 30, 39:** extra spaces within equation ranges. **30:** singular reference noun before two equations. [Introduction](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/papers/navier-stokes/manuscript/generated/00-introduction.tex:23), [introductory range](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/papers/navier-stokes/manuscript/generated/00-introduction.tex:126), [endpoint references](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/papers/navier-stokes/manuscript/generated/04-intersection-endpoint-restart.tex:178), [quantitative range](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/papers/navier-stokes/manuscript/generated/03-quantitative-consequences.tex:132). | Set BMO upright, suppress the unintended range spaces, and pluralize the reference noun. |

## Withdrawals and optional editorial choices

| Earlier finding | Revised judgment |
|---|---|
| Theorem 4.6 requires re-establishment before publication | **Withdrawn.** The page 26 recommendation now concerns the explanation of the established result and its role in finite packaging, compatibility, and assembly. |
| Finite-terminal case allegedly returns without explanation in Section 7 | **Withdrawn.** Definition 7.2 explicitly retains both horizon cases, fixes them throughout the section, and identifies the terminal representatives and traces. Theorem 7.17 quantifies that retained counterfactual. [Governing setup](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/papers/navier-stokes/manuscript/generated/03-quantitative-consequences.tex:297). |
| Conclusion allegedly asserts infinite-horizon integrability | **Withdrawn as a scope defect.** Page 66 recounts the finite-terminal proof and closes its contradiction. It is not an additional infinite-horizon integrability theorem. Leading with the finite-time supposition remains an optional clarity choice. [Source](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/papers/navier-stokes/manuscript/generated/06-conclusion.tex:3). |
| Four-page appendix and forward formula references treated as a defect | **Withdrawn from the defect count.** Appendix A supplies refined individual bounds, additional moduli, and differentiated energy/production families used by the applications. Its length serves that reference function. Short internal labels or an Appendix A signpost would be optional navigation aids. [Catalogue](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/papers/navier-stokes/manuscript/generated/03-quantitative-consequences.tex:1525). |
| Majorant definitions require restructuring | **Downgraded to an optional reader aid.** D and Y already have descriptive names. One sentence identifying X as integrated control and Z as uniform-in-time control would help; no proposition needs moving. [Definitions](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/papers/navier-stokes/manuscript/generated/03-quantitative-consequences.tex:512). |
| Matrix uses G beyond its stated index range | **Minor notation polish.** Defining G for all nonnegative temporal indices makes the N+1 entry formally explicit. Its formula and the already constructed adjacent row are unambiguous; no coordinate or regularity is missing. [Source](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/papers/navier-stokes/manuscript/generated/03-matrix-forms.tex:157). |
| Growth parameter and first bound split across pp.55–56 | **Optional pagination.** Keeping them together would improve the page turn, but the continuation is clear and complete. [Source](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/papers/navier-stokes/manuscript/generated/05-three-dimensional-applications.tex:196). |

The original P2 severity assigned to the cutoff range and the word “algebraic” was excessive; both are now classified as local copy corrections.

## Complete coverage and rendered result

All 65 pages were reconsidered after proof recovery, using the actual PDF text, relevant complete source chapters, and renewed inspection of rendered sheets. The review images are **918 × 1188 pixels per page, 108 dpi**. Dense or disputed passages also received individual-page inspection. Temporary masks affected review images only and were excluded from defect judgments.

| Pages | Material reviewed | Renewed result |
|---|---|---|
| 7–8 | Main theorem and introduction | Recommendation 1 concerns exposition; item 7 covers typography. |
| 9–20 | Analytic framework, constants, products, traces, local classes, persistence | Item 5 and minor range spacing; no further definite publishing defect. |
| 20–24 | Pressure normalization, classical history, mixed jet, initial rows | Hypotheses and derivative identity are explicit. |
| 24–28 | Heights, finite rectangles, pressure completion, restriction compatibility | Recommendation 1; all displays fit. |
| 28–35 | Compatible intersection, endpoint traces, pressure jet, overlap restart, global theorem | Endpoint-to-continuation movement is carried; item 7 on p.30. |
| 35–38 | Finite matrix representations | Downstream role is explicit; optional index clarification. |
| 38–41 | H1 construction, uniqueness, positive-time smoothing, global completion | Local estimates and use of the earlier global result retain distinct roles. |
| 41–48 | Canonical coordinates, majorants, scaling, height conversion | Domain is explicit; item 4 and optional notation guidance. |
| 48–53 | Mixed rows, pressure, frequency tails, critical consequences, quantitative restart | No terminal-scope objection survives. Shell sums use a chosen finite Sobolev order. |
| 53–57 | Small-critical construction and finite datum-norm bounds | Distinct auxiliary result; only optional pagination polish. |
| 58–61 | Low rows, scale-content extinction, vorticity, material flow | Consequences consume completed regularity and finite actions. |
| 61–66 | Weak class, solenoidal density, relative energy, velocity uniqueness, pressure gauge | Item 2; weak-data and pressure-normalization scopes remain distinct. |
| 66 | Conclusion | Earlier scope objection withdrawn. |
| 67–70 | Entire coordinate catalogue and its proof | Item 3; refinements justify the catalogue's role. |
| 71 | All 14 references | Item 6; entries fit visibly. |

No clipped content, missing mathematical glyph, overlapping display, colliding equation tag, blank content page, or broken page numbering was found. Long statements and proofs continue intact across page turns. Larger lower-page white areas on pages 12 and 43 are layout choices. Extraction artifacts were checked against the render before being excluded.

## Cross-references, citations, and artifact custody

The unchanged snapshot retains the first pass's verified mechanical results:

- 432 distinct source labels, no duplicate labels or unresolved source references; all 14 bibliography entries are cited and all citation keys resolve.
- All 560 post-contents internal named-link annotations resolve. The PDF has 20 outline entries with destinations matching section starts.
- All 33 font entries are embedded, subsetted, and supplied with Unicode mappings. Pages are letter-sized; the PDF is unencrypted.
- The inspected build log has no reported overfull boxes, undefined references, or duplicate-reference warnings.
- The PDF is tagged and its source requests PDF/UA-2. Formal accessibility conformance and assistive-reader behavior were not independently certified.

Bibliographic checks found no confirmed metadata correction beyond ordering. Simon's 1986 date agrees with the [publisher record](https://link.springer.com/article/10.1007/BF01762360). Hopf's 1950/51 treatment is compatible with the [publisher's 1950 record](https://onlinelibrary.wiley.com/doi/10.1002/mana.3210040121) and the 1951 reference in [Fujita–Kato](https://link.springer.com/article/10.1007/BF00276188). Tao's cited Lemma 5.5 has a matching quantitative-regularity result in the [published article](https://msp.org/apde/2013/6-1/apde-v6-n1-p02-s.pdf). The whole-space positive formulation on page 7 matches the scope of the [official problem statement](https://www.claymath.org/wp-content/uploads/2022/06/navierstokes.pdf). These checks do not amount to full-text verification of every cited application.

The audited PDF's SHA-256 is `8d5b14d5eb3e342e703ddfa29297bee9723375fcf325584206ba8f132dad8b5f`. The adjacent `main.pdf` is byte-identical. The live PDF still matches the fixed review copy, and all 11 inspected TeX files match the audit's source checkpoint.

The current pre-contents proof-guide source differs from the text rendered in this PDF. It was used to recover intent, not substituted for the audited artifact. Findings and page references above concern the fixed PDF; that front-matter difference is outside the requested editorial scope.

No journal was specified, so journal-specific submission rules and house style were not assessed. This report delivers the renewed audit and bounded repair directions. It does not record manuscript repairs, a rebuild, submission, or external acceptance as completed.
