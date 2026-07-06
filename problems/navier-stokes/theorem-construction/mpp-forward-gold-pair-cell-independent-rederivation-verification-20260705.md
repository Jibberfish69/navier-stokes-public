---
theorem_id: forward-gold-pair-cell-independent-rederivation-verification-20260705
status: cornerstone-double-derived-all-formulas-confirmed-by-independent-route
created: 2026-07-05
problem: navier-stokes
route: forward-gold / confinement constant goal / verification unit (non-stacking)
authorship: >-
  Verification: Claude (Fable), 2026-07-05. Purpose: de-risk the
  external-paper cornerstone before it reaches a human referee.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-two-tube-exact-tilt-stretch-eviction-ratio-20260705.md
  - problems/navier-stokes/external-paper/eviction-production-filament-pair-notes-draft-20260705.md
completion_truth: >-
  All pair-cell cornerstone formulas re-derived by an independent and
  simpler route and confirmed exactly. Route: filament kinematics -
  the axial strain is the arclength derivative of the axial velocity
  component, and the tangent rotation is the arclength derivative of
  the transverse velocity components; no gradient-tensor contraction
  needed. Confirmed exactly: the axial velocity component
  -(Gamma beta d / 2 pi)/rho^2 differentiates to sigma(zeta) =
  (Gamma beta^3/pi) d zeta / rho^4; the out-of-plane component
  -(Gamma beta/2 pi) zeta/rho^2 differentiates to tau_y =
  (Gamma beta/2 pi)(beta^2 zeta^2 - d^2)/rho^4 with tau_y(0) =
  -Gamma beta/(2 pi d^2); the in-plane component
  (Gamma gamma d/2 pi)/rho^2 differentiates to tau_n =
  -(Gamma gamma beta^2/pi) d zeta / rho^4; hence tau_n/sigma =
  -cot(2 alpha) pointwise, peak at d^2 = 3 beta^2 zeta^2, peak value
  (3 sqrt(3)/16) Gamma beta^2/(pi d^2), and floor 8 sqrt(3)/(9 beta),
  all identical to the original derivation. The three velocity
  components above are one-line contractions of t_2 x rho. The
  cornerstone is double-derived; the simpler route is recommended for
  the external paper's presentation. No new claims.
---

# Pair cell: independent re-derivation (verification unit)

Axial strain = d/d(zeta) of axial velocity; tangent rotation =
d/d(zeta) of transverse velocity. Three one-line components, three
one-line derivatives, every formula of the two-tube note confirmed
exactly, including the cot(2 alpha) identity and the 8 sqrt(3)/9
floor. Cornerstone double-derived. Recommended as the paper's
presentation route.
