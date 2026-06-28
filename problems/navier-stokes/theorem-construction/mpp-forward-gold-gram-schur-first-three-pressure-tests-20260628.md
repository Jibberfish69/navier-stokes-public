---
theorem_id: mpp-forward-gold-gram-schur-first-three-pressure-tests-20260628
status: pressure-test-narrowing-not-gold-closure
created: 2026-06-28
problem: navier-stokes
route: forward-gold affine Schur accretivity edge
targets:
  - AffineSchurAccretivityGap.A
  - BoundedBelowSameMaterialServiceStorage.A
  - PositiveCriticalTransferDyadicFluxReduction.A
  - NativeBirthChargePacking.A
claimed_status: conditional
---

# Gram/Schur-first pressure tests for the forward-Gold edge

## 0. Compression

The Schur storage is already the parent-visible capacity norm:

\[
\mathfrak S_J
=\int \langle m_J,G_J^{-1}m_J\rangle dx
=\int \sup_{\alpha\ne 0}
{\langle \alpha,m_J\rangle^2\over \langle \alpha,G_J\alpha\rangle}\,dx .
\]

Thus the active missing theorem is the alignment/admission line

\[
H_w\|c_{\theta,J}^+\|_2^2
\lesssim
\langle G_J^{-1}m_J,p_J\rangle_+ + legal+stop.
\]

The proof task is to show that selected fresh positive production enters a dual direction already visible to the same parent capacity.

## 1. First pressure test: finite-dimensional Gram/Schur reversible cycles

Model one parent carrier by a finite-dimensional Hilbert detector space. Let
\(G(t)>0\) be the affine detector Gram matrix, \(m(t)\) the parent current response, and

\[
S(t)=\langle m(t),G(t)^{-1}m(t)\rangle .
\]

Let

\[
K(t)=G(t)^{-1/2}\dot G(t)G(t)^{-1/2}.
\]

For every fixed detector vector \(\alpha\),

\[
{d\over dt}\log \langle \alpha,G(t)\alpha\rangle
={\langle G^{1/2}\alpha,K G^{1/2}\alpha\rangle\over
\langle G^{1/2}\alpha,G^{1/2}\alpha\rangle},
\]

so

\[
\left|{d\over dt}\log \langle \alpha,G(t)\alpha\rangle\right|\le \|K(t)\|.
\]

Consequently a reversible affine deformation with \(G(T)=G(0)\) still pays positive path length through \(K\). Endpoint determinant or endpoint Gram state can cancel; metric path variation cannot.

The finite-dimensional result is therefore:

\[
\operatorname{Var}_{logG}(I)
\le \int_I \|K(t)\|dt,
\]

and on parent-announced first-exit slabs with normalized widths / bounded overlap, harmonic Cauchy gives the square-cost version

\[
\sum_e \delta_e^2
\lesssim
\int \|K(t)\|^2 d\mu_P(t).
\]

This verifies that \(\int\|K\|^2\) is the correct currency for repeated inverse-Gram births caused by moving affine geometry, provided the births are first-exit events with a fixed logarithmic threshold and bounded-overlap slabs.

Boundary of the test: \(K\)-variation alone does not pay stationary-metric repeated production. If \(G\) is fixed, then \(K=0\), and repeated fresh production must be paid by Schur current storage \(S\), negative return, or parent-current capacity packing. Thus the finite-dimensional test supports the route only in the metric-motion branch. It does not by itself prove the accretive production alignment.

## 2. Second pressure test: parent-adjoint detector Bessel lemma

Abstract Hilbert version. Let \(\mathcal C_P\) be the parent detector Hilbert space and let \(J_P\in \mathcal C_P^*\) be the parent stress current. Each selected child \(Q\) chooses a detector subspace \(E_Q\subset \mathcal C_P\), and

\[
\rho_Q=\|P_{E_Q}J_P\|^2_{\mathcal C_P^*}.
\]

The packing lemma is exactly a Bessel/frame statement:

\[
\sum_Q \rho_Q
\le B_P \|J_P\|^2_{\mathcal C_P^*}+E_{paid}(P).
\]

This is true when the selected detector projections satisfy an operator Carleson bound

\[
\sum_Q P_{E_Q}\le B_P I
\]

in the parent detector geometry. The theorem therefore reduces to proving that selection/reselection/frame/collar changes keep this operator packing bound after parent-subtraction. The already-installed supports point in this direction: inherited directions are parent current, fresh residuals Bessel-pack, and changed inherited reuse is charged to first-exit route motion.

Boundary of the test: an arbitrary adaptive selector can choose the same one-dimensional detector repeatedly, producing \(\sum_Q P_{E_Q}\) with unbounded multiplicity. The Bessel lemma therefore requires the parent-subtracted novelty rule or a paid reselection/first-exit charge. This gives the exact pure Hilbert obstruction.

## 3. Third pressure test: dyadic positive \(H^{1/2}\) transfer

The raw analytic face is

\[
\int_0^T
\left(-\langle \Lambda^{1/2}\mathbb P(u\cdot\nabla u),\Lambda^{1/2}u\rangle\right)_+dt
\le C(u_0)+\theta\nu\int_0^T\|\Lambda^{3/2}u\|_2^2dt,
\quad \theta<1.
\]

Dyadically, this asks whether every positive triadic contribution to the critical \(H^{1/2}\) flux can be charged to viscosity after parent-subtraction and selected same-material routing. In raw Fourier variables the standard estimate leaves a coefficient depending on \(\|u\|_{\dot H^{1/2}}\), so the raw inequality is MPP-strength. It should be used as a falsifier/normalizer for the selected Schur mechanism, not as the easiest proof surface.

The triad test should classify each positive contribution into one of three bins:

1. inherited parent-visible current, paid by Schur capacity;
2. fresh parent-orthogonal residual, paid by Bessel/viscous square-packing;
3. selector/frame/collar/metric motion, paid by \(K\)-variation and first-exit route energy.

Failure of this trichotomy gives a concrete counterexample branch to AffineSchurAccretivityGap.A.

## 4. Current conclusion

The correct order is:

1. Gram/Schur finite-dimensional cycle test;
2. parent-adjoint Bessel/frame packing test;
3. dyadic positive \(H^{1/2}\) triad falsifier.

This narrows the Gold edge. The finite-dimensional test validates \(K\)-variation as the currency for reversible affine metric cycles only under first-exit/bounded-overlap selection. The pure Hilbert test shows that packing is equivalent to an operator Bessel/Carleson bound for parent-subtracted detector projections. The dyadic test remains the full nonlinear sign test and should be used to locate the first triad type outside inherited/fresh/paid-motion classification.

Remaining burden: prove the accretive admission inequality

\[
H_w\|c_{\theta,J}^+\|_2^2
\lesssim
\langle G_J^{-1}m_J,p_J\rangle_+ + legal+stop
\]

by showing every selected positive fresh production vector is either parent-visible in Schur capacity, parent-orthogonal and Bessel-packable, or paid route motion. This is a narrowed theorem target, not a Gold closure.

## 5. Carry-forward: zero-reserve reduction

The trichotomy can be tested by its zero-reserve case. Normalize one selected
detector direction \(a_Q\) in the parent metric and write

\[
a_Q=P_{F_Q}a_Q+(I-P_{F_Q})a_Q
\]

where \(F_Q\) is the parent-known detector span already generated before the
child \(Q\). Put

\[
d_Q=(I-P_{F_Q})a_Q,\qquad
\sigma_Q=\langle G^{-1}m,P_{F_Q}a_Q\rangle .
\]

The three payments are then:

\[
\text{Schur: }\sigma_Q,\qquad
\text{Bessel novelty: }\|d_Q\|_G,\qquad
\text{motion: }\int_Q\|K\|^2+first\text{-}exit.
\]

The zero-reserve obstruction is therefore:

\[
T_Q^+>0,\qquad
\sigma_Q\approx0,\qquad
d_Q\approx0,\qquad
K\approx0,\qquad
legal+stop\approx0 .
\]

In the finite-dimensional stationary model this obstruction is impossible once
the selected production is known to be an actual increment of the same affine
current coordinate. Indeed, take \(G\) fixed, \(a_Q=a\in F_Q\), and write

\[
q(t)=\langle G^{-1}m(t),a\rangle .
\]

On an interval with no return/reset and no legal error, same-direction positive
production gives

\[
dq=b(t)\,dt,\qquad b(t)\ge0 .
\]

Then the Schur pairing is the positive current work

\[
\int q\,b\,dt
=
{1\over2}\bigl(q(t_1)^2-q(t_0)^2\bigr).
\]

Thus repeated stationary same-direction production is not free: the production
itself builds the Schur current that pays it. If the current is later erased so
that the same direction can look fresh again, the erasure is negative
return/reset. If the direction changes while claiming to be the same affine
direction, the change is metric/selector motion and is paid by \(K\) plus
first-exit slabs. If the direction was not already in \(F_Q\), it is Bessel
novelty.

So the remaining Navier-Stokes bridge is not a fourth payment mechanism. It is
the same-carrier admission statement that the dangerous positive dyadic triad
really enters the parent affine current coordinate with this sign:

\[
T_Q^+
\lesssim
\int_Q \langle G^{-1}m,p_Q\rangle_+
+\|d_Q\|_G^2
+\int_Q\|K\|^2
+legal+stop .
\]

A genuine failure triad must therefore be more specific than "outside the
trichotomy": it must produce positive \(H^{1/2}\) transfer while not being an
increment of any parent-known same-carrier affine current coordinate. That is
the exact remaining enemy of AffineSchurAccretivityGap.A.
