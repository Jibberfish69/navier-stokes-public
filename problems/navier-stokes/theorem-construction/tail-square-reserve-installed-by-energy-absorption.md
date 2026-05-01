# Tail-Square Reserve Installed By Energy Absorption

## Inputs

The tail square splits into near and far pieces:

```math
2^{-2N}E_N(t)^2=Diag_N(t)+Far_N(t).
```

Near-diagonal absorption gives

```math
Diag_N(t)
\le C_1C_E2^{-2N}D_N(t).
```

Direct far-separated absorption gives

```math
Far_N(t)
\le C_2C_E2^{-2N}D_N(t).
```

## Theorem

For every `\varepsilon>0`, all sufficiently large `N` satisfy

```math
2^{-2N}E_N(t)^2\le \varepsilon\nu D_N(t)
```

for all `t` in the interval. Hence

```math
\int_0^T2^{-2N}E_N(t)^2dt
\le
\varepsilon\nu\int_0^TD_N(t)dt.
```

## Proof

Add the near and far estimates:

```math
2^{-2N}E_N^2
\le (C_1+C_2)C_E2^{-2N}D_N.
```

Choose `N` so that

```math
(C_1+C_2)C_E2^{-2N}\le \varepsilon\nu.
```

This proves the reserve.

## Consequence

The tail-square reserve is now installed from the energy bound. LPAS is still relevant for the lifted packet, while the collar-product reserve no longer requires LPAS.