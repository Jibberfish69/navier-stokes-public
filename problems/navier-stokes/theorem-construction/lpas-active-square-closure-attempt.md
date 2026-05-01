# LPAS Active-Square Closure Attempt

## Target

The active-square far-corona theorem is

```math
LPAS_N:=\int_0^T\sum_{j\ge N}\mathcal P_j^\downarrow(t)2^{-j}D_j(t)^2dt
\le
\varepsilon\nu\int_0^TD_N(t)dt+C2^{-2\delta N},
```

where

```math
\mathcal P_j^\downarrow(t)=\sum_{k\le j-C_1}E_k(t),
\qquad
D_j(t)=2^{2j}E_j(t).
```

## Absorption test

For a single active shell, the summand is

```math
\mathcal P_j^\downarrow 2^{-j}D_j^2.
```

Absorption into `\varepsilon\nu D_j` requires

```math
\mathcal P_j^\downarrow 2^{-j}D_j\le \varepsilon\nu.
```

This is an active-shell amplitude condition. The baseline energy and dissipation controls provide `\int D_j`, while LPAS requires a square in `D_j` weighted by the lower prefix.

## Crude lower-prefix collapse

The bound

```math
\mathcal P_j^\downarrow(t)\le \|\nabla u(t)\|_2^2
```

reduces LPAS to

```math
\int_0^T\|\nabla u(t)\|_2^2\sum_{j\ge N}2^{-j}D_j(t)^2dt.
```

The energy layer gives `\|\nabla u\|_2^2\in L^1_t`, and supplies no bound for the active-square factor

```math
\sum_{j\ge N}2^{-j}D_j^2.
```

Thus the crude collapse leaves a product problem rather than an absorption estimate.

## Orientation test

Expanding the lower prefix gives

```math
LPAS_N=\int_0^T\sum_{j\ge N}\sum_{k\le j-C_1}E_k(t)2^{-j}D_j(t)^2dt.
```

This is a lower-prefix times active-square object. The installed upper-tail queues act in the opposite orientation and therefore cannot directly absorb this term.

## Result

The current Euclidean inputs are insufficient to install LPAS. The exact missing theorem is one of:

```math
\int_0^T\sum_{j\ge N}\mathcal P_j^\downarrow2^{-j}D_j^2dt
\le
\varepsilon\nu\int_0^TD_Ndt+C2^{-2\delta N},
```

or an equivalent lower-prefix Carleson estimate, or an active-shell amplitude estimate

```math
\mathcal P_j^\downarrow 2^{-j}D_j\le c\nu
```

on the LPAS support.

## Consequence

The far-corona closure remains conditional on LPAS, CTS, F2S, or DER+EP. The tail-square reserve and weighted carrier closure inherit this conditional status.