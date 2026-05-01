# Full Tail-Square Reserve Absorption

## Statement

Let

```math
E_N(t):=\sum_{j\ge N}E_j(t),
\qquad
D_N(t):=\sum_{j\ge N}D_j(t).
```

Then, for every `\varepsilon>0`, all sufficiently large `N` satisfy

```math
2^{-2N}E_N(t)^2\le \varepsilon\nu D_N(t)
```

for every `t` in the classical interval. Consequently,

```math
\int_0^T2^{-2N}E_N(t)^2dt
\le \varepsilon\nu\int_0^TD_N(t)dt.
```

## Proof

Split the square into near and far pairs:

```math
2^{-2N}E_N^2
=
2^{-2N}\sum_{\substack{j,k\ge N\\ |j-k|\le C_0}}E_jE_k
+
2^{-2N}\sum_{\substack{j,k\ge N\\ |j-k|> C_0}}E_jE_k.
```

The near-diagonal theorem gives

```math
2^{-2N}\sum_{|j-k|\le C_0}E_jE_k
\le C_1C_E2^{-2N}D_N.
```

The far-separated theorem gives

```math
2^{-2N}\sum_{|j-k|>C_0}E_jE_k
\le C_2C_E2^{-2N}D_N.
```

Therefore

```math
2^{-2N}E_N^2
\le (C_1+C_2)C_E2^{-2N}D_N.
```

Choose `N` so that

```math
(C_1+C_2)C_E2^{-2N}\le \varepsilon\nu.
```

This proves the claim.

## Consequence

The full tail-square reserve is now absorbed by dissipation. This removes the reserve obstruction in the threshold-collar product channel.