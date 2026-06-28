---
theorem_id: forward-gold-high-high-full-output-stress-repo-wide-repair-20260628
status: repo-wide-target-repair-installed
created: 2026-06-28
problem: navier-stokes
route: forward-gold affine Schur accretivity edge
supports:
  - PositiveCriticalTransferDyadicFluxReduction.A
  - SameCarrierCommutatorDetectorAdmissionBridge.A
  - AffineSchurAccretivityGap.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-high-parent-current-admission-identity-attempt-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-wave-packet-high-high-residence-obstruction-20260628.md
completion_truth: repair note; not a smoothness proof
---

# High-high full-output stress repo-wide repair

The governing correction is:

\[
\text{one-point parent stress current}
\quad\text{sees}\quad
\Lambda^{-1/2}P_m\mathbb P\nabla\cdot(u\otimes u),
\]

not an individual input-coloured summand

\[
\Lambda^{-1/2}P_m\mathbb P\nabla\cdot(u_k\otimes u_\ell).
\]

The reason is algebraic. A one-point parent stress-current detector has symbol
depending only on the output variable \(\xi+\eta\). An input-coloured high-high
triad has a multiplier depending on the split \((\xi,\eta)\). Therefore an
individual \(k,\ell,m\) triad is a two-point bilinear current, not a one-point
parent-current read.

The corrected fork is:

1. **Full-output route.** Select after recombining the input colours:

\[
B_m^{full}
=
\Lambda^{-1/2}P_m\mathbb P\nabla\cdot(u\otimes u).
\]

Then the one-point same-carrier parent-current identity is exact, up to Hodge,
collar, frame, viscosity, legal, and stop terms.

2. **Two-point route.** Keep individual high-high input colours, but replace the
installed one-point parent current by a product-carrier/two-point material
current and prove its Schur/Bessel/motion packing theorem.

Any theorem surface saying that every positive input-coloured high-high triad is
admitted into the installed one-point parent current is superseded by this
repair.

The perpendicular payment repair remains valid: first-entry novelty is Bessel,
retained same-current production is Schur work, and motion/return/viscosity/legal
handle the remaining paid exits. The repo-wide change is only the high-high
object to which that payment machine may be applied.
