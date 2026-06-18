# Threshold-Spill Collar Estimate And Augmented Coefficient Control

## Status

Theorem-facing discharge for the threshold-spill packet `SP_j` in the gradient cascade split.

## Definitions

Fix a dyadic threshold `N` and finite collar width `M`. Let

```math
E_N(t):=\sum_{j\ge N}2^{2j}\|\Delta_j u(t)\|_2^2,
\qquad
D_N(t):=\sum_{j\ge N}2^{4j}\|\Delta_j u(t)\|_2^2.
```

Let the strict low-mode coefficient be

```math
\Lambda_N(t):=\|\nabla S_{N-4}u(t)\|_\infty.
```

Define the threshold-collar amplitude

```math
\Theta_N(t):=\sum_{m=N-M}^{N+M}2^{\frac32m}\|\Delta_m u(t)\|_2,
```

and the quadratic threshold coefficient

```math
\Theta_N^\sharp(t):=\sum_{m=N-M}^{N+M}2^{3m}\|\Delta_m u(t)\|_2^2.
```

The augmented coefficient surface is

```math
\widetilde\Lambda_N^\sharp(t):=\Lambda_N(t)+\Theta_N^\sharp(t).
```

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

The spill packet is produced by replacing the moving low cutoff with the fixed threshold cutoff. The difference is supported in the finite threshold strip

```math
N-M\le m\le N+M.
```

One spill interaction under test has the form

```math
\left\langle \Delta_j(\Delta_m u\cdot\nabla u_{\sim j}),-\Delta\Delta_j u\right\rangle,
\qquad N-M\le m\le N+M,
```

with finite overlap in `j` and the high shell collar `u_{\sim j}`. Since each dyadic velocity block is divergence-free,

```math
\Delta_m u\cdot\nabla u_{\sim j}=\nabla\cdot(\Delta_m u\otimes u_{\sim j}).
```

Thus the derivative may be placed on the high output side after pairing and integrating by parts. Bernstein gives

```math
\|\Delta_m u\|_\infty\le C_B2^{\frac32m}\|\Delta_m u\|_2.
```

For each shell,

```math
|SP_j|
\le C_{SP}
\Theta_N(t)\,E_j(t)^{1/2}D_j(t)^{1/2},
```

where

```math
E_j(t):=2^{2j}\|\Delta_j u(t)\|_2^2,
\qquad
D_j(t):=2^{4j}\|\Delta_j u(t)\|_2^2.
```

Summing over `j\ge N` and applying Cauchy-Schwarz gives

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

The finite collar gives

```math
\Theta_N(t)^2
\le
C_M\sum_{m=N-M}^{N+M}2^{3m}\|\Delta_m u(t)\|_2^2
=C_M\Theta_N^\sharp(t).
```

Combining these estimates proves `SP.A`.

## Control Of The Augmented Coefficient

For fixed `N`, the coefficient `\Theta_N^\sharp` is finite and route-controlled. The finite strip estimate gives

```math
\Theta_N^\sharp(t)
\le
C_{N,M}\|u(t)\|_2^2,
```

and therefore `\Theta_N^\sharp\in L^\infty_t\cap L^1_t` on every finite working interval under the classical energy bound. Under the stronger enstrophy component of `Q(t)`, one also has

```math
\Theta_N^\sharp(t)
\le
C_M2^{N+M}\|\nabla u(t)\|_2^2.
```

Thus `\widetilde\Lambda_N^\sharp=\Lambda_N+\Theta_N^\sharp` is an admissible fixed-threshold coefficient whenever `\Lambda_N` is admissible.

## Boundary

The estimate is fixed-threshold and finite-collar. It supplies coefficient admissibility for each chosen `N`; it does not assert uniform smallness of `\Theta_N^\sharp` as `N\to\infty`.
