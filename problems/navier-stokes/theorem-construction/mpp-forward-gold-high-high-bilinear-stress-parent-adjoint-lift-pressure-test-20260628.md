---
theorem_id: forward-gold-high-high-bilinear-stress-parent-adjoint-lift-pressure-test-20260628
status: superseded-as-one-point-admission; retained-as-two-point-branch-pressure-test
created: 2026-06-28
problem: navier-stokes
route: forward-gold affine Schur accretivity edge
supports:
  - PositiveCriticalTransferDyadicFluxReduction.A
  - SameCarrierCommutatorDetectorAdmissionBridge.A
  - AffineSchurAccretivityGap.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-low-high-high-material-adjoint-lift-split-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-commutator-detector-admission-bridge-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-adjoint-bessel-packing-under-parent-subtracted-novelty-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-high-parent-current-admission-identity-attempt-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-high-full-output-stress-repo-wide-repair-20260628.md
completion_truth: viscous dual pressure test is useful; individual input-coloured stress is not a one-point parent-current admission object
---

# High-high bilinear stress parent-adjoint lift pressure test

Low-high is motion-paid. High-low is reduced to parent-low coefficient
admission. The remaining branch is high-high same-scale stress.

Supersession note. This note correctly identifies the viscous dual stress
source for an input-coloured high-high interaction. It incorrectly treated that
source as a one-point parent-current admission object. The one-point route now
uses the full output-local stress. The input-coloured object below belongs to a
two-point/product-carrier current branch.

## 1. Input-coloured high-high pressure test

Let \(h_1=u_k\), \(h_2=u_\ell\), with \(k\sim \ell\sim m\), and put

\[
F_{k\ell}=h_1\otimes h_2 .
\]

The positive high-high critical transfer is

\[
T_{HH,k\ell m}^+
=
\left[
-
\left\langle
\Lambda^{1/2}P_m\mathbb P\nabla\cdot F_{k\ell},
\Lambda^{1/2}u_m
\right\rangle
\right]_+ .
\]

This is the same-scale bilinear stress branch after input colours have been
kept separate.

## 2. Viscous dual form

Use the viscous \(H^{3/2}\) derivative as the dual partner:

\[
\left\langle
\Lambda^{1/2}P_m\mathbb P\nabla\cdot F_{k\ell},
\Lambda^{1/2}u_m
\right\rangle
=
\left\langle
\Lambda^{-1/2}P_m\mathbb P\nabla\cdot F_{k\ell},
\Lambda^{3/2}u_m
\right\rangle .
\]

Hence, for every \(\varepsilon>0\),

\[
T_{HH,k\ell m}^+
\le
\varepsilon\nu\|\Lambda^{3/2}u_m\|_2^2
+
C_\varepsilon\nu^{-1}
\left\|
\Lambda^{-1/2}P_m\mathbb P\nabla\cdot F_{k\ell}
\right\|_2^2 .
\]

Define the high-high stress source detector

\[
B_{k\ell m}
:=
\Lambda^{-1/2}P_m\mathbb P\nabla\cdot(u_k\otimes u_\ell).
\]

Then the input-coloured pressure test is reduced to the scale-critical source
size

\[
\nu^{-1}\|B_{k\ell m}\|_2^2
\]

but this source cannot be admitted by the installed one-point parent current.
It is a two-point current object because its Fourier symbol depends on the input
split \((\xi,\eta)\).

## 3. Corrected admission theorem

The valid one-point theorem uses the full output-local stress

\[
B_m^{full}
:=
\Lambda^{-1/2}P_m\mathbb P\nabla\cdot(u\otimes u).
\]

The required one-point high-high theorem is:

\[
T_m^{full,+}
\le
C\left(
|\langle J_P,P_F\psi_m^P\rangle|^2
+\|(I-P_F)\psi_m^P\|_{\mathcal C_P}^2
+\|\psi_m^{motion}\|_K^2
\right)
+\varepsilon\nu D_m+legal+stop,
\]

where \(\psi_m^P\) is a parent-built same-carrier adjoint representative of the
full output-local stress source \(B_m^{full}\), chosen before the selected child
value is read.

The corresponding input-coloured theorem would be a different theorem:

\[
\nu^{-1}\|B_{k\ell m}\|_2^2
\le
C\left(
|\langle J_P^{(2)},P_FK_{k\ell m}^P\rangle|^2
+\|(I-P_F)K_{k\ell m}^P\|_{\mathcal C_P^{(2)}}^2
+\|K_{k\ell m}^{motion}\|_{K^{(2)}}^2
\right)
+legal+stop,
\]

with \(J_P^{(2)}\) a two-point/product-carrier parent current. That theorem is
not installed in the one-point Schur/Bessel/motion machine.

Once this holds, the previous inequality gives

\[
T_m^{full,+}
\le
C\left(
T^{Schur}_{m}
+T^{fresh}_{m}
+T^{motion}_{m}
\right)
+\varepsilon\nu D_m
+legal+stop .
\]

## 4. What is gained

The useful gain from this pressure test is the carrier warning. The
input-coloured high-high problem is not a vague bilinear nonlinearity. It is the
parent-adjoint admission of a scale-critical two-point source detector:

\[
B_{k\ell m}
=
\Lambda^{-1/2}P_m\mathbb P\nabla\cdot(u_k\otimes u_\ell).
\]

This is the right object for the two-point branch because the derivative-bearing
part has already been handed to viscosity. It is not the right object for a
one-point parent-current proof.

## 5. Sharp failure profile

A high-high obstruction on the input-coloured branch now has a precise form. It
is a sequence of retained same-scale bilinear stress sources \(B_{k\ell m}\)
such that:

1. \(\sum \nu^{-1}\|B_{k\ell m}\|_2^2\) gives positive selected critical action;
2. the inherited projection has weak Schur response;
3. the parent-subtracted novelty projections do not satisfy Bessel packing;
4. the carrier/selector/frame/collar motion is not charged by \(K\) or route
   error;
5. the source detector cannot be represented by a parent-built two-point
   adjoint test before selected child readout.

That profile is the current exact enemy. A proof of high-high admission must
rule it out; a construction of such a profile fails the Gold route in its
current form.

## 6. Current conclusion

The live fork is:

\[
\text{full output-local stress source}
\longrightarrow
\text{one-point parent-known adjoint detector with novelty packing},
\]

or

\[
\text{input-coloured same-scale bilinear stress source}
\longrightarrow
\text{two-point parent current with product-carrier novelty packing}.
\]

The pressure test has removed the derivative mismatch: viscosity pays the
\(u_m\) derivative. The open one-point work is positive-square capture for
\(B_m^{full}\). The open input-coloured work is the two-point current theorem
for \(B_{k\ell m}\).
