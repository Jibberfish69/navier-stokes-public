---
theorem_id: forward-gold-full-clock-fresh-increment-currency-check-20260627
status: conditional-needs-definition-audit
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
attacks_hinge:
  - FullMaterialClockUsesFreshIncrementCurrency.A
  - SelectedActionIsFreshIncrementModuloParentPredictableTransport.A
  - GlobalSamePacketFullClockFromOriginalData.A
---

# Full material clock fresh-increment currency check

## 1. Target

The zero-cost rigidity spine requires the full same-material clock to decompose as

```math
\mathcal C_{sel}(Q_0)
=\mathcal C_{root/inherited}(Q_0)+\sum_{Q\subseteq Q_0}A^{fresh}_{sel}(Q),
\tag{1}
```

with

```math
\mathcal C_{root/inherited}(Q_0)\le C(u_0).
```

The fresh increment is the positive selected growth after subtracting parent-predictable transport.

## 2. Why this is necessary

If the full clock counts absolute child selected mass, then parent-predictable transport can contribute nonzero mass indefinitely and `ParentPredictableTransportNoFreshSelectedAction.A` is false.

If the full clock counts first-ratio/log-amplification increments, then inherited parent transport contributes no fresh action and the zero-cost spine is coherent.

Thus the clock must be stated in fresh-increment currency.

## 3. Conditional verification

The route has repeatedly used first-ratio / log-amplification / selected-density martingale language. In that interpretation, the clock is already an increment clock:

```math
A_{sel}(Q')
\simeq
\bigl[\log f_{sel}(Q')-\operatorname{Pred}_{Q\to Q'}\log f_{sel}(Q)\bigr]_+\mathcal R(Q')
+\text{paid defects}.
```

Then `(1)` holds by definition, provided the inherited/root part is explicitly separated and bounded by original data.

## 4. Remaining audit obligation

This note does not prove that every existing manuscript/theorem surface uses this currency consistently. The required audit theorem is:

```text
FullMaterialClockDefinitionAgainstFreshIncrementCurrency.A
```

Statement:

Every occurrence of selected action in the same-material full-clock route is either:

1. a fresh positive first-ratio/log-amplification increment after parent-predictable transport; or
2. an inherited/root term already bounded by \(C(u_0)\); or
3. a paid defect charged to installed ledgers.

## 5. Result

`FullMaterialClockUsesFreshIncrementCurrency.A` is conditionally satisfied by the intended first-ratio/log-amplification formulation, but it requires a definition audit before it can be treated as installed.

The next exact obligation is:

```math
\boxed{\text{FullMaterialClockDefinitionAgainstFreshIncrementCurrency.A}.}
```