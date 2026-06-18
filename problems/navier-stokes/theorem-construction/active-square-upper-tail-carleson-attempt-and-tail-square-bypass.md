# Active-Square Upper-Tail Carleson Attempt And Tail-Square Bypass

## Active-square target

The active-square Carleson target is

```math
\int_I
\sum_{j\ge \max(N,k+C_1)}2^{-j}D_j(t)^2dt
\le
\varepsilon\nu2^{2k}|I|+C2^{-2\delta\max(N,k)}.
```

This would imply the LPAS estimate

```math
\int_0^T\sum_{j\ge N}\left(\sum_{k\le j-C_1}E_k(t)\right)2^{-j}D_j(t)^2dt
\le
\varepsilon\nu\int_0^TD_N(t)dt+C2^{-2\delta N}.
```

## Attempt result

The active-square term contains one extra factor of shell dissipation:

```math
2^{-j}D_j^2.
```

The energy layer supplies `\int D_N`, while the active-square theorem asks for a square in `D_j`. A direct absorption requires an active-shell amplitude estimate of the form

```math
2^{-j}D_j\le c_{AS}\nu
```

on the LPAS support, or an equivalent lower-prefix Carleson theorem. That estimate is not supplied by the current Euclidean inputs.

Thus the active-square Carleson theorem remains open.

## Tail-square bypass

A newer direct tail-square surface closes the far-separated reserve without LPAS. It proves

```math
Far_N(t)
\le C_{C_0}C_E2^{-2N}D_N(t),
```

using only the global energy bound. Together with near-diagonal absorption, this gives

```math
2^{-2N}E_N(t)^2\le C_E2^{-2N}D_N(t),
```

up to fixed-width constants. Therefore, for large `N`,

```math
2^{-2N}E_N(t)^2\le \varepsilon\nu D_N(t).
```

## Consequence

LPAS remains a live theorem for the lifted-packet/far-corona route, but the tail-square reserve no longer requires LPAS. The collar product and tail-generated low-mode product can now use the displayed direct tail-square inequality.
