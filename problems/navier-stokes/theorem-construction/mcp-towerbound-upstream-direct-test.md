# TowerBound.Upstream Direct Test

## Status

Failed direct discharge; exact obstruction isolated.

## Target

```math
TowerBound.Upstream:
OriginalSmoothData+Pack.TTU
\Longrightarrow
\neg tower\text{-}blown.
```

Equivalently,

```math
OriginalSmoothData+Pack.TTU
\Longrightarrow
\mathfrak A_{N,Q}\in L^\infty([t_0,T_*)).
```

## Tower decomposition

The endpoint tower amplitude is

```math
\mathfrak A_{N,Q}(t)
:=
\sup_{x\in Q_t}
\sum_{k=0}^{N}(|U_k(x,t)|+|K_k(x,t)|).
```

The forcing rung is

```math
K_k=-\nabla^{k+1}p+\nu\Delta U_k.
```

Thus the target splits into:

```math
\sup_{t<T_*}\sup_{Q_t}|U_k|<\infty
\qquad(0\le k\le N),
```

and

```math
\sup_{t<T_*}\sup_{Q_t}|\nabla^{k+1}p|<\infty,
\qquad
\sup_{t<T_*}\sup_{Q_t}|U_{k+2}|<\infty
\qquad(0\le k\le N).
```

So the pressure/viscous readout effectively requires velocity depth at least `N+2`.

## Velocity tower test

`OriginalSmoothData` gives a maximal smooth solution on compact subintervals below `T_*`. Therefore, for every `T_0<T_*`,

```math
\sup_{t\le T_0}\sup_{Q_t}|U_k|<\infty.
```

But `TowerBound.Upstream` needs the terminal-tail bound

```math
\sup_{t<T_*}\sup_{Q_t}|U_k|<\infty.
```

`Pack.TTU` supplies bounded same-fluid geometry:

```math
\Gamma_{pack,Q}\in L^\infty([t_0,T_*)).
```

This controls deformation of the moving packet. It does not control velocity derivatives on that packet. Thus

```math
OriginalSmoothData+Pack.TTU
```

currently does not supply the terminal velocity tower.

## Pressure readout test

Use the local pressure split

```math
p=p^{loc}+h,
\qquad
-\Delta p^{loc}=\partial_i\partial_j(\chi u_i u_j).
```

The local Calderon-Zygmund/Schauder estimate has the form

```math
\|\nabla^{k+1}p^{loc}\|_{L^\infty(B')}
\le
C\|\nabla^k(\chi u\otimes u)\|_{C^{0,\alpha}(2B)}.
```

The harmonic tail satisfies

```math
\|\nabla^{k+1}h\|_{L^\infty(B')}
\le C\|u_0\|_{L^2}^2.
```

The tail is controlled by energy. The local pressure part requires the product-source carrier, hence finite velocity tower / local regularity on a positive-scale cover.

Therefore pressure readout is blocked by the same missing terminal local regularity.

## Conditional route that works

The known conditional tower route is

```math
READ.COVER+ATD_m^\varepsilon+DTC.Read
\Longrightarrow
\mathfrak A_{N,Q}\in L^\infty([t_0,T_*)).
```

But

```math
READ.COVER+ATD_m^\varepsilon
```

is downstream of `GoodScale.TTU`; it cannot be used to prove `GoodScale.TTU` through `TowerBound.Upstream`.

## Exact obstruction

The direct proof bottoms out at

```math
OriginalSmoothData+Pack.TTU
\not\Rightarrow
\sup_{t<T_*}\sup_{Q_t}|U_k|<\infty
```

for the required tower depth.

Equivalently, the missing supplier is terminal local regularity on a positive-scale same-fluid cover.

Viable supplier targets are:

```math
SCFBase.Modulus,
\qquad
SCFBase.FiniteComplexity,
\qquad
SCFBad.Persistence.Modulus,
\qquad
BKM.TTU,
```

or a direct high-regularity terminal ledger.

## Consequence for GoodScale

The already installed upgrade says

```math
SCF\text{-}bad\Longrightarrow tower\text{-}blown.
```

If `TowerBound.Upstream` were proved, then

```math
\neg tower\text{-}blown
+
(SCF\text{-}bad\Rightarrow tower\text{-}blown)
\Longrightarrow
GoodScale.TTU.
```

Since `TowerBound.Upstream` is still open, `GoodScale.TTU` remains open through this route.

## Verdict

`TowerBound.Upstream` remains open. The exact blocker is missing terminal velocity tower / local regularity scale; the pressure tower is downstream of the same missing input.