---
theorem_id: forward-gold-k5-neutral-channel-saturation-pacing-identity-20260705
status: CORRECTED-SAME-DAY-2kappa-band-entry-mechanism-dead-by-wavenumber-conservation-impulse-lemma-stands-pacing-identity-conditional-see-mean-detuning-note
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
external_inputs_to_verify:
  - Crow 1970 dispersion (already carried by the kill-integral note)
  - nonlinear Crow evolution: trough pinch-in preceding reconnection
    (attested in the vortex-dynamics literature; used here only as a
    sign check on the modulation coefficient, not as proof)
completion_truth: >-
  K5 is DERIVED IN STRUCTURE, not closed. Exact: (K5a) IMPULSE LEMMA -
  the pair's linear impulse per unit length is proportional to
  circulation times separation and is conserved, so the quadratic
  self-coupling of any non-growing mode CANNOT drive uniform separation
  drift; the uniform escape channel is dead at all orders. (K5b) PACING
  IDENTITY - with the mean pinned, the quadratic channel is separation
  MODULATION at twice the mode wavenumber (approach at troughs, mean
  fixed); both the mode's production and its trough-deepening rate are
  quadratic in amplitude on the same strain clock, so their ratio is
  AMPLITUDE-FREE: a neutral or stable oscillatory mode finances its own
  entry into the growing band at a rate locked to its production, and
  the integrated stretch of the non-growing phase is bounded by a
  band-geometry constant independent of amplitude and seed. (K5c) SCOPE
  - the identity covers the band edge AND the entire stable oscillatory
  complement (rotating tilts produce on time-average and self-modulate
  identically); externally held configurations are dichotomy branch 2,
  out of family. OPEN (the gate): display the second-variation
  modulation coefficient from the exact mutual-induction kernel and
  verify its sign (trough-approach, not crest-approach); display the
  local band-entry criterion (local kappa below edge at troughs) at the
  same order. If the coefficient vanishes identically or has the wrong
  sign uniformly on the edge family, work item 1's kill condition
  triggers and the per-encounter tax dies on the neutral channel.
  Combined state if the gate clears: every channel of the pair
  encounter (growing interior, long waves, edge, stable side) carries
  an amplitude-free per-encounter stretch bound - the pair cell's kill
  integral is then complete up to chapter-10 constants. No closure
  claimed.
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

## 3. K5b: pacing identity (exact in structure)

With the mean separation pinned, the leading quadratic self-coupling
of a mode at wavenumber kappa is separation modulation at 2*kappa:
local approach at troughs, recession at crests. At the troughs the
local kappa = k*d_local falls below the band edge and the
configuration enters the growing band LOCALLY - the known nonlinear
Crow pinch-in, here re-read as the tax collecting.

The identity: production rate ~ s * beta^2 and trough-deepening rate
~ s * beta^2, same clock, both quadratic. The ratio is amplitude-free.
Consequences: (i) a neutral mode cannot produce arbitrarily slowly to
delay its fall - slower production IS slower deepening in the same
proportion; (ii) integrated stretch of the non-growing phase is
bounded by a band-geometry constant, seed- and amplitude-independent,
the same structural miracle as the kill integral's last-e-fold
dominance (production quadratic in the quantity whose growth kills the
configuration).

## 4. K5c: scope

Covers the band edge and the entire stable oscillatory complement
(rotating tilts produce on time-average beta^2/2 and self-modulate at
the same order). Externally held poses are branch 2 of the symmetry
dichotomy (financed), out of family. Crowd-cell interactions are goal
item 4, not consumed here.

## 5. CODEX GATE (two display items)

(G-K5-1) Display the second-variation modulation coefficient: the
2*kappa separation-modulation forcing from the exact mutual-induction
kernel at a band-edge mode, and verify its sign gives trough-approach
on the edge family. The nonlinear Crow pinch-in attests the sign
physically; the display must derive it.

(G-K5-2) Display the local band-entry criterion: local kappa below
kappa_edge at the troughs at the same order in amplitude, i.e. the
modulation actually reaches the band, not merely deforms.

Kill condition (standing, from the goal): coefficient identically
zero or uniformly wrong-signed on the edge family => neutral producing
mode survives second order => per-encounter tax dies on this channel.
