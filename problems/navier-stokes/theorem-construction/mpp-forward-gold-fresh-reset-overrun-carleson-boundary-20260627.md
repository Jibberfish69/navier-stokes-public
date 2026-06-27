---
theorem_id: forward-gold-fresh-reset-overrun-carleson-boundary-20260627
status: reset-branch-open-critical-weighted-reset-bv-required
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
attacks_hinge:
  - FreshSelectedCoefficientOverrunPayment.A
  - CriticalWeightedParentChildResetCarleson.A
  - LogScaleResetDerivativeCarrierBound.A
  - FreshSourceRecordReturnOrResetDichotomy.A
---

# Fresh reset overrun: Carleson boundary

## 1. Reset branch setting

The fixed stopped-core branch is blocked on a signed stopped PLS evolution identity. The remaining branch is the strict fresh reset branch:

```math
\mathfrak R(Q')\ne \mathfrak R(Q).
```

This means the selected transaction changes the stopped carrier/selector/order-lock datum rather than returning on the old stopped core.

## 2. Local reset payment

Let the parent-to-child reset create a new selected coefficient or carrier coordinate. Write the reset overrun schematically as

```math
\Omega_{reset}(Q,Q')
:=
\omega(Q,Q')\,[c_{sel}(Q')-c_{sel}^{par}(Q)]_+,
```

where:

- `c_sel(Q')` is the child selected coefficient in the new stopped record;
- `c_sel^{par}(Q)` is the inherited parent coefficient transported to the child scale;
- `omega(Q,Q')` is the critical scale/material weight.

The desired local theorem is

```math
A(Q')
\le
C\Omega_{reset}(Q,Q')+C R_{legal}(Q).
\tag{1}
```

This is `FreshSelectedCoefficientOverrunPayment.A`.

However, `(1)` requires a same-carrier reset identity. The child coefficient must be compared to the parent transported coefficient on the same carrier. If the child coefficient is simply a new unrelated selected source, then `(1)` is not meaningful.

Thus the local reset payment depends on the already identified repair:

```text
FreshCommonSelectorRefinementNoLoss.A / FreshSameCarrierIdentity.A
```

in reset language.

## 3. Global reset Carleson requirement

Even if `(1)` holds locally, the reset branch closes only if the reset overruns are Carleson:

```math
\sum_{Q\subseteq Q_0,\,Q\to Q'\text{ reset}}
\Omega_{reset}(Q,Q')
\le C(u_0)+C R_{legal}(Q_0).
\tag{2}
```

This is `CriticalWeightedParentChildResetCarleson.A`.

The critical issue is the origin of the weight `omega`. It must come from an original-history scale potential, reset derivative, overrun service, exchange, or return structure. It cannot be defined from the future selected tail.

## 4. Direct test

The reset event itself gives a first-difference:

```math
c_{sel}(Q')-c_{sel}^{par}(Q)>0.
```

But infinitely many positive first-differences can fail to be summable unless there is a finite variation/Carleson control on the transported reset coefficient.

Thus the global theorem does not follow from the reset definition alone. It needs a finite original-data reset-variation theorem.

## 5. Exact missing theorem

The exact missing theorem is

```text
CriticalWeightedResetBVFromOriginalHistory.A
```

or equivalently

```text
LogScaleResetDerivativeCarrierBound.A
```

Statement:

For the original same-material history, the critical weighted sum of strict parent-child reset derivatives is finite:

```math
\sum_{Q\subseteq Q_0,\,reset}
\omega(Q,Q')\,[c_{sel}(Q')-c_{sel}^{par}(Q)]_+
\le C(u_0)+C R_{legal}(Q_0).
\tag{3}
```

This must be proved from original-history scale potential / reset derivative / exchange-service structure.

## 6. Result

The reset branch is not discharged by the existence of resets. It reduces to a precise critical weighted reset BV/Carleson theorem:

```math
\boxed{\text{CriticalWeightedResetBVFromOriginalHistory.A / LogScaleResetDerivativeCarrierBound.A}.}
```

The full fresh-source record/return-or-reset split now has two exact blocks:

1. fixed stopped-core branch:

```text
SignedStoppedPLSEvolutionIdentity.A / StoppedReturnBVFiniteFromOriginalData.A
```

2. fresh reset branch:

```text
CriticalWeightedResetBVFromOriginalHistory.A / LogScaleResetDerivativeCarrierBound.A
```

Those are the current hard locks after the source-origin normal form has been consumed as support.