# Pack.TTU Weaker Pack-Native Substitute Test

## Status

Failed substitute search.

## Starting point

The conditional pack lemma uses

```math
S_{pack,Q}(t)
:=
\sup_{a\in A_Q(t)}\|\operatorname{sym}\nabla u(\Phi(a,t),t)\|_{op}.
```

and proves

```math
\int_{t_0}^{T_*}S_{pack,Q}(t)dt<\infty
\Longrightarrow
\Gamma_{pack,Q}\in L^\infty([t_0,T_*)).
```

This already improves the full Lipschitz ledger by discarding pure rotation.

## Candidate 1: positive strain only

For forward stretching,

```math
\frac{d}{dt}|Fv|^2
=2\langle S Fv,Fv\rangle
\le 2\lambda_+(S)|Fv|^2.
```

So the forward singular-value ledger can use

```math
S_{pack,Q}^+(t):=
\sup_a \lambda_{max}(S(\Phi(a,t),t)).
```

The inverse pack gauge also requires a lower singular-value bound. That lower bound uses

```math
-S_{pack,Q}^-(t):=
\inf_a\lambda_{min}(S(\Phi(a,t),t)).
```

Thus the combined pack gauge requires

```math
S_{pack,Q}^{\pm}(t)
:=
\sup_a\max\{\lambda_{max}(S),-\lambda_{min}(S)\}.
```

This is exactly the operator-norm symmetric strain ledger already defined.

## Candidate 2: label-averaged strain

A label-averaged ledger such as

```math
\int_{A_Q}|S(\Phi(a,t),t)|da
```

controls average deformation. The endpoint pack gauge is a supremum over active labels:

```math
\Gamma_{pack,Q}(t)=\sup_a\max\{\|F(a,t)\|,\|F(a,t)^{-1}\|\}.
```

A thin packet of labels can carry arbitrarily large stretching while the label average stays finite. The endpoint cover requires uniform positive lower scale, so average label control cannot replace the supremum ledger.

## Candidate 3: determinant / volume preservation

Incompressibility gives

```math
\det F=1.
```

This fixes the product of singular values. The pack gauge needs the largest singular value and reciprocal smallest singular value. A volume-preserving shear/stretch can keep determinant one while pack eccentricity grows.

## Candidate 4: finite-energy localized strain

Energy/enstrophy controls

```math
\nabla u\in L^2_{t,x}.
```

The pack gauge follows a material supremum. Localized high strain on small spacetime sets can preserve the `L^2` budget while producing large pointwise singular-value growth for labels crossing the set.

## Result

The weakest currently valid pack-native ledger is

```math
S_{pack,Q}(t)=
\sup_{a\in A_Q(t)}\|\operatorname{sym}\nabla u(\Phi(a,t),t)\|_{op}.
```

A weaker finite-energy substitute has not been found in the current route.

## Remaining target

```math
OriginalSmoothData
\Longrightarrow
S_{pack,Q}\in L^1([t_0,T_*))
```

remains the pack-control obstruction.