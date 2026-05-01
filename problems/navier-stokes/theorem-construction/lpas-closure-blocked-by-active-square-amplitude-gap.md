# LPAS Closure Blocked By Active-Square Amplitude Gap

## Target

The LPAS theorem is

```math
\int_0^T
\sum_{j\ge N}
\left(\sum_{k\le j-C_1}E_k(t)\right)
2^{-j}D_j(t)^2dt
\le
\varepsilon\nu\int_0^TD_N(t)dt+C2^{-2\delta N}.
```

## Dependency

Dualizing the lower prefix reduces LPAS to the active-square upper-tail Carleson theorem for the measures

```math
dM_k(t)=\left(\sum_{j\ge\max(N,k+C_1)}2^{-j}D_j(t)^2\right)dt.
```

The source-mass route gives interval control of the lifted source only after the upper-tail-square carrier estimate. The active-square theorem still requires a shell-amplitude gain or square-source estimate.

## Result

LPAS cannot be promoted from the current chain. The exact remaining input is

```math
\int_I
\sum_{j\ge\max(N,k+C_1)}2^{-j}D_j(t)^2dt
\le
\varepsilon\nu2^{2k}|I|+C2^{-2\delta\max(N,k)}.
```

Equivalently, one may prove a direct LPAS theorem or a shell-amplitude theorem strong enough to control `2^{-j}D_j^2`.