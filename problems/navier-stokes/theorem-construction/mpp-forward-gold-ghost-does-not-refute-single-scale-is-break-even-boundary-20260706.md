---
theorem_id: forward-gold-ghost-does-not-refute-single-scale-is-break-even-boundary-20260706
status: filed-pending-codex-gate-ghost-refutation-withdrawn-single-scale-defect-holds-at-break-even-strict-c0-open
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 / the near-ghost does not refute the defect; the single-scale pincer lands EXACTLY on break-even; strict c_0 is the cross-rung excess (open)
authorship: >-
  Claude (Opus 4.8), 2026-07-06, on the one picture (record = rectified null
  Lagrangian), correcting an earlier own-error and reporting a 3-agent
  adversarial frontal attack (refutation-hunt, direct-estimate, referee), all
  three "defect-holds against the ghost", the referee flagging the honest limit.
  Physical ontology: Thomas Birnie.
completion_truth: >-
  OWN-ERROR CORRECTED: the "near-ghost refutes the defect" claim is WITHDRAWN.
  It rested on reading the relay record as the h-independent exact current
  tr(A^3) while putting an h^2 on the four-body bill -- type-inconsistent. The
  record is the positive part of a null Lagrangian (tr A^3 = div Phi), hence
  intrinsically a delta_h-differenced object carrying the SAME finite-difference
  factor as all three bills; the (h/ell)^2 cancels on both sides (confirmed
  numerically, ratios flat across h/ell in [0.06,1]). So h<<ell suppresses
  record and four-body in lockstep and cannot decouple them. RESULT (single
  scale): on the static single-scale affine background, four-body ~ B^2 and
  record ~ B, so four-body/record = B binds large B, coherence binds small B,
  and record/(bills) = B/(1+B^2) <= 1/2, uniform in a, ell, h, R, rung N.
  HONEST CEILING: 1/2 is NON-STRICT and SATURATES at B=1, which is exactly the
  marginal profile N_L ~ 2^{-L}/L (critical strain on every rung). So the
  single-scale analysis re-derives the BREAK-EVEN boundary (theta = 1/2,
  c_0 = 0), not the strict margin -- consistent with the break-even identities
  (mean locked at 1/2) and the affine no-go (local = 0). The strict c_0 > 0
  ( < 1/2 ) is the CROSS-RUNG, tower-summed, non-local excess that the static
  single-scale ghost cannot probe. Equivalence (referee): transverse to
  Constantin-Fefferman (no eigenframe), STRICTLY STRONGER than proven Type-I
  exclusion (u=Bx is the canonical Type-I background), reduces to unproven
  c_0 > 0 -- genuinely new, KNOWN-OPEN (not known-false: ghost fails to refute;
  not known-true). No F2/F4/F5, Chapter-10, manuscript, or MPP closure is
  proved. Filed is not cleared.
---

# The ghost does not refute the defect; the single scale is the break-even boundary

## 1. Withdrawn: my near-ghost refutation (the exact error)

I claimed a localized near-affine ghost with `h << ell` drives four-body -> 0
while the record stays fixed, refuting the defect. WRONG. The record is the
positive part of the null Lagrangian `tr(A^3) = 3 det(grad u) = div Phi`; a
null Lagrangian has zero net bulk, so the ONLY bulk record is the
non-cancellation of a finite difference across the rung. The record therefore
carries the same `delta_h` factor `s = min(1, h/ell)` as every bill. Putting
`h^2` on four-body but not on the record was a type-inconsistent comparison
the ledger forbids. With the common `s^2` cancelled, `h` is a red herring:
`four-body/record = B`, `h`-independent (numerically flat across `h/ell`).

## 2. The single-scale result (real, and it kills the crude ghost)

On a static single-scale affine background of strain `B`, with a perturbation
populating the upstairs:
- record `~ B` (affine strain one-way-stretches the differenced upstairs),
- four-body `~ B^2` (pair-field `A (x) A` is quadratic in `A = B + grad v`; its
  cross-term variation is `B` times the record content),
- coherence `~ 1` (relative), viscous `/record ~ Re_ell` (does NOT bind).

So the pincer: four-body binds `B >= 1`, coherence binds `B <= 1`, and
\[
  \frac{\text{record}}{\text{bills}} = \frac{B}{1+B^2} \le \tfrac12,
  \qquad\text{uniform in } a,\ell,h,R,N .
\]
This is physically the pawl: you cannot stretch a record without bending the
pair-field, and the bend (four-body) is quadratic in the strain that does the
stretching. The crude affine counterexample is dead.

## 3. The honest ceiling: this IS break-even, not the margin

`1/2` is not `< 1/2`. And `B/(1+B^2)` saturates at `B = 1`. The marginal
profile `N_L ~ 2^{-L}/L` is exactly the self-consistent cascade at critical
strain `B ~ 1` on every rung -- it SITS ON the saturation point. So the
single-scale pincer delivers `theta = 1/2` exactly (`c_0 = 0`): it re-derives
the BREAK-EVEN boundary, which the break-even identities already pin at `1/2`
in the mean. It does not deliver the strict margin.

The strict `c_0 > 0` is the excess BELOW `1/2`, and by construction it cannot
come from this analysis:
- the mean is `1/2` (break-even identities) -> averaging gives `0`;
- the local jet is `0` (affine no-go) -> localizing gives `0`;
- the single-scale static-`B` ghost is exactly the local+mean face -> it gives
  the boundary `1/2`, nothing below it.
`c_0` lives in the CROSS-RUNG, tower-summed, time-and-scale-varying cascade
(the marginal profile with `B` generated self-consistently by the lower rungs),
which the static single-scale object structurally cannot probe.

## 4. Placement (referee): genuinely new, known-open

The uniform defect is a critical (`Hdot^{1/2} ~ L^3`, ESS class) energy/pair-
field statement, transverse to Constantin-Fefferman (it reads no vorticity-
direction eigenframe -- consistent with the guardrail that the local eigenframe
reading is doomed), and STRICTLY STRONGER than proved Type-I exclusion (`u=Bx`
is the canonical Type-I background, which the pincer now excludes). Strictly
stronger than a theorem, reducing to unproven `c_0 > 0`: genuinely new and
known-open. The ghost fails to refute it (good); nothing here proves it.

## 5. Honest status and the located wall

- WITHDRAWN: the ghost refutation (own error, type-inconsistency).
- PROVED (single scale): `record/bills = B/(1+B^2) <= 1/2`, uniform, the crude
  affine ghost excluded, the four-body pincer confirmed physically.
- NOT PROVED, and now precisely located: the STRICT margin `c_0 > 0` is the
  cross-rung excess at the pincer's saturation `B ~ 1` across the cascade -- the
  tower-summed marginal profile, non-local, transverse to C-F, stronger than
  Type-I. This is the wall, and the single-scale analysis lands exactly on its
  boundary.

One picture throughout: the record is a rectified null Lagrangian; the single
scale is its break-even (mean) face; `c_0` is the strict non-local cross-rung
excess. No closure. Filed is not cleared.
