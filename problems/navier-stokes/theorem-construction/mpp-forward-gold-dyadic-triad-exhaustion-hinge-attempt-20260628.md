---
theorem_id: mpp-forward-gold-dyadic-triad-exhaustion-hinge-attempt-20260628
status: failed-unconditional-discharge; input-coloured-high-high-triad-one-point-admission-superseded
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

Supersession note, 2026-06-28: this note is valid as a falsifier for raw
Littlewood--Paley bookkeeping, but its high-high target is too fine for the
installed one-point parent current. Individual input-coloured high-high triads
are two-point bilinear currents. The one-point parent-current route must use the
full output-local stress after input colours are recombined, or else a separate
two-point parent-current theory must be installed.

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

The originally desired input-coloured exhaustion theorem was

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

High-low interactions can be reduced to parent-visible stress current,
parent-orthogonal residual, or paid motion. High-high interactions require an
extra object choice: full output-local stress for the one-point parent current,
or input-coloured triads only in a two-point parent-current theory.

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

The proof fails at the unconditional construction of this decomposition for raw
Fourier triads. A Littlewood-Paley triad by itself does not name the same
transported material carrier, the parent detector space, or the first-exit motion
ledger. In the high-high branch there is a stronger algebraic failure:
input-coloured triads are not one-point parent stress-current reads because their
symbols depend on the input frequency split.

## 5. Narrowed theorem replacing the failed discharge

The corrected needed theorem is the following commutator admission theorem.

For each retained selected packet, the full output-local stress detector admits a
same-carrier decomposition in the installed one-point parent-current space,

\[
e_m^{full}=e^{Schur}_m+e^{fresh}_m+e^{motion}_m
\]

such that

\[
\langle J_P,e^{Schur}_m\rangle
=\langle G_J^{-1}m_J,p_J\rangle_+
\]

at the selected scale face,

\[
\sum_m\|e^{fresh}_m\|^2\le C\|J_P\|^2+C E_{route},
\]

and

\[
\sum_m\|e^{motion}_m\|^2_K
\le C\int S(t)\|K(t)\|^2dt+C E_{route}.
\]

Input-coloured high-high triads may be kept only after replacing \(J_P\) by a
two-point parent current and proving the corresponding packing theorem.

## 6. Outcome

Unconditional dyadic triad exhaustion is not discharged here. The attempt
identifies the precise missing bridge and its correction: one-point Schur/Bessel/
motion accounting applies to full output-local stress; input-coloured high-high
triads require a two-point current.

The next theorem target is therefore:

\[
\boxed{\text{same-carrier admission for full output-local positive }H^{1/2}\text{ stress}.}
\]

The first bridge attempt is now recorded in
`mpp-forward-gold-same-carrier-commutator-detector-admission-bridge-20260628.md`.
It proves the low-high branch as a detector-motion term and leaves high-low plus
the corrected high-high fork open: full-output one-point admission, or
input-coloured two-point current.

That target is sharper than the previous positive-transfer statement. It names the exact object required to connect the abstract Schur and Bessel lemmas to the Navier-Stokes nonlinearity.
