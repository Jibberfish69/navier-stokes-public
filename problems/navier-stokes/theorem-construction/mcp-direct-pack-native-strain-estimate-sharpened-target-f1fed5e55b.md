# Direct Pack-Native Strain Estimate: Sharpened Target

## Status

Direct pack-route attempt. This note sharpens the exact strain estimate needed to control terminal pack gauge without passing through the averaged route.

## Pack-Gronwall Identity

Let `X(a,t)` be the same-fluid flow map and

```math
F(a,t)=\nabla_aX(a,t).
```

Then

```math
\frac{d}{dt}F(a,t)=\nabla u(X(a,t),t)F(a,t),
```

and

```math
\frac{d}{dt}F(a,t)^{-1}=-F(a,t)^{-1}\nabla u(X(a,t),t).
```

Therefore any coefficient `S_{pack,Q}` satisfying

```math
\sup_{a\in A_Q(t)}\|\nabla u(X(a,t),t)\|\le S_{pack,Q}(t)
```

gives

```math
\Gamma_{pack,Q}(t)\le \Gamma_{pack,Q}(0)
\exp\left(\int_0^tS_{pack,Q}(s)ds\right).
```

## Direct Target `PackStrain.A`

A direct pack-native proof needs

```math
PackStrain.A:\qquad S_{pack,Q}\in L^1(0,T_*).
```

A full-strain choice is

```math
S_{pack,Q}(t)=\|\nabla u(t)\|_{L^\infty}.
```

This closes the pack gauge, and it is continuation-grade.

## Sharper Candidate 1: Logarithmic Vorticity Strain

The BKM-type route suggests

```math
S_{pack,Q}(t)
\le C_{pack}
1+\|\omega(t)\|_{L^\infty}\log\left(e+\|u(t)\|_{H^s}\right).
```

This is useful only if the route supplies

```math
\int_0^{T_*}\|\omega(t)\|_{L^\infty}\log(e+\|u(t)\|_{H^s})dt<\infty.
```

That estimate is again continuation-grade unless the logarithmic factor is controlled by a separate tower route.

## Sharper Candidate 2: Pack-Localized Strain

Define a localized coefficient on the same-fluid packet:

```math
S_{pack,Q}^{loc}(t):=\\sup_{a\in A_Q(t)}|S(u)(X(a,t),t)|,
\qquad
S(u)=\frac12(\nabla u+\nabla u^T).
```

Since the antisymmetric part rotates without changing singular values, singular-value growth obeys

```math
\frac{d}{dt}\log \sigma_{max}(F(a,t))\le |S(u)(X(a,t),t)|.
```

Thus `S_pack,Q^{loc}\in L^1` suffices. This is the sharpest pack-native coefficient: it removes pure rotation from the budget.

## Sharper Candidate 3: Alignment-Depleted Strain

If the retained packet has a preferred stretching direction `e(a,t)`, one may try

```math
S_{pack,Q}^{align}(t):=\sup_{a\in A_Q(t)} e(a,t)\cdot S(u)(X(a,t),t)e(a,t).
```

This coefficient controls the largest singular value along the actual stretching
direction. The missing proof inputs are a closed equation for the direction
field and an integrable bound for the positive part of the aligned strain.

## Obstruction

Energy and enstrophy give

```math
u\in L_t^\infty L_x^2,
\qquad
\nabla u\in L^2_{t,x}.
```

They do not imply any of the three required terminal budgets:

```math
\int_0^{T_*}\|\nabla u\|_{L^\infty}dt<\infty,
```

```math
\int_0^{T_*}S_{pack,Q}^{loc}(t)dt<\infty,
```

or

```math
\int_0^{T_*}(S_{pack,Q}^{align})_+(t)dt<\infty.
```

## Verdict

The direct pack-native route is sharpened to the strain-depletion theorem:

```math
OriginalSmoothData\Longrightarrow
\int_0^{T_*}S_{pack,Q}^{loc}(t)dt<\infty
```

or the still sharper aligned-positive-strain version. This remains open. The conditional pack-Gronwall implication is proved, and the missing work is now localized to a genuine pack-native strain depletion estimate.
