# Gradient Spill Reduction Lemma

## Status

Repaired theorem-facing threshold-spill collar estimate for the gradient cascade route.

This file is now aligned with the augmented coefficient interface

```math
\widetilde\Lambda_N^\sharp(t)=\Lambda_N(t)+\Theta_N^\sharp(t).
```

## Definitions

Fix a dyadic threshold `N` and finite collar width `M`. Define

```math
E_N(t):=\sum_{j\ge N}2^{2j}\|\Delta_j u(t)\|_2^2,
\qquad
D_N(t):=\sum_{j\ge N}2^{4j}\|\Delta_j u(t)\|_2^2.
```

The threshold amplitude and quadratic collar coefficient are

```math
\Theta_N(t):=\sum_{m=N-M}^{N+M}2^{\frac32m}\|\Delta_m u(t)\|_2,
```

```math
\Theta_N^\sharp(t):=\sum_{m=N-M}^{N+M}2^{3m}\|\Delta_m u(t)\|_2^2.
```

The threshold-spill packet `SP_j` is the finite-collar contribution created by replacing the moving low cutoff with the fixed low cutoff `S_{N-4}`.

## Theorem `SP.A`

For every `\varepsilon>0`,

```math
\sum_{j\ge N}|SP_j(t)|
\le
C_{\varepsilon,M,\nu}\Theta_N^\sharp(t)E_N(t)
+\varepsilon\nu D_N(t).
```

Consequently,

```math
\sum_{j\ge N}|SP_j(t)|
\le
C_{\varepsilon,M,\nu}\widetilde\Lambda_N^\sharp(t)E_N(t)
+\varepsilon\nu D_N(t).
```

## Proof

Every spill interaction contains one threshold-strip factor with dyadic index

```math
N-M\le m\le N+M.
```

One spill term under test has the form

```math
\left\langle\Delta_j(\Delta_m u\cdot\nabla u_{[j]}),-\Delta\Delta_j u\right\rangle.
```

Since dyadic velocity blocks are divergence-free,

```math
\Delta_m u\cdot\nabla u_{[j]}=\nabla\cdot(\Delta_m u\otimes u_{[j]}).
```

After integration by parts, the derivative is placed on the high output side. Bernstein gives

```math
\|\Delta_m u\|_\infty\le C_B2^{\frac32m}\|\Delta_m u\|_2.
```

Thus each shell satisfies

```math
|SP_j|
\le C_{SP}
\Theta_N(t)E_j(t)^{1/2}D_j(t)^{1/2},
```

where

```math
E_j(t):=2^{2j}\|\Delta_j u(t)\|_2^2,
\qquad
D_j(t):=2^{4j}\|\Delta_j u(t)\|_2^2.
```

Summing over `j\ge N` and using Cauchy-Schwarz,

```math
\sum_{j\ge N}|SP_j|
\le C_{SP}
\Theta_N(t)E_N(t)^{1/2}D_N(t)^{1/2}.
```

Young's inequality gives

```math
\Theta_NE_N^{1/2}D_N^{1/2}
\le
\varepsilon\nu D_N+C_{\varepsilon,\nu}\Theta_N^2E_N.
```

The finite strip gives

```math
\Theta_N(t)^2\le C_M\Theta_N^\sharp(t).
```

Combining these estimates proves `SP.A`.

## Fixed-Threshold Admissibility

For fixed `N`,

```math
\Theta_N^\sharp(t)\le C_{N,M}\|u(t)\|_2^2.
```

Hence `\Theta_N^\sharp\in L^1` on every finite scheduler interval under the energy component of `Q(t)`. This admissibility is used in `mcp-augmented-coefficient-admissibility-for-lambda_n-sharp-92fdd9321d.md`.

## Boundary

The result is fixed-threshold and finite-collar. It does not assert uniform smallness of `\Theta_N^\sharp` as `N\to\infty`; threshold choice belongs to the scheduler theorem.
