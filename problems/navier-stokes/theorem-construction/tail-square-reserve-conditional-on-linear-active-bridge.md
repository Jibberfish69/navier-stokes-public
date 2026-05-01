# Tail-Square Reserve Conditional On Linear-Active Bridge

## Inputs

The near-diagonal part is installed:

```math
Diag_N(t)\le \varepsilon\nu D_N(t)
```

for all large `N`.

Assume the far-separated bridge:

```math
\int_0^TFar_N(t)dt
\le
\varepsilon\nu\int_0^TD_N(t)dt+C2^{-2\delta N},
```

where

```math
Far_N(t)=2^{-2N}
\sum_{\substack{j,k\ge N\\ |j-k|>C_0}}E_j(t)E_k(t).
```

## Theorem

Under these two inputs,

```math
\int_0^T2^{-2N}E_N(t)^2dt
\le
\varepsilon'\nu\int_0^TD_N(t)dt+C2^{-2\delta N}.
```

## Proof

Split the full tail square:

```math
2^{-2N}E_N^2=Diag_N+Far_N.
```

Integrate in time. The near-diagonal estimate gives

```math
\int_0^TDiag_Ndt\le \varepsilon_1\nu\int_0^TD_Ndt.
```

The assumed far bridge gives

```math
\int_0^TFar_Ndt\le \varepsilon_2\nu\int_0^TD_Ndt+C2^{-2\delta N}.
```

Choose `\varepsilon_1+\varepsilon_2=\varepsilon'`. This proves the reserve.

## Boundary

This reserve is conditional on the far-separated linear-to-active-square bridge. The installed far-corona packet controls the active-square/coupled-density form; the bridge from the all-pairs far-separated tail square to that packet remains open.