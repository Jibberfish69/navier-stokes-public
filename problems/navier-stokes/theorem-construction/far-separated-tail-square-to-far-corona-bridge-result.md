# Far-Separated Tail-Square To Far-Corona Bridge Result

## Far-separated tail square

After near-diagonal absorption, the remaining tail-square piece is

```math
Far_N(t):=2^{-2N}
\sum_{\substack{j,k\ge N\\ |j-k|>C_0}}E_j(t)E_k(t).
```

By symmetry, it is enough to consider the lower-prefix half

```math
Far_N^+(t):=2^{-2N}
\sum_{j\ge N+C_0}
E_j(t)
\sum_{N\le k\le j-C_0}E_k(t).
```

## Far-corona / LPAS packet

The local dyadic far-corona engine has the form

```math
LPAS_N(t):=
\sum_{j\ge N}
\left(\sum_{k\le j-C_1}E_k(t)\right)
2^{-j}D_j(t)^2.
```

Here

```math
D_j(t)=2^{2j}E_j(t).
```

Thus the active high-shell factor in `LPAS` is

```math
2^{-j}D_j^2=2^{3j}E_j^2.
```

## Mismatch

The far-separated tail square contains the linear high-shell factor

```math
E_j(t),
```

whereas `LPAS` contains the active-square high-shell factor

```math
2^{3j}E_j(t)^2.
```

Scale separation alone supplies the lower-prefix geometry. It does not supply the missing activation inequality

```math
2^{-2N}E_j(t)
\le C_{FS}
2^{3j}E_j(t)^2
```

uniformly in `E_j`. This inequality fails for arbitrarily small `E_j`.

Equivalently, using dissipation gives

```math
2^{-2N}E_j=2^{-2N-2j}D_j,
```

so the far-separated tail square is linear in `D_j`, while `LPAS` is quadratic in `D_j`.

## Required bridge

The missing bridge is therefore the linear-to-active-square theorem

```math
2^{-2N}
\sum_{j
gtrsim N}
E_j\sum_{k\le j-C_0}E_k
\le
\varepsilon\nu D_N+C\int LPAS_N + C2^{-2\delta N},
```

or a direct far-separated tail-square theorem

```math
\int_0^TFar_N(t)dt
\le
\varepsilon\nu\int_0^TD_N(t)dt+C2^{-2\delta N}.
```

## Result

The far-corona packet does not automatically identify with the far-separated tail-square block. The far-corona theorem controls the active-square/coupled-density packet. The tail-square reserve still needs the additional linear-to-active-square bridge above.

## Boundary

Near-diagonal tail-square absorption is closed. Far-separated tail-square control is reduced to a new bridge between the all-pairs tail square and the LPAS/FCTS far-corona density.
