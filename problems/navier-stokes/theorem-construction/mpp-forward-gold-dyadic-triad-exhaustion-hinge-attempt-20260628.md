---
theorem_id: mpp-forward-gold-dyadic-triad-exhaustion-hinge-attempt-20260628
status: failed-unconditional-discharge-narrows-to-commutator-admission-theorem
created: 2026-06-28
problem: navier-stokes
route: forward-gold affine Schur accretivity edge
targets:
  - PositiveCriticalTransferDyadicFluxReduction.A
  - AffineSchurAccretivityGap.A
  - BoundedBelowSameMaterialServiceStorage.A
claimed_status: failed
---

# Dyadic triad exhaustion hinge attempt

## 1. Target

Let \(P_j\) be a Littlewood-Paley projection and \(u_j=P_j u\). Define the positive critical triad

\[
T_{k\ell m}^+
=
\left[-\left\langle
\Lambda^{1/2}P_m\mathbb P(u_k\cdot\nabla u_\ell),
\Lambda^{1/2}u_m
\right\rangle\right]_+.
\]

The desired exhaustion theorem is

\[
T_{k\ell m}^+
\le
C\bigl(T^{Schur}_{k\ell m}+T^{Bessel}_{k\ell m}+T^{motion}_{k\ell m}\bigr)
+\varepsilon\nu D_{k\ell m}+legal+stop.
\]

The three payment classes are:

1. inherited parent-visible current, paid by Schur capacity;
2. parent-orthogonal fresh residual, paid by Bessel packing;
3. selector/frame/collar/material metric motion, paid by \(K\)-variation.

## 2. Commutator normalization

Since \(u\) is divergence-free and \(\mathbb P\) commutes with \(\Lambda\), the critical transfer can be written as a commutator:

\[
\left\langle \Lambda^{1/2}\mathbb P(u\cdot\nabla u),\Lambda^{1/2}u\right\rangle
=
\left\langle [\Lambda^{1/2},u\cdot\nabla]u,\Lambda^{1/2}u\right\rangle .
\]

The principal transport term cancels:

\[
\left\langle u\cdot\nabla \Lambda^{1/2}u,\Lambda^{1/2}u\right\rangle=0.
\]

Thus positive \(H^{1/2}\) transfer is a commutator between material transport and the half-derivative detector. This is the correct analytic face of the Schur mechanism: positive transfer appears when the selected detector changes relative to the transported material carrier.

## 3. Paraproduct split

Bony splitting gives three interaction families.

Low-high transport:

\[
u_{<m-C}\cdot\nabla u_m.
\]

The principal part is skew and cancels. The remainder is a commutator of the dyadic detector with the low-frequency material flow:

\[
[\Lambda^{1/2}P_m,u_{<m-C}\cdot\nabla]u_m.
\]

This is the motion branch. Its coefficient is controlled by deformation of the transported frame and therefore must be paid by the \(K\)-variation / first-exit route ledger, provided the selected packet uses the same material carrier.

High-low and high-high interactions produce either parent-visible stress current or parent-orthogonal residual. The parent-visible component is measured by the Schur capacity response. The orthogonal component is a fresh detector direction and is admissible only through the parent-adjoint Bessel lemma.

## 4. The attempted exhaustion proof and exact failure point

A formal proof would decompose each triad detector \(e_{k\ell m}\) in the parent detector Hilbert space as

\[
e_{k\ell m}
=P_{parent}e_{k\ell m}
+(I-P_{parent})e_{k\ell m}
+e^{motion}_{k\ell m}.
\]

Then

\[
T_{k\ell m}^+
\le
C\left(
|\langle J_P,P_{parent}e_{k\ell m}\rangle|^2
+\|(I-P_{parent})e_{k\ell m}\|^2
+\|e^{motion}_{k\ell m}\|^2_K
\right)
+legal+stop.
\]

The first term is Schur-visible. The second term Bessel-packs after parent-subtracted novelty. The third term is paid by the finite-dimensional Schur motion lemma.

The proof fails at the unconditional construction of this decomposition for raw Fourier triads. A Littlewood-Paley triad by itself does not name the same transported material carrier, the parent detector space, or the first-exit motion ledger. Therefore raw Fourier trichotomy is an accounting assertion unless the dyadic detector is first lifted into the parent material-current Hilbert geometry.

## 5. Narrowed theorem replacing the failed discharge

The needed theorem is the following commutator admission theorem.

For every positive critical triad detector \(e_{k\ell m}\) on a retained selected packet, there is a same-carrier decomposition

\[
e_{k\ell m}=e^{Schur}_{k\ell m}+e^{fresh}_{k\ell m}+e^{motion}_{k\ell m}
\]

such that

\[
\langle J_P,e^{Schur}_{k\ell m}\rangle
=\langle G_J^{-1}m_J,p_J\rangle_+
\]

at the selected scale face,

\[
\sum_{k\ell m}\|e^{fresh}_{k\ell m}\|^2\le C\|J_P\|^2+C E_{route},
\]

and

\[
\sum_{k\ell m}\|e^{motion}_{k\ell m}\|^2_K
\le C\int S(t)\|K(t)\|^2dt+C E_{route}.
\]

Under this commutator admission theorem, dyadic triad exhaustion follows by summing the three bounds.

## 6. Outcome

Unconditional dyadic triad exhaustion is not discharged here. The attempt identifies the precise missing bridge: raw Fourier triads must be lifted into the same-material parent detector Hilbert space before Schur/Bessel/motion accounting has proof force.

The next theorem target is therefore:

\[
\boxed{\text{same-carrier commutator detector admission for positive }H^{1/2}\text{ triads}.}
\]

The first bridge attempt is now recorded in
`mpp-forward-gold-same-carrier-commutator-detector-admission-bridge-20260628.md`.
It proves the low-high branch as a detector-motion term and leaves high-low /
high-high interactions open exactly at the material adjoint lift and
parent-subtracted novelty bound.

That target is sharper than the previous positive-transfer statement. It names the exact object required to connect the abstract Schur and Bessel lemmas to the Navier-Stokes nonlinearity.
