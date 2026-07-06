---
theorem_id: forward-gold-kill-integral-crow-reduction-20260705
status: seed-independent-cap-derived-k5-marginal-closed-high-re-weighted-open
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
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-neutral-channel-second-order-direct-feed-obstruction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-pacing-identity-normal-form-gate-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-log-seed-obstruction-pure-normal-form-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-edge-log-viscous-reynolds-split-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k3-exact-kernel-finite-ode-obstruction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k3-curvature-leakage-floor-at-production-peak-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k3-combined-instantaneous-eviction-floor-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k3-two-tube-lifetime-tv-reduction-20260705.md
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
  linear order. SAME-DAY K5 CORRECTION: the direct pure-mode
  growing-band feed coefficient is zero by axial wavenumber selection.
  A single near-edge Fourier mode self-couples only into the mean mode
  and the second harmonic. The Codex gate retypes K5 to the resonant
  edge normal-form coefficient Lambda_edge, with the local-kappa trough
  criterion rejected as certification. Even if Re Lambda_edge > 0, the
  cubic normal form gives a neutral-phase integral logarithmic in the
  seed amplitude, not a seed-independent cap. If Re Lambda_edge <= 0 or
  vanishes by symmetry, inviscid self-saturation is dead on the pure edge
  channel outright; if Re Lambda_edge > 0, inviscid self-saturation still
  leaves log(seed). Viscosity supplies an external clock with cap
  proportional to local Reynolds: marginal/unit-Re edge is capped, high-Re
  edge remains Reynolds-weighted and passes to return-race/custody/sideband
  mechanisms. SAME-DAY K3 CORRECTION: the exact-kernel four-variable
  lifetime ODE is not an invariant reduction because the straight-pair
  skeleton bends immediately for producing beta != 0. Therefore Crow
  reduction is a prescribed linear-eigenmode/certification model until
  the curve-leakage residual is controlled. SAME-DAY K3 FOLLOW-UP:
  the local instantaneous residual is not weak; at the production
  station the scale-normalized normal leakage rate is exactly
  2*sigma_max. The combined instantaneous vector floor is also paid on
  the producing two-tube profile: E >= sigma/3. The same-packet
  two-tube TV reduction integrates this to Prod_+ <= 3 TV_evict, so
  signed time-cancellation is not an escape in TV currency. The open
  issue is bounding or consuming total eviction variation. Certification-
  typed inputs, named: the core-log
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

## 4. K5 correction: direct feed obstructed, edge Reynolds split

The first K5 mechanism as stated was direct second-order projection from
a pure near-edge Crow Fourier mode into the growing band. That mechanism
is obstructed. Axial translation symmetry forces the quadratic
Biot-Savart term to conserve wavenumber: a pure mode at +/-k produces
only 0 and +/-2k at second order. Near the upper band edge, 2k is outside
the growing band and 0 is a mean geometry/detuning mode.

Thus the direct pure-mode growing-band feed coefficient is identically
zero. The remaining K5 object is the resonant edge normal-form
coefficient Lambda_edge: whether the induced mean and second-harmonic
geometry couples back to the edge mode with positive real part at
relative rate ~ s * beta^2. Favorable sign gives one bounded payment per
amplitude octave, hence a log(seed) neutral-phase integral. Sideband
packets are a separate sideband/crowd channel, not the pure-mode
coefficient.

The real-field viscous clock removes the seed logarithm with a cap
proportional to local Reynolds. Hence the unit/marginal Reynolds edge is
capped; the super-marginal edge is not uniformly capped by K5 alone and
is handed to the two-payer/custody/crowd mechanisms.

## 5. What would certify (chapter-10 items, quarantined)

Maximize K over the interior band; compare against ln 2 (the doubling
comparison). Inputs: Crow dispersion with its core-log constant; Delta;
the profile factor. No number resolved here by the lane law.

Same-day K3 correction: the exact two-line kernel does not close on a
four-variable straight-skeleton ODE. The Crow calculation above is a
linear-eigenmode lifetime model. To turn it into the exact kill
integral, the omitted curvature modes must either be included in
filament-curve evolution or controlled as a curvature-leakage tax.
The local tax now has an exact display: at the production station,
\(B_d=2\sigma_{\max}\). The still-open step is carrying that local
floor through the lifetime dynamics.
Same-day combined-vector follow-up: \(\mathcal E\ge\sigma/3\) on the
producing two-tube profile. The open Crow/K3 issue is still lifetime
transport of this instantaneous floor, not the pointwise floor itself.
Same-day TV follow-up: on a leading-order two-tube episode,
\[
\mathrm{Prod}_+\le 3\,\mathrm{TV}_{\rm evict}.
\]
Thus time-cancellation is killed in total-variation currency; the open
Crow/K3 issue is the total-variation budget and duration clock.
