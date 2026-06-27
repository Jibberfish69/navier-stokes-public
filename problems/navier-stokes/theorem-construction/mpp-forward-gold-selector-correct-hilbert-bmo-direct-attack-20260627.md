---
theorem_id: forward-gold-selector-correct-hilbert-bmo-direct-attack-20260627
status: selector-correct-hilbert-bmo-reduced-to-source-origin-energy-and-selector-readout
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped selector-correct Hilbert BMO
attacks_hinge:
  - StoppedSelectorCorrectHilbertBMOProducer.A
  - FixedCarrierVisibleSilentHilbertLift.A
  - IndependentRootHilbertCarrierBound.A
  - FullPacketOrderLockOrMovingSelectorVariationPayment.A
refined_hinge:
  - SourceOriginHilbertEnergyDissipationForSelectedAmplification.A
  - SelectorCarrierNondegeneracyOrPaidReselection.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-correct-hilbert-bmo-better-idea-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-frozen-hilbert-lift-countertest-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stochastic-exponential-selected-density-hilbert-bmo-lemma-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-selector-variation-carleson-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-order-locked-selector-variation-bridge-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-extended-selector-carrier-root-bound-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-origin-hilbert-energy-dissipation-selector-readout-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-history-selected-log-amplification-direct-production-test-20260627.md
---

# Selector-correct Hilbert BMO direct attack

## 1. Current hinge

The relay hinge is:

```text
StoppedSelectorCorrectHilbertBMOProducer.A
```

The intended output is a selector-correct stochastic-exponential representation
on the stopped selected tree:

```math
r_Q={f_Q\over f_{par(Q)}},
\qquad
\log r_Q=\ell_Q(\Delta_QZ)-\psi_Q+e_Q,
\qquad
\mathbb E(r_Q\mid par(Q))=1,
\tag{1}
```

with a root square-function bound

```math
\sup_P {1\over\mathcal R(P)}
\sum_{Q\subseteq P}
\left(\|\Delta_QZ\|_{\mathcal H}^2+|e_Q|^2\right)
\mathcal R(Q)
\le C_N(u_0)+R_{legal}(P).
\tag{2}
```

The martingale consumer is already installed: `(1)`--`(2)` imply a reverse
Holder gain for the selected density, hence the strict good-lambda half-barrier
break.

## 2. Closed branches

Three branches are not the remaining obstruction.

First, the finite-menu carrier branch is closed.  Finite selected-carrier menu
plus nonzero retained selected mass gives a fixed carrier on an infinite retained
subtail.  On that subtail the label increment vanishes, and the fixed-carrier
Hilbert lift is admissible.

Second, the already-paid label-defect branch is closed.  If selector/cutoff/
projection/rung/collar motion is visible in the installed defect ledgers, it is
absorbed into the paid error term \(e_Q\).

Third, the stochastic-exponential martingale step is closed once the Hilbert
square function and paid errors are available.  It is a consumer, not the PDE
producer.

## 3. Surviving continuum selector branch

The surviving selector escape is continuum moving selection: every fixed label
captures only finitely many selected visits, while the moving selected label
keeps unit selected action on the retained chain.

The extended carrier

```math
\mathcal H_{ext}
=
L^2(\mathfrak L;
\mathcal H_{vis}\oplus\mathcal H_{sil}\oplus\mathcal H_{ex})
\tag{3}
```

is the correct representation, but not a proof.  In the continuum branch the
needed estimate is exactly

```math
\sum_{Q\subseteq P}
\left(
\|\Delta_QZ\|_{\mathcal H_{ext}}^2+dK_{lab}(Q)
\right)\mathcal R(Q)
\le C_N(u_0)\mathcal R(P)+R_{legal}(P).
\tag{4}
```

Without an original-history bound for `(4)`, the critical half-tail survives in
extended-label coordinates.

Order-lock has the same status.  It identifies and charges channel-first
selection only after an order-lock gap, selector variation, or packet defect is
paid.  An unpaid order-lock pulse is the selected first-ratio half-tail in
full-packet admission variables.

## 4. Root Hilbert energy is the first PDE producer

For the fixed visible/silent/exchange carrier

```math
Z=Z_{vis}\oplus Z_{sil}\oplus Z_{ex},
\tag{5}
```

nested projections give the formal Bessel inequality

```math
\sum_{Q\subseteq P}\|\Delta_QZ\|_{\mathcal H}^2
\le \|Z_P\|_{\mathcal H}^2+R_{legal}(P).
\tag{6}
```

Thus Hilbert geometry is not the hard part.  The hard part is the noncircular
root bound

```math
\|Z_P\|_{\mathcal H}^2
\le C_N(u_0)\mathcal R(P)+R_{legal}(P),
\tag{7}
```

where \(Z\) is chosen from the signed original material history, not from the
future selected tail.  Taking \(Z=L_A^{-1}f_{sel}\) gives a clean readout but
makes `(7)` the desired selected reserve in Hilbert coordinates.

The differential form of the missing theorem is therefore a source-origin energy
law:

```math
d\mathcal B_N
+c\,d\mathcal E_N^{logamp}
\le
C\,d\Omega_N^{top\text{-}strain/exchange}
+C\,d\Omega_N^{selector/orderlock}
+dR_{legal},
\qquad
\mathcal B_N\ge -C_N(u_0),
\tag{8}
```

with

```math
d\mathcal E_N^{logamp}(P)
\simeq
\sum_{Q\subseteq P}\|\Delta_QZ\|_{\mathcal H}^2\mathcal R(Q).
\tag{9}
```

The naive storage \(-\|Z\|_{\mathcal H}^2/2\) has the right orientation only when
its lower bound is already `(7)`.  Saturating it restores a lower bound and loses
payment.  So `(8)` is a real new PDE/symmetrizer theorem, not bookkeeping.

## 5. Selector readout is the second producer

Even with `(7)` or `(8)`, the selected log density must be a nondegenerate readout
of the same carrier, modulo paid selector/order-lock errors:

```math
|\Delta_Q\log f_{sel}|
\le
C\|\Delta_QZ\|_{\mathcal H}
+e_Q^{sel}+e_Q^{ol}+e_Q^{legal},
\tag{10}
```

and

```math
\sum_{Q\subseteq P}
\left(
|e_Q^{sel}|^2+|e_Q^{ol}|^2+|e_Q^{legal}|^2
\right)\mathcal R(Q)
\le R_{paid}(P).
\tag{11}
```

This is exactly where moving selector variation, order-lock gap, tie-gap drift,
and full packet custody enter.  Without `(10)`--`(11)`, the signed original
carrier has noncircular root energy but does not control the selected scalar.

## 6. Refined hinge

`StoppedSelectorCorrectHilbertBMOProducer.A` is not proved by the installed
material.  It reduces to the pair:

```text
SourceOriginHilbertEnergyDissipationForSelectedAmplification.A
SelectorCarrierNondegeneracyOrPaidReselection.A
```

Together, these imply `(1)`--`(2)`, then the discharged stochastic-exponential
martingale lemma gives reverse Holder, strict good-lambda, and the stopped
primitive PLS half-barrier break.

The next nonduplicate producer is the source-origin Hilbert energy dissipation
law `(8)`--`(9)` plus the selector-to-carrier readout `(10)`--`(11)`.