---
theorem_id: forward-gold-parent-adjoint-bessel-packing-under-parent-subtracted-novelty-20260628
status: abstract-hilbert-bessel-lemma-proved-under-parent-subtracted-novelty; navier-stokes-commutator-admission-open
created: 2026-06-28
problem: navier-stokes
route: forward-gold affine Schur accretivity edge
supports:
  - AffineSchurAccretivityGap.A
  - BoundedBelowSameMaterialServiceStorage.A
  - PositiveCriticalTransferDyadicFluxReduction.A
  - NativeBirthChargePacking.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-dimensional-schur-motion-payment-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-gram-schur-first-three-pressure-tests-20260628.md
completion_truth: parent-adjoint Bessel packing proved as abstract Hilbert theorem under parent-subtracted novelty; same-carrier dyadic commutator admission remains open
---

# Parent-adjoint Bessel packing under parent-subtracted novelty

## 1. Purpose

This proves the second pressure test in isolation. The result pays only the fresh parent-subtracted novelty part of a selected detector. Inherited readout is Schur-visible parent current. Repeated reselection, frame drift, collar drift, and moving carrier effects are paid by the route/motion ledger.

## 2. Hilbert setup

Let \(\mathcal C_P\) be the parent detector Hilbert space. Let the parent stress current \(J_P\in\mathcal C_P^*\) have Riesz vector \(j_P\in\mathcal C_P\), so

\[
J_P(\psi)=\langle j_P,\psi\rangle_{\mathcal C_P}.
\]

Let \(E_n\subset\mathcal C_P\) be the selected detector subspace for the nth child packet in parent order. Define the spent parent detector space

\[
R_{n-1}=\overline{\operatorname{span}}(E_1,\ldots,E_{n-1})
\]

and the parent-subtracted novelty space

\[
F_n=(I-P_{R_{n-1}})E_n.
\]

Equivalently, replace \(F_n\) by its range and let \(P_{F_n}\) denote the orthogonal projection onto that range.

The novelty capacity of the nth child is

\[
\rho_n^{nov}=\|P_{F_n}j_P\|_{\mathcal C_P}^2.
\]

## 3. Exact novelty packing

The spaces \(F_n\) are mutually orthogonal. Indeed, for \(k<n\), \(F_k\subset R_{n-1}\), while \(F_n\perp R_{n-1}\). Hence \(F_n\perp F_k\).

Therefore

\[
\sum_n P_{F_n}\le I
\]

in the quadratic-form sense. Applying this to \(j_P\) gives

\[
\sum_n \rho_n^{nov}
=\sum_n\|P_{F_n}j_P\|^2
=\left\langle\left(\sum_nP_{F_n}\right)j_P,j_P\right\rangle
\le \|j_P\|^2
=\|J_P\|_{\mathcal C_P^*}^2.
\]

This is the exact parent-adjoint Bessel packing lemma.

## 4. Weighted version

If the selected critical weights are part of the detector norm, the same proof applies unchanged in the weighted parent Hilbert space \(\mathcal C_{P,w}\). Equivalently, define normalized weighted detectors \(\widetilde E_n=w_n^{1/2}E_n\) inside \(\mathcal C_P\). Then

\[
\sum_n \|P_{\widetilde F_n}j_P\|^2
\le \|j_P\|^2.
\]

All scale weights are therefore legal only when they are built into the parent detector geometry before the novelty projection is taken. Adding weights after selection reintroduces raw selected-action circularity.

## 5. Approximate novelty and paid drift

In the packet setting, selected detector spaces may move by frame, collar, selector, root, and material-coordinate changes. Model this by an exact novelty projection plus a drift error:

\[
P_{E_n}=P_{I_n}+P_{F_n}+\Delta_n,
\]

where \(P_{I_n}\) is inherited parent-visible readout and \(\Delta_n\) is paid motion/reselection error. Assume the drift quadratic form satisfies

\[
\sum_n |\langle \Delta_n j_P,j_P\rangle|
\le E_{route}(P).
\]

Then

\[
\sum_n \|P_{F_n}j_P\|^2
\le \|j_P\|^2+E_{route}(P).
\]

The inherited term is not charged as fresh Bessel action; it is parent current already visible to Schur storage. The drift term is paid by first-exit / metric-motion mechanisms, including the finite-dimensional \(\int S\|K\|^2\) charge when the drift is inverse-Gram affine motion.

## 6. Necessity of parent-subtracted novelty

Without parent-subtraction the statement is false. Let \(E_n=\operatorname{span}\{e\}\) for all \(n=1,\ldots,N\), with \(\|e\|=1\). Then

\[
\sum_{n=1}^N P_{E_n}=N P_e
\]

and

\[
\sum_{n=1}^N\|P_{E_n}j_P\|^2=N|\langle j_P,e\rangle|^2.
\]

The bound grows like \(N\). Thus absolute child detector mass cannot be the fresh Gold currency. Reused detector response is inherited Schur-visible current; claiming it as new action requires reselection, reset, or motion payment.

## 7. Consequence for the Gold edge

The second pressure test is passed in the exact abstract sense: parent-subtracted novelty Bessel-packs because innovation subspaces are orthogonal in the parent detector Hilbert geometry.

The remaining Navier-Stokes burden is an admission bridge after the correct
high-high object has been chosen. For the installed one-point parent current,
the dangerous positive detector is the full output-local stress detector, not an
individual input-coloured high-high triad. Input-coloured triads require a
two-point parent-current space. Once the detector is legal, it decomposes as

\[
e_{k\ell m}=e^{Schur}_{k\ell m}+e^{nov}_{k\ell m}+e^{motion}_{k\ell m},
\]

where the novelty component is a genuine parent-subtracted innovation. Once the
same-carrier admission is proved for the chosen high-high object, this Bessel
lemma supplies the fresh residual packing term in the Schur/Bessel/motion
trichotomy.
