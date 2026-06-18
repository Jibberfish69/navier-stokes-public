# Pack.TTU Energy/Enstrophy Strain Test

## Status

Failed finite-energy discharge.

## Target

The conditional pack theorem requires

```math
S_{pack,Q}\in L^1([t_0,T_*)),
```

where

```math
S_{pack,Q}(t)=
\sup_{a\in A_Q(t)}
\left\|\frac12(\nabla u+\nabla u^T)(\Phi(a,t),t)\right\|_{op}.
```

## Available energy/enstrophy controls

The Leray energy class supplies

```math
u\in L_t^\infty L_x^2,
\qquad
\nabla u\in L^2_{t,x},
```

and equivalently, on the periodic divergence-free branch,

```math
\omega\in L^2_{t,x}.
```

These are spacetime `L^2` controls.

## Scaling test

The pack ledger is spatial `L^\infty` along the active same-fluid packet. A localized high-frequency / high-amplitude strain packet can keep `L^2_x` mass finite while its pointwise operator norm becomes arbitrarily large on a small spatial set.

For a smooth divergence-free test field localized at scale `r`, the model assumes
the pointwise gradient bound

```math
|\nabla u_r|\le C_A A_r r^{-1}
```

on volume `r^3`, while

```math
c_E A_r^2 r\le \|\nabla u_r\|_{L^2}^2\le C_E A_r^2 r.
```

Choosing `A_r` so that `A_r^2 r` stays bounded leaves

```math
\|\nabla u_r\|_{L^\infty}\ge c_\infty r^{-3/2}
```

unbounded as `r\downarrow0`.

Thus an `L^2_x` strain/enstrophy bound gives no uniform pointwise control of `S_{pack,Q}`.

## Vorticity/stretching quantities from energy class

The vorticity equation gives the stretching density

```math
\omega\cdot S\omega.
```

Energy/enstrophy controls do not produce

```math
\|S\|_{L^\infty_x}
```

or

```math
\|\omega\|_{L^\infty_x}.
```

The Biot-Savart/Riesz relation gives `\nabla u` from `\omega` through a singular integral. It is bounded on `L^p` for finite `1<p<\infty`, while it does not turn `L^2` vorticity into `L^\infty` strain.

## Verdict

The finite-energy/enstrophy package does not imply

```math
S_{pack,Q}\in L^1([t_0,T_*)).
```

Therefore it does not close `Pack.TTU`.

## Next test

The next admissible continuation criterion is the Beale-Kato-Majda type condition

```math
\int_{t_0}^{T_*}\|\omega(t)\|_{L^\infty}\,dt<\infty.
```

This can control the pack strain only with the usual logarithmic high-norm accompaniment or an equivalent continuation ledger.
