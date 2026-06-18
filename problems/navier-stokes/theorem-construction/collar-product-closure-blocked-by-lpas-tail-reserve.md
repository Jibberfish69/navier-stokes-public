# Collar Product Closure Blocked By LPAS Tail Reserve

## Target

The collar product target is

```math
\int_0^T\Theta_N^\sharp(t)E_N(t)dt
\le
\varepsilon\nu\int_0^TD_N(t)dt+C2^{-2\delta N}.
```

## Dependency

The installed finite-collar reduction gives

```math
\Theta_N^\sharp E_N
\le
\varepsilon\nu D_N+C_\varepsilon2^{-2N}E_N^2.
```

Thus collar closure requires the tail-square reserve

```math
\int_0^T2^{-2N}E_N^2dt
\le
\varepsilon\nu\int_0^TD_Ndt+C2^{-2\delta N}.
```

The tail-square reserve remains conditional on the active-square far-corona theorem `LPAS/FC`.

## Result

The collar product remains blocked by the open LPAS/FC input. Once LPAS/FC is installed, the already-written collar product theorem can be promoted.
