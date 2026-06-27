---
theorem_id: forward-gold-stopped-core-positive-variation-record-return-payment-20260627
status: conditional-positive-variation-payment-proved-primitive-realization-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
attacks_hinge:
  - PrimitivePLSSignedChannelDecomposition.A
  - StoppedPotentialRecordAverageBound.A
  - StoppedNegativeScaleReturnCharge.A
  - FreshSourceRecordReturnOrResetDichotomy.A
---

# Stopped-core positive-variation record/return payment

## 1. Branch setting

Work in Branch I of the fresh source split. The stopped carrier record is fixed along the retained child chain:

```math
\mathfrak R(Q_{k+1})=\mathfrak R(Q_k).
```

Thus the fresh selected transaction remains on one stopped material core, one selector/order-lock, and one signed primitive channel.

The goal is to pay the stopped-core fresh selected half-tail without using future selected-tail information.

## 2. Primitive PLS representation needed

The branch closes if there exists a primitive stopped PLS record

```math
P_k := P(Q_k)
```

attached before the selected tail is summed, such that every stopped-core fresh selected transaction satisfies

```math
A(Q_{k+1})
\le
C\,[P_{k+1}-P_k]_+
+C\,R_{legal}(Q_k).
\tag{1}
```

This is the precise content needed from

```text
PrimitivePLSSignedChannelDecomposition.A
```

in the stopped-core branch.

The important restriction is that \(P_k\) must be a pre-existing primitive record on the stopped carrier. It cannot be defined after the fact as the accumulated selected action.

## 3. Positive-variation telescoping

Assume `(1)`. Then for any finite stopped-core chain \(Q_0\supset Q_1\supset\cdots\supset Q_N\),

```math
\sum_{k=0}^{N-1} A(Q_{k+1})
\le
C\sum_{k=0}^{N-1}[P_{k+1}-P_k]_+
+C\sum_{k=0}^{N-1}R_{legal}(Q_k).
\tag{2}
```

For any real sequence \(P_k\), positive variation satisfies

```math
\sum_{k=0}^{N-1}[P_{k+1}-P_k]_+
=
P_N-P_0+\sum_{k=0}^{N-1}[P_k-P_{k+1}]_+.
\tag{3}
```

Hence

```math
\sum_{k=0}^{N-1}[P_{k+1}-P_k]_+
\le
\operatorname{osc}_{0\le k\le N} P_k
+\sum_{k=0}^{N-1}[P_k-P_{k+1}]_+.
\tag{4}
```

So the stopped-core branch is paid if two quantities are finite:

1. the primitive record oscillation on the stopped core;
2. the negative-return variation.

## 4. Record average bound

The needed record bound is

```text
StoppedPotentialRecordAverageBound.A
```

in the form

```math
\operatorname{osc}_{Q\subseteq Q_0,\,\mathfrak R(Q)=\mathfrak R(Q_0)}P(Q)
\le
C\,\mathcal P_{root}(Q_0)+C R_{legal}(Q_0),
\tag{5}
```

where `P_root` is a finite original-data stopped-core record ledger.

This prevents the primitive record from having unbounded one-way growth while the carrier is stopped.

## 5. Negative scale-return charge

The needed negative-return theorem is

```text
StoppedNegativeScaleReturnCharge.A
```

in the form

```math
\sum_{k=0}^{N-1}[P_k-P_{k+1}]_+
\le
C\,\mathcal R_{return}(Q_0)+C R_{legal}(Q_0),
\tag{6}
```

where `R_return` is finite from original stopped-core return structure, not from the selected future tail.

This says every time the primitive record returns downward, that return is a real scale-return event and is charged.

## 6. Conditional branch payment

Combining `(2)`, `(4)`, `(5)`, and `(6)`,

```math
\sum_{k=0}^{N-1}A(Q_{k+1})
\le
C\mathcal P_{root}(Q_0)
+C\mathcal R_{return}(Q_0)
+C R_{legal}(Q_0).
\tag{7}
```

If the right-hand side is finite from original data, then the stopped-core fresh half-tail is finite.

Thus:

```math
\boxed{
\text{Primitive PLS positive-increment representation}
+
\text{record oscillation bound}
+
\text{negative-return charge}
\Rightarrow
\text{stopped-core branch paid.}
}
```

## 7. What is not yet proved

This note proves the positive-variation mechanism. It does not prove the main primitive realization theorem.

The exact remaining nonformal theorem is:

```text
PrimitivePLSSignedChannelRealization.A
```

Statement:

On a fixed stopped material core with fixed selector/order-lock and signed primitive channel, every fresh selected high-ratio transaction is controlled by the positive increment of a pre-existing primitive PLS record:

```math
A(Q_{k+1})
\le
C[P(Q_{k+1})-P(Q_k)]_+
+C R_{legal}(Q_k).
\tag{8}
```

Without `(8)`, the selected action may be adjacent to the stopped primitive record but not actually equal to its positive variation.

## 8. Result

The stopped-core branch is not fully closed, but the summation problem is reduced to one sharp representation theorem plus two finite-ledger bounds:

```math
\text{PrimitivePLSSignedChannelRealization.A}
+
\text{StoppedPotentialRecordAverageBound.A}
+
\text{StoppedNegativeScaleReturnCharge.A}
\Rightarrow
\text{stopped-core selected half-tail finite.}
```

The best next stopped-core target is `PrimitivePLSSignedChannelRealization.A`. It is the only part that decides whether the selected transaction is genuinely a primitive record increase rather than another renamed selected tail.