# WeightedShell Product Integrability Theorem

Status: conditional theorem for fixed scheduler thresholds.

## Target

Prove

```math
\int_I(\Lambda_N(t)+\Theta_N^\sharp(t))E_N(t)\,dt<\infty.
```

Set

```math
A_N(t)=\Lambda_N(t)+\Theta_N^\sharp(t).
```

## Fixed-threshold coefficient bound

On a scheduler interval with fixed threshold `N`, the fixed-threshold coefficient admissibility theorem gives

```math
\Lambda_N(t)\le C_NQ_0^{1/2},
```

and

```math
\Theta_N^\sharp(t)\le C_{N,M}Q_0.
```

Thus

```math
A_N(t)
\le
C_{N,M,Q_0}
```

for every `t` in `I`.

## Tail-energy integrability

The tail energy satisfies

```math
E_N(t)
\le
\sum_{j\ge0}2^{2j}\|\Delta_j u(t)\|_2^2
\le C_E
\|\nabla u(t)\|_2^2.
```

The periodic zero-force energy inequality gives

```math
\int_I E_N(t)\,dt<\infty.
```

## Product estimate

Therefore

```math
\int_I A_N(t)E_N(t)\,dt
\le
C_{N,M,Q_0}
\int_I E_N(t)\,dt
<
\infty.
```

Equivalently,

```math
\int_I(\Lambda_N+\Theta_N^\sharp)E_Ndt<\infty.
```

## Consequence

This proves the direct product-integrability route for `WeightedShell.Absorb` on each fixed-threshold scheduler interval.

Together with the algebraic absorption inequality, it also confirms the exact pressure-side weighted-shell contribution is time-integrable in the fixed-threshold route.

## Boundary

The constants depend on `N`. This theorem supplies fixed-threshold scheduler control. It does not assert a threshold-uniform bound for all `N` with one constant.
