# DTC.Read At Full Endpoint Depth Implies DTC-to-TowerBound

## Status

Conditional endpoint-depth compatibility theorem.

## Statement

Assume

```math
DTC.A_{avg}+READ.COVER+ATD_m^\varepsilon
```

with readout depth at least `N+2` on the finite cover. Then

```math
DTC.Read\Longrightarrow DTC.A\Longrightarrow DTC\text{-}to\text{-}TowerBound\Longrightarrow END.TowerAmp\Longrightarrow END.TowerBound.
```

## Fixed Cover

Use the same finite positive-scale same-fluid cover supplied by `READ.COVER`:

```math
Q_t\subset\bigcup_{i=1}^{J_Q}B(c_i(t),R_i/2).
```

No second endpoint cover is introduced.

On each cover element, `ATD_m^\varepsilon` gives the finite-depth pointwise readout after `DTC.Read`.

## Velocity Tower Readout

For every `0\le k\le N`, local Sobolev/Morrey on the fixed cover gives

```math
\sup_{B(c_i(t),R_i/2)}|U_k|<\infty.
```

Finite cover summation gives the `U_k` half of the tower amplitude on `Q_t`.

## Forcing Tower Readout

For the forcing rung,

```math
K_k=-\nabla^{k+1}p+\nu\Delta U_k.
```

The viscous term is a contraction of `U_{k+2}`. Therefore depth at least `N+2` is required and sufficient for all `0\le k\le N`:

```math
\sup_{B(c_i(t),R_i/2)}|\Delta U_k|
\le C_k\sup_{B(c_i(t),R_i/2)}|U_{k+2}|.
```

The pressure term uses the already verified local Poisson readout on the same cover:

```math
p=p_i^{loc}+h_i,
\qquad
-\Delta p_i^{loc}=\partial_a\partial_b(\chi_i u_a u_b).
```

The local part satisfies

```math
\|\nabla^{k+1}p_i^{loc}\|_{L^\infty(B_i')}
\le C_{k,\alpha,i}\|\nabla^k(\chi_i u\otimes u)\|_{C^{0,\alpha}(2B_i)}.
```

The harmonic tail satisfies

```math
\|\nabla^{k+1}h_i\|_{L^\infty(B_i')}
\le C_{k,i}\|u_0\|_{L^2}^2.
```

`ATD_m^\varepsilon` supplies the product-source carrier and the ordinary energy ledger supplies the tail. Thus

```math
\sup_{B(c_i(t),R_i/2)}|\nabla^{k+1}p|<\infty.
```

Combining pressure and viscous pieces gives

```math
\sup_{B(c_i(t),R_i/2)}|K_k|<\infty
\qquad(0\le k\le N).
```

## Tower Amplitude

Finite cover summation yields

```math
\mathfrak A_{N,Q}(t)
:=
\sup_{x\in Q_t}\sum_{k=0}^{N}(|U_k(x,t)|+|K_k(x,t)|)
\in L^\infty(I).
```

This is

```math
END.TowerAmp.
```

The endpoint definition-level cell gives

```math
END.TowerAmp\Longrightarrow END.TowerBound.
```

## Output

```math
DTC.A_{avg}+READ.COVER+ATD_m^\varepsilon\Longrightarrow DTC.A\Longrightarrow DTC\text{-}to\text{-}TowerBound\Longrightarrow END.TowerBound.
```

## Boundary

The route uses pointwise `DTC.A` only after `DTC.Read`. The endpoint tower uses the same finite cover and the same depth `N+2`; it does not introduce an independent pressure or tower readout.