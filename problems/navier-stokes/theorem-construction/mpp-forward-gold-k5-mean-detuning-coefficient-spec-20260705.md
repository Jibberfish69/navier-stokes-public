---
theorem_id: forward-gold-k5-mean-detuning-coefficient-spec-20260705
status: channel-decomposition-exact-pure-normal-form-log-seed-obstruction-corrected
created: 2026-07-05
problem: navier-stokes
route: forward-gold / confinement constant goal / item 1 retyped (K5 mean detuning)
authorship: >-
  Derivation: Claude (Fable), 2026-07-05, consuming Codex's same-day
  direct-feed obstruction (wavenumber-conservation catch, accepted in
  full). Physical story Thomas Birnie.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-goal-decide-the-confinement-constant-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-kill-integral-crow-reduction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-neutral-channel-second-order-direct-feed-obstruction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-neutral-channel-saturation-pacing-identity-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-log-seed-obstruction-pure-normal-form-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-edge-log-viscous-reynolds-split-20260705.md
external_inputs_to_verify:
  - nonlinear frequency shift of Kelvin/displacement waves on a strained
    vortex (Klein-Majda-tier core dynamics; sign and scaling of the
    amplitude-squared self-rotation shift)
completion_truth: >-
  Spec and exact channel decomposition, corrected by the same-day log-seed
  obstruction. The retyped K5
  object: does the near-edge neutral mode detune ITSELF into the
  unstable side at rate ~ s * beta^2? The 0-mode (mean) channel
  decomposes exactly into three: (a) mean vector separation - DEAD,
  pinned by the impulse lemma (exact, survives the correction); (b)
  mean axial flow - expected DEAD by the planar-mode reflection
  symmetry of the Crow eigenmode; display the symmetry argument or the
  nonzero coefficient; (c) nonlinear self-rotation shift - THE LIVE
  COEFFICIENT: a finite-amplitude displacement wave may shift its own
  rotation frequency at order beta^2, and the Crow growth factor depends
  on the self-rotation term at order one, with the band edge a simple
  zero. Same-day correction: even a favorable sign gives only nonlinear
  self-exit, hence a neutral-phase integral logarithmic in the seed
  amplitude. Therefore the sign chain cannot by itself restore the
  seed-independent pair kill integral. If the sign is nonpositive, the
  pure edge channel fails outright; if the sign is positive, K5 still
  needs an external seed floor, lifetime, viscous/core damping, custody
  payment, or sideband/crowd mechanism. Follow-up: viscous damping supplies
  that clock with a cap proportional to local Reynolds, closing the marginal
  branch and leaving the high-Re branch weighted. Sideband/packet coupling is
  typed to the crowd cell (item 4), not consumed here. No closure claimed.
---

## Codex gate, same date

Codex gate filed:
`mpp-forward-gold-codex-k5-mean-detuning-regate-20260705.md`.
Same-day correction carried by
`mpp-forward-gold-k5-log-seed-obstruction-pure-normal-form-20260705.md`:
even a favorable finite sign gives nonlinear self-exit and hence a
\(\log(A_{\rm exit}/A_0)\) seed divergence. Positive
\(\operatorname{Re}\Lambda_{\rm edge}\) is not a seed-independent K5
cap.

Accepted: direct pure-mode growing-band feed is dead by wavenumber
selection; the surviving pure-mode question is an edge-amplitude
detuning/normal-form sign; uniform mean separation is removed by the
impulse gauge; sideband packet routes are separate from pure-mode K5.

Regated: the scalar self-rotation sign chain is not yet the full gate.
The live coefficient is
\[
\Lambda_{\rm edge}
=
\left\langle q^\ast,\,
P_k\Bigl(
2B(q,h_0)
+2B(\overline q,h_2)
+3C(q,q,\overline q)
\Bigr)
\right\rangle ,
\]
with \(h_0\) impulse-gauged and \(h_2\) the second-harmonic response.
The self-rotation shift clears K5 only after this full expression is
proved to collapse to that scalar in one declared convention. Until
then the finite sign computation
\[
  \operatorname{Re}\Lambda_{\rm edge}>0
\]
is open, but no sign outcome by itself closes the seed-independent
pair-cell cap. No pair-cell kill-integral closure is claimed.

# K5 retyped: the mean-detuning coefficient

## 1. What Codex's obstruction leaves

Wavenumber conservation kills the direct pure-mode feed: +/-k
self-couples only into 0 and +/-2k, and 2k is outside the band at the
upper edge. The surviving second-order route for a PURE mode is the
0-channel: mean-field response that moves the mode relative to the
band. The pacing identity survives IF and only if some 0-channel
coefficient is nonzero with the destabilizing sign at rate ~ s*beta^2.

## 2. Exact decomposition of the 0-channel

(a) MEAN SEPARATION: pinned by impulse conservation (exact lemma,
unchanged). Dead.

(b) MEAN AXIAL FLOW: the symmetric Crow eigenmode is planar; reflection
through the displacement plane should forbid second-order mean axial
pumping. Display the symmetry argument at second order, or the
coefficient if the symmetry fails.

(c) SELF-ROTATION SHIFT: the mode is a displacement (Kelvin-type) wave
whose linear self-rotation enters Crow's growth factor at order one.
Finite amplitude shifts that rotation at order beta^2 - the classic
nonlinear frequency shift. The band edge is a simple zero of the
growth factor, so a beta^2 self-rotation shift moves the mode INTO or
OUT OF the band at rate ~ s * beta^2. This is the live coefficient.

## 3. The sign chain (fix conventions before computing)

Write the Crow growth factor near the upper edge as a product with one
vanishing factor. Destabilizing detuning requires:

  sign( d(growth factor)/d(self-rotation) at edge )
  x sign( amplitude-squared self-rotation shift of the edge mode )
  > 0.

Both signs must be displayed from stated conventions in one place; no
sign imported from memory or literature without re-derivation.

## 4. Outcomes, stated before the computation

DESTABILIZING: self-detuning has the favorable sign, so the edge mode
leaves neutrality on the amplitude-squared clock. This gives only a
bounded payment per amplitude octave. The total neutral-phase stretch
still contains log(seed), so the pair-cell kill integral is NOT complete
without an external seed floor, lifetime, damping, custody payment, or
sideband/crowd mechanism.
The viscous Reynolds split supplies that damping only in Reynolds-weighted form:
unit/marginal Re is capped, high Re remains open to the two-payer mechanisms.

STABILIZING (uniformly over admissible cores): a neutral producing
mode survives second order. Item 1 kill condition TRIGGERS on the edge
channel; per-encounter tax dead there; the edge burden moves to
external lifetime/custody/sideband mechanisms and the goal records the
first real wound honestly.

ZERO through third order: escalate the display one order; if it
persists at all orders accessible to the filament model, type the edge
to core-dynamics tier and record the model boundary.

## 5. Codex gate requested

(G-K5'-1) the reflection-symmetry argument or coefficient for channel
(b); (G-K5'-2) the sign chain of section 3 with both factors derived
from one stated convention set; (G-K5'-3) confirmation that
sideband/packet routes are cleanly typed to item 4 and no pure-mode
channel is missed by the 0/2k enumeration.
