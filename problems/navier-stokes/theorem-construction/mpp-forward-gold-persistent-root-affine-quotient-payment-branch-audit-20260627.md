---
theorem_id: forward-gold-persistent-root-affine-quotient-payment-branch-audit-20260627
status: persistent-quotient-split-return-closed-relative-potential-and-reset-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped root geometry
attacks_hinge:
  - PersistentRootAffineQuotientReturnPayment.A
  - FreshPotentialAverageKillAndPositiveTransfer.A
  - CriticalWeightedResetBVFromOriginalHistory.A
  - LogScaleResetDerivativeCarrierBound.A
inputs_checked:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-defect-tightness-concentration-compactness-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-defect-high-frequency-tail-charge-direct-attempt-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fixed-stopped-score-return-bv-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-paired-carrier-der-aqk-potential-average-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-reset-overrun-carleson-boundary-20260627.md
effect: >-
  Audits the persistent non-derivative affine/root quotient payment after the
  high-frequency tail direct attempt.  The quotient is not one solved bill.  The
  inherited fixed stopped-score return/BV branch is closed only relative to the
  parent-known selector and root-geometry currency.  The fresh potential-average
  positive transfer and strict reset/overrun Carleson payments remain open
  original-history producers.  Therefore the live edge below the persistent
  quotient is the two-branch original-history payment, not another compactness
  or pressure-Hodge observability theorem.
---

# Persistent root affine quotient: branch audit

The persistent root affine quotient appears as

```math
D_e^{pers}
=
(I-\Pi_{\mathcal P_{e^-}})
\mathcal C_\theta[Z_e^{fresh}].
\tag{1}
```

The concentration-compactness note already states the needed payment:

```math
\sum_{e\subset P}
\int H_{e^-}\|D_e^{pers}\|^2
\le
C_N(u_0)\mathcal R(P)
+C\operatorname{Return}_{-}(P)
+C\operatorname{PotAvg}(P)
+C\operatorname{Overrun}_{sel}(P)
+R_{\rm legal}(P)
+Stop(P).
\tag{2}
```

This note checks which terms are actually installed.

## 1. Fixed stopped-score return/BV

The return branch is installed only in the fixed stopped-score form

```math
P_R=\Gamma_RZ^S.
\tag{3}
```

Then selected positive variation is variation of a parent-known stopped score:

```math
A_{\rm sel}(e)
\lesssim
[P_R(Q_{k+1})-P_R(Q_k)]_+
+R_{\rm legal}.
\tag{4}
```

Its total variation is paid by the stopped routed carrier derivative plus
selector/frame/connection motion:

```math
{\rm Var}(P_R)
\lesssim
\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z^S|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
+|\operatorname{covector}_\sigma|^2
+|\operatorname{conn}_\sigma|^2
\right)
+R_{\rm legal}.
\tag{5}
```

So `Return_-` is not free, but it is not an independent global producer either:
it is closed relative to the root-geometry current currency.

## 2. Fresh potential-average transfer

The fresh affine quotient branch uses

```math
Y_+=Y+Y_-.
\tag{6}
```

The signed part \(Y\) is supplied by the lifted scale-descent identity.  The
positive fresh source also needs transfer of the negative return/potential
average term:

```math
\int H_w(t)\|\mathcal C_\theta[Y_-](t)\|_{L_x^2}^2\,dt.
\tag{7}
```

The current potential-average note marks this as open.  It reduces the fresh
paired-carrier theorem to a potential-average kill / positive-transfer theorem;
it does not install that theorem.

So `PotAvg(P)` remains an original-history producer:

```text
FreshPotentialAverageKillAndPositiveTransfer.A.
```

## 3. Strict reset / overrun Carleson

When the selected transaction changes the stopped carrier/selector/order-lock
datum, the local overrun has the form

```math
\Omega_{reset}(Q,Q')
=
\omega(Q,Q')\,[c_{sel}(Q')-c_{sel}^{par}(Q)]_+.
\tag{8}
```

The local comparison only matters after same-carrier reset identification.  The
global closure is the Carleson estimate

```math
\sum_{Q\subseteq Q_0,\,reset}
\Omega_{reset}(Q,Q')
\le
C_N(u_0)+CR_{\rm legal}(Q_0).
\tag{9}
```

The current reset-overrun note marks `(9)` open.  It must be produced from
original-history reset derivative / exchange / service structure:

```text
CriticalWeightedResetBVFromOriginalHistory.A
/ LogScaleResetDerivativeCarrierBound.A.
```

## 4. Resulting live split

The persistent quotient payment is therefore:

```text
fixed stopped-score return/BV
  closed relative to root-geometry currency;

fresh potential-average positive transfer
  open;

strict reset/overrun Carleson
  open.
```

Equivalently,

```text
PersistentRootAffineQuotientReturnPayment.A
```

is reduced to

```text
FreshPotentialAverageKillAndPositiveTransfer.A
+
CriticalWeightedResetBVFromOriginalHistory.A / LogScaleResetDerivativeCarrierBound.A
```

after the fixed stopped-score return branch is accounted for.

Partial, not Gold closed.
