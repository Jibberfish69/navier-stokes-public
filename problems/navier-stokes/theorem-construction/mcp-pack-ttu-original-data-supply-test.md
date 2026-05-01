# Pack.TTU Original-Data Supply Test

## Status

Failed direct supply test.

## Target

```math
Pack.TTU:
OriginalSmoothData
\Longrightarrow
S_{pack,Q}\in L^1([t_0,T_*))
\Longrightarrow
\Gamma_{pack,Q}\in L^\infty([t_0,T_*)).
```

The conditional second implication is already installed. The test here concerns the first implication.

## Ledger

```math
S_{pack,Q}(t)
:=
\sup_{a\in A_Q(t)}
\|\operatorname{sym}\nabla u(\Phi(a,t),t)\|_{op}.
```

This is a supremal material-line strain ledger.

## Original-data output available

Original smooth data gives a maximal classical solution on `[0,T_*)`. On compact subintervals below `T_*`, all retained smooth ledgers are finite.

The global finite-energy ledger gives

```math
u\in L_t^\infty L_x^2,
\qquad
\nabla u\in L^2_{t,x}.
```

These are spatial/spacetime integral controls.

## Failure mechanism

`S_pack,Q` is a terminal-tail supremum over material labels. A localized high-strain region can have small spatial measure and finite `L^2` footprint while producing large pointwise symmetric strain along any label passing through that region.

Thus the energy/enstrophy package fails to control

```math
\sup_{a\in A_Q(t)}\|\operatorname{sym}\nabla u(\Phi(a,t),t)\|_{op}
```

in `L^1_t` on the terminal tail.

Compact-time classical smoothness also fails to give a uniform terminal-tail bound as `t\uparrow T_*`; that is exactly the continuation problem.

## Verdict

The direct implication

```math
OriginalSmoothData\Longrightarrow S_{pack,Q}\in L^1([t_0,T_*))
```

remains open.

`Pack.TTU` stays the first upstream blocker beneath `TTU.A`.

## Next target

Search for a non-BKM strain mechanism weaker than

```math
\int_{t_0}^{T_*}\|\nabla u(t)\|_{L^\infty}\,dt<\infty
```

that still controls the material supremum ledger `S_pack,Q`.