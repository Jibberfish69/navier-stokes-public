---
theorem_id: forward-gold-doubling-comparison-certification-spec-20260705
status: certification-spec-complete-unexecuted-by-design-person-scale
created: 2026-07-05
problem: navier-stokes
route: forward-gold / confinement constant goal / item 2 (doubling comparison)
authorship: >-
  Spec: Claude (Fable), 2026-07-05. Lane law: numbers enter only here.
completion_truth: >-
  Specification only, deliberately unexecuted in-lane. The comparison:
  max over the interior Crow band of K(kappa) = (3*sqrt(3)/16) *
  Delta^2 * kappa^2 / gamma_eff(kappa) against ln 2, where gamma_eff =
  gamma_c(kappa) - c_v * kappa^2 / Re_local includes the marginal-line
  viscous damping (order one at local Re ~ 1 per the lambda-edge
  note). Named inputs, each an interval: (I1) the Crow dispersion
  gamma_c(kappa) with its core-log constant over the admissible core
  family; (I2) the kill displacement Delta (reconnection onset, from
  the reconnection literature's onset criterion, interval not point);
  (I3) the profile factor relating the static-X peak production
  coefficient 3*sqrt(3)/16 to the sinusoidal Crow eigenmode (one
  quadrature, exact integrand from the two-tube kernel); (I4) c_v, the
  edge-mode damping coefficient. PASS CONDITION: sup K < ln 2 with
  interval arithmetic over I1-I4 => no single encounter completes a
  record on the marginal family; every record needs multiple
  encounters, each separated by custody-priced re-assembly. FAIL
  CONDITION: sup K >= ln 2 on the interval => single-encounter records
  possible; the per-octave toll must then come from custody alone;
  composition (item 5) carries more weight. Either outcome is
  progress; neither touches the constant's existence. MANDATORY
  SPEC GATES inherited from the certification tradition: the dyadic
  blowup countermodel must FAIL the bound; a rotation-only
  countermodel must not be taxed. Person-scale per the owner's law.
---

# Doubling comparison: certification spec

One comparison, four interval inputs, two named countermodel gates,
pass/fail consequences typed in the frontmatter. Numbers enter only
through this door, once, with intervals.
