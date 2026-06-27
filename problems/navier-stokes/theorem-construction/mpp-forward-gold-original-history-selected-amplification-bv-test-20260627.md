---
theorem_id: forward-gold-original-history-selected-amplification-bv-test-20260627
status: conditional-unification-original-history-bv-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
attacks_hinge:
  - OriginalHistorySelectedLogAmplificationCarleson.A
  - StoppedReturnBVFiniteFromOriginalData.A
  - CriticalWeightedResetBVFromOriginalHistory.A
---

# Original-history selected amplification BV test

## 1. Current branch payments

The live branch payments are:

```math
\text{StoppedReturnBVFiniteFromOriginalData.A}
```

for the fixed stopped-core branch, and

```math
\text{CriticalWeightedResetBVFromOriginalHistory.A}
```

for the strict reset branch.

These should not be treated as unrelated estimates. They look like two projections of one original-history selected amplification variation estimate.

## 2. Candidate selected amplification record

Let \(s=-\log r\) denote log-scale along the same-material history. Define a selected amplification record

```math
\Lambda(s,a)=\log f_{sel}(s,a),
```

or packetwise

```math
\Lambda_Q=\log f_Q.
```

A parent-child selected density change is then represented by

```math
\Delta_Q\Lambda=\Lambda_{Q'}-\Lambda_Q.
```

The governing theorem should be a finite variation / square-function estimate for \(\Lambda\):

```math
\sum_{Q\subseteq Q_0}|\Delta_Q\Lambda|^2\mathcal R(Q)
+\operatorname{Var}_{crit}(\Lambda;Q_0)
\le C(u_0)+C R_{legal}(Q_0).
\tag{1}
```

## 3. Fixed-core projection

On a fixed stopped record, the primitive PLS record is a projection of \(\Lambda\):

```math
P_k=\Pi_{stop}\Lambda(Q_k).
```

The negative return term becomes

```math
\sum_k [P_k-P_{k+1}]_+
\le
\operatorname{Var}^-(\Pi_{stop}\Lambda;Q_0).
```

Thus the fixed-core branch is paid by `(1)` if the stopped record really is a projection of the original-history amplification record.

## 4. Reset projection

At a strict reset, compare the child coefficient to the parent coefficient transported into the child chart:

```math
\Delta_{reset}\Lambda(Q,Q')
=
\Lambda_{new}(Q')-\Lambda_{old\to new}(Q).
```

The reset overrun term is

```math
\Omega_{reset}(Q,Q')
=\omega(Q,Q')[\Delta_{reset}\Lambda(Q,Q')]_+.
```

The desired reset estimate is

```math
\sum_{reset\ edges}\Omega_{reset}(Q,Q')
\le C(u_0)+C R_{legal}(Q_0).
```

This is also a projection of `(1)`, provided the reset coefficient is a chart-change of the same \(\Lambda\), not a new unrelated selected quantity.

## 5. Conditional implication

If a single original-history selected amplification record \(\Lambda\) exists such that:

1. fixed-core primitive records are stopped projections of \(\Lambda\);
2. reset coefficients are chart changes of \(\Lambda\);
3. \(\Lambda\) has finite critical variation from original smooth data;

then both branch payments follow.

So the live hinge can be narrowed to one theorem:

```text
OriginalHistorySelectedAmplificationBV.A
```

Statement:

After pressure-visible/null routing and source-origin classification, the selected amplification record along the original same-material history has finite critical BV / square-function / Carleson norm from original data:

```math
\sup_{P'\subseteq P}
{1\over \mathcal R(P')}
\left[
\sum_{S\subseteq P'}\sum_{Q\subseteq S}
(\|\Delta_QZ^S\|^2+|e_Q^S|^2)\mathcal R(Q)+Stop(P')
\right]
\le C(u_0)+{R_{legal}(P')\over \mathcal R(P')}.
```

## 6. Result

This is not a proof of closure. It is a sharper target selection. The two branch payments are best viewed as projections of one original-history selected amplification BV theorem:

```math
\boxed{\text{OriginalHistorySelectedAmplificationBV.A}.}
```

The next proof attempt should try to construct \(\Lambda\) or \(Z^S\) from original-history PDE quantities and prove its finite variation bound, rather than attacking fixed-core return and reset overrun separately.