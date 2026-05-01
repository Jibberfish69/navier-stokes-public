# Tail-Square Reserve Promotion Blocked By LPAS

## Promotion target

The reserve to promote was

```math
\int_0^T2^{-2N}E_N(t)^2dt
\le
\varepsilon\nu\int_0^TD_N(t)dt+C2^{-2\delta N}.
```

## Current dependency

The reserve proof uses two pieces:

```math
Diag_N\le \varepsilon\nu D_N
```

and

```math
Far_N\le \eta LPAS_N+C2^{-7N}E_N.
```

The diagonal piece is installed. The far-separated piece still needs the active-square far-corona estimate

```math
\int_0^TLPAS_N(t)dt
\le
\varepsilon\nu\int_0^TD_N(t)dt+C2^{-2\delta N}.
```

## Result

The tail-square reserve cannot be promoted at this stage. Its status remains conditional on LPAS/FC or an equivalent active-square far-corona closure.

## Exact remaining blocker

```math
\int_0^T\sum_{j\ge N}\left(\sum_{k\le j-C_1}E_k(t)\right)2^{-j}D_j(t)^2dt.
```