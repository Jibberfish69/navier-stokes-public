---
theorem_id: forward-gold-flux-cone-step3-kinematic-ray-membership-20260705
status: step3-line-membership-resolved-ray-orientation-open
created: 2026-07-05
problem: navier-stokes
route: forward-gold / lifting campaign / L1 flux cone / step (iii)
authorship: Claude (Fable), 2026-07-05 morning session. Campaign per the
  opening note of 2026-07-05; physical story Thomas Birnie.
completion_truth: >-
  Correction installed: the kinematic helical identity resolves LINE
  membership, not yet oriented RAY/CONE membership. For a helical mode at
  wavenumber kappa with sign s, helicity is identically s kappa times energy -
  H_i = s_i kappa_i E_i. Hence every instantaneous helical-mode contribution
  satisfies (dH_i) = s_i kappa_i (dE_i), whether the interaction is resonant,
  non-resonant, transfer, or backscatter. This voids the proposed
  non-resonant-slope failure: background oscillations cannot leave the
  helical line. However convex cone aggregation needs nonnegative weights on
  oriented rays. When dE_i is negative, the contribution lies on the opposite
  orientation of the same line. Thus the remaining Step (iii) burden is the
  ORIENTATION gate: write the Duchon-Robert/helicity increment cubic as a
  positive admission/defect decomposition into oriented Manley-Rowe rays, with
  backscatter routed as opposite-oriented debt rather than silently included in
  the forward cone. Only after that orientation gate is proved does the analytic
  burden move to Step (iv), the mollification-limit interchange. Not proved
  here.
---

# L1 step (iii): line membership is kinematic

Kinematic part resolved. In the helical basis, a mode at wavenumber kappa
with helicity sign s satisfies H = s kappa E identically - helicity per unit
energy IS the signed wavenumber. Hence any instantaneous energy
redistribution among helical modes, from any interaction (resonant,
non-resonant, backscatter, any helicity branch), produces mode-wise
(dE, dH) contributions on the lines spanned by (1, s kappa). The Manley-Rowe
relations verified earlier at triad level are the three-mode shadow of this
kinematic fact; non-resonant background cannot change the slope.

Correction: line membership is weaker than oriented cone membership. If
dE < 0, the contribution lies on the opposite orientation of the same helical
line. The L1 flux cone needs nonnegative weights on oriented rays, so Step
(iii) still has one sign/admission burden:

  decompose the Duchon-Robert/helicity increment cubic into positive
  admission/defect pieces on oriented Manley-Rowe rays, routing backscatter
  as opposite-oriented debt rather than as forward-cone mass.

Cone content, made explicit: the aggregated defect pair must satisfy the
local constraint family

  |D_H| <= kappa_active . D_E-type bounds,

with kappa_active the local active wavenumber - which is a tower readout
(the local derivative ratio). The cone theorem thereby links the flux
defects to the tower quantitatively: the lift does not merely borrow the
tower vocabulary, it needs the tower's local wavenumber as the cone's
opening angle.

# Remaining gates

Gate A: oriented-ray admission. The kinematic identity gives the helical line;
the proof still must show that the local defect/admission object is a positive
measure on the forward oriented rays, with backscatter represented as debt or
opposite flux.

Gate B: mollification-limit interchange. After Gate A, the mode-wise oriented
ray decomposition of the mollified increment cubic must survive the
epsilon-limit defining (D_E, D_H) for suitable weak solutions. Tools:
Constantin-E-Titi calculus; helicity-conservation thresholds (Chae-type).
Hazard, stated not hidden: below Onsager regularity, unbounded local wavenumber
could open the cone in the limit; control of kappa_active on the defect's
support is the quantitative crux - expected to be exactly where the impedance
estimate (campaign theorem 2) takes over. If the cone opens uncontrollably at
Step (iv), L1 fails there and the failure locus is itself a Silver-facing
object (a defect supported where the tower is unbounded is a terminal-record
candidate, consumed by the CM test).
