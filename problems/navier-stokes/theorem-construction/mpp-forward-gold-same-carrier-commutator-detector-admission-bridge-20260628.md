---
theorem_id: forward-gold-same-carrier-commutator-detector-admission-bridge-20260628
status: partial-bridge-low-high-motion-admitted; high-high-corrected-to-full-output-or-two-point-current
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
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-adjoint-bessel-packing-under-parent-subtracted-novelty-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-low-high-high-material-adjoint-lift-split-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-high-bilinear-stress-parent-adjoint-lift-pressure-test-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-high-parent-current-admission-identity-attempt-20260628.md
completion_truth: partial; low-high motion is admitted, full output-local high-high stress has the one-point parent-current identity, and individual input-coloured high-high triads require a two-point current
---

# Same-carrier commutator detector admission bridge

Supersession note, 2026-06-28: the high-high part below must be read through the
full-output/two-point repair. A one-point parent stress current cannot admit
individual input-coloured high-high triads. It admits the full output-local
stress after input colours are recombined; keeping input colours requires a
two-point parent-current theory.

The first two abstract mechanisms are now available:

1. moving affine detector geometry pays through Schur storage times \(K\)-variation;
2. parent-adjoint fresh directions pack once their projections satisfy the operator
   Bessel/Carleson bound.

The remaining bridge is to show that the positive \(H^{1/2}\) commutator stress
is admitted into the correct parent material detector geometry: full output-local
stress for the installed one-point current, or a two-point current for
input-coloured high-high triads.

## 1. Correct target

For a dyadic input-coloured triad

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

the formerly desired one-point bound was

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

This remains a falsifier for raw bookkeeping, but it is not the high-high
one-point theorem. The corrected one-point theorem replaces \(T_{k\ell m}^+\) in
the high-high branch by the positive read of the full output-local stress.

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

Once the chosen detector has been lifted to the parent material detector space
\(\mathcal C_P\), the Schur/fresh split is just Hilbert geometry. In the
one-point high-high route, this detector is the full output-local stress detector
\(e_m^{full}\), not an input-coloured \(e_{k\ell m}\). Let \(F_m\) be the
parent-known spent detector span before this read.
Then

\[
e_m^{full}
=
P_{F_m}e_m^{full}
+
(I-P_{F_m})e_m^{full}
+
e^{motion}_m.
\]

The inherited piece is Schur-visible:

\[
T^{Schur}_m
\simeq
\left|\langle J_P,P_{F_m}e_m^{full}\rangle\right|^2 .
\]

The fresh piece is Bessel-packable exactly when parent-subtracted novelty gives

\[
\sum_mP_{(I-P_F)e_m^{full}}\le C I+C E_{route}.
\]

The exact Hilbert lemma for this is now installed separately. In parent order,

\[
F_n=(I-P_{R_{n-1}})E_n,\qquad
R_{n-1}=\overline{\operatorname{span}}(E_1,\ldots,E_{n-1}) ,
\]

gives mutually orthogonal novelty spaces, hence

\[
\sum_n P_{F_n}\le I,\qquad
\sum_n \|P_{F_n}j_P\|^2\le \|J_P\|_{\mathcal C_P^\ast}^2 .
\]

So the fresh term is no longer an accounting hope. The only question is whether
the chosen positive detector has first been admitted into this parent Hilbert
space with the correct parent order and novelty projection.

The motion piece is paid by the already proved finite-dimensional Schur motion
lemma:

\[
\sum_m\|e^{motion}_m\|_K^2
\lesssim
\int S(t)\|K(t)\|^2dt+E_{route}.
\]

Therefore the only remaining non-formal step is material lift/admission of the
raw Fourier detector into \(\mathcal C_P\), with the parent order fixed before
the selected child readout.

## 5. High-low and high-high branch: exact open lift

For high-low interactions, raw Fourier localization produces a
detector for the Eulerian stress current, but it does not automatically say that
the detector is:

1. built from the parent material carrier before selected child readout;
2. legal for the parent adjoint stress current \(J_P\);
3. controlled in the parent detector norm \(\mathcal C_P\);
4. decomposable into parent-known inherited span plus parent-orthogonal novelty;
5. accompanied by a first-exit motion ledger when the frame/selector/collar
   changes.

For high-high interactions, an input-coloured Littlewood--Paley triad has an
additional failure: it is a two-point bilinear current. The Schur/Bessel/motion
accounting for the installed one-point parent current requires selecting the
full output-local stress after input recombination.

## 6. The theorem still to prove

The corrected bridge theorem is:

For every retained selected positive full output-local \(H^{1/2}\) stress read,
the Eulerian commutator detector admits a parent-built material adjoint
representative \(\psi_m^P\in\mathcal C_P\), chosen before the selected child value
is read, such that

\[
T_m^{full,+}
\lesssim
\left|\langle J_P,P_F\psi_m^P\rangle\right|^2
+\|(I-P_F)\psi_m^P\|_{\mathcal C_P}^2
+\|\psi_m^{motion}\|_K^2
+\varepsilon\nu D_m
+legal+stop .
\]

The low-high branch supplies the motion term by the commutator/cotangent-flow
calculation above. Parent-subtracted novelty supplies the Bessel term once the
selected detector has a legal parent representative. The high-low branch is
reduced to a parent-low coefficient lift plus Leray/Hodge parent adjoint
legality. The high-high branch is now sharpened to parent admission of the full
output-local stress source

\[
B_m^{full}
=
\Lambda^{-1/2}P_m\mathbb P\nabla\cdot(u\otimes u).
\]

The remaining open act is proving the positive-part/square packing after this
full-output admission, or else installing a two-point current for input-coloured
triads.

## 7. Current conclusion

The proof route has narrowed to one live obstruction:

\[
\text{full output-local same-scale stress source}
\longrightarrow
\text{parent-known same-carrier one-point adjoint detector}.
\]

Once that admission bridge is proved with the stated norm bounds, the first two
abstract lemmas sum the Schur, fresh, and motion pieces, giving finite positive
critical transfer and the existing finite-clock to \(H^s\) continuation relay.
