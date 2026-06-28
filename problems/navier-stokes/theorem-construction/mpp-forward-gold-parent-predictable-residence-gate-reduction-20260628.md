---
theorem_id: forward-gold-parent-predictable-residence-gate-reduction-20260628
status: conditional-reduction; selector-admissibility-block-open
created: 2026-06-28
problem: navier-stokes
route: forward-gold affine Schur accretivity edge
supports:
  - AffineSchurAccretivityGap.A
  - BoundedBelowSameMaterialServiceStorage.A
completion_truth: local theorem-construction reduction only; not a global regularity proof
---

# Parent-predictable residence gate reduction

The live object is the affine Schur record

\[
  m_J=\int_J (1,s)Z_{new}(s)\,ds,\qquad
  G_J=\int_J w(s)^{-1}(1,s)^T(1,s)\,ds,
\]

with

\[
  S_J=\int \langle m_J,G_J^{-1}m_J\rangle\,dx .
\]

The installed identity is

\[
D_tS_J=2\langle G_J^{-1}m_J,p_J-r_J+e_J\rangle
-\langle G_J^{-1}m_J,K_JG_J^{-1}m_J\rangle .
\]

The missing Gold step is

\[
H_w\|c_{\theta,J}^{+}\|_2^2
\lesssim
\langle G_J^{-1}m_J,p_J\rangle_+ + legal + stop .
\]

The previous residence-thickness note showed that raw positivity does not imply projection into the parent-declared Schur current. The needed admissibility rule is sharper: a retained positive face must either be parent-predictably resident in the same material Schur record, or it must be paid outside Schur storage.

## Residence-or-paid axiom

Let \(Q\subset J\) be a retained positive production face and set

\[
  B_Q := H_w\|c_{\theta,Q}^{+}\|_2^2,
  \qquad v_J:=G_J^{-1}m_J .
\]

The required parent-predictable admission is:

\[
B_Q\le C\langle v_J,p_{I_Q}\rangle_+ + E_Q^{fresh}+E_Q^{motion}+E_Q^{visc}+E_Q^{stop/legal},
\]

where \(I_Q\subset J\) is declared from parent data on the same material carrier, and the error terms are routed to already installed ledgers:

\[
\sum_Q E_Q^{fresh}\le C_N(u_0)+R_{legal}+Stop,
\]

\[
\sum_Q E_Q^{motion}\le C_N(u_0)+R_{legal}+Stop,
\]

\[
\sum_Q E_Q^{visc}+E_Q^{stop/legal}\le C_N(u_0)+R_{legal}+Stop .
\]

Under this axiom,

\[
\sum_Q B_Q\le C\sum_Q\langle G_J^{-1}m_J,p_{I_Q}\rangle_+ +C_N(u_0)+R_{legal}+Stop .
\]

Thus the affine Schur accretive lower bound follows after summing the installed Schur identity and paying the negative return plus inverse-Gram variation terms by their existing ledgers.

## Sharp obstruction

The axiom is necessary. In a finite-dimensional model with \(G=I\), \(m=e_1\), and selected positive production \(p=M e_2\), one has

\[
  \langle G^{-1}m,p\rangle_+=0
\]

while the positive selected quantity can be order \(M\). Therefore no estimate of the form

\[
  B\lesssim \langle G^{-1}m,p\rangle_+
\]

can hold unless the selected production is excluded from Schur action or paid by a non-Schur ledger.

## Next exact hinge

The next theorem target is

\[
\boxed{\text{NoPostReadoutThinTransientRetention.A}}
\]

Statement: under the stopped selector rules, a positive thin transient selected only after the lower-scale readout is not retained Schur action unless it has a parent-predictable same-material residence certificate. Otherwise it is charged to stop/legal, reselection, route motion, viscous service, return, or parent-orthogonal Bessel novelty.

This note proves the conditional reduction. It does not close the global problem.