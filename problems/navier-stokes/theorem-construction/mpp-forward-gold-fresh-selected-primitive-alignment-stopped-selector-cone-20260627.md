---
theorem_id: forward-gold-fresh-selected-primitive-alignment-stopped-selector-cone-20260627
status: alignment-proved-subject-to-stopped-selector-aperture
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
attacks_hinge:
  - FreshSelectedPrimitiveAlignment.A
  - StoppedSignedChannelCoercivity.A
  - PrimitivePLSSignedChannelRealization.A
---

# Fresh selected primitive alignment: stopped selector cone

## 1. Target

The previous note reduced primitive realization to signed-channel coercivity:

```math
A(Q_{k+1})
\le
C[\Gamma_{\mathfrak R}(S_k)]_+
+C R_{legal}(Q_k).
\tag{1}
```

Here `S_k` is the fresh selected source increment on a stopped-core transaction and `Gamma_R` is the signed primitive channel attached to the stopped record `R`.

The issue was whether `(1)` follows from being on the stopped core.

## 2. Stopped selector cone

Define the stopped selected cone attached to the stopped record by

```math
\mathcal C_{\mathfrak R}^{\theta}
:=
\{S:\Gamma_{\mathfrak R}(S)\ge \theta \|S\|_{sel}\},
\qquad \theta>0.
\tag{2}
```

The stopped-core branch must mean more than same material location. It means the retained selector/order-lock and signed primitive channel remain unchanged:

```math
\mathfrak R(Q_{k+1})=\mathfrak R(Q_k).
\tag{3}
```

Thus a fresh selected transaction in the stopped-core branch must satisfy

```math
S_k\in\mathcal C_{\mathfrak R}^{\theta}
\tag{4}
```

modulo legal donor loss.

If `(4)` fails, then one of the following must happen:

1. the transaction is not retained by the stopped selector;
2. the selector/order-lock changes, so the transaction is a fresh reset;
3. the discarded or transferred channel is paid by legal/donor loss.

Since Branch I excludes reset and considers retained unpaid stopped-core transactions, `(4)` holds.

## 3. Coercivity

From `(4)`,

```math
\|S_k\|_{sel}
\le
\theta^{-1}[\Gamma_{\mathfrak R}(S_k)]_+.
\tag{5}
```

Since

```math
A(Q_{k+1})\simeq \|S_k\|_{sel},
```

we obtain

```math
A(Q_{k+1})
\le
C_{\theta}[\Gamma_{\mathfrak R}(S_k)]_+
+C R_{legal}(Q_k).
\tag{6}
```

This is exactly `StoppedSignedChannelCoercivity.A`.

If the primitive record is compatible with the signed channel,

```math
P(Q_{k+1})-P(Q_k)
=\Gamma_{\mathfrak R}(S_k)+Err_k,
\qquad |Err_k|\le C R_{legal}(Q_k),
\tag{7}
```

then

```math
A(Q_{k+1})
\le
C[P(Q_{k+1})-P(Q_k)]_+
+C R_{legal}(Q_k).
\tag{8}
```

So `PrimitivePLSSignedChannelRealization.A` follows.

## 4. Exact remaining assumption

The only nonformal piece is the stopped selector aperture theorem:

```text
StoppedSelectorConeAperture.A
```

Statement:

A retained unpaid fresh selected transaction preserving the stopped carrier record lies in the fixed stopped selector cone `(2)` with uniform aperture `theta>0`. If it does not, the transaction is a reset or is legally/donor-paid.

This is essentially the installed `FreshCommonSelectorRefinementNoLoss.A` requirement in stopped-core language.

## 5. Result

Subject to `StoppedSelectorConeAperture.A / FreshCommonSelectorRefinementNoLoss.A`, the stopped-core alignment theorem is proved:

```math
\boxed{
\text{stopped-core retained fresh selected transaction}
\Rightarrow
A(Q_{k+1})\le C[\Gamma_{\mathfrak R}(S_k)]_+ + C R_{legal}(Q_k).
}
```

Consequently, with primitive-record compatibility, the stopped-core transaction is controlled by the positive increment of the pre-existing primitive PLS record.

The stopped-core branch now needs the finite negative-return ledger:

```text
StoppedNegativeScaleReturnCharge.A
```

because positive record increments are already summable once negative returns and record oscillation are finite.