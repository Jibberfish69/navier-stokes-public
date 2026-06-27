---
theorem_id: forward-gold-stopped-primitive-pls-no-free-oscillation-balance-law-boundary-20260627
status: no-free-oscillation-open-balance-law-required
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
attacks_hinge:
  - StoppedPrimitivePLSNoFreeOscillation.A
  - StoppedReturnBVFiniteFromOriginalData.A
  - StoppedNegativeScaleReturnCharge.A
---

# Stopped primitive PLS no-free-oscillation: balance-law boundary

## 1. Target

The stopped-core record/return payment needs finite negative variation of the primitive PLS record:

```math
\operatorname{Var}^{-}(P;\mathfrak R)
=
\sum_k [P(Q_k)-P(Q_{k+1})]_+
\le C(u_0)+R_{legal}.
\tag{1}
```

This is `StoppedPrimitivePLSNoFreeOscillation.A / StoppedReturnBVFiniteFromOriginalData.A`.

## 2. Why boundedness is insufficient

A bounded primitive record can still oscillate infinitely. Therefore finite range or average control of `P` does not imply `(1)`.

The stopped-core proof needs a one-sided material balance law, not just a scalar potential.

## 3. Required balance law

The necessary structure is a stopped primitive PLS balance of the form

```math
D_t P
=
\mathcal P_{prod}
-\mathcal R_{ret}
+Err,
\tag{2}
```

where:

- `P_prod` is the positive primitive production already used for selected action;
- `R_ret` is a genuine return/relaxation/service term;
- `Err` is legal or already paid.

One then needs the one-sided estimate

```math
[D_tP]_-
\le
C\mathcal R_{ret}+C Err_{legal}.
\tag{3}
```

and the original-data finiteness

```math
\int \mathcal R_{ret}\,dt\le C(u_0).
\tag{4}
```

Discretizing `(3)` along the stopped laminar chain gives `(1)`.

## 4. Exact missing theorem

The exact missing theorem is

```text
StoppedPrimitivePLSBalanceLaw.A
```

with the consequence

```text
StoppedReturnBVFiniteFromOriginalData.A
```

Statement:

On a fixed stopped material core and signed primitive channel, the primitive PLS record has finite negative variation controlled by a pre-existing return/relaxation/service ledger from original data:

```math
\sum_k [P(Q_k)-P(Q_{k+1})]_+
\le
C\int_{I_{Q_0}}\mathcal R_{ret}\,dt+C R_{legal}(Q_0)
\le C(u_0)+C R_{legal}(Q_0).
```

## 5. Result

The stopped-core branch is reduced to a real balance-law obligation. Without `StoppedPrimitivePLSBalanceLaw.A`, the branch can oscillate:

```math
P \uparrow,\downarrow,\uparrow,\downarrow,\ldots
```

with bounded amplitude but unbounded positive variation. The positive increments would pay selected action, while the negative returns would reset the record for free.

Thus the fixed stopped-core branch is blocked on:

```math
\boxed{\text{StoppedPrimitivePLSBalanceLaw.A / StoppedReturnBVFiniteFromOriginalData.A}.}
```

The other live branch remains the fresh-reset overrun branch:

```text
FreshSelectedCoefficientOverrunPayment.A / CriticalWeightedParentChildResetCarleson.A.
```