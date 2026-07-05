---
theorem_id: forward-gold-flux-cone-step4-limit-interchange-proof-20260705
status: updated-closedness-stands-gate-a-marginal-paid-general-weighted
created: 2026-07-05
problem: navier-stokes
route: forward-gold / lifting campaign / L1 flux cone / step (iv)
authorship: Claude (Fable), 2026-07-05. Campaign theorem 1; physical story
  Thomas Birnie; step (iii) kinematic input from the morning note.
completion_truth: >-
  CORRECTED. Step (iv)'s closedness mechanism stands, but L1' is NOT proved
  until Gate A supplies an oriented positive decomposition. Three surviving
  findings. (1) The naive cone statement is vacuous without a wavenumber bound:
  conic combinations of rays (1, +/-kappa) over all kappa fill the half-plane
  D_E >= 0, so the theorem's content is the opening angle - the local active
  wavenumber / tower readout. (2) The same-scale opposite-helicity exchange
  analysis remains only a special case; after the step (iii) orientation catch,
  energy-free helicity residuals can also arise from cancellation between
  forward-oriented transfer and reversed/backscatter transfer at different
  wavenumbers. Without no-recount/oriented admission, the two-orientation conic
  hull is vacuous. (3) Closedness: once fixed-epsilon membership in the correct
  closed convex set is established by Gate A, distributional limits preserve it
  with no further analytic price. Gate A is the lifted no-recount law: every
  backscattered unit was previously admitted forward and may not be counted
  twice; formally, a bounded-variation-in-scale / channel-signed total-variation
  statement controlled by admitted throughput. Later update from
  mpp-forward-gold-gate-a-three-residues-payment-20260705.md: Gate A is
  proved-shaped on marginal bands, and in general is Reynolds-weighted by
  M(l). Thus the closedness mechanism fires on marginal bands modulo the
  ladder-locality exponent check; the general cone theorem carries both
  kappa-bar and M into campaign theorem 2. No unweighted global L1/L1' closure
  is claimed here.
---

# Step (iv): the limit interchange, proved by closedness

## Correction header (same date, after the step (iii) orientation catch)

The orientation correction to step (iii) (Codex) partially invalidates
finding (2) below: with backscatter contributions living on REVERSED rays
(dE < 0), energy-free helicity residuals are not confined to same-scale
opposite-helicity exchange - they can also arise from forward transfer at
one wavenumber cancelling backscatter at another. Without an oriented
admission decomposition, the two-orientation conic hull is the full plane
and the theorem is vacuous. What stands from this note: the closedness
mechanism (finding 3) - membership in a closed convex set survives
distributional limits - which will deliver L1' the moment Gate A supplies
a positive decomposition on oriented rays. Gate A, identified: it is the
LIFTED NO-RECOUNT LAW - every backscattered unit was previously admitted
forward and may not be recounted; formally, a bounded-variation-in-scale
statement (channel-signed total variation of the mollified flux controlled
by admitted throughput), which is the repo's first-admission/no-recount
discipline (WPT.4) appearing at PDE level, and equivalently the signed-
height no-clipping principle: backscatter is debt, never deletion. Gate A
was open at this point. The exchange-line localization of finding (2) is
demoted to the special case it covers.

## Later update: Gate A three-residue payment

The later note `mpp-forward-gold-gate-a-three-residues-payment-20260705.md`
updates this status. Gate A is no longer wholly open in the same form:
channel locality is paid modulo a ladder-scaling exponent check, the
crossing-rate floor is paid on marginal bands, and the free marginal-scope
claim is retracted. The corrected state is:

  marginal bands: Gate A is proved-shaped, modulo the locality exponent check;
  general bands: Gate A is Reynolds-weighted,
  TV(Pi_l) <= C M(l) x local dissipation budget.

So this closedness mechanism fires in the marginal case, and in the general
case the cone theorem carries two tower readouts forward: kappa-bar and M.

## 1. The vacuity repair

Rays (1, +/-kappa) over all kappa conically span the half-plane. The cone
theorem has content only with the opening fixed by the local active
wavenumber. L1's honest form was always quantitative: how wide is the cone
where the defect lives. The opening IS the tower readout.

## 2. Where cancellation can and cannot hide

The same-wavenumber, opposite-helicity exchange channel remains an important
special case: E contributions cancel while H contributions add, kinematically
from H = s kappa E. That is the waste-pair exchange channel, and by itself it
carries no net downscale energy defect.

After the step (iii) orientation correction, this is no longer the full
cancellation classification. Signed aggregation can also cancel energy flux by
combining forward-oriented transfer at one wavenumber with reversed/backscatter
transfer at another. Those reversed contributions lie on the opposite
orientation of their helical lines. Without an oriented admission/no-recount
decomposition, the two-orientation conic hull becomes vacuous.

## 3. The closedness mechanism

Fix epsilon. If Gate A supplies a decomposition of the mollified cubic flux by
helical Littlewood-Paley channels into nonnegative weights on oriented
Manley-Rowe rays, with backscatter routed as previously admitted debt, then
the pair (Pi_E^eps, Pi_H^eps)(x) lies in the intended closed convex set
K(kappa_eps(x)) plus any explicitly quarantined non-funding exchange line.
Distributional limits preserve membership in closed convex sets. Let
kappa-bar := limsup of the active wavenumber on defect-carrying scales. Then,
conditional on Gate A:

  L1': (D_E, D_H)(x,t) in K(kappa-bar(x,t)) + E-line, pointwise,
  with the E-line component supported on same-scale opposite-helicity
  exchange and unable to fund downscale energy defect.

The interchange problem dissolves only after fixed-epsilon oriented membership
has been proved. Cone membership - unlike a norm estimate - survives limits for
free once the correct closed set membership is actually available.

## 4. Writing debts and the handoff

Gate A status after the three-residue payment: proved-shaped on marginal bands,
weighted in general. The remaining Gate A residue is the ladder-scaling
locality exponent check; the unweighted global version is retracted.

After Gate A, remaining debts for the closedness mechanism are exposition-
grade: exact helicity-defect increment representation transcribed; CET
commutator estimates for epsilon-uniformity; kappa-bar measurability. Then the
next mechanism-grade handoff is bounding kappa-bar and the Reynolds excess
weight M on the defect support. The tower enters the lifted theorem as both the
cone opening and the Gate A weight; controlling them is campaign theorem 2, the
impedance estimate in storage currency.
