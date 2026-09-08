---
theorem_id: forward-gold-parent-predictable-transport-no-fresh-selected-action-20260627
status: conditional-on-selected-action-being-fresh-increment
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
attacks_hinge:
  - ParentPredictableTransportNoFreshSelectedAction.A
  - ZeroCostSelectedGainRigidity.A
  - QuantitativeNoFreeSelectedGain.A
---

# Parent-predictable transport gives no fresh selected action

## 1. Target

The zero-cost selected-gain rigidity theorem reduced to:

```math
Q'=\operatorname{Pred}_{Q\to Q'}(Q)
\quad\Longrightarrow\quad
A_{sel}(Q')=0,
\tag{1}
```

where the child is only the parent-predictable same-material transport of the parent packet and no original-history ledger is active.

## 2. Key distinction

There are two possible meanings of selected action.

### Absolute child mass

If

```math
A_{sel}(Q')=\text{absolute selected mass on }Q',
```

then `(1)` is false. Parent-predictable transport can carry old selected mass forward. That mass is not fresh, but it may be nonzero.

### Fresh selected increment

If

```math
A_{sel}(Q')=\text{fresh selected gain beyond parent-predictable transport},
```

then `(1)` is true by definition once the selector/order-lock is unchanged.

In formula form, the selected action must be the positive part of the quotient increment:

```math
A_{sel}(Q')
:=
\bigl[\rho_{sel}(Q')-\operatorname{Pred}_{Q\to Q'}\rho_{sel}(Q)\bigr]_+\mathcal R(Q')
```

or the corresponding first-ratio / log-amplification increment.

Then parent-predictable transport gives

```math
\rho_{sel}(Q')=\operatorname{Pred}_{Q\to Q'}\rho_{sel}(Q),
```

so

```math
A_{sel}(Q')=0.
```

## 3. Conditional theorem

Thus `ParentPredictableTransportNoFreshSelectedAction.A` holds provided selected action is explicitly defined as fresh selected increment modulo parent-predictable same-material transport.

The theorem statement should be:

```math
\boxed{
Q'=\operatorname{Pred}_{Q\to Q'}(Q),\quad
\text{selector/order-lock unchanged},\quad
\text{no reset/return/legal exit}
\Rightarrow
A^{fresh}_{sel}(Q')=0.
}
```

## 4. Remaining obligation

The missing structural obligation is not the zero-cost implication itself. It is definitional exactness:

```text
SelectedActionIsFreshIncrementModuloParentPredictableTransport.A
```

Statement:

The selected action used in the full material clock is the fresh positive increment after subtracting parent-predictable transport, not the absolute carried selected mass.

Equivalently,

```math
A_{sel}(Q')
=\left[\log f_{sel}(Q')-\operatorname{Pred}_{Q\to Q'}\log f_{sel}(Q)\right]_+\mathcal R(Q')
+\text{paid defects}.
```

If the full clock currently counts absolute selected mass, then the theorem is false and the clock must be rewritten as a fresh-gain clock plus inherited transport terms.

## 5. Result

`ParentPredictableTransportNoFreshSelectedAction.A` is conditionally closed once selected action is formalized as a parent-subtracted fresh increment. The remaining exact theorem is:

```math
\boxed{\text{SelectedActionIsFreshIncrementModuloParentPredictableTransport.A}.}
```

This is a definitional/normal-form obligation. It is necessary for the zero-cost rigidity spine.