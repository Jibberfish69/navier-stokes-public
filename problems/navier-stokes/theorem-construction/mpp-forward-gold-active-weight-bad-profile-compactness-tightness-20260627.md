---
theorem_id: forward-gold-active-weight-bad-profile-compactness-tightness-20260627
status: bad-profile-compactness-reduced-to-active-weight-tightness-open
route: forward-gold same-material full-clock / stopped routed-current square-packing
created: 2026-06-27
inputs:
  - StoppedRoutedCurrentSquarePacking.A
  - AnnounceableActiveWeightResetCarleson.A
  - BadProfileCompactnessForActiveWeightReset.A
  - QuantitativeZeroCostSelectedResetRigidity.A
  - LogScaleResetDerivativeCarrierBound.A
  - FreshCommonSelectorRefinementNoLoss.A
  - FreshSameCarrierIdentity.A
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-routed-current-square-packing-branch-gates-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-dynamic-silent-source-to-predictable-transition-innovation-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-announceable-active-weight-reset-bad-profile-rigidity-20260627.md
output:
  - ActiveWeightDefectTightnessFromOriginalHistory.A
  - SameCarrierBadProfileExtraction.A
  - ActiveWeightBlowupProjectionCompactness.A
result: the zero-cost rigidity route is method-fit, but its compactness step is
  not automatic; the exact missing theorem is tightness/nonvanishing of the
  normalized active-weight fresh quotient under same-carrier blow-up.
---

# Active-weight bad profile compactness: tightness gate

## 1. Why this note exists

The previous note replaced the direct active-weight derivative attack by a
bad-profile proof:

```text
failure of AnnounceableActiveWeightResetCarleson.A
  -> same-carrier zero-cost selected-reset limit
  -> QuantitativeZeroCostSelectedResetRigidity.A contradiction.
```

This note tests the first arrow. The compactness extraction is not free. The
critical half-tail can concentrate in a high-active-weight, shrinking reset tube,
so the normalized weighted numerator may survive while the unweighted geometric
objects used by \(d\Lambda\) appear to vanish.

The new exact gate is:

```text
ActiveWeightDefectTightnessFromOriginalHistory.A.
```

## 2. Normalized failure

Assume the reset-side estimate fails. After removing legal and derivative-exact
pieces already paid by the harmonic Cauchy step, normalize a finite stopped
family so that

```math
\mu_n(\mathcal E_n)
:=
\sum_{e\in\mathcal E_n}
\int H_{e^-}(t)
\|D_e^{fresh}(t)\|_{\mathcal H_{\rm lift}}^2\,dt
=1,
\tag{1}
```

while

```math
\Lambda_n(\operatorname{Hist}(P_n))
:=
\int_{\operatorname{Hist}(P_n)}
\left(
|\partial_\sigma Z|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
+|\operatorname{covector}_\sigma|^2
\right)d\sigma dt
\to0.
\tag{2}
```

The desired compactness conclusion is that a subsequence of the weighted defect
measures \(\mu_n\) has a nonzero same-carrier limit supported where all four
announcement densities in `(2)` vanish.

## 3. What can be extracted now

The existing sources justify three reductions.

First, the branch-gate audit reduces the reset defect to the fresh increment

```math
\Delta Z_{Q\to Q'}^{fresh}
=
\int\partial_\sigma Z
+\operatorname{turnstile}
+\operatorname{exchange}
+R_{\rm legal},
\tag{3}
```

with critical weighted packing as the missing estimate.

Second, the dynamic silent-source note gives the correct parent split:

```math
\mathcal C_\theta[Z_e^{sil}]
=B_e^{sil}+D_e^{sil}+R_e^{sil},
\qquad
D_e^{sil}\perp\mathcal P_{e^-}.
\tag{4}
```

Thus any coherent parent transport belongs to \(B_e^{sil}\), not to the fresh
reset numerator.

Third, the bad-profile rigidity note says that if a nonzero fresh quotient
survives in a zero-cost same-carrier limit, then
`QuantitativeZeroCostSelectedResetRigidity.A` should kill it.

So the only real compactness question is whether the normalized fresh quotient
actually survives as a same-carrier limit.

## 4. The tightness problem

The half-tail obstruction has the model form

```math
H_{e_\ell^-}\simeq 2^\ell,
\qquad
\|D_{e_\ell}^{fresh}\|^2\simeq {2^{-\ell}\over \ell+1}.
\tag{5}
```

The normalized measure

```math
d\mu_n
=
\sum_{e\in\mathcal E_n}
H_{e^-}\|D_e^{fresh}\|^2\,\delta_{\operatorname{Tube}(e)}
\tag{6}
```

may concentrate on tubes whose material/geometric size goes to zero. In that
case `(2)` alone does not yet produce a visible limit object. One can get
\(\Lambda_n\to0\), but still lose the normalized unit in `(1)` unless there is a
renormalized compactness theorem for the active-weight quotient.

That theorem is:

```text
ActiveWeightBlowupProjectionCompactness.A
```

For any normalized bad sequence with `(1)` and `(2)`, after passing to a stopped
subchain and rescaling each selected tube by its active-weight geometry, the
parent-subtracted quotient

```math
H_{e^-}^{1/2}D_e^{fresh}
\tag{7}
```

has a nonzero weak limit in one common same-carrier lifted Hilbert space, unless
the lost mass is itself charged by turnstile, covector, exchange, or legal
carrier mismatch.

## 5. Same-carrier extraction

The second compactness gate is:

```text
SameCarrierBadProfileExtraction.A
```

From a normalized failure, select a subfamily carrying a fixed fraction of
\(\mu_n\) such that every edge has one of two outcomes:

```text
same carrier after parent transport
  -> keep it for the zero-cost compactness limit;

carrier/selector/covector mismatch
  -> charge it to turnstile, exchange, covector, or legal mismatch.
```

This is where `FreshCommonSelectorRefinementNoLoss.A / FreshSameCarrierIdentity.A`
enters. Without it, the phrase "fresh quotient after parent subtraction" is not
stable enough to pass to a limit.

## 6. Conditional proof of compactness

Assume `ActiveWeightBlowupProjectionCompactness.A` and
`SameCarrierBadProfileExtraction.A`. Then the bad-profile compactness proof is
short.

Normalize by `(1)`--`(2)`. Use same-carrier extraction to keep a positive mass
subchain and charge all mismatch to \(\Lambda_n+R_{\rm legal}\). Use active-weight
blow-up compactness to get a nonzero limit

```math
D_\infty^{fresh}\ne0.
\tag{8}
```

Since \(\Lambda_n\to0\), the limit satisfies

```math
\partial_\sigma Z_\infty=0,\qquad
\operatorname{turnstile}_\infty=0,\qquad
\operatorname{exchange}_\infty=0,\qquad
\operatorname{covector}_\infty=0.
\tag{9}
```

The dynamic-silent commutator identity then leaves only inherited
parent-predictable transport. But inherited transport was removed by the
projection defining \(D^{fresh}\). Therefore

```math
D_\infty^{fresh}=0,
\tag{10}
```

contradicting `(8)`.

Thus the compactness route closes the reset Carleson gate once those two
tightness/extraction lemmas are proved.

## 7. Result

The better idea is now sharper:

```text
do not differentiate H_I;
do not ask frozen silence to square-pack;
do not let compactness hide the active-weight numerator.
```

The exact next theorem is:

```text
ActiveWeightDefectTightnessFromOriginalHistory.A
  =
SameCarrierBadProfileExtraction.A
  + ActiveWeightBlowupProjectionCompactness.A.
```

It says that a unit of parent-subtracted active-weight fresh quotient cannot
vanish into a shrinking high-weight tube for free. It either survives as the
zero-cost same-carrier limit killed by rigidity, or it pays the original-history
turnstile/exchange/covector/reset derivative charge.