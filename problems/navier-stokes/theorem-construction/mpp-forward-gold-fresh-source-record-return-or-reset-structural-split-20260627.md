---
theorem_id: forward-gold-fresh-source-record-return-or-reset-structural-split-20260627
status: structural-dichotomy-proved-branch-payments-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
attacks_hinge:
  - FreshSourceRecordReturnOrResetDichotomy.A
  - selected first-ratio / selected-capacity gain
  - GlobalSamePacketFullClockFromOriginalData.A
---

# Fresh source record-return or reset: structural split

## 1. Current position

The source-origin normal form is no longer the global frontier. Its role is local support:

```math
\text{Schur-invisible pressure-Helmholtz--Leray material}
\Rightarrow
\text{unselected hidden-potential material}
\quad\text{or}\quad
\text{same-material strain/exchange paid selected material}.
```

Thus the surviving obstruction is a fresh selected half-tail, not pressure-Helmholtz--Leray invisibility.

The live target is a structural dichotomy:

```text
FreshSourceRecordReturnOrResetDichotomy.A
```

Every surviving fresh high-ratio selected transaction must either remain on one stopped material ancestry and be paid by primitive PLS record/return descent, or create a strict laminar fresh reset paid by same-carrier selected overrun / critical weighted reset service.

## 2. Fresh selected transaction

Let a retained selected transaction be an edge

```math
Q\to Q'
```

inside the same-material laminar ancestry tree, with selected density increment

```math
\Delta_{Q\to Q'}\rho_{sel}
=
\rho_{sel}(Q')-\rho_{sel}(Q)
```

or selected first-ratio action

```math
A(Q')\simeq \bigl[\rho_{sel}(Q')/\rho_{sel}(Q)\bigr]_{+}
```

in the normalized currency of the current route.

Call the transaction `fresh` after source-origin closure if it is not already paid by:

```math
B_{Schur}(Q),\qquad
E_{top\text{-}ex}(Q),\qquad
S_{material}(Q),\qquad
R_{legal}(Q).
```

Thus a fresh transaction is precisely the part that survives the pressure-visible/null-routing and source-origin normal form.

## 3. Stopped core data

For every retained packet, attach a stopped carrier record

```math
\mathfrak R(Q)
=
\bigl(\mathfrak C(Q),\sigma(Q),\chi(Q),P(Q),\kappa(Q)\bigr),
```

where:

- `C(Q)` is the stopped material core / carrier;
- `sigma(Q)` is the signed primitive channel;
- `chi(Q)` is the common selector/order-lock datum;
- `P(Q)` is the primitive PLS record potential;
- `kappa(Q)` is the scale/return index.

A child transaction is a stopped-core return if the child keeps the same stopped carrier record:

```math
\mathfrak R(Q')=\mathfrak R(Q)
```

up to legal gauge-null changes already paid by source-origin/support ledgers.

It is a fresh reset if this equality fails at the first retained child scale:

```math
\mathfrak R(Q')\ne\mathfrak R(Q).
```

## 4. Structural dichotomy

Define the first stopping/reset time along a retained ancestry chain by

```math
\tau_{reset}
=
\inf\{k:\mathfrak R(Q_{k+1})\ne\mathfrak R(Q_k)\}.
```

For any fresh selected transaction \(Q_k\to Q_{k+1}\), exactly one of the following holds.

### Branch I: stopped-core record/return

```math
k<\tau_{reset}.
```

Then the stopped carrier record is unchanged:

```math
\mathfrak R(Q_{k+1})=\mathfrak R(Q_k),
```

so the fresh selected transaction occurs inside one fixed stopped material core and one fixed primitive signed channel. Hence it must be represented as a primitive PLS record/return increment:

```math
A(Q_{k+1})
\le
C\,[P(Q_{k+1})-P(Q_k)]_{+}
+C\,\mathcal R_{return}(Q_k,Q_{k+1})
+C\,R_{legal}(Q_k).
```

This branch is discharged if one proves:

```text
PrimitivePLSSignedChannelDecomposition.A
StoppedPotentialRecordAverageBound.A
StoppedNegativeScaleReturnCharge.A
```

### Branch II: fresh reset / overrun

```math
k=\tau_{reset}.
```

Then the selected transaction changes the stopped carrier/selector/order-lock datum. This is not a return on the old core; it is a strict laminar reset.

The reset has a reset derivative / overrun currency

```math
\Omega_{reset}(Q_k,Q_{k+1})
```

measuring the same-carrier selected coefficient overrun required to pass from the parent stopped record to the child record. The desired reset payment is

```math
A(Q_{k+1})
\le
C\,\Omega_{reset}(Q_k,Q_{k+1})
+C\,R_{legal}(Q_k).
```

This branch is discharged if one proves:

```text
FreshSelectedCoefficientOverrunPayment.A
CriticalWeightedParentChildResetCarleson.A
LogScaleResetDerivativeCarrierBound.A
```

## 5. Proof of the dichotomy

The split itself is a stopping-time partition. Given a retained ancestry chain and a fresh selected transaction, compare the stopped carrier record before and after the transaction.

If the record is unchanged, the transaction is by definition on the fixed stopped core and belongs to Branch I.

If the record changes, let \(k\) be the first index where it changes. Then this is by definition a fresh reset and belongs to Branch II.

The alternatives are mutually exclusive because

```math
\mathfrak R(Q_{k+1})=\mathfrak R(Q_k)
```

and

```math
\mathfrak R(Q_{k+1})\ne\mathfrak R(Q_k)
```

cannot both hold.

They are exhaustive because every retained child transaction either preserves the stopped carrier record or changes it.

Thus:

```math
\boxed{
\text{fresh selected transaction}
\Rightarrow
\text{stopped-core record/return}
\quad\text{or}\quad
\text{fresh reset / overrun}.
}
```

## 6. What remains

This note proves the structural dichotomy, not the branch payments.

The fixed-core branch still needs a signed primitive decomposition and a record/return estimate:

```math
\sum_{Q\subset Q_0,\,\text{record/return}}
A(Q)
\lesssim
P(Q_0)+\mathcal R_{return}(Q_0)+R_{legal}(Q_0).
```

The reset branch still needs a selected overrun / critical weighted reset Carleson estimate:

```math
\sum_{Q\subset Q_0,\,\text{reset}}
A(Q)
\lesssim
\sum_{Q\subset Q_0}\Omega_{reset}(Q)
+R_{legal}(Q_0)
\lesssim C(u_0).
```

## 7. Result

`FreshSourceRecordReturnOrResetDichotomy.A` is structurally reduced to two branch-payment theorems.

The next best target is the fixed stopped-core branch, because it keeps one carrier and should admit a primitive signed-channel decomposition before any reset/overrun machinery is needed:

```text
PrimitivePLSSignedChannelDecomposition.A
```

If that branch closes, the remaining work becomes the shrinking fresh-reset overrun branch only.