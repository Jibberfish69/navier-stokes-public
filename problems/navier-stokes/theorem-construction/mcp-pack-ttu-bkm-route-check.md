# Pack.TTU BKM Route Check

## Status

Conditional continuation route recorded.

## BKM hypothesis

Assume

```math
\int_{t_0}^{T_*}\|\omega(t)\|_{L^\infty}\,dt<\infty.
```

For a smooth periodic Navier-Stokes solution with finite high Sobolev data at `t_0`, the Beale-Kato-Majda continuation criterion gives bounded high Sobolev norms on `[t_0,T_*)`:

```math
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty
```

for each fixed finite `s` required by the route.

Choose `s` high enough that

```math
H^s(T^3)\hookrightarrow W^{1,\infty}(T^3).
```

Then

```math
\|\nabla u(t)\|_{L^\infty}
\le C_s\|u(t)\|_{H^s},
```

and therefore, on the finite interval,

```math
\int_{t_0}^{T_*}\|\nabla u(t)\|_{L^\infty}\,dt<\infty.
```

Since

```math
S_{pack,Q}(t)
\le \|\nabla u(t)\|_{L^\infty},
```

we get

```math
S_{pack,Q}\in L^1([t_0,T_*)).
```

By `Pack.TTU.StrainLedger.ConditionalControl`,

```math
\Gamma_{pack,Q}\in L^\infty([t_0,T_*)).
```

## Conditional implication

The BKM route proves

```math
\int_{t_0}^{T_*}\|\omega(t)\|_{L^\infty}\,dt<\infty
\Longrightarrow
Pack.TTU.
```

## Boundary

The BKM hypothesis is continuation-grade. The current original-data / finite-energy packet supplies

```math
u\in L_t^\infty L_x^2,
\qquad
\nabla u\in L^2_{t,x},
```

while the BKM route asks for the stronger terminal ledger

```math
\omega\in L_t^1L_x^\infty.
```

Thus BKM gives a valid conditional route to `Pack.TTU`, and it leaves the original-data theorem

```math
OriginalSmoothData\Longrightarrow \omega\in L_t^1L_x^\infty
```

outside the current packet.

## Output

```math
BKM.TTU:
\left[\int_{t_0}^{T_*}\|\omega(t)\|_{L^\infty}\,dt<\infty\right]
\Longrightarrow
\Gamma_{pack,Q}\in L^\infty([t_0,T_*)).
```

The next search target is a pack-native substitute weaker than the Lipschitz integral and supplied by the dynamics.