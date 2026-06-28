---
theorem_id: forward-gold-raw-positive-coefficient-elimination-or-payment-attempt-20260628
status: exact-definition-block; two-branch-reduction-installed
created: 2026-06-28
problem: navier-stokes
route: forward-gold affine Schur accretivity edge
supports:
  - RawPositiveCoefficientEliminationOrPayment.A
  - AffineSchurProductionTermClassifierCoverage.A
  - AffineSchurAccretivityGap.A
completion_truth: local theorem-construction reduction only; not a global regularity proof
---

# Raw positive coefficient elimination or payment attempt

## Target

The previous coverage audit reduced the affine Schur gap to the fate of the raw unclassified positive coefficient remainder:

\[
  c_{\theta,J}^{+}
  = c_J^{Schur}+c_J^{fresh}+c_J^{motion}+c_J^{visc}+c_J^{legal}+c_J^{raw} .
\]

All terms except \(c_J^{raw}\) are routed to Schur residence or to paid non-Schur ledgers. The present target is

\[
\boxed{\text{RawPositiveCoefficientEliminationOrPayment.A}}
\]

namely

\[
\sum_J H_w\|c_J^{raw}\|_2^2
\le C_N(u_0)+R_{legal}+Stop,
\]

or the stronger definition-level statement \(c_J^{raw}=0\).

## Branch 1: classifier-gated definition

If the definition of \(c_{\theta,J}^{+}\) is already the classifier-gated retained positive coefficient, then

\[
  c_J^{raw}=0 .
\]

In that case RawPositiveCoefficientEliminationOrPayment.A is immediate, and the preceding chain closes at the level of the affine Schur production estimate:

\[
H_w\|c_{\theta,J}^{+}\|_2^2
\lesssim
\langle G_J^{-1}m_J,p_J\rangle_+ + legal+stop+paid\;ledgers .
\]

After summing the installed affine Schur identity, this gives the finite Schur reserve conditional only on the already-installed negative-return, inverse-Gram variation, motion, novelty, and legal/stop payments.

## Branch 2: raw analytic definition

If instead \(c_{\theta,J}^{+}\) is the raw positive analytic coefficient before classifier gating, then the theorem is not available from the current record. A raw analytic coefficient can contain a component that is positive, post-readout selected, parent-orthogonal to the stored Schur current, and not yet assigned to any paid ledger.

In that case the obstruction is exactly

\[
H_w\|c_J^{raw}\|_2^2
\]

with no available estimate of the form

\[
H_w\|c_J^{raw}\|_2^2
\le C_N(u_0)+R_{legal}+Stop .
\]

This is not a small technical gap. It is the distinction between defining the producer as legal retained Gold action and trying to pay every raw positive analytic fluctuation after the fact.

## Exact block

Therefore the theorem cannot be discharged until the source definition of \(c_{\theta,J}^{+}\) is resolved.

The next exact hinge is

\[
\boxed{\text{ThetaPositiveCoefficientDefinitionGate.A}}
\]

Statement: the object \(c_{\theta,J}^{+}\) appearing in the affine Schur producer is the classifier-gated retained positive coefficient, not the raw positive analytic coefficient; or else its raw pre-classifier remainder is explicitly routed to a paid ledger.

## Boundary

This note installs the two-branch reduction and identifies the exact definition-level obstruction. The route is not closed. The next work must inspect or enforce the definition of \(c_{\theta,J}^{+}\).