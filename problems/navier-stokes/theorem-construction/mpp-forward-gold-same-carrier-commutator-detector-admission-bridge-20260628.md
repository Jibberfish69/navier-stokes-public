---
theorem_id: forward-gold-same-carrier-commutator-detector-admission-bridge-20260628
status: partial-bridge-low-high-motion-admitted-high-interaction-material-lift-open
created: 2026-06-28
problem: navier-stokes
route: forward-gold affine Schur accretivity edge
supports:
  - PositiveCriticalTransferDyadicFluxReduction.A
  - AffineSchurAccretivityGap.A
  - BoundedBelowSameMaterialServiceStorage.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-five-step-smoothness-route-first-two-lemmas-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-dyadic-triad-exhaustion-hinge-attempt-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-dimensional-schur-motion-payment-20260628.md
completion_truth: partial; exact commutator admission theorem still open
---

# Same-carrier commutator detector admission bridge

The first two abstract mechanisms are now available:

1. moving affine detector geometry pays through Schur storage times \(K\)-variation;
2. parent-adjoint fresh directions pack once their projections satisfy the operator
   Bessel/Carleson bound.

The remaining bridge is to show that every positive \(H^{1/2}\) commutator triad
is admitted into that parent material detector geometry.

## 1. Correct target

For a dyadic triad

\[
T_{k\ell m}^+
=
\left[
-
\left\langle
\Lambda^{1/2}P_m\mathbb P(u_k\cdot\nabla u_\ell),
\Lambda^{1/2}u_m
\right\rangle
\right]_+,
\]

the desired bound is

\[
T_{k\ell m}^+
\le
C\left(
T^{Schur}_{k\ell m}
+T^{fresh}_{k\ell m}
+T^{motion}_{k\ell m}
\right)
+\varepsilon\nu D_{k\ell m}
+legal+stop .
\]

This is not a fourth payment mechanism. It is the admission theorem saying that
the dyadic commutator detector is a legal same-carrier parent detector, up to
fresh novelty and paid motion.

## 2. Commutator identity

Since \(u\) is divergence-free and \(\mathbb P\) commutes with \(\Lambda\),

\[
\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle
=
\left\langle
[\Lambda^{1/2},u\cdot\nabla]u,
\Lambda^{1/2}u
\right\rangle .
\]

The transport part cancels:

\[
\left\langle
u\cdot\nabla\Lambda^{1/2}u,
\Lambda^{1/2}u
\right\rangle=0 .
\]

So positive critical transfer is detector motion relative to material transport.
This is the analytic form of the Schur/Bessel/motion split.

## 3. Low-high branch: admitted as motion

Let \(v=u_{<m-C}\) and let \(X_v\) be its parent material flow. For the
low-high interaction \(v\cdot\nabla u_m\), the relevant detector is
\(\Lambda^{1/2}P_m\). Along the \(v\)-flow,

\[
\Lambda^{1/2}P_m(v\cdot\nabla u_m)
=
v\cdot\nabla\Lambda^{1/2}P_m u_m
+
[\Lambda^{1/2}P_m,v\cdot\nabla]u_m .
\]

The first term is skew in \(L^2\) and gives no critical growth. The second term
is the change of the dyadic detector under the material flow.

On the cotangent side, the transported frequency obeys

\[
\dot\xi=-(\nabla v)^T\xi .
\]

For the dyadic half-derivative symbol

\[
a_m(\xi)=|\xi|^{1/2}\varphi(2^{-m}\xi),
\]

one has on the annulus \(|\xi|\simeq2^m\)

\[
|D_t^v a_m(\xi)|
\le
C|\nabla v|\,a_m(\xi).
\]

Thus the low-high commutator is exactly a same-carrier detector-motion term:

\[
|T_{<m,m,m}^+|
\le
C\,T^{motion}_{<m,m,m}
+\varepsilon\nu D_m
+legal+stop,
\]

provided the parent packet uses the \(v\)-material carrier and its first-exit
slabs have bounded overlap. The motion payment is then the finite-dimensional
Schur motion lemma applied to the transported detector metric.

This branch is a real admission, not a route proposal: the commutator is the
material derivative of the detector, and the cotangent deformation is the
\(K\)-motion being charged.

## 4. Parent Hilbert decomposition after material lift

Once a triad detector \(e_{k\ell m}\) has been lifted to the parent material
detector space \(\mathcal C_P\), the Schur/fresh split is just Hilbert geometry.
Let \(F_{k\ell m}\) be the parent-known spent detector span before this triad.
Then

\[
e_{k\ell m}
=
P_{F_{k\ell m}}e_{k\ell m}
+
(I-P_{F_{k\ell m}})e_{k\ell m}
+
e^{motion}_{k\ell m}.
\]

The inherited piece is Schur-visible:

\[
T^{Schur}_{k\ell m}
\simeq
\left|\langle J_P,P_{F_{k\ell m}}e_{k\ell m}\rangle\right|^2 .
\]

The fresh piece is Bessel-packable exactly when parent-subtracted novelty gives

\[
\sum_{k\ell m}P_{(I-P_F)e_{k\ell m}}\le C I+C E_{route}.
\]

The motion piece is paid by the already proved finite-dimensional Schur motion
lemma:

\[
\sum_{k\ell m}\|e^{motion}_{k\ell m}\|_K^2
\lesssim
\int S(t)\|K(t)\|^2dt+E_{route}.
\]

Therefore the only remaining non-formal step is material lift/admission of the
raw Fourier detector into \(\mathcal C_P\).

## 5. High-low and high-high branch: exact open lift

For high-low and high-high interactions, raw Fourier localization produces a
detector for the Eulerian stress current, but it does not automatically say that
the detector is:

1. built from the parent material carrier before selected child readout;
2. legal for the parent adjoint stress current \(J_P\);
3. controlled in the parent detector norm \(\mathcal C_P\);
4. decomposable into parent-known inherited span plus parent-orthogonal novelty;
5. accompanied by a first-exit motion ledger when the frame/selector/collar
   changes.

This is the precise failed step in the unconditional dyadic triad exhaustion
attempt. A raw Littlewood-Paley triad only supplies an Eulerian multiplier. The
Schur/Bessel/motion accounting requires a same-carrier parent adjoint detector.

## 6. The theorem still to prove

The exact bridge theorem is:

For every retained selected positive \(H^{1/2}\) triad, the Eulerian commutator
detector admits a parent-built material adjoint representative
\(\psi_{k\ell m}^P\in\mathcal C_P\) such that

\[
T_{k\ell m}^+
\lesssim
\left|\langle J_P,P_F\psi_{k\ell m}^P\rangle\right|^2
+\|(I-P_F)\psi_{k\ell m}^P\|_{\mathcal C_P}^2
+\|\psi_{k\ell m}^{motion}\|_K^2
+\varepsilon\nu D_{k\ell m}
+legal+stop .
\]

The low-high branch supplies the motion term by the commutator/cotangent-flow
calculation above. The high-low and high-high branches remain open precisely at
the material adjoint lift and parent-subtracted novelty bound.

## 7. Current conclusion

The proof route has narrowed to one live obstruction:

\[
\text{Eulerian positive commutator triad}
\longrightarrow
\text{parent-known same-carrier adjoint detector}.
\]

Once that admission bridge is proved with the stated norm bounds, the first two
abstract lemmas sum the Schur, fresh, and motion pieces, giving finite positive
critical transfer and the existing finite-clock to \(H^s\) continuation relay.
