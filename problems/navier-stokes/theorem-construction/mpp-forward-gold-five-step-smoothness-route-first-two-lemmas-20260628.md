---
theorem_id: mpp-forward-gold-five-step-smoothness-route-first-two-lemmas-20260628
status: first-two-abstract-lemmas-proved-under-explicit-admission-hypotheses-triad-exhaustion-open
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

# Five-step smoothness route: first two abstract lemmas

## 0. Route

The route is:

1. finite-dimensional Schur motion payment;
2. parent-adjoint Bessel packing under parent-subtracted novelty;
3. dyadic positive H^{1/2} triad exhaustion using the first two mechanisms;
4. summed finite positive critical transfer;
5. installed finite-clock to H^s continuation relay.

The first two items are abstract Hilbert/finite-dimensional lemmas. The third item is the Navier-Stokes nonlinear sign/exhaustion hinge.

## 1. Finite-dimensional Schur motion payment

Let H be a finite-dimensional real Hilbert space. Let G(t)>0 be absolutely continuous, m(t) be absolutely continuous, and

\[
S(t)=\langle m(t),G(t)^{-1}m(t)\rangle,
\qquad
K(t)=G(t)^{-1/2}\dot G(t)G(t)^{-1/2}.
\]

For a fixed detector a in H define the normalized Schur response

\[
q_a(t)={\langle a,m(t)\rangle^2\over \langle a,G(t)a\rangle}.
\]

The Gram denominator satisfies

\[
{d\over dt}\log\langle a,G(t)a\rangle
={\langle G(t)^{1/2}a,K(t)G(t)^{1/2}a\rangle
over
\langle G(t)^{1/2}a,G(t)^{1/2}a\rangle},
\]

hence

\[
\left|{d\over dt}\log\langle a,G(t)a\rangle\right|\le \|K(t)\|_{op}.
\]

Therefore any birth caused by affine detector motion through a logarithmic threshold delta_e on an interval I_e obeys

\[
\delta_e\le \int_{I_e}\|K(t)\|_{op}dt.
\]

By Cauchy,

\[
\delta_e^2\le |I_e|\int_{I_e}\|K(t)\|_{op}^2dt.
\]

Assume each selected motion birth e has:

- a parent-announced first-exit interval I_e;
- bounded interval overlap, sum_e 1_{I_e} <= M;
- a birth weight satisfying omega_e <= C |I_e|^{-1} int_{I_e} S(t) delta_e^2 dt after the standard comparability normalization on I_e.

Then

\[
\sum_e\omega_e
\le C M\int S(t)\|K(t)\|_{op}^2dt.
\]

This proves the finite-dimensional Schur motion payment under the exact first-exit/bounded-overlap hypotheses. Reversible affine cycles with G(T)=G(0) still pay through the positive path integral of K. Endpoint Gram state and determinant telescoping lose this cost; log-metric path variation retains it.

Sharp boundary: this lemma pays births caused by moving affine geometry. Stationary-metric repeated production has K=0 and must be paid by Schur current storage, negative return, or Bessel novelty packing.

## 2. Parent-adjoint Bessel packing under parent-subtracted novelty

Let C_P be a Hilbert detector space and identify the parent current J_P in C_P^* with its Riesz vector j_P in C_P. Let E_Q be selected child detector subspaces with orthogonal projections P_Q.

Define

\[
\rho_Q=\|P_Qj_P\|_{C_P}^2.
\]

If the selected projections satisfy the operator Carleson/Bessel bound

\[
\sum_Q P_Q\le B I
\]

in the quadratic-form sense, then

\[
\sum_Q\rho_Q
=\sum_Q\langle P_Qj_P,j_P\rangle
=\left\langle\left(\sum_QP_Q\right)j_P,j_P\right\rangle
\le B\|j_P\|_{C_P}^2
=B\|J_P\|_{C_P^*}^2.
\]

Thus the parent-adjoint detector packing lemma is exactly a frame/Bessel lemma.

Parent-subtracted novelty supplies the operator bound as follows. Let R_Q be the already-spent parent detector subspace before Q and set

\[
F_Q=(I-P_{R_Q})E_Q.
\]

For exact novelty with mutually orthogonal new subspaces, sum_Q P_{F_Q} <= I. For near-orthogonal novelty with controlled angle drift and paid reselection, standard frame perturbation gives

\[
\sum_Q P_{F_Q}\le C I + C E_{route}.
\]

Consequently

\[
\sum_Q \|P_{F_Q}j_P\|^2
\le C\|j_P\|^2+C E_{route}.
\]

Sharp boundary: repeated adaptive selection of the same one-dimensional detector gives sum_Q P_Q = N P after N repeats. The Bessel constant grows like N. Parent-subtracted novelty or paid reselection/first-exit motion is therefore necessary.

## 3. Dyadic positive H^{1/2} triad exhaustion target

For Littlewood-Paley pieces u_k=P_k u define the positive critical triad contribution

\[
T_{k\ell m}^+
=\left[-\langle \Lambda^{1/2}P_m\mathbb P(u_k\cdot\nabla u_\ell),\Lambda^{1/2}u_m\rangle\right]_+.
\]

The needed exhaustion theorem is

\[
T_{k\ell m}^+
\le C\bigl(T^{Schur}_{k\ell m}+T^{Bessel}_{k\ell m}+T^{motion}_{k\ell m}\bigr)
+\varepsilon\nu D_{k\ell m}+legal+stop,
\]

where the three terms mean:

- Schur-visible inherited parent current;
- parent-orthogonal fresh residual paid by Bessel packing;
- selector/frame/collar/metric motion paid by K-variation.

This is the active Navier-Stokes sign/exhaustion burden. The first two lemmas supply the accounting mechanism. The remaining work is to prove every positive triad admits the inherited/fresh/motion classification in the same material carrier.

## 4. Summation and continuation relay

Once the triad exhaustion theorem holds, summing over dyadic triads gives

\[
\int_0^T\left(-\langle\Lambda^{1/2}\mathbb P(u\cdot\nabla u),\Lambda^{1/2}u\rangle\right)_+dt
\le C(u_0)+\theta\nu\int_0^T\|\Lambda^{3/2}u\|_2^2dt+legal+stop,
\quad \theta<1.
\]

This is the positive critical transfer bound, equivalent on this route to bounded-below same-material service storage. The installed downstream relay is then:

finite positive critical transfer -> finite selected action -> finite same-material clock -> H^s control for s>5/2 -> smooth continuation.

Conclusion: the first two abstract mechanisms are proved under their explicit structural hypotheses. The live theorem work is now concentrated in the dyadic triad exhaustion theorem: every positive critical triad must land in Schur-visible inherited current, Bessel-packable fresh residual, or paid metric/selector motion.