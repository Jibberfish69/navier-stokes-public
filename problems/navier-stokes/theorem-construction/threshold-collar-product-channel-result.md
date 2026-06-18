# Threshold-Collar Product Channel Result

## Target

The target was

```math
\int_0^T\Theta_N^\sharp(t)E_N(t)dt<\infty,
```

where

```math
\Theta_N^\sharp(t)=2^{3N}\sum_{m=N-M}^{N+M}\|\Delta_mu(t)\|_2^2,
```

```math
E_N(t)=\sum_{j\ge N}2^{2j}\|\Delta_ju(t)\|_2^2,
\qquad
D_N(t)=\sum_{j\ge N}2^{4j}\|\Delta_ju(t)\|_2^2.
```

## Finite-collar reduction

For `|m-N|\le M`,

```math
2^{3N}\|\Delta_mu\|_2^2
=2^{3N-4m}D_m(t)
\le C_M2^{-N}D_m(t).
```

Thus

```math
\Theta_N^\sharp(t)
\le C_M2^{-N}D_{N-M}(t),
```

The tail shift is the fixed finite-collar comparison
`D_{N-M}(t) \le C'_M D_N(t)`, valid because `M` is fixed before the
tail index. On the common tail surface this yields the constant-bound form

```math
\Theta_N^\sharp(t)E_N(t)
\le C_M2^{-N}D_N(t)E_N(t)
```

with constants depending only on the fixed collar width.

## Young reduction

For every `\varepsilon>0`,

```math
C_M2^{-N}D_N E_N
\le \varepsilon\nu D_N+C_{\varepsilon,M,\nu}2^{-2N}E_N^2.
```

Therefore the collar product is controlled by an absorbable dissipation term plus the reserve

```math
R_N^{collar}(t):=2^{-2N}E_N(t)^2.
```

## Remaining obstruction

The baseline energy layer gives

```math
\int_0^T E_N(t)dt<\infty.
```

It does not give

```math
\int_0^T E_N(t)^2dt<\infty.
```

Thus the finite-collar structure reduces the target to the localized enstrophy-square reserve

```math
\int_0^T2^{-2N}E_N(t)^2dt<\infty.
```

This is the same obstruction as the `L^4_tL^2_x` enstrophy endpoint, localized to the tail.

## Result

The threshold-collar product does not close from finite-collar structure and baseline energy alone. It closes under the additional reserve condition

```math
\int_0^T E_N(t)^2dt<\infty
```

or any sharper tail-square theorem that makes `2^{-2N}E_N^2` summable in the HFG route.
