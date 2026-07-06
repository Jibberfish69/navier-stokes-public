---
theorem_id: forward-gold-kill-integral-crow-reduction-20260705
status: seed-independent-cap-derived-on-growing-band-edge-channel-named-open
created: 2026-07-05
problem: navier-stokes
route: forward-gold / confinement constant / goal item 1 (kill integral)
authorship: >-
  Derivation: Claude (Fable), 2026-07-05. Physical story Thomas Birnie.
  Executes goal item 1 of the decide-the-confinement-constant goal
  (same date).
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-goal-decide-the-confinement-constant-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-two-tube-exact-tilt-stretch-eviction-ratio-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-kill-angle-sheet-hunt-self-cell-sweep-20260705.md
external_inputs_to_verify:
  - Crow 1970 linear stability of the anti-parallel vortex pair
    (cutoff filament model; dispersion in modified-Bessel
    mutual-induction functions and the core-log self-rotation)
completion_truth: >-
  The kill integral is REDUCED, not closed. Derived: (K4a, structural,
  exact given Crow's linear theory) production is QUADRATIC in the
  perturbation amplitude while Crow growth is LINEAR-exponential, so
  the integrated stretch over an encounter is dominated by the final
  e-fold and carries a SEED-INDEPENDENT cap: integrated stretch <=
  (3*sqrt(3)/16) * Delta^2 * kappa^2 / gamma_c(kappa), where kappa =
  k*d is the perturbation wavenumber times separation, gamma_c(kappa)
  the Crow growth rate in units of the pair strain s =
  Gamma/(2*pi*d^2), and Delta the named order-one kill-displacement
  ratio (reconnection onset at transverse displacement Delta*d). The
  cap is uniform over seeds because the enemy's production scales as
  the SQUARE of the amplitude that is meanwhile growing exponentially:
  patience does not help the enemy. (K4b, exact limit) Long waves are
  harmless: gamma_c vanishes slower than kappa^2 as kappa -> 0, so the
  cap vanishes there. (K4c, NAMED OPEN - the live pressure point) At
  the short-wave band edge gamma_c -> 0 at finite kappa and the cap
  formally diverges; the evasion channel is a near-neutral mode:
  non-growing tilt that produces at constant amplitude indefinitely at
  linear order. Named saturation route (K5): a neutral mode
  self-couples at second order and feeds the growing band at rate
  proportional to amplitude squared, giving lifetime ~ 1/(s*beta^2)
  and integrated stretch of order ONE, seed-independent again - to be
  proved, not assumed. If K5 fails, the per-encounter tax is dead on
  the edge channel and custody must carry everything (goal kill
  condition, standing). Certification-typed inputs, named: the core-log
  constant in the Crow dispersion; the kill displacement Delta; the
  sinusoidal-vs-uniform tilt profile factor relating the X-formula
  peak production to the Crow eigenmode. The doubling comparison (cap
  vs ln 2, maximized over the interior band) is a chapter-10 item.
  No closure claimed.
---

# Kill integral: Crow reduction with seed-independent cap

## 1. Reduction

State of the encounter: anti-parallel pair, separation d, strain scale
s = Gamma/(2*pi*d^2). Perturbation of wavenumber k along the tubes,
dimensionless kappa = k*d, transverse amplitude A(t). Crow's linear
theory (external import, cutoff model): A grows as exp(gamma_c(kappa)
* s * t) on the unstable band, with gamma_c given in closed form by
modified-Bessel mutual-induction functions and the core-log
self-rotation.

Local tilt carried by the mode: beta(t) ~ kappa * A(t)/d. Peak
production from the two-tube note with beta(t) in place of the static
tilt:

    sigma_max(t) = (3*sqrt(3)/16) * Gamma * beta(t)^2 / (pi * d^2).

Kill criterion: reconnection onset at A = Delta * d (Delta named,
order one), i.e. beta_kill = kappa * Delta.

## 2. The seed-independent cap (K4a)

With beta(t) = beta_kill * exp(gamma_c s (t - T)):

    integral of beta^2 dt <= beta_kill^2 / (2 * gamma_c * s),

independent of the seed: the last e-fold dominates because production
is quadratic in a linearly-growing amplitude. Using Gamma/(pi d^2) =
2s:

    INTEGRATED STRETCH PER ENCOUNTER
      <= (3*sqrt(3)/16) * Delta^2 * kappa^2 / gamma_c(kappa)
      =: K(kappa).

Patience does not pay: waiting from a smaller seed adds production at
smaller beta^2 but the same eviction clock runs; the integral is
capped by its final e-fold regardless.

## 3. Band ends (K4b, K4c)

Long waves: gamma_c ~ kappa * sqrt(core-log factors) as kappa -> 0,
so K(kappa) -> 0: harmless.

Short-wave band edge: gamma_c -> 0 at finite kappa_edge, K formally
diverges. The evasion channel is the near-neutral mode: constant
amplitude, indefinite production at linear order. LIVE PRESSURE POINT.

## 4. K5 (named, open): second-order saturation of the neutral channel

A neutral mode of amplitude beta self-couples at second order and
projects onto the growing band at rate ~ s * beta^2; lifetime ~
1/(s beta^2); integrated stretch ~ (s beta^2) * 1/(s beta^2) = order
one, seed-independent. To be proved with the exact mode-coupling
coefficient (same kernel currency as the two-tube note). If it fails,
goal item 1's kill condition triggers on the edge channel.

## 5. What would certify (chapter-10 items, quarantined)

Maximize K over the interior band; compare against ln 2 (the doubling
comparison). Inputs: Crow dispersion with its core-log constant; Delta;
the profile factor. No number resolved here by the lane law.
