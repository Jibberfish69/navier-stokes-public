# BKM Side Packet: SCFBase.Modulus To End_NS

## Status

Conditional comparison theorem.

## Hypothesis

Assume

```math
\int_{t_0}^{T_*}\|\omega(t)\|_{L^\infty}\,dt<\infty.
```

The BKM criterion gives high Sobolev control through every finite route depth:

```math
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty.
```

## Consequences

High Sobolev control supplies:

```math
Pack.TTU,
```

```math
SCFBase.Modulus,
```

and

```math
TowerBound.Upstream:
\mathfrak A_{N,Q}\in L^\infty([t_0,T_*)).
```

For the pressure term, use

```math
p=p^{loc}+h,
\qquad
-\Delta p^{loc}=\partial_i\partial_j(\chi u_i u_j).
```

The high Sobolev bound supplies the product-source carrier for `p^{loc}`. Energy controls the harmonic tail `h`.

## GoodScale

The SCF-bad typing upgrade gives

```math
SCF\text{-}bad\Longrightarrow tower\text{-}blown.
```

The tower bound excludes that face, hence

```math
GoodScale.TTU.
```

## Endpoint chain

Then

```math
Pack.TTU+GoodScale.TTU
\Longrightarrow
READ.COVER+ATD_m^\varepsilon.
```

and

```math
READ.COVER+ATD_m^\varepsilon
\Longrightarrow
TowerCover.TTU+Field.TTU
\Longrightarrow
End_{NS}.
```

## Chain

```math
BKM
\Longrightarrow
Pack.TTU+SCFBase.Modulus+TowerBound.Upstream
\Longrightarrow
GoodScale.TTU
\Longrightarrow
End_{NS}.
```

## Boundary

This is a conditional side route. The direct original-data route requires `SCFBase.ConcentrationCompactness` or another analytic supplier for `SCFBase.Modulus` / `TowerBound.Upstream`.