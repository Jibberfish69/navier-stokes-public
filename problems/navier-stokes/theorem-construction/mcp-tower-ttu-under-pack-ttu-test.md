# Tower.TTU Under Pack.TTU Test

## Status

Failed unconditional discharge; conditional tower readout recorded.

## Target

```math
Tower.TTU:
OriginalSmoothData+Pack.TTU
\Longrightarrow
\mathfrak A_{N,Q}\in L^\infty([t_0,T_*)).
```

where

```math
\mathfrak A_{N,Q}(t)
:=
\sup_{x\in Q_t}\sum_{k=0}^{N}(|U_k(x,t)|+|K_k(x,t)|).
```

## Conditional readout that works

Assume a finite fixed same-fluid terminal readout cover with positive lower scale:

```math
Q_t\subset\bigcup_{i=1}^{J_Q}B(c_i(t),R_i/2),
\qquad
r_*:=\min_i R_i>0.
```

Assume `ATD_m^\varepsilon` on the shrunken cover elements at depth

```math
m\ge N+2.
```

Then local Sobolev/Morrey gives, for `0\le k\le N+2`,

```math
\sup_{t<T_*}\sup_i\|U_k(t)\|_{L^\infty(B_i')}<\infty.
```

For forcing rungs use

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q.
```

The viscous term is controlled by `U_{q+2}`. This is the reason for depth `N+2`.

For pressure, on each cover element split

```math
p=p_i^{loc}+h_i,
\qquad
-\Delta p_i^{loc}=\partial_a\partial_b(\chi_i u_a u_b).
```

The local estimate gives

```math
\|\nabla^{q+1}p_i^{loc}\|_{L^\infty(B_i')}
\le
C_{q,\alpha,i}\|\nabla^q(\chi_i u\otimes u)\|_{C^{0,\alpha}(2B_i)}.
```

`ATD_m^\varepsilon` supplies the product-source carrier on the fixed cover. The harmonic tail satisfies

```math
\|\nabla^{q+1}h_i\|_{L^\infty(B_i')}
\le C_{q,i}\|u_0\|_{L^2}^2.
```

Thus

```math
\sup_{t<T_*}\sup_i\sup_{0\le q\le N}\|K_q(t)\|_{L^\infty(B_i')}<\infty.
```

Finite cover summation yields

```math
\mathfrak A_{N,Q}\in L^\infty([t_0,T_*)).
```

So the conditional theorem is

```math
READ.COVER+ATD_m^\varepsilon+DTC.Read\Longrightarrow Tower.TTU.
```

## Test under Pack.TTU

`Pack.TTU` gives

```math
\Gamma_{pack,Q}\in L^\infty([t_0,T_*)).
```

This stabilizes deformation geometry and prevents packing detachment. It supplies bounded same-fluid distortion and leaves finite-cover transport as the next conditional step once a positive-scale cover is already present.

It does not supply the derivative tower packet

```math
ATD_m^\varepsilon
```

on a terminal positive-scale cover. It also does not supply the product-source carrier needed by the local pressure estimate.

Therefore

```math
OriginalSmoothData+Pack.TTU
```

still lacks the local finite-depth regularity/readout input required for

```math
\mathfrak A_{N,Q}\in L^\infty([t_0,T_*)).
```

## Result

`Tower.TTU` remains open under `OriginalSmoothData+Pack.TTU` alone.

The next required theorem is a terminal local-regularity cover theorem:

```math
TowerCover.TTU:
OriginalSmoothData+Pack.TTU
\Longrightarrow
READ.COVER+ATD_m^\varepsilon
\quad\text{on a terminal positive-scale same-fluid cover.}
```

Once `TowerCover.TTU` is supplied, the conditional readout above gives

```math
Tower.TTU.
```

## Boundary

Pack gauge controls geometry of material deformation. Tower control requires finite-depth local regularity and pressure/viscous readout on a positive-scale terminal cover. These are separate theorem burdens.
