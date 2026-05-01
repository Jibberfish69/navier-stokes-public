# BKM Conditional Comparison Route: SCFBase.Modulus And TowerBound.Upstream

## Status

Conditional comparison route.

## Hypothesis

Assume the BKM terminal criterion

```math
\int_{t_0}^{T_*}\|\omega(t)\|_{L^\infty}\,dt<\infty.
```

For smooth periodic data this gives high Sobolev continuation control:

```math
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty
```

for every finite route depth `s` required by the endpoint packet.

## Pack route

The previously recorded BKM route gives

```math
BKM\Longrightarrow Pack.TTU.
```

Thus

```math
\Gamma_{pack,Q}\in L^\infty([t_0,T_*)).
```

## SCFBase.Modulus route

High Sobolev control gives uniform local control of velocity derivatives and pressure carriers through the depth required by `SCF_base`. With bounded same-fluid geometry from `Pack.TTU`, the maps

```math
(a,t,r)\mapsto SCF_{base}(Q_r^\Phi(a,t))
```

have a terminal label-time-scale modulus. Hence

```math
BKM\Longrightarrow SCFBase.Modulus.
```

Consequently

```math
SCFBad.Persistence.Modulus
```

holds for strict SCF-bad points.

## TowerBound.Upstream route

High Sobolev control also gives the endpoint tower directly:

```math
\sup_{t<T_*}\sup_{Q_t}|U_k|<\infty
\qquad(0\le k\le N+2).
```

For pressure, use the local split

```math
p=p^{loc}+h,
\qquad
-\Delta p^{loc}=\partial_i\partial_j(\chi u_i u_j).
```

The local pressure source is bounded by the high Sobolev product carrier, and the harmonic tail is bounded by the energy ledger. Therefore

```math
\sup_{t<T_*}\sup_{Q_t}|\nabla^{k+1}p|<\infty
\qquad(0\le k\le N).
```

Since

```math
K_k=-\nabla^{k+1}p+\nu\Delta U_k,
```

we get

```math
\mathfrak A_{N,Q}\in L^\infty([t_0,T_*)).
```

Thus

```math
BKM\Longrightarrow TowerBound.Upstream.
```

## GoodScale consequence

The installed typing theorem says

```math
SCF\text{-bad}\Longrightarrow tower\text{-}blown.
```

The tower bound gives

```math
\neg tower\text{-}blown.
```

Therefore

```math
BKM\Longrightarrow GoodScale.TTU.
```

## Chain

```math
BKM
\Longrightarrow
Pack.TTU+SCFBase.Modulus+TowerBound.Upstream
\Longrightarrow
GoodScale.TTU
\Longrightarrow
TowerCover.TTU+Field.TTU.
```

## Boundary

This is a conditional comparison route. It does not prove the BKM hypothesis from original data. It identifies the exact strength needed to supply the missing terminal local-regularity scale.