---
theorem_id: forward-gold-participation-break-even-identities-c0-is-rigidity-deficit-20260706
status: filed-pending-codex-gate-identities-proof-grade-consequence-strict
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 / the solvable half solved — the mean of c_0 is exactly zero; c_0 is a rigidity deficit
authorship: >-
  Derivation and exact verification: Claude (Opus 4.8), 2026-07-06, answering
  the owner's "solve for c_0". Everything here is object-frame: one field,
  participation law (div u = 0), decay or periodicity. No triad model, no
  shells, no statistics, no homogeneity assumption. All four identities
  verified to machine precision in exact Fourier arithmetic on a random
  divergence-free trigonometric field (session record, 2026-07-06).
depends_on:
  - mpp-forward-gold-CANONICAL-one-object-strain-service-reserve-floor-consolidation-20260706.md
completion_truth: >-
  Four EXACT global identities of the participation law are derived and
  verified (proof-grade, elementary): (I1) equipartition int|S|^2 = (1/2)int|omega|^2;
  (I2) redistribution-only int S:Hess(q) = 0 — the participation Hessian does
  ZERO net strain-work, it can only relay; (I3) amplifier gear-lock
  int tr(S^3) = -(3/4) int omega.S omega (via tr(A^3)=3det(A) and det(grad u)
  a null Lagrangian); (I4) the same lock at dissipation order
  int|grad S|^2 = (1/2) int|grad omega|^2 (because each d_k u is itself
  divergence-free). Consequence (strict): total strain-service production
  equals EXACTLY one half of enstrophy production — P_S = (1/2) W with
  W = int omega.S omega — so the global ledger of the fluid-object is locked
  at exact break-even at every order (energy, production, dissipation), with
  no strict inequality anywhere. Therefore c_0 HAS NO MEAN-FIELD COMPONENT:
  any mechanism evaluated on average is provably marginal (theta = 1/2
  exactly). "Solve for c_0" therefore has this answer: the mean part solves
  to zero identically; c_0 itself is a RIGIDITY DEFICIT — the quantitative
  modulus by which an actual transported NS history fails to hold exact
  break-even at every rung of its own record ladder simultaneously. Routes
  (a) and (b) of the canonical consolidation unify: c_0 = the exclusion
  modulus of the zero-defect relay profile (material-time Liouville). No
  closure claimed; the identities are global, and localizing them to record
  windows IS the owner-and-charge burden. Filed is not cleared.
---

# The mean of c_0 is exactly zero; c_0 is a rigidity deficit

## 1. Four exact participation identities (object-frame, elementary, verified)

One field u, participation law div u = 0, decay or periodic. A = grad u,
S = sym A, omega = curl u, and the participation Hessian Hess(q) with
Lap q = -tr(A^2) (the differentiated constraint — the field's own
incompressibility self-participation, not an outside pressure operator).

- **(I1) Equipartition.** tr(A^2) = |S|^2 - (1/2)|omega|^2 is a pure
  divergence, so `int |S|^2 = (1/2) int |omega|^2`. The strain sector is
  locked at exactly half the vorticity sector.
- **(I2) Redistribution-only.** `int S:Hess(q) = (1/2) int Lap(div u) q = 0`.
  The participation Hessian does ZERO net strain-work on the whole object.
  It cannot create strain-service; it can only relay it. This is
  "conservation of payment" for the participation channel, as an identity.
- **(I3) Amplifier gear-lock.** For traceless A, tr(A^3) = 3 det(A), and
  det(grad u) is a null Lagrangian (Piola), so int tr(A^3) = 0; expanding,
  `int tr(S^3) = -(3/4) int omega . S omega`. Strain self-flattening and
  vortex stretching are ONE machine with a locked 3:4 gear. There is no
  freedom to run the strain amplifier without running the stretching
  amplifier in fixed ratio.
- **(I4) Dissipation-order lock.** Each d_k u is divergence-free, so (I1)
  applies to it: `int |grad S|^2 = (1/2) int |grad omega|^2`.

All four verified to machine precision in exact Fourier arithmetic
(random 9-mode divergence-free field; ratios 1.0 to 1e-15).

## 2. The break-even theorem (strict consequence)

The strain-energy budget on the whole object is
d/dt int (1/2)|S|^2 = -int tr(S^3) - (1/4) int omega.S omega
- int S:Hess(q) - nu int |grad S|^2.
By (I3) the first two terms are (3/4)W - (1/4)W = (1/2)W with
W = int omega.S omega; by (I2) the participation term is zero; by (I4) the
dissipation is exactly half the enstrophy dissipation. Meanwhile
d/dt int (1/2)|omega|^2 = W - nu int |grad omega|^2. So:

> **The global strain-service budget is EXACTLY one half of the enstrophy
> budget — at the level of energy (I1), production (P_S = W/2), and
> dissipation (I4). The ledger is locked at break-even, with no strict
> inequality anywhere.**

## 3. What this solves

"Solve for c_0", answered in three parts:

1. **Definition.** c_0 := 1 - 2 theta*, where theta* is the height-weighted
   retention of strain-service reserve across one record doubling of
   H = (1/2)||u||^2_{Hdot^{1/2}}, taken over the transported history.
2. **The mean part — SOLVED, exactly.** c_0^{mean} = 0. Any mechanism
   evaluated on the global/mean ledger comes out marginal (theta = 1/2
   exactly), BY THE IDENTITIES, not by bad luck. This upgrades the
   long-standing observation "every named mechanism is marginal" from an
   empirical stall pattern to a one-page theorem: the participation law
   itself locks the mean at the barrier. All mean-field, average-case, and
   globally-evaluated routes to c_0 are hereby dead — pruned as a class.
3. **The remainder — what c_0 IS.** Since the mean is exactly zero, c_0 is
   not a mean quantity of any formula awaiting evaluation. It is a
   RIGIDITY DEFICIT: the participation Hessian is net-zero globally (I2),
   so any structure climbing the record ladder is financed by a zero-sum
   relay; holding EXACT break-even at EVERY rung of one climbing history
   simultaneously is an infinitely-tuned configuration. c_0 > 0 iff that
   zero-defect relay profile (the marginal enemy N_L ~ 2^{-L}/L) is NOT
   realizable as an actual transported Navier-Stokes history, and c_0 is
   the quantitative modulus of that non-realizability. Routes (a) and (b)
   of the canonical consolidation are therefore ONE route: the coupled-packet
   derivation IS the material-time Liouville, and the constant it would
   produce IS c_0.

## 4. Honest boundaries

- The identities are GLOBAL (whole object, decay/periodic). Localizing them
  to record windows — whose strain-service went where, before readout — is
  exactly the owner-and-charge burden. Nothing here discharges it; this note
  explains why it cannot be discharged on averages.
- The resonance between the ladder-half (record doublings cost 2x) and the
  participation-half (strain sector locked at 1/2 of vorticity sector) is
  FLAGGED AS A CONJECTURE: they may be one fact in two costumes (the record
  fare and the sector lock both descending from the participation law), but
  that identification is not derived here and must not be cited as fact.
- No candidate value of c_0 is offered. Any closed-form number would be
  dishonest. What is now known: its mean is exactly zero; its habitat is
  rigidity/unique-continuation of the transported history; its two former
  routes are one.

Filed is not cleared. No closure claimed.
