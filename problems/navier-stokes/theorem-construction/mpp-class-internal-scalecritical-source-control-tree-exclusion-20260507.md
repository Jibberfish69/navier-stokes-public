# MPP Class-Internal Scale-Critical Source-Control Tree Exclusion

## Status

Installed as a noncircular class-internal source-control theorem.

This note proves the theorem that the current route can license without
reusing the desired source-wall conclusion:

```math
CM_{N,r,Q}
\Longrightarrow
\text{no terminal positive source reserve concentrates along an infinite
dyadic tree inside }Q.
```

Equivalently, an infinite terminal positive source-reserve tree is a
`Field`-face exit witness:

```math
\text{infinite terminal positive source-reserve tree}
\Longrightarrow
\neg Field_{N,r,Q}
\Longrightarrow
\neg CM_{N,r,Q}.
```

This is not the stronger open supplier theorem

```math
OriginalSmoothData\Longrightarrow ScaleCriticalTreeCarleson.A.
```

The proof below uses only the class witness rows `Pack_Q`, `Part_{N,Q}`, and
`Field_{N,r,Q}` after they are already available. It does not use
`ScaleCriticalTreeCarleson.A`, `SOURCE.NO-PULSE.A`,
`LocalPositiveSourceCarleson.A`, or any terminal no-pulse conclusion as an
input.

## Tree Object

Fix a retained terminal packet `Q` and a CM witness scale row
`CM_{N,r,Q}:=Part_{N,Q}\wedge Field_{N,r,Q}`.

A terminal positive source-reserve tree is a nested dyadic family
`\mathcal T` of same-fluid terminal packets with scales `k(P)\to\infty`
along every infinite branch and with nonnegative source densities `D_\ell(t)`
on each packet. Its active tail at level `k` is

```math
T_k(t):=\sum_{\ell>k+4}D_\ell(t).
```

It concentrates scale-critically along an infinite branch if for some
`\eta>0` there are nodes `P_m` with `k_m:=k(P_m)\to\infty` and heat windows
`I_m` inside the retained terminal window such that

```math
\int_{I_m}2^{k_m}T_{k_m}(t)^2\,dt\ge\eta
\tag{T.1}
```

for all `m`, after legal losses and bounded-overlap descendants are removed.
This is the branch-local negation of the vanishing tail required by
`ScaleCriticalTreeCarleson.A`.

## Theorem

```math
\boxed{
ClassInternalSourceTreeExclusion.A:
\quad
CM_{N,r,Q}
\Longrightarrow
\lim_{K\to\infty}
\sup_{\mathcal T\subset Q}
\int_{I_Q}\sum_{\substack{P\in\mathcal T\\k(P)\ge K}}
2^{k(P)}
\left(\sum_{\ell>k(P)+4}D_\ell(t)\right)^2dt=0.
}
```

In particular no terminal positive source reserve can concentrate along an
infinite dyadic tree inside a CM-witnessed NS-class packet `Q`.

## Proof

Assume `CM_{N,r,Q}` and suppose that an infinite concentrating tree exists.
By `Pack_Q`, retained dyadic packets have a finite deformation gauge and
bounded overlap after passing to the retained subpack. Thus the branch
subsequence in `(T.1)` may be chosen with pairwise essentially disjoint heat
windows or with a uniformly bounded overlap constant. This changes `\eta`
only by a fixed class constant.

By `Part_{N,Q}`, the active positive carrier is a carrier of the same
differentiated Navier-Stokes law on every retained node:

```math
D_tU_k=K_k+B_k,
\qquad
K_k=-\nabla^{k+1}p+\nu\Delta U_k.
\tag{T.2}
```

Hence the source density cannot be removed by changing equations, deleting the
pressure-viscosity participation row, or moving the packet outside the
same-fluid terminal law. It must appear as a genuine retained source-response
term in the finite-difference readout used by `Field_{N,r,Q}`.

For a node at scale `k`, let the heat time satisfy
`c_h2^{-2k}\le h_k\le C_h2^{-2k}` and let `\delta_k` be the neighboring
spatial increment in the retained field readout.
The Duhamel response of `(T.2)` on the heat window gives the lower bound

```math
|\delta_k U|^2
\ge c_U
h_k^2 T_k(t)^2
-
Loss_{legal,k}(t)
```

on a subwindow selected by the positive part of the source carrier. Multiplying
by the class-critical field normalization `2^{3k}` and integrating over the
heat window gives

```math
\int_{I_m}
2^{3k_m}|\delta_{k_m}U|^2\,dt
\ge c_F
\int_{I_m}2^{k_m}T_{k_m}(t)^2\,dt
-
Loss_{legal}(I_m).
\tag{T.3}
```

The exponent is the parabolic one: two powers of heat time convert source to
field response, and the retained one-field normalization restores exactly the
scale-critical square reserve `2^kT_k^2`. No Carleson theorem is used here;
`(T.3)` is the local Duhamel lower response of a positive same-fluid carrier
inside the already-retained class packet.

After discarding the finitely priced legal-loss windows, `(T.1)` and `(T.3)`
give

```math
\int_{I_m}
2^{3k_m}|\delta_{k_m}U|^2\,dt
\ge c\eta
\tag{T.4}
```

for infinitely many retained scales.

But `Field_{N,r,Q}` is precisely the one-field coherence row for retained
neighboring differences. It requires the normalized field defect on retained
tails to vanish as the dyadic scale tends to infinity:

```math
\lim_{K\to\infty}
\int_{I_Q}\sum_{k\ge K}
2^{3k}|\delta_kU|^2\,dt=0
\quad
\text{modulo declared legal losses.}
\tag{T.5}
```

The infinitely many lower bounds `(T.4)` contradict `(T.5)`. Therefore the
assumed infinite concentrating positive source-reserve tree cannot coexist
with `Field_{N,r,Q}`. Since `CM_{N,r,Q}` includes `Field_{N,r,Q}`, it cannot
coexist with `CM_{N,r,Q}`; and along the installed witness-to-member direction
`CM=>Member`, it cannot be present inside a CM-witnessed NS-class member packet.

This proves `ClassInternalSourceTreeExclusion.A`.

## Noncircularity Audit

The proof uses:

- `Pack_Q`: bounded retained packet geometry and finite overlap;
- `Part_{N,Q}`: the source is a same-fluid differentiated NS carrier;
- `Field_{N,r,Q}`: normalized retained neighboring-field defects vanish;
- local Duhamel positivity for a retained positive source carrier.

It does not use:

- `ScaleCriticalTreeCarleson.A`;
- `LocalPositiveSourceCarleson.A`;
- `PositiveSourceDepletion.A`;
- `SOURCE.NO-PULSE.A`;
- `SourcePulseExclusion.A`;
- the conclusion that terminal positive source mass is absent.

So the theorem is noncircular, but class-internal. It proves:

```math
CM\text{-witnessed class membership forbids infinite scale-critical positive
source-tree concentration.}
```

It does not by itself prove:

```math
OriginalSmoothData\Longrightarrow CM_{N,r,Q}
```

or the stronger direct supplier wall

```math
OriginalSmoothData\Longrightarrow ScaleCriticalTreeCarleson.A.
```

The remaining source-wall root is therefore sharpened, not erased: any future
direct proof must either construct the CM witness rows first, or prove the open
supplier theorem that original smooth data forces the same source-tree
Carleson vanishing before class membership has been granted.
