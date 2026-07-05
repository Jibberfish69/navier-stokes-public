---
theorem_id: forward-gold-flux-cone-step3-kinematic-ray-membership-20260705
status: step3-resolved-kinematically-burden-moves-to-step4-limit-interchange
created: 2026-07-05
problem: navier-stokes
route: forward-gold / lifting campaign / L1 flux cone / step (iii)
authorship: Claude (Fable), 2026-07-05 morning session. Campaign per the
  opening note of 2026-07-05; physical story Thomas Birnie.
completion_truth: >-
  Step (iii) of the L1 proof path (per-triad ray membership) is resolved,
  and by a mechanism stronger than anticipated: ray membership is KINEMATIC,
  not dynamic. For a helical mode at wavenumber kappa with sign s, helicity
  is identically s kappa times energy - H_i = s_i kappa_i E_i is a pointwise
  identity of the helical decomposition, not a property of the dynamics.
  Therefore EVERY instantaneous redistribution of energy among helical
  modes - resonant or non-resonant, transfer or backscatter, any branch -
  contributes a (dE, dH) pair lying exactly on the ray (1, s_i kappa_i).
  The anticipated falsification risk (non-resonant background escaping the
  ray structure) is void: non-resonant contributions oscillate in magnitude
  but cannot leave their rays, because the ray is what a helical mode IS.
  Consequence: the entire analytic burden of L1 moves to step (iv), the
  mollification-limit interchange - showing the mode-wise ray decomposition
  of the increment cubic survives the epsilon-to-zero limit that defines
  the Duchon-Robert defect pair (D_E, D_H) for suitable weak solutions.
  That is Onsager-territory with established tools (Constantin-E-Titi
  mollification calculus; the helicity-conservation regularity literature,
  Chae-type thresholds). Honest hazard, named: below Onsager-type
  regularity the defects are genuinely nonzero distributional limits, and
  the limit could a priori mix rays through unbounded local wavenumber -
  the cone stays closed only if kappa_active is controlled, which ties L1
  quantitatively to the tower (local active wavenumber = tower ratio). Not
  proved here; step (iv) is now the single open gate of Theorem 1.
---

# L1 step (iii): ray membership is kinematic

Claim resolved. In the helical basis, a mode at wavenumber kappa with
helicity sign s satisfies H = s kappa E identically - helicity per unit
energy IS the signed wavenumber. Hence any instantaneous energy
redistribution among helical modes, from any interaction (resonant,
non-resonant, backscatter, any helicity branch), produces mode-wise
(dE, dH) contributions exactly on the rays (1, s kappa). The Manley-Rowe
relations verified earlier at triad level are the three-mode shadow of
this kinematic fact; nothing dynamical needs to be checked at step (iii).

Cone content, made explicit: the aggregated defect pair must satisfy the
local constraint family

  |D_H| <= kappa_active . D_E-type bounds,

with kappa_active the local active wavenumber - which is a tower readout
(the local derivative ratio). The cone theorem thereby links the flux
defects to the tower quantitatively: the lift does not merely borrow the
tower vocabulary, it needs the tower's local wavenumber as the cone's
opening angle.

# The single remaining gate: step (iv)

Burden: the mode-wise ray decomposition of the mollified increment cubic
must survive the epsilon-limit defining (D_E, D_H) for suitable weak
solutions. Tools: Constantin-E-Titi calculus; helicity-conservation
thresholds (Chae-type). Hazard, stated not hidden: below Onsager
regularity, unbounded local wavenumber could open the cone in the limit;
control of kappa_active on the defect's support is the quantitative
crux - expected to be exactly where the impedance estimate (campaign
theorem 2) takes over. If the cone opens uncontrollably at step (iv),
L1 fails there and the failure locus is itself a Silver-facing object
(a defect supported where the tower is unbounded is a terminal-record
candidate, consumed by the CM test).
