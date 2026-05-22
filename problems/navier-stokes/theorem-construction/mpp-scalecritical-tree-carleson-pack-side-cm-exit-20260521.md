# MPP ScaleCritical Tree Carleson Pack-Side CM Exit

Date: 2026-05-21

Status: theorem target / CM-exit wording correction.

## Statement

Define the scale-critical donor-refill reserve by

```math
\mathcal R_N(I)
:=
\int_I
\sum_{k>N}
2^k
\left(
\sum_{\ell>k+4} D_\ell(t)
\right)^2
\,dt.
```

`ScaleCriticalTreeCarleson.A` is the Pack-side CM exit theorem:

```math
Pack_Q
\Longrightarrow
\mathcal R_N(I)
\le o_N(1)+\mathrm{legal\ losses}.
```

Equivalently, with

```math
CM_{N,r,Q}
=
Pack_Q \wedge Part_{N,Q} \wedge Field_{N,r,Q},
```

the CM-facing statement is

```math
CM_{N,r,Q}
\Longrightarrow
ScaleCriticalTreeCarleson.A.
```

The contrapositive is

```math
\neg ScaleCriticalTreeCarleson.A
\Longrightarrow
\neg Pack_Q
\Longrightarrow
\neg CM_{N,r,Q}.
```

In reserve language:

```math
\mathcal R_N(I)>o_N(1)+\mathrm{legal\ losses}
\Longrightarrow
\neg Pack_Q.
```

Endpoint readout:

```math
\neg Pack_Q \Longrightarrow (Pack,\ Blown),
```

or more sharply,

```math
\neg Pack_Q \Longrightarrow (Pack,\ packing\text{-}detached).
```

## CM Reading

The donor tree is a packet-ancestry object. Packet ancestry belongs to `Pack_Q`.
An infinite unpaid donor-refill tree is therefore impossible inside Pack. If
such a tree exists, it is already Pack exit.

No `Field_{N,r,Q}` or Jump conversion is needed for this theorem target. Field,
Jump, source-residue, or endpoint language may still be downstream readout after
Pack exit, or may be used under a separate positive-scale retained-carrier
theorem, but it is not the live landing face of `ScaleCriticalTreeCarleson.A`.

The stronger forward supplier theorem

```math
OriginalSmoothData \Longrightarrow ScaleCriticalTreeCarleson.A
```

remains a separate positive-supplier target. The CM-exit theorem here is the
Pack-side carrier statement: inside Pack, the donor-refill tree must be
Carleson-paid; failure is already `not Pack_Q`.
