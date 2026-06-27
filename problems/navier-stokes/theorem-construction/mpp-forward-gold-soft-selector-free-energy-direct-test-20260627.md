---
theorem_id: forward-gold-soft-selector-free-energy-direct-test-20260627
status: soft-selector-regularization-reduces-to-label-entropy-or-selected-density-gain-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / selector-correct Hilbert BMO
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - SelectorCarrierNondegeneracyOrPaidReselection.A
  - FullPacketOrderLockOrSelectorVariationPayment.A
  - OriginalHistorySelectedLogAmplificationCarleson.A
  - StoppedSelectorCorrectHilbertBMOProducer.A
refined_hinge:
  - SoftSelectorFreeEnergyRootBound.A
  - OriginalHistoryLabelEntropyCarleson.A
  - SelectorTieGapOrDriftCharge.A
  - SourceOriginHilbertEnergyDissipationForSelectedAmplification.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-correct-hilbert-bmo-direct-attack-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-origin-hilbert-energy-dissipation-selector-readout-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-extended-selector-carrier-root-bound-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-order-lock-selected-density-first-ratio-alignment-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-order-locked-selector-variation-bridge-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-selector-variation-carleson-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-entropy-log-coercivity-exhaustion-20260620.md
effect: >-
  Tests whether replacing the hard moving selector by a Gibbs/log-sum-exp free
  energy gives a nondegenerate selector readout. The soft selector removes the
  pointwise label jump on finite or entropy-controlled label families, but its
  hard-selector recovery costs label entropy or tie-gap/drift charge. In the
  continuum moving-selector branch, that entropy cost is exactly the selected
  half-tail unless an original-history label-entropy Carleson theorem is proved.
---

# Soft selector free-energy direct test

The current selector-correct Hilbert BMO route has two open producer clauses:

```text
SourceOriginHilbertEnergyDissipationForSelectedAmplification.A
SelectorCarrierNondegeneracyOrPaidReselection.A
```

This note attacks the second clause.  The hard selector is discontinuous when
the winning carrier label changes.  The natural way to remove that discontinuity
is to replace the hard winner by a soft free energy and then ask what it costs
to recover the hard selected density.

## 1. Soft selector

Let \(\ell\in\mathfrak L_Q\) denote the selected label, cutoff, projection,
rung, or packet.  For each label, let

```math
s_Q^\ell=\log\rho_Q^\ell
\tag{1}
```

be the fixed-label log density readout.  The hard selector is

```math
s_Q^{sel}=\sup_{\ell\in\mathfrak L_Q}s_Q^\ell.
\tag{2}
```

For a temperature \(\tau>0\), define the soft selector

```math
S_Q^\tau
=
\tau\log\int_{\mathfrak L_Q}
\exp(s_Q^\ell/\tau)\,d\nu_Q(\ell).
\tag{3}
```

The Gibbs weight is

```math
d\pi_Q^\tau(\ell)
=
{\exp(s_Q^\ell/\tau)\over
\int_{\mathfrak L_Q}\exp(s_Q^{\ell'}/\tau)d\nu_Q(\ell')}
d\nu_Q(\ell).
\tag{4}
```

For a fixed label family with no change of \(\nu_Q\), the first variation is

```math
\Delta_QS^\tau
=
\int_{\mathfrak L_Q}\Delta_Qs^\ell\,d\pi_Q^\tau(\ell)
+R_Q^{lab,\tau}.
\tag{5}
```

Thus Cauchy-Schwarz gives the selector-readout bound

```math
|\Delta_QS^\tau|^2
\le
\int_{\mathfrak L_Q}|\Delta_Qs^\ell|^2\,d\pi_Q^\tau(\ell)
+|R_Q^{lab,\tau}|^2.
\tag{6}
```

This is the useful part: the soft selector replaces a discontinuous winner jump
by a convex average of fixed-label Hilbert readouts.

## 2. Finite-label recovery

If \(|\mathfrak L_Q|\le M\), then

```math
s_Q^{sel}
\le
S_Q^\tau
\le
s_Q^{sel}+\tau\log M.
\tag{7}
```

So finite-menu heredity and finite-label custody close the soft-selector error.
The already installed finite-menu branch is exactly this case in hard-selector
language: on a retained lossless subtail, one label stabilizes and the label
increment vanishes.  The soft formulation does not create a new theorem there;
it gives a smooth proof of the same finite-label branch.

## 3. Continuum-label recovery cost

For a continuum label family, `(7)` is replaced by an effective entropy cost.
In metric-covering form,

```math
S_Q^\tau
\le
s_Q^{sel}
+\tau\log N_Q(\tau)
+R_Q^{mod},
\tag{8}
```

where \(N_Q(\tau)\) is the number of label cells needed at the \(\tau\)-scale
and \(R_Q^{mod}\) is the modulus error inside cells.  Equivalently, in Gibbs
language, recovering the hard selector requires a relative entropy or label
complexity payment:

```math
{\rm Ent}(\pi_Q^\tau\mid\nu_Q)
=
\int \log {d\pi_Q^\tau\over d\nu_Q}\,d\pi_Q^\tau.
\tag{9}
```

The tree estimate needed for the hard selected density is therefore

```math
\sum_{Q\subseteq P}
\left(
|R_Q^{lab,\tau}|^2
+\tau^2\log^2 N_Q(\tau)
+|R_Q^{mod}|^2
\right)\mathcal R(Q)
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P).
\tag{10}
```

This is a real theorem only if the label entropy, modulus, and label-measure
motion are controlled from original material history.

## 4. Countertest

The continuum moving-selector countermodel survives the soft selector unless
`(10)` is proved.

Take labels \(\ell_k\) with disjoint selected visits and set

```math
s_{Q_k}^{\ell_k}=0,
\qquad
s_{Q_k}^{\ell}=-A
\quad(\ell\ne\ell_k),
\tag{11}
```

with \(A\gg1\).  The hard selector has \(s_{Q_k}^{sel}=0\) at every retained
generation.  Every fixed label sees only finitely many visits.  The physical
fixed-label Hilbert increment can remain summable, while the moving hard
selector keeps finding the next label.

For the soft selector to stay within \(O(1)\) of the hard selector at every
generation, the Gibbs measure has to concentrate near \(\ell_k\) at every
generation.  That concentration spends label entropy.  If the labels are new
at each generation, the accumulated entropy/label-complexity cost is precisely
the moving-selector half-tail in label coordinates.

Thus soft selection does not bypass the Gold obstruction.  It turns the hard
selector jump into an explicit entropy bill.

## 5. Relation to order-lock

The order-lock gap is already a submeasure of the selected first-ratio tail:

```math
0\le f_{ol}\le C f+f_{legal}.
\tag{12}
```

In the soft-selector language, order-lock is one source of \(R_Q^{lab,\tau}\).
If the full packet is selected first, or if the order-lock gap has a super-\(L^1\)
/ Orlicz / tree-Carleson modulus, then the error in `(6)` is paid.  If the
gap is unpaid, the order-lock note has already shown that it is the same
critical selected half-tail in full-packet admission coordinates.

So soft selection and order-lock agree:

```text
finite/paid labels: selector readout is Hilbert-compatible;
unpaid continuum labels: the entropy or order-lock bill is the selected-density
gain itself.
```

## 6. Refined theorem

The nonduplicate theorem exposed by this test is:

```text
SoftSelectorFreeEnergyRootBound.A.
```

Statement: construct fixed-label original-history carriers \(Z^\ell\) and soft
selected free energies \(S_Q^\tau\) such that

```math
\Delta_QS^\tau
=
\int\ell_Q^\ell(\Delta_QZ^\ell)d\pi_Q^\tau(\ell)
-\psi_Q^\tau
+e_Q^\tau,
\tag{13}
```

and

```math
\sup_P{1\over\mathcal R(P)}
\sum_{Q\subseteq P}
\left(
\int\|\Delta_QZ^\ell\|^2d\pi_Q^\tau(\ell)
+|e_Q^\tau|^2
+{\rm LabelEnt}_Q^\tau
\right)\mathcal R(Q)
\le
C_N(u_0)+R_{legal}(P).
\tag{14}
```

Here \({\rm LabelEnt}_Q^\tau\) is the finite-menu, entropy, order-lock, tie-gap,
drift, or legal selector-complexity payment needed to pass from \(S_Q^\tau\)
back to the hard selected density.

This theorem would imply `SelectorCarrierNondegeneracyOrPaidReselection.A`, then
the already installed stochastic-exponential martingale lemma gives reverse
Holder.

## Result

The soft-selector idea is useful because it removes one false obstacle: hard
winner discontinuity is not mysterious once the selector is written as free
energy.  The real obstruction is the free-energy bill.  Finite labels and
already-paid label motion close.  Continuum moving selection still requires an
original-history label-entropy/order-lock Carleson theorem, and without that
the same critical selected half-tail survives.

So the next narrowed hinge is:

```text
OriginalHistoryLabelEntropyCarleson.A
```

or equivalently the label-entropy part of
`SoftSelectorFreeEnergyRootBound.A`, coupled with
`SourceOriginHilbertEnergyDissipationForSelectedAmplification.A`.
