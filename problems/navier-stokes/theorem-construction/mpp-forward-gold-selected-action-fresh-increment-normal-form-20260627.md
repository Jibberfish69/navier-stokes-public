---
theorem_id: forward-gold-selected-action-fresh-increment-normal-form-20260627
status: conditional-on-full-clock-currency-compatibility
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
attacks_hinge:
  - SelectedActionIsFreshIncrementModuloParentPredictableTransport.A
  - ParentPredictableTransportNoFreshSelectedAction.A
  - ZeroCostSelectedGainRigidity.A
---

# Selected action as a fresh-increment normal form

## 1. Target

The zero-cost rigidity route requires selected action to count fresh gain beyond parent-predictable same-material transport, not absolute inherited selected mass.

Define the parent-predicted selected density by

```math
\rho^{par}_{sel}(Q'):=\operatorname{Pred}_{Q\to Q'}\rho_{sel}(Q).
```

Then the fresh selected increment is

```math
A^{fresh}_{sel}(Q')
:=\left[\log\rho_{sel}(Q')-\log\rho^{par}_{sel}(Q')\right]_+\mathcal R(Q')
```

or the equivalent first-ratio positive part used by the route.

## 2. Immediate consequence

If \(Q'\) is only parent-predictable transport, then

```math
\rho_{sel}(Q')=\rho^{par}_{sel}(Q'),
```

hence

```math
A^{fresh}_{sel}(Q')=0.
```

Therefore parent-predictable inherited selected material is not charged as fresh selected gain.

## 3. Compatibility condition

This normal form is valid for the smoothness spine only if the full material clock uses the same fresh-increment currency:

```math
\mathcal C_{sel}(Q_0)=\sum_{Q\subseteq Q_0}A^{fresh}_{sel}(Q)+\mathcal C_{root/inherited}(Q_0),
```

where the inherited/root part is finite from the initial data and does not form an infinite fresh half-tail.

Thus the needed compatibility theorem is

```text
FullMaterialClockUsesFreshIncrementCurrency.A
```

Statement:

The selected first-ratio / selected-capacity action appearing in the full same-material clock is exactly the positive fresh increment after parent-predictable transport, plus finite root/inherited terms.

## 4. Result

`SelectedActionIsFreshIncrementModuloParentPredictableTransport.A` is a normal-form theorem. It is conditionally closed if the full clock already uses fresh first-ratio/log-amplification increments. If the clock counts absolute child mass, the clock must be decomposed into finite inherited mass plus fresh increments.

The next required check is:

```math
\boxed{\text{FullMaterialClockUsesFreshIncrementCurrency.A}.}
```