---
theorem_id: forward-gold-flux-cone-step4-limit-interchange-proof-20260705
status: CORRECTED-closedness-mechanism-stands-content-gated-on-oriented-admission-gate-A
created: 2026-07-05
problem: navier-stokes
route: forward-gold / lifting campaign / L1 flux cone / step (iv)
authorship: Claude (Fable), 2026-07-05. Campaign theorem 1; physical story
  Thomas Birnie; step (iii) kinematic input from the morning note.
completion_truth: >-
  Step (iv) is resolved, with an honest structural surprise that improves
  the theorem. Three findings. (1) The naive cone statement is VACUOUS
  without a wavenumber bound: conic combinations of rays (1, +/-kappa) over
  all kappa fill the half-plane D_E >= 0. The true content of L1 was always
  the opening angle - the local active wavenumber - as the step (iii) note
  anticipated. (2) The cancellation hazard localizes exactly: after
  mollification the defects are signed aggregates, and the only channel
  that can carry helicity defect with ZERO energy defect is same-scale
  opposite-helicity exchange - kinematically the E-cancelling, H-additive
  configuration - which is precisely the waste-pair/reverse channel, and
  it is downscale-impotent (it cannot fund a positive downscale energy
  defect). The escape from the cone is the channel that cannot cascade.
  (3) Proof by closedness: at every fixed epsilon the mollified flux pair
  decomposes exactly (helical Littlewood-Paley on the cubic, finite sums,
  no limit issues) into channel contributions each lying on its kinematic
  ray or on the exchange line; each mollified pair therefore lies in the
  closed convex set K(kappa_eps) + E-line; closed convex sets are preserved
  under distributional limits, so the defect pair lies in K(kappa-bar) +
  E-line, where kappa-bar(x,t) is the limsup active wavenumber on the
  defect-carrying scales. THEOREM (L1', proved at this outline level):
  (D_E, D_H) lies in the cone of opening kappa-bar plus the energy-free
  exchange line, pointwise; the exchange component cannot fund downscale
  concentration. Remaining writing debts, named: the helicity-defect
  increment representation cited structurally from the literature
  (Chae-type) needs its exact form transcribed; epsilon-uniformity of the
  channel decomposition needs the standard Constantin-E-Titi commutator
  estimates written out; measurability of kappa-bar. These are exposition-
  grade, not mechanism-grade. The POWER of L1' downstream depends entirely
  on bounding kappa-bar - which is the tower, and is exactly campaign
  theorem 2's impedance business, as forecast. No PDE-level closure beyond
  L1' is claimed.
---

# Step (iv): the limit interchange, proved by closedness

## 1. The vacuity repair

Rays (1, +/-kappa) over all kappa conically span the half-plane. The cone
theorem has content only with the opening fixed by the local active
wavenumber. L1's honest form was always quantitative: how wide is the cone
where the defect lives. The opening IS the tower readout.

## 2. Where cancellation can and cannot hide

Signed aggregation after mollification can cancel energy flux while
helicity flux survives only through one configuration: transfers between
same-wavenumber, opposite-helicity modes (E contributions cancel, H
contributions add - kinematic, from H = s kappa E). That is the waste-pair
exchange channel. It carries no net downscale energy defect: it cannot
fund concentration. Every other channel contributes (dE, dH) on a genuine
ray inside the cone.

## 3. The closedness proof

Fix epsilon. Decompose the mollified cubic flux by helical Littlewood-
Paley channels: finite sums, exact identities, each channel contribution
on its ray (step iii, kinematic) or on the exchange line. Hence the pair
(Pi_E^eps, Pi_H^eps)(x) lies in K(kappa_eps(x)) + E-line, a closed convex
set. Distributional limits preserve membership in closed convex sets. Let
kappa-bar := limsup of the active wavenumber on defect-carrying scales.
Then:

  L1': (D_E, D_H)(x,t) in K(kappa-bar(x,t)) + E-line, pointwise,
  with the E-line component supported on same-scale opposite-helicity
  exchange and unable to fund downscale energy defect.

The interchange problem dissolves because cone membership - unlike any
norm estimate - survives limits for free once the set is closed. Convexity
crossed the bridge, as the opening note predicted.

## 4. Writing debts and the handoff

Debts (exposition-grade): exact helicity-defect increment representation
transcribed; CET commutator estimates for epsilon-uniformity; kappa-bar
measurability. Handoff (mechanism-grade): all downstream force now rides
on bounding kappa-bar on the defect support - the tower enters the lifted
theorem as the cone's opening, and bounding it is campaign theorem 2, the
impedance estimate in storage currency. L1 stands; the campaign's weight
moves to theorem 2.
