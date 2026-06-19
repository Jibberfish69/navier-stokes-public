# Near-Diagonal Tail-Square Reserve Absorption

## Statement

Let

```math
E_j(t):=2^{2j}\|\Delta_j u(t)\|_2^2,
\qquad
D_j(t):=2^{4j}\|\Delta_j u(t)\|_2^2,
```

and

```math
E_N(t):=\sum_{j\ge N}E_j(t),
\qquad
D_N(t):=\sum_{j\ge N}D_j(t).
```

Fix a finite diagonal width `C_0`. Define

```math
Diag_N(t):=2^{-2N}\sum_{\substack{j,k\ge N\\ |j-k|\le C_0}}E_j(t)E_k(t).
```

Assume the global energy bound

```math
\sup_{t<T}\|u(t)\|_2^2\le C_E.
```

Then

```math
Diag_N(t)\le C_{C_0}C_E2^{-2N}D_N(t).
```

Consequently, for every `\varepsilon>0`, all sufficiently large `N` satisfy

```math
Diag_N(t)\le \varepsilon\nu D_N(t)
```

for every `t` in the classical interval, and hence

```math
\int_0^T Diag_N(t)dt\le \varepsilon\nu\int_0^TD_N(t)dt.
```

## Proof

For `|j-k|\le C_0`, the exact band inequality is
`2^{-C_0}2^k <= 2^j <= 2^{C_0}2^k`. Thus every dyadic factor in the diagonal
band is bounded by an explicit `C_0`-dependent multiple of the corresponding
`k`-shell factor. Using the energy bound on the `k` shell,

```math
E_k(t)=2^{2k}\|\Delta_k u(t)\|_2^2
\le 2^{2k}\|u(t)\|_2^2
\le C_E2^{2k}.
```

Therefore

```math
2^{-2N}E_j(t)E_k(t)
\le C_E2^{-2N}2^{2k}E_j(t).
```

Since `|j-k|\le C_0`,

```math
2^{2k}\le C_{C_0}2^{2j}.
```

Thus

```math
2^{-2N}E_jE_k
\le C_{C_0}C_E2^{-2N}2^{2j}E_j
= C_{C_0}C_E2^{-2N}D_j.
```

For each fixed `j`, there are at most `2C_0+1` indices `k` with `|j-k|\le C_0`. Summing over the finite diagonal band gives

```math
Diag_N(t)
\le C_{C_0}C_E2^{-2N}\sum_{j\ge N}D_j(t)
= C_{C_0}C_E2^{-2N}D_N(t).
```

Choose `N` with

```math
C_{C_0}C_E2^{-2N}\le \varepsilon\nu.
```

This yields the absorption estimate.

## Consequence

The near-diagonal part of the tail-square reserve closes by the global energy bound. The remaining tail-square burden is the far-separated block

```math
Far_N(t):=2^{-2N}\sum_{\substack{j,k\ge N\\ |j-k|>C_0}}E_j(t)E_k(t),
```

which must be routed through far-corona geometry or an equivalent all-pairs tail-square theorem.
