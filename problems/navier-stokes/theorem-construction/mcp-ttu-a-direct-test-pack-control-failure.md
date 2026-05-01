# TTU.A Direct Test — Pack-Control Failure

## Status

Failed direct theorem attempt.

## Target

```math
TTU.A:
OriginalSmoothData
\Longrightarrow
\text{uniform terminal-tail positive-scale SCF-good finite cover}.
```

The cover must carry the retained/readout package through the terminal interval:

```math
RSCB.NKF,
\qquad
\Gamma_{pack,Q}\in L^\infty([t_0,T_*)),
\qquad
ACT.X\text{-}Scale,
\qquad
RWS.C_{scale}.
```

## Compact-Window Result

Original smooth data produces a maximal classical solution on `[0,T_*)`. On every compact interval

```math
[0,T_0]\Subset[0,T_*),
```

classical regularity supplies retained center-ball smoothness, bounded pack gauge, scale seeds, and finite same-fluid covers.

Thus compact-window retained admission holds.

## Terminal-Tail Test

The terminal-tail pack gauge obeys the flow-gradient inequality

```math
\Gamma_{pack,Q}(t)
\le
\Gamma_{pack,Q}(t_0)
\exp\left(
\int_{t_0}^{t}\|\nabla u(s)\|_{L^\infty(Q_s)}\,ds
\right).
```

A terminal pack bound follows from

```math
\int_{t_0}^{T_*}\|\nabla u(s)\|_{L^\infty}\,ds<\infty
```

or from an equivalent pack-native strain budget.

Original smooth data alone gives energy-class controls and compact-window smoothness. The terminal Lipschitz integral is continuation-grade information.

## Failed Substitutes

Incompressibility gives

```math
\det \nabla_a\Phi=1.
```

This controls volume, while the pack gauge controls singular values and inverse singular values.

Energy/enstrophy gives

```math
u\in L_t^\infty L_x^2,
\qquad
\nabla u\in L^2_{t,x}.
```

These do not supply the terminal strain budget above.

The endpoint matrix removes endpoint faces after terminal inputs are available. It cannot produce the pack gauge needed as an input to the same endpoint matrix.

## Obstruction

The direct proof of `TTU.A` fails at terminal pack control:

```math
OriginalSmoothData
\Longrightarrow
\Gamma_{pack,Q}\in L^\infty([t_0,T_*))
```

is open.

The exact missing theorem is

```math
Pack.TTU:
OriginalSmoothData
\Longrightarrow
\int_{t_0}^{T_*}S_{pack,Q}(t)\,dt<\infty,
```

where `S_{pack,Q}` controls the logarithmic growth of both `\|\nabla_a\Phi\|` and `\|\nabla_a\Phi^{-1}\|` on the terminal same-fluid tail.

## Verdict

`TTU.A` remains open. The direct test identifies terminal pack control as the first hard subtarget.