---
theorem_id: forward-gold-high-low-high-high-material-adjoint-lift-split-20260628
status: high-low-admitted-conditionally-as-parent-low-coefficient-detector; high-high-remains-live-bilinear-source-lift
created: 2026-06-28
problem: navier-stokes
route: forward-gold affine Schur accretivity edge
supports:
  - PositiveCriticalTransferDyadicFluxReduction.A
  - SameCarrierCommutatorDetectorAdmissionBridge.A
  - AffineSchurAccretivityGap.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-commutator-detector-admission-bridge-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-adjoint-bessel-packing-under-parent-subtracted-novelty-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-dimensional-schur-motion-payment-20260628.md
completion_truth: narrows remaining dyadic admission; does not close high-high same-scale bilinear lift
---

# High-low / high-high material adjoint lift split

## 1. Current intake

The low-high branch is paid motion under parent-carrier hypotheses: the commutator is the material derivative of the dyadic detector along the low-frequency flow, and cotangent deformation is the already-paid \(K\)-motion.

The remaining positive critical triads are high-low and high-high. Their task is:

\[
\text{Eulerian positive commutator triad}
\longrightarrow
\text{parent-known same-carrier adjoint detector}.
\]

## 2. High-low branch

Let \(v=u_{<m-C}\) be the parent low-frequency velocity and let \(h=u_m\). The high-low term is

\[
P_m(h\cdot\nabla v).
\]

In the \(H^{1/2}\) energy pairing it has the model form

\[
T_{HL,m}
\simeq
-\langle \Lambda^{1/2}P_m(h\cdot\nabla v),\Lambda^{1/2}h\rangle .
\]

Write \(A=\nabla v\), a parent low-frequency coefficient on the selected carrier. Then the term is a parent-coefficient detector applied to the high current:

\[
T_{HL,m}
\simeq
-\langle A h,\Lambda h\rangle
+\text{Coifman-Meyer/legal commutators}.
\]

Thus, once \(A\) belongs to the parent detector algebra, the high-low detector is parent-built before child readout:

\[
\psi_{HL,m}^P=A^*\Lambda P_m h
\]

with the usual Leray/Hodge projection inserted into the parent stress-current test. The parent Hilbert decomposition gives

\[
\psi_{HL,m}^P=P_F\psi_{HL,m}^P+(I-P_F)\psi_{HL,m}^P+\psi_{HL,m}^{motion}.
\]

The inherited part is Schur-visible parent current, the fresh parent-orthogonal part is Bessel-packable by parent-subtracted novelty, and coefficient/frame changes are paid motion/route error.

Therefore high-low is conditionally admitted by the existing Schur/Bessel/motion machine under these explicit hypotheses:

1. the low coefficient \(A=\nabla u_{<m-C}\) is parent-known on the same material carrier;
2. the Leray/Hodge correction is represented as a parent adjoint stress-current test;
3. coefficient, collar, and frame changes are charged to the route ledger;
4. the fresh detector component is parent-subtracted before Bessel packing.

The local estimate has the form

\[
T_{HL,m}^+
\le
C\bigl(T_{HL,m}^{Schur}+T_{HL,m}^{fresh}+T_{HL,m}^{motion}\bigr)
+\varepsilon\nu\|\Lambda^{3/2}h\|_2^2
+legal+stop .
\]

This is a real narrowing: high-low does not require a fourth payment mechanism. It requires a legal parent-low coefficient lift.

## 3. High-high branch

Let \(h_1=u_k\), \(h_2=u_\ell\), with \(k\sim\ell\sim m\). The high-high term is

\[
P_m(h_1\cdot\nabla h_2).
\]

Here neither input is a parent low coefficient. The detector is genuinely bilinear at the child scale. A raw Littlewood-Paley representation gives an Eulerian multiplier, while Schur/Bessel/motion accounting needs a parent-built linear adjoint detector.

A valid lift must factor the bilinear stress into one of the existing currencies:

1. inherited stress/current already present in the parent Schur span;
2. parent-orthogonal fresh stress detector with Bessel packing;
3. motion of selector/frame/collar/carrier paid by first-exit route energy;
4. viscous absorption \(\varepsilon\nu D_m\) for the derivative-bearing remainder.

The exact obstruction is the creation of a same-scale bilinear stress detector whose norm is scale-critical and whose direction is neither parent-visible nor parent-orthogonal in the existing detector geometry. In raw Fourier estimates this is where the coefficient depends on \(\|u\|_{\dot H^{1/2}}\), which is the MPP-strength quantity.

Thus high-high remains the live branch:

\[
\boxed{\text{same-scale bilinear stress }\to\text{ parent adjoint detector with novelty packing}.}
\]

## 4. Resulting route state

Low-high is motion-paid. High-low is conditionally reduced to parent-low coefficient admission plus Schur/Bessel/motion splitting. High-high is the remaining nonlinear core.

The next exact theorem target is therefore the high-high bilinear stress lift:

For every retained positive high-high critical triad, construct a parent material adjoint detector \(\psi_{HH,k\ell m}^P\) such that

\[
T_{HH,k\ell m}^+
\le
C\left(
|\langle J_P,P_F\psi_{HH,k\ell m}^P\rangle|^2
+\|(I-P_F)\psi_{HH,k\ell m}^P\|_{\mathcal C_P}^2
+\|\psi_{HH,k\ell m}^{motion}\|_K^2
\right)
+\varepsilon\nu D_{k\ell m}+legal+stop.
\]

The first pressure-test reduction for this branch is recorded in
`mpp-forward-gold-high-high-bilinear-stress-parent-adjoint-lift-pressure-test-20260628.md`.
It dualizes the high-high transfer against the viscous \(H^{3/2}\) term and
isolates the source detector

\[
B_{k\ell m}
=
\Lambda^{-1/2}P_m\mathbb P\nabla\cdot(u_k\otimes u_\ell)
\]

as the object that must be admitted into the parent material adjoint geometry.

This is the remaining theorem-sized obstruction after the low-high and high-low reductions.
