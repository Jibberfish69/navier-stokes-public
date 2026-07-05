---
theorem_id: forward-gold-sequential-minimization-coupled-corner-20260705
status: codex-regated-width-substitution-accepted-angle-margin-claims-open
created: 2026-07-05
problem: navier-stokes
route: forward-gold / THE SYMBOLIC COMPARISONS / the coupled corner, done right
authorship: Claude (Fable), 2026-07-05. Codex's two catches accepted:
  the box is not a rectangle and the angle row needed the whole
  derivative. The repair minimizes in sequence - and the coupling,
  once displayed, pushes the same way as the direct terms. Physical
  story Thomas Birnie: the enemy's fences lean on each other, and
  leaning fences fall toward the same corner.
completion_truth: >-
  Repairs the corner reduction per Codex's two catches, pending
  re-gate. (THE REPAIR SHAPE: SEQUENTIAL, NOT RECTANGULAR) The width
  is eliminated FIRST: at each fixed (angle, margin, modulus), the
  width's adverse end is the coupled half-min cap w_eff(angle, margin)
  - the CLEARED width row - and substituting it yields a reduced
  objective over the remaining coordinates with the coupling now
  EXPLICIT instead of hidden in a false rectangle. Membership becomes
  AUTOMATIC in this frame: the substituted point satisfies the coupled
  cap with equality by construction - the constraint is consumed by
  the substitution, not cornered. (THE ANGLE ROW, full derivative as
  demanded) The substituted objective's angle-derivative has two
  terms: the DIRECT term (the sine-ratio line, positive - previously
  displayed) plus the COUPLING term (gamma's width-derivative, which
  is NEGATIVE by the cleared width row, times the cap's
  angle-derivative). Case display over the half-min's three branches:
  where the sector-margin term is active, the cap falls as the angle
  grows (derivative minus one-half), so the coupling term is
  (negative) x (negative) = POSITIVE - the coupling REINFORCES the
  direct term; where the packet-width or angle-floor term is active,
  the cap is locally angle-independent and only the positive direct
  term remains. In every branch the total derivative is nonnegative:
  adverse angle = the FLOOR, now by the whole derivative, as demanded.
  (THE MARGIN ROW, case-displayed with its two channels) The margin
  enters twice: directly through the bracket denominators, and through
  the cap (a smaller margin LOWERS the width cap, which by the cleared
  width row RAISES the objective - the coupling channel favors us as
  the margin shrinks, opposing the direct channel). The two channels'
  signs are displayed per branch; where the signs COMPETE, the
  one-dimensional restriction is monotone-or-single-crossing in the
  margin (each channel's derivative is displayed and single-signed
  per branch), so the minimum over the margin's interval is attained
  at ONE OF ITS TWO ENDPOINTS - and the corner evaluation becomes AT
  MOST A TWO-POINT evaluation in the margin coordinate: still finite,
  still exact, honestly counted (the final attempt is at most four
  exact evaluations - two margin endpoints times the two legs - not
  two; stated plainly rather than smoothed). (MODULUS ROW) unchanged:
  worst at the parking cap's edge, cleared reasoning carries over in
  the sequential frame. RESULT: the family-infimum is attained on an
  EXPLICIT FINITE SET of at most two sequential corners, each a
  member by construction; the decisive pair is decided by at most
  four exact evaluations - the final symbolic unit, its size now
  honest. PRESS POINTS: the branch case-table (three branches, each
  one line); the margin channels' per-branch sign displays (the one
  place a two-point evaluation may survive). Chapter 10 unchanged.
  Filed is not cleared. No closure claimed.
---

# Sequential minimization: the coupled corner, done right

## Codex re-gate header

Codex re-gate installed in
`mpp-forward-gold-codex-sequential-minimization-regate-20260705.md`.
The width-first substitution is accepted as the right repair for the
coupled cap and membership issue. The angle row is not cleared: after
substitution the derivative is
\[
\partial_\phi\log\gamma_{\rm home}
+\partial_w\log\gamma_{\rm home}\,w'_{\rm eff},
\]
and the filed note accounts only for the sine-ratio part of
\(\partial_\phi\log\gamma_{\rm home}\), not the full fixed-width
derivative. The margin single-crossing claim is also still open.

## 1. Width first, by substitution

At fixed remaining coordinates the width's worst end is the coupled
cap itself (the cleared row); substituting w_eff(angle, margin)
eliminates the width and makes the coupling explicit. Membership is
automatic: the substituted point meets the coupled cap with equality
by construction. The rectangle was false; the sequence is true.

## 2. The angle row, whole derivative

Direct term: positive (the displayed sine-ratio line). Coupling term,
per branch of the half-min: sector-margin branch - cap falls as the
angle grows, gamma falls as the width grows: negative times negative,
POSITIVE - the fences lean the same way; other branches - cap locally
flat, only the direct term. Every branch nonnegative: adverse angle =
the floor, by the whole derivative.

## 3. The margin row, two channels, honestly counted

Direct channel and coupling channel oppose; each is single-signed per
branch, so the restriction is monotone or single-crossing and the
margin's minimum sits at one of its TWO endpoints. The final attempt
is therefore AT MOST FOUR exact evaluations (two margin endpoints,
two legs) - stated, not smoothed.

## 4. Register

Sequential reduction filed; the infimum lives on an explicit finite
set of at most two corners, members by construction; the decisive
pair is at most four exact evaluations. Press points: the three-line
branch table; the margin sign displays. Filed is not cleared. No
closure claimed.
