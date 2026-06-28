---
theorem_id: forward-gold-affine-schur-production-term-classifier-coverage-audit-20260628
status: failed-unconditional-discharge; narrows-to-raw-positive-coefficient-elimination
created: 2026-06-28
problem: navier-stokes
route: forward-gold affine Schur accretivity edge
supports:
  - AffineSchurProductionTermClassifierCoverage.A
  - AffineSchurAccretivityGap.A
completion_truth: local theorem-construction audit only; not a global regularity proof
---

# Affine Schur production-term classifier coverage audit

## Claim under test

The desired coverage theorem is:

\[
\boxed{\text{AffineSchurProductionTermClassifierCoverage.A}}
\]

Every positive face contributing to

\[
  H_w\|c_{\theta,J}^{+}\|_2^2
\]

is either classifier-admitted retained Schur action with parent-predictable residence, or is routed to stop/legal, reselection, route motion, viscous service, return, or parent-orthogonal Bessel novelty.

If this coverage theorem holds, the earlier no-post-readout retention note supplies the selector guard, and the affine Schur accretive lower bound follows from the parent-predictable residence reduction.

## Decomposition required

The production coefficient must decompose as

\[
  c_{\theta,J}^{+}
  = c_J^{Schur}+c_J^{fresh}+c_J^{motion}+c_J^{visc}+c_J^{legal}+c_J^{raw} .
\]

The installed ledgers cover the first five classes:

\[
H_w\|c_J^{Schur}\|_2^2
\lesssim
\langle G_J^{-1}m_J,p_J\rangle_+ + legal + stop,
\]

\[
\sum_J H_w\|c_J^{fresh}\|_2^2
+\sum_J H_w\|c_J^{motion}\|_2^2
+\sum_J H_w\|c_J^{visc}\|_2^2
+\sum_J H_w\|c_J^{legal}\|_2^2
\le C_N(u_0)+R_{legal}+Stop .
\]

The remaining term is

\[
  c_J^{raw}.
\]

This is the part of the positive analytic producer that has not been shown to pass through the selected-action currency classifier.

## Failure of unconditional coverage

The coverage theorem is not an algebraic consequence of the Schur identity or of the selected-action currency rule alone. The classifier says what legal retained action may be, but it does not by itself prove that the analytic expression defining \(c_{\theta,J}^{+}\) contains only legal retained action.

If \(c_{\theta,J}^{+}\) is still the raw positive part of a lower-scale or scale-native production coefficient, then a residual piece \(c_J^{raw}\) may exist. Such a piece can have positive size while having no parent-predictable Schur residence and no assigned non-Schur ledger. In that case

\[
H_w\|c_J^{raw}\|_2^2
\]

is precisely the unpaid term preventing

\[
H_w\|c_{\theta,J}^{+}\|_2^2
\lesssim
\langle G_J^{-1}m_J,p_J\rangle_+ + legal + stop .
\]

Thus unconditional coverage fails unless the definition of \(c_{\theta,J}^{+}\) is already classifier-gated or a separate theorem proves

\[
\sum_J H_w\|c_J^{raw}\|_2^2
\le C_N(u_0)+R_{legal}+Stop .
\]

## Conditional closure

If the coefficient definition is changed or verified so that

\[
  c_J^{raw}=0
\]

for every retained positive face, then coverage holds immediately. If instead the raw part is nonzero but satisfies the bound above, then it is simply another paid ledger and the affine Schur estimate also follows.

Therefore the live edge is reduced to the following sharper hinge:

\[
\boxed{\text{RawPositiveCoefficientEliminationOrPayment.A}}
\]

Statement: every positive coefficient counted in \(H_w\|c_{\theta,J}^{+}\|_2^2\) is either already classifier-gated retained action, or its raw unclassified remainder is paid by stop/legal, reselection, route motion, viscous service, return, or parent-orthogonal Bessel novelty.

## Boundary

This note does not close the affine Schur accretivity gap. It proves that classifier coverage is equivalent to eliminating or paying the raw unclassified positive coefficient remainder. The next theorem work must inspect the definition of \(c_{\theta,J}^{+}\) and prove that no unpaid \(c_J^{raw}\) survives.