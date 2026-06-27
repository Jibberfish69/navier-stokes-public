---
theorem_id: forward-gold-parent-subtracted-endpoint-innovation-packing-boundary-20260627
status: hard-boundary-needs-original-history-current-quadratic-variation
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
attacks_hinge:
  - OriginalHistoryParentPredictableFreshInnovationCarleson.A
  - StoppedRoutedParticipationCurrentCarleson.A
  - ParentSubtractedDynamicEndpointCurrentRepresentation.A
  - StoppedRoutedCurrentSquarePacking.A
---

# Parent-subtracted endpoint innovation packing boundary

## 1. Target

The parent-subtracted endpoint current representation requires a square-packing estimate for the fresh current:

```math
J^S_{fresh}(Q,Q')
:=J^S_{dyn}(Q,Q')-J^S_{par,pred}(Q,Q').
```

The desired estimate is

```math
\sum_{Q\subseteq Q_0}\|J^S_{fresh}(Q,Q')\|^2\mathcal R(Q)
\le C\mathcal R(Q_0)+C R_{legal}(Q_0).
\tag{1}
```

If `(1)` holds, the routed endpoint source has a noncircular current representation and stopped testing may be driven by original-history current energy instead of a future selected-tail right inverse.

## 2. Candidate ledger

The fresh current decomposes schematically as

```math
J^S_{fresh}
=\Delta J^S_{comm}+\Delta J^S_{cov}+\Delta J^S_{frame}+\Delta J^S_{turn}+\Delta J^S_{ex}-\Delta J^S_{par,pred}.
```

A valid proof would need installed quadratic-variation ledgers:

```math
\sum_Q \|\Delta J^S_{comm}\|^2\mathcal R(Q),
\quad
\sum_Q \|\Delta J^S_{cov}\|^2\mathcal R(Q),
\quad
\sum_Q \|\Delta J^S_{frame}\|^2\mathcal R(Q),
```

and similarly for turnstile, exchange, and parent-predictable subtraction errors, all bounded by original-history action/service/legal terms.

## 3. What the current route gives

The current route has local ledgers for pressure-visible material, pressure-null material, source-origin exchange, stop/legal terms, and some stopped selector/score machinery. Those ledgers explain why a local endpoint source may be charged when it appears.

They do not yet prove the quadratic variation estimate `(1)`. The problem is that endpoint current increments can oscillate in direction and sign across stopped descendants. Local payment gives size, but square packing requires either:

```math
\text{orthogonality/Bessel structure}
```

or

```math
\text{finite variation / martingale quadratic variation from original history}.
```

Neither is automatic from the endpoint current representation.

## 4. Direct obstruction

The identity

```math
\nu^S_{end}=D_AJ^S_{fresh}+stop/legal
```

is not enough. A current can represent the endpoint source but have arbitrarily large square variation unless it is selected canonically by an energy-minimizing, martingale-orthogonal, or material-action-controlled rule.

Thus the implication

```math
\text{parent-subtracted representation}
\Rightarrow
\text{stopped current Carleson packing}
```

is false without an additional original-history current-energy theorem.

## 5. Exact missing theorem

The required theorem is:

```text
OriginalHistoryEndpointCurrentQuadraticVariation.A
```

Statement:

The parent-subtracted routed endpoint current has original-history quadratic variation controlled by installed ledgers:

```math
\sum_{Q\subseteq Q_0}\|J^S_{fresh}(Q,Q')\|^2\mathcal R(Q)
\le
C\bigl(
B_{Schur}(Q_0)+E_{top-ex}(Q_0)+S_{material}(Q_0)+Stop(Q_0)+Reset(Q_0)+R_{legal}(Q_0)
\bigr).
```

A stronger equivalent form is a martingale/Bessel theorem:

```text
StoppedEndpointCurrentBessel.A
```

where the current increments form a stopped martingale difference sequence in a parent-known Hilbert geometry.

## 6. Result

The endpoint-current route is structurally better than the arbitrary right-inverse \(Tb\) route, but it is not closed. It requires a new noncircular current-energy theorem:

```math
\boxed{\text{OriginalHistoryEndpointCurrentQuadraticVariation.A / StoppedEndpointCurrentBessel.A}.}
```

Without that theorem, the parent-subtracted endpoint current may be representationally valid but too large in square variation to supply stopped routed-current Carleson control.