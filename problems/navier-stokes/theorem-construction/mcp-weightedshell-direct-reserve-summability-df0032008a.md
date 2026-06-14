# WeightedShell Direct Reserve Summability

Status: conditional theorem for fixed scheduler thresholds.

## Target

Prove

```math
R_N(t)=2^{-2N}(\Lambda_N(t)+\Theta_N^\sharp(t))^2E_N(t)
\in L^1(I).
```

Set

```math
A_N(t)=\Lambda_N(t)+\Theta_N^\sharp(t).
```

## Fixed-threshold coefficient bound

On a scheduler interval with fixed threshold `N`, `Coeff.A` gives pointwise fixed-threshold estimates:

```math
\Lambda_N(t)\le C_N\|u(t)\|_{L^2}
\le C_NQ_0^{1/2},
```

and

```math
\Theta_N^\sharp(t)
\le C_{N,M}\|u(t)\|_{L^2}^2
\le C_{N,M}Q_0.
```

Hence

```math
A_N(t)\le C_{N,M,Q_0}<\infty
```

for all `t` in the scheduler interval.

## Energy integrability

The high-tail energy obeys

```math
E_N(t)
\le \sum_{j\ge0}2^{2j}\|\Delta_j u(t)\|_2^2
\le C_E\|\nabla u(t)\|_2^2.
```

The periodic zero-force energy inequality gives

```math
\int_I E_N(t)dt<\infty.
```

## Reserve summability

Therefore

```math
\int_I R_N(t)dt
=
\int_I2^{-2N}A_N(t)^2E_N(t)dt
\le
2^{-2N}C_{N,M,Q_0}^2\int_I E_N(t)dt
<\infty.
```

Thus

```math
2^{-2N}(\Lambda_N+\Theta_N^\sharp)^2E_N\in L^1(I).
```

## Consequence

The reserve term in `WeightedShell.Absorb` is summable on each fixed-threshold scheduler interval.

Combined with the algebraic absorption identity,

```math
(\Lambda_N+\Theta_N^\sharp)E_N
\le
\varepsilon\nu D_N+C_{\varepsilon,\nu}R_N,
```

this closes the fixed-threshold reserve-summability route for `WeightedShell.Absorb`.

## Boundary

The constants depend on the fixed scheduler threshold `N`. This theorem does not prove the stronger threshold-uniform coefficient domination

```math
\Lambda_N+\Theta_N^\sharp\le c\nu2^{2N}.
```
