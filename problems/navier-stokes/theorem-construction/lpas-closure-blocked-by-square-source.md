# LPAS Closure Blocked By Square-Source

## Target

The LPAS theorem is

```math
\int_0^T
\sum_{j\ge N}
\left(\sum_{k\le j-C_1}E_k(t)\right)
2^{-j}D_j(t)^2dt
\le
\varepsilon\nu\int_0^TD_Ndt+C2^{-2\delta N}.
```

## Dependency

Lower-prefix dualization reduces LPAS to active-square upper-tail Carleson. That theorem remains blocked because the single-shell active-square estimate requires the square-source estimate for `F_j`, and the universal square-source estimate failed by cubic amplitude scaling.

## Result

LPAS remains blocked. The live alternatives are a valid square-source estimate on active intervals, active-shell amplitude normalization, direct active-square Carleson, or a direct LPAS proof.