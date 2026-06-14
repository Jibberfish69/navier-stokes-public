# Low-Mode Product Closure Blocked By LPAS Tail Reserve

## Target

The low-mode product target is

```math
\int_0^T\Lambda_N(t)E_N(t)dt
\le
\varepsilon\nu\int_0^TD_N(t)dt+C2^{-2\delta N}.
```

## Installed pieces

The Duhamel split separates

```math
\Lambda_N=\Lambda_N^{tail}+\Lambda_N^{lin}+\Lambda_N^{low-low}.
```

The finite-mode part is controlled on terminal windows by the coefficient measure theorem:

```math
\int_I E_N(t)d\nu_N^{low}(t)
\le
\varepsilon\nu\int_I D_N(t)dt+C2^{-2\delta N}.
```

The tail-generated part routes through the tail-square reserve:

```math
\int_I\Lambda_N^{tail}(t)E_N(t)dt
\le C_{tail}
\int_I2^{-2N}E_N(t)^2dt+\varepsilon\nu\int_I D_N(t)dt.
```

## Blocking dependency

The tail-square reserve is still conditional on LPAS/FC:

```math
\int_I2^{-2N}E_N(t)^2dt
\le
\varepsilon\nu\int_I D_N(t)dt+C2^{-2\delta N}.
```

## Result

The low-mode product closes once LPAS/FC is installed. At the current state, the finite-mode coefficient part is controlled, and the remaining dependency is the tail-square reserve driven by LPAS/FC.
