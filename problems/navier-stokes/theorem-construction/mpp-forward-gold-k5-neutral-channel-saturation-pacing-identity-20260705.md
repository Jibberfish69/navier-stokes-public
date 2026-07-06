---
theorem_id: forward-gold-k5-neutral-channel-saturation-pacing-identity-20260705
status: CORRECTED-SAME-DAY-direct-feed-zero-normal-form-log-seed-obstruction
created: 2026-07-05
problem: navier-stokes
route: forward-gold / confinement constant goal / work item 1 (K5)
authorship: >-
  Derivation: Claude (Fable), 2026-07-05. Physical story Thomas Birnie.
  Executes work item 1 of the decide-the-confinement-constant goal.
  CODEX GATE REQUESTED on the two display items in section 5.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-goal-decide-the-confinement-constant-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-kill-integral-crow-reduction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-two-tube-exact-tilt-stretch-eviction-ratio-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-neutral-channel-second-order-direct-feed-obstruction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-pacing-identity-normal-form-gate-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-log-seed-obstruction-pure-normal-form-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-edge-log-viscous-reynolds-split-20260705.md
external_inputs_to_verify:
  - Crow 1970 dispersion (already carried by the kill-integral note)
  - nonlinear Crow evolution: trough pinch-in preceding reconnection
    (attested in the vortex-dynamics literature; used here only as a
    sign check on the modulation coefficient, not as proof)
completion_truth: >-
  K5 is STRUCTURALLY RETYPED, not closed. Exact: (K5a) IMPULSE LEMMA -
  the pair's linear impulse per unit length is proportional to
  circulation times separation and is conserved, so the quadratic
  self-coupling of any non-growing mode CANNOT drive uniform separation
  drift; the uniform escape channel is dead at all orders. (K5b) PACING
  IDENTITY - direct pure-mode growing-band feed is zero by wavenumber
  selection. The surviving pacing object is the cubic edge normal-form
  coefficient Lambda_edge displayed in the Codex gate. The local-kappa
  trough test is not certified, because the 2*k modulation is same-scale
  rather than WKB-slow. Even if Re Lambda_edge > 0, the neutral-phase
  integrated production is logarithmic in seed amplitude, not
  seed-independent. If Re Lambda_edge <= 0 the pure neutral channel
  survives outright; if Re Lambda_edge > 0, K5 still needs an external
  clock. The viscous Reynolds split supplies that clock on the
  unit/marginal branch and leaves the super-marginal branch weighted.
  No closure claimed.
---

# K5: neutral-channel saturation by the pacing identity

## 1. The evasion being closed

The kill-integral cap diverges at the band edge: a non-growing mode
holds amplitude and produces indefinitely at linear order. The stable
oscillatory modes below the band do the same on time-average. This
note closes both, in structure, with one identity.

## 2. K5a: impulse lemma (exact)

Linear impulse per unit length of the anti-parallel pair is
proportional to Gamma times the vector separation and is conserved by
the dynamics. Therefore no quadratic (or any-order) self-interaction
of a perturbation mode can produce uniform separation drift. The
"slide the whole pair into or out of the band" channel does not exist.

## 3. K5b: pacing identity (normal-form route)

With the mean separation pinned, the leading pure-mode quadratic outputs
are the mean mode and the 2*kappa second harmonic. Direct feed into the
interior growing band is zero. The remaining pacing question is the
resonant normal-form feedback of those second-order geometry corrections
onto the edge mode.

The corrected identity is conditional: production rate is ~ s * beta^2,
and the edge-mode amplitude leaves neutrality at relative rate
s * beta^2 only if the cubic normal-form coefficient Lambda_edge has
positive real part. Then the payment is bounded per amplitude octave,
but the total neutral-phase stretch is logarithmic in the seed. If
Re Lambda_edge <= 0, the pure neutral mode is not killed by this channel.

## 4. K5c: scope

Covers the band edge and the entire stable oscillatory complement
(rotating tilts produce on time-average beta^2/2 and self-modulate at
the same order). Externally held poses are branch 2 of the symmetry
dichotomy (financed), out of family. Crowd-cell interactions are goal
item 4, not consumed here.

## 5. Codex gate result

The Codex gate is filed in:

`mpp-forward-gold-k5-pacing-identity-normal-form-gate-20260705.md`.

Result: the direct pure-mode feed coefficient is zero; the replacement
coefficient is the resonant edge normal-form coefficient Lambda_edge.
The local-kappa trough criterion is rejected as a certification
criterion. Even favorable sign gives a log(seed) neutral-phase integral.
Kill condition (standing, from the goal): Re Lambda_edge <= 0 or
symmetry-zero on the edge family kills inviscid self-saturation; the
viscous Reynolds split caps the unit/marginal branch and leaves the
high-Re branch to forced sideband/leakage/crowd contamination,
route-out/exclusion, or a new unweighted high-Re mechanism.
