# MPP Retained LPAS Active-Square Direct Attempt

## Status

`RetainedLPASActiveSquare.A` is not proved by the current theorem stack.

This pass attacks the next target left by
`mpp-retained-lifted-band-flux-transfer-direct-attempt-20260609.md`: prove the
lower-prefix active-square / CTS far-corona theorem with retained-terminal
localization errors carried.

## Target

The far-corona side of the retained lifted-band transfer needs the chain

```math
\mathrm{LPAS}
\Longrightarrow
\mathrm{CTS}
\Longrightarrow
\mathrm{FCTS}
\Longrightarrow
\mathrm{Car}
\Longrightarrow
\Pi_N^{mid,far,L},
```

or a sharper direct replacement for that chain.

The dyadic LPAS target is

```math
\int_0^T
\sum_{j\ge N}
\mathcal P_j^{\downarrow}(t)\,
2^{-j}D_j(t)^2\,dt
\le
\nu\int_0^T D_N(t)\,dt + C_*2^{-2\delta N},
\tag{LPAS}
```

where

```math
\mathcal P_j^{\downarrow}(t)
:=
\sum_{k\le j-C_1}E_k(t).
```

The retained version carries the same estimate after the retained terminal
chart localization and cutoff errors are accounted for. Those retained errors
are downstream of the fixed far-corona theorem; they do not prove `(LPAS)`.

## Direct LPAS check

The inherited Euclidean queue does not prove `(LPAS)`.

The obstruction is structural. The installed one-sided theorems control
upper-tail objects, while `(LPAS)` is lower-prefix times active-square:

```math
\sum_{k\le j-C_1}2^{-2k-j}D_k(t)D_j(t)^2.
```

Crude prefix collapse gives only a product of the raw `L_t^1` dissipation
ledger with an uncontrolled active-square density. Cauchy or Young
factorization still leaves the square `D_j^2` under the lower-prefix weight.

Dualizing the lower prefix reduces the target to an active-square upper-tail
Carleson theorem. That theorem would follow from an active-shell amplitude gain
on active intervals, but the installed active-shell attempts show that finite
energy, dissipation, and source-mass bounds still permit source-balanced active
pulses. The amplitude route therefore re-enters the source-pulse wall rather
than closing the far-corona branch.

So the direct LPAS route is not closed, and the active-shell route is not the
right primary continuation here.

## Hardy/Volterra check

The sharper far-corona route keeps the coupled two-scale density visible and
rewrites the direct stress quantity as a weighted one-sided Volterra square.
In logarithmic scale,

```math
F(s,t):=T_{e^s}(t),
\qquad
w(s,t):=a(e^s,t),
```

and `FCTS` becomes

```math
\int_0^T\int_I w(s,t)\,\|F(s,t)\|_{L_x^2}^2\,ds\,dt.
```

The scale-memory notes give two exact subtractions:

1. ordinary log-average subtraction, which converts the problem into control of
   the scale derivative of the active weight;
2. weighted-harmonic quotient subtraction, which isolates the weighted quotient
   seen by the active dissipation measure.

Neither closes from inherited Euclidean inputs alone. The first needs usable
control of `\partial_s w`. The second needs a theorem for the persistent
weighted quotient mode.

## Exact shrinkage

The persistent quotient audit shows that the only non-circular shrinkage is the
affine quotient route. The surviving coefficient is

```math
c_F(t)
=
A_\kappa M_0(t)+B_\kappa M_1(t),
```

where

```math
M_0(t):=\int_{s_0}^{s_1-\kappa}\widetilde Z(\sigma,t)\,d\sigma,
\qquad
M_1(t):=\int_{s_0}^{s_1-\kappa}\sigma\,\widetilde Z(\sigma,t)\,d\sigma.
```

This is smaller than the full lower-prefix mass. It is the affine quotient of
the one-sided scale source.

The current signed scale-descent mechanism still does not kill it. The signed
descent supplies first-order exactness,

```math
Y=\partial_\sigma\Psi+S^{spill}+E,
```

but the affine coefficient is blind to exact second derivatives, not merely
first derivatives. After one integration by parts, the scale-average of
`\Psi` survives. In addition, the live Volterra source `\widetilde Z` is the
positivized stress source, while the signed exactness is available before
positivity is taken.

## Verdict

`RetainedLPASActiveSquare.A` is reduced, not proved.

The exact next theorem burden is:

```math
\textbf{RetainedAffineQuotientSecondOrder.A}
\quad
\text{upgrade the far-corona affine quotient route to a retained theorem.}
```

Concretely, this means proving at least one of:

```math
\text{direct two-scale factorization }(F2S)\text{ on }\mathcal A_{\ell,r},
```

```math
\text{operator route }(DER)+(EP)\text{ for the weighted quotient mode,}
```

```math
\text{second-order scale exactness for the positive stress source }\widetilde Z,
```

```math
\text{or a potential-average kill theorem for the signed potential that also
transfers to the positive stress source.}
```

The retained chart-transfer errors remain downstream. They should be carried
after this affine / second-order far-corona theorem is proved or exactly split.

## Closure impact

This pass shrinks the retained far-corona obstruction:

```math
\text{RetainedLPASActiveSquare.A}
\Longleftarrow
\text{RetainedAffineQuotientSecondOrder.A}.
```

It does not close the retained Part-row tail input, does not close `(L-Flux)`,
and does not support PDF finality.
