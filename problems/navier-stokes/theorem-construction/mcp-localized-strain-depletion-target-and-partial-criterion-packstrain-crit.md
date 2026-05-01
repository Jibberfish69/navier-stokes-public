# Localized Strain Depletion Target And Partial Criterion

## Target

Find a packet-local strain bound

```math
\int_0^{T_*}S_{pack,Q}(t)dt<\infty
```

sufficient to control the pack gauge

```math
\Gamma_{pack,Q}(t).
```

## Theorem `PackStrain.Crit`

Let

```math
S_{pack,Q}(t)=\sup_{a\in A_Q(t)}\lambda_{max}^{+}(S(u)(X(a,t),t)),
\qquad
S(u)=\frac12(\nabla u+\nabla u^T).
```

If `S_{pack,Q}\in L^1(0,T_*)`, then

```math
\Gamma_{pack,Q}\in L^\infty(0,T_*).
```

## Proof

For the deformation gradient

```math
\frac d{dt}F=\nabla u(X,t)F.
```

The antisymmetric part of `\nabla u` contributes only rotation. Singular-value growth is controlled by the positive symmetric strain:

```math
\frac d{dt}\log \|F\|\le S_{pack,Q}(t),
```

and similarly for `F^{-1}`. Hence

```math
\Gamma_{pack,Q}(t)
\le \Gamma_{pack,Q}(0)\exp\left(\int_0^tS_{pack,Q}(s)ds\right).
```

## Candidate Depletion Estimates

The direct theorem would follow from either

```math
\int_0^{T_*}\sup_{A_Q(t)}|S(u)|dt<\infty,
```

or the sharper directional estimate

```math
\int_0^{T_*}\sup_{a\in A_Q(t)}(e(a,t)\cdot S(u)(X(a,t),t)e(a,t))_+dt<\infty.
```

A possible route is a vorticity-alignment depletion theorem controlling the positive strain along the packet stretching direction by a subcritical vorticity coherence quantity.

## Obstruction

The current energy/enstrophy layer does not imply any of these localized `L^1_tL^\infty` strain bounds. Calderon-Zygmund relates strain and vorticity in singular integral spaces, and this does not turn `\omega\in L^2` into pointwise packet strain control.

## Verdict

The pack-local criterion is proved. The missing theorem is a genuine localized strain-depletion estimate, likely through vorticity geometry or packet-aligned cancellation.