# MPP Square Reserve Evolution Direct Solve Attempt

## Status

Claimed status: failed.

This note attempts the direct Row 6 source-wall target after rows 1--4 and `ParentSquareEmbed.A` have reduced the endpoint obstruction to the scale-critical square reserve.

## Target

The target theorem is

```math
SquareReserveEvolution.A:
\quad
\mathcal R_N(W)
\le
Charge(W)+(1-\delta)\mathcal R_N(Past(W))+Loss_{legal}+o_N(1),
```

where

```math
\mathcal R_N(W)
:=
\int_W
\sum_{k>N}2^k
\left(\sum_{\ell>k+4}D_\ell(t)\right)^2dt.
```

A proof of the displayed square-reserve inequality is sufficient for
`ScaleCriticalTreeCarleson.A` by first-pulse iteration: the first pulse has no
earlier reserve to recycle, and the installed energy tail gives

```math
\int\sum_{\ell>N}D_\ell(t)dt\to0.
```

## Direct attempt

Let

```math
T_k(t):=\sum_{\ell>k+4}D_\ell(t),
\qquad
S_N(t):=\sum_{k>N}2^kT_k(t)^2.
```

The desired estimate requires a mechanism that turns the positive density `S_N` into charge plus a contractive past term. The only currently installed scalar tail input is the first moment

```math
F_N(t):=\sum_{\ell>N}D_\ell(t),

a_N:=\int_W F_N(t)dt=o_N(1)
```

on terminal high-frequency windows.

One can estimate

```math
T_k(t)\le F_N(t)
```

for every `k>N`, hence

```math
S_N(t)\le F_N(t)^2\sum_{k>N}2^k,
```

which diverges. Truncating at a finite top scale `L` gives

```math
\sum_{N<k<L}2^kT_k(t)^2
\le 2^L F_N(t)^2,
```

which requires a time-square control of `F_N`, or an amplitude cap, or a heat-window lower-bound for pulse duration. The first moment alone supplies none of these.

The Hardy expansion shows the exact same obstruction:

```math
S_N(t):=
\sum_{\ell,m>N}2^{\min(\ell,m)}D_\ell(t)D_m(t).
```

Controlling the integral of this expression from `\int F_N` requires an additional theorem that prices simultaneous high-frequency donor mass quadratically.

## First-pulse test

Assume the first-pulse strategy selects a window `W` with

```math
\mathcal R_N(W)\ge \eta>0,
\qquad
\mathcal R_N(Past(W))<\eta.
```

To close, the proof must establish

```math
\mathcal R_N(W)
\le Charge(W)+(1-\delta)\mathcal R_N(Past(W))+Loss_{legal}+o_N(1).
```

The installed charge law controls first-moment dissipation-type quantities. Model the donor tail on a short terminal window `I_m` by

```math
D_{m+5}(t)=A_mh_m^{-1}{\bf 1}_{I_m}(t),
\qquad
D_\ell(t)=0\quad(\ell\ne m+5).
```

Then

```math
\int_{I_m}\sum_{\ell>N}D_\ell(t)dt=A_m.
```

The `k=m` contribution to the square reserve is

```math
\int_{I_m}2^mT_m(t)^2dt
=2^mA_m^2h_m^{-1}.
```

Choose

```math
A_m\to0,
\qquad
h_m:=2^mA_m^2/\eta.
```

Then

```math
\int_{I_m}\sum_{\ell>N}D_\ell(t)dt\to0,
\qquad
\int_{I_m}2^mT_m(t)^2dt=\eta.
```

This scalar model is compatible with every first-moment-only tail ledger and defeats any proof that tries to derive the square reserve from first moment plus firstness alone.

## Why `ParentSquareEmbed.A` does not supply evolution

`ParentSquareEmbed.A` is the static operator estimate

```math
\sum_P
\left|
\sum_{P^-\prec P}K(P,P^-)a_{P^-}
\right|^2
\le C\sum_{P^-}|a_{P^-}|^2+o_N(1).
```

After Cauchy and Young, the positive source packet becomes

```math
PositiveSource_N
\le
\theta D_N+C_\theta\sum_{P^-}|A_{P^-}|^2+Loss_{legal}+o_N(1).
```

The remaining term is exactly `\mathcal R_N`. The embedding prices diffuse parentage into the donor square reserve. It supplies no derivative, no monotonicity, no time thickness, and no charge alternative for `\mathcal R_N` itself.

## Verdict

The direct proof of `SquareReserveEvolution.A` from the currently installed Row 1--4 reductions, energy first moment, and `ParentSquareEmbed.A` fails.

The missing mathematical input is one of the following independent theorems.

### Option A: donor amplitude / time-thickness theorem

For every terminal donor pulse at active scale `k`, prove a lower bound of the form

```math
|I|\ge c_I2^k\left(\int_I T_k(t)dt\right)^2/Charge(I),
```

or an equivalent estimate implying

```math
\int_I2^kT_k(t)^2dt\le C_QCharge(I)+o_N(1).
```

### Option B: signed square-reserve evolution theorem

Prove a signed identity whose positive residual is the reserve density and whose main term telescopes:

```math
S_N(t)=\partial_t\Phi_N(t)+\mathcal D_N^{good}(t)+\mathcal E_N(t),
```

with

```math
\int|\mathcal E_N|\le o_N(1)+Loss_{legal},
\qquad
\Phi_N\text{ boundary-controlled}.
```

### Option C: Zeno rigid-class contradiction

Prove

```math
\mathcal R_N\not\to0
\Rightarrow
\text{terminal Zeno donor-pulse class}
\Rightarrow
ZenoBoundedClass_B.A
\Rightarrow
ZenoResidueLiouville_B.A
\Rightarrow
\bot.
```

## Closure impact

This failure leaves Row 6 open. Since Row 5 source legality requires the same square reserve after `ParentSquareEmbed.A`, Row 5 remains conditional on a new source-wall theorem. Rows 1--4 remain valid reductions and implication criteria, with their terminal contradiction still routed through Row 5 / Row 6.
