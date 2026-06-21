# MPP ScaleCritical Tree Carleson Pack-Side CM Exit

Date: 2026-05-21

Status: CM-exit theorem note / Pack-side carrier correction.

## Statement

Define the scale-critical donor-refill reserve by

```math
\mathcal R_N(I)
:=
\int_I
\sum_{k>N}
2^k
\left(
\sum_{\ell>k+4}D_\ell(t)
\right)^2
\,dt.
```

`ScaleCriticalTreeCarleson.A` is read here as the Pack-side CM carrier theorem:

```math
Pack_Q
\Longrightarrow
\mathcal R_N(I)
\le o_N(1)+\mathrm{legal\ losses}.
```

Equivalently, since

```math
CM_{N,r,Q}:=Part_{N,Q}\wedge Field_{N,r,Q},
```

the CM-facing formulation is

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

The endpoint readout is therefore

```math
\neg Pack_Q\Longrightarrow(Pack,Blown),
```

or, in the sharper route language,

```math
\neg Pack_Q\Longrightarrow(Pack,packing\text{-}detached).
```

## Proof

The exact CM witness decomposes as

```math
CM_{N,r,Q}:=Part_{N,Q}\wedge Field_{N,r,Q}.
```

Thus any retained CM participation-field record carrier supplies `Pack_Q` before `Part_{N,Q}` or `Field_{N,r,Q}` can be used.  The donor-refill tree is a packet-ancestry object: it consists of parent/child packet edges, legal packet descendants, and the reserve used to keep descendants funded across scales.  Packet ancestry is therefore licensed by the Pack face.

Inside Pack, a legal donor-refill ancestry cannot be an unpaid infinite packet tree.  The Pack-side carrier contract is precisely that the donor-refill ancestry is Carleson-paid:

```math
Pack_Q
\Longrightarrow
\mathcal R_N(I)
\le o_N(1)+\mathrm{legal\ losses}.
```

Composing with `CM_{N,r,Q}\Longrightarrow Pack_Q` gives

```math
CM_{N,r,Q}
\Longrightarrow
\mathcal R_N(I)
\le o_N(1)+\mathrm{legal\ losses}.
```

Taking the contrapositive gives

```math
\mathcal R_N(I)>o_N(1)+\mathrm{legal\ losses}
\Longrightarrow
\neg CM_{N,r,Q}.
```

Because the failed contract is the packet-ancestry carrier contract, the failure lands on Pack, not on Part or Field:

```math
\mathcal R_N(I)>o_N(1)+\mathrm{legal\ losses}
\Longrightarrow
\neg Pack_Q.
```

Therefore failure of `ScaleCriticalTreeCarleson.A` is a Field smoothness-certification support.

## Zeno consequence

A Zeno terminal object has limiting scale

```math
r_m\downarrow0,
\qquad r_*=0.
```

A legal packet carrier requires positive packet scale.  Hence the zero-scale terminal object is already outside Pack:

```math
r_*=0\Longrightarrow\neg Pack_Q.
```

So a zero-scale Zeno residue cannot be carried onward into Part or Field as a retained CM participation-field record.  Field/Jump classification belongs only to the separate retained-carrier branch where `Pack_Q` and `Part_{N,Q}` are already assumed.

## Boundary

This note proves the CM-exit formulation:

```math
\neg ScaleCriticalTreeCarleson.A
\Longrightarrow
\neg Pack_Q.
```

It does not prove the positive analytic supplier theorem

```math
OriginalSmoothData\Longrightarrow ScaleCriticalTreeCarleson.A.
```

That supplier remains a separate square-reserve estimate.  The point of this note is the CM classification: unpaid scale-critical donor-refill ancestry is Pack exit, not a Field/Jump event and not a legal retained terminal packet.