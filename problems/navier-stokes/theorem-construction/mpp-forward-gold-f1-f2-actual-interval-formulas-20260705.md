---
theorem_id: forward-gold-f1-f2-actual-interval-formulas-20260705
status: f1-f2-formulas-displayed-alpha-brackets-ratio-bracket-slice-bound-regate-requested
created: 2026-07-05
problem: navier-stokes
route: forward-gold / goal item 6 / f1-f2 as actual interval inequalities
authorship: Claude (Fable), 2026-07-05. Prose replaced by formulas, as
  demanded. Physical story Thomas Birnie.
completion_truth: >-
  Replaces the f1-f2 prose with the actual interval inequalities Codex
  demanded, pending re-gate. SETUP: legs k and q (waste and child,
  shared); relay included angle phi0; perturbation alpha in [-w, w]
  with w the packet angular half-width; phi(alpha) = phi0 + alpha.
  MONOTONE CONDITION (displayed): the angle floor gives phi0 in
  [phi_min, pi - phi_min] with w < phi_min, so the whole arc lies in
  (0, pi) where the cosine is strictly decreasing - the bracket
  direction is global on the arc, no quarter subtlety survives.
  THIRD SIDE: c(alpha)^2 = k^2 + q^2 - 2 k q cos(phi(alpha));
  c(-w) <= c(alpha) <= c(w); c(0) = p (the relay closure - the
  coincidence limit is the alpha = 0 evaluation, displayed).
  AREA: A(alpha) = (1/2) k q sin(phi(alpha)); by concavity of the sine
  on (0, pi) the minimum is at an endpoint: A_min = (1/2) k q m_s with
  m_s = min(sin(phi0 - w), sin(phi0 + w)); the maximum is sin(phi0)
  when the arc excludes the right angle, else the right-angle value -
  both cases displayed. CIRCUMRADIUS: R(alpha) = k q c(alpha) /
  (4 A(alpha)); bracket by the quotient of the displayed brackets.
  THE RATIO BRACKET (the demanded lower bracket): R_relay / R_pred
  (alpha) >= (p / c(w)) x (m_s / sin(phi0)), and the full home-slice
  G-ratio lower bracket, side sums included with mu(alpha) = c(alpha):
  |G_pred(alpha)| / |G_relay| >= [(q + c(-w) - k)/(q + p - k)] x
  (p / c(w)) x (m_s / sin(phi0)) - every factor an explicit formula in
  (k, q, phi0, w), and AT w = 0 EVERY FACTOR EQUALS ONE (c(0) = p,
  m_s = sin(phi0)) - the bracket collapses to the CLEARED home-center
  identity, displayed not asserted. SECTOR CONDITION ON THE SLICE
  (displayed): the whole slice stays below the child iff c(w) < q,
  equivalently k < 2 q cos(phi0 + w) - the slice-width admissibility
  inequality, one formula in the same variables. SLICE INTEGRAL LOWER
  BOUND: drain share sigma(alpha) = (1 + c(alpha)/q)/2 >=
  sigma_min = (1 + c(-w)/q)/2 > 1/2; aggregate drive >= (2w) x
  [single-mode drive display of the rectification note evaluated at
  the worst bracket: coupling lower value = |G_relay| x the ratio
  bracket above; drain share sigma_min] - the slice bound is the
  rectification structure times the slice measure times the displayed
  worst-bracket factors, nothing in prose. HONEST NOTE: the width w
  is the packet half-width symbol with its concentration-frame floor
  (filed); the displays are exact in w and collapse to identities at
  w = 0, so the deviation-from-one control is as strong as the width
  floor is - which is the concentration frame's own statement, not a
  new assumption. PRESS POINTS: the endpoint-minimum line for the
  sine (concavity, one line); the slice admissibility inequality's
  citation to the financed-family angle floor. Outstanding: this
  note's re-gate; TV downstream; the symbolic comparisons (whose
  G-ingredient is now the displayed bracket around a cleared
  identity); chapter 10. Filed is not cleared. No closure claimed.
---

# f1-f2 as formulas

## Codex re-gate update, same date

Codex re-gate filed at
`mpp-forward-gold-codex-f1-f2-actual-formulas-regate-20260705.md`.
The missing-formula objection is cleared: the law-of-cosines, area,
circumradius, and \(G\)-ratio brackets are now displayed and algebraic
on an admissible interval. The full slice floor is not cleared with
the full packet half-width \(w\): the hyperbolic-sector condition
\(c(w)<q\) is displayed, but not proved for the entire packet slice.
The remaining exact burden is to use a sector-admissible half-width
\[
0<w_{\rm eff}\le w,\qquad
w_{\rm eff}<\phi_{\min},\qquad
w_{\rm eff}<\arccos(k/(2q))-\phi_0,
\]
and substitute \(w_{\rm eff}\) into the displayed bracket and slice
integral. Filed is cleared only for the formula display and the
admissible-interval algebra.

## Codex admissible-width update, same date

Codex filed
`mpp-forward-gold-codex-sector-admissible-slice-width-20260705.md`.
The sector-admissible width is now chosen explicitly:
\[
w_{\rm eff}
=
\frac12\min\{w_{\rm packet},\phi_{\min},
\arccos(k/(2q))-\phi_0\}.
\]
On the home branch \(p<q\), the last term is positive, so the interval
\(|\alpha|\le w_{\rm eff}\) stays inside \(c(\alpha)<q\) and inside
the monotone angle arc. Current state: the f1-f2 formulas apply with
\(w_{\rm eff}\); symbolic comparisons inherit that exact factor.

## Setup and monotone condition

Legs k, q; relay angle phi0 in [phi_min, pi - phi_min]; alpha in
[-w, w], w < phi_min; phi(alpha) = phi0 + alpha. The arc lies in
(0, pi): cosine strictly decreasing on the whole arc - bracket
directions global.

## The three bracket functions

  c(alpha)^2 = k^2 + q^2 - 2 k q cos(phi(alpha)),
      c(-w) <= c(alpha) <= c(w),  c(0) = p.

  A(alpha) = (1/2) k q sin(phi(alpha)),
      A_min = (1/2) k q m_s,  m_s = min(sin(phi0-w), sin(phi0+w))
      (endpoint minimum by concavity); A_max as displayed by case.

  R(alpha) = k q c(alpha) / (4 A(alpha)),
      bracketed by the quotient of the above.

## The ratio bracket and the sector condition

  R_relay / R_pred(alpha) >= (p / c(w)) (m_s / sin(phi0)),

  |G_pred(alpha)|/|G_relay| >=
      [(q + c(-w) - k)/(q + p - k)] (p / c(w)) (m_s / sin(phi0)),

every factor explicit in (k, q, phi0, w); at w = 0 every factor is
one - the cleared home-center identity as the collapsed bracket.
Slice admissibility (whole slice below the child):

  c(w) < q,  equivalently  k < 2 q cos(phi0 + w).

## The slice integral

  sigma(alpha) = (1 + c(alpha)/q)/2 >= sigma_min = (1 + c(-w)/q)/2
  > 1/2;

  aggregate >= (2w) x [rectification single-mode display at coupling
  lower value |G_relay| x the ratio bracket] x sigma_min.

## Register

Formulas displayed; press points: sine endpoint-minimum line; slice
admissibility citation. Outstanding: re-gate; TV downstream; the
comparisons; chapter 10. Filed is not cleared. No closure claimed.
