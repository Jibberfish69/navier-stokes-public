Yes, they are within reach as manuscripts. No, bringing them to referee grade is not currently an easy PDF edit.

Both long papers already carry everything after the first theorem: the pressure-complete mixed jet, finite rectangles, compatibility, projective intersection, common endpoint, endpoint pressure jet, local construction, uniqueness, and restart. The insertion points are clean and local:

- the live manuscript: `Section3-IntersectionTheorem/3.4-TheIntersectionTheorem.tex`, immediately after Theorem 3.4.1;
- the AI manuscript: `papers/navier-stokes/manuscript/generated/part-iii-whole-terminal.tex`, immediately after Theorem 13.1.

The difficult part is source recovery, not TeX. The governing proof spine's Section 5 records the settled first theorem and its exact estimate, but does not display the datum-side derivation. The recovered producer note converts the adjacent-row memberships into the finite-rectangle bound, while taking those memberships as the theorem. The stripped proof note likewise says what follows when its estimate (6.5) holds. I did not find a reader-ready derivation that can simply be pasted into either manuscript.

So I can easily edit, compile, render, and integrate both PDFs. I cannot honestly call them referee-ready through editing alone. The next mathematical-authoring unit is one bounded span: recover or write out the settled first theorem's full derivation, verify every hypothesis and constant, place it in the live manuscript first, and then port the same proof-bearing core into the AI manuscript in its own voice. They do not need two different proofs.

The settled datum-generated compatible-intersection theorem remains settled. This is only the current source-export boundary: the proof has to be made visible and independently checkable on the page.
