# Collar Product Closure From Installed Tail-Square Reserve

## Inputs

The finite-collar reduction gives

```math
\Theta_N^\sharp E_N
\le
\varepsilon_1\nu D_N+C_{
\varepsilon_1}2^{-2N}E_N^2.
```

The installed tail-square reserve gives, for large `N`,

```math
2^{-2N}E_N^2\le \varepsilon_2\nu D_N.
```

## Theorem

For every `\varepsilon>0`, all sufficiently large `N` satisfy

```math
\Theta_N^\sharp(t)E_N(t)\le \varepsilon\nu D_N(t).
```

Consequently,

```math
\int_0^T\Theta_N^\sharp(t)E_N(t)dt
\le
\varepsilon\nu\int_0^TD_N(t)dt.
```

## Proof

Insert the tail-square reserve into the finite-collar reduction:

```math
\Theta_N^\sharp E_N
\le
\varepsilon_1\nu D_N+C_{\varepsilon_1}\varepsilon_2\nu D_N.
```

Choose `\varepsilon_1` and `\varepsilon_2` so the total coefficient is `\varepsilon`. This proves the result.