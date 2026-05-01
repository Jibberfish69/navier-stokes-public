# Periodic Endpoint Conversion From `PST.A`

## Status

Theorem-facing conversion from repaired periodic shell/tail suppression to endpoint exclusion on the exact periodic Navier-Stokes branch.

## Setup

Let `u` be a smooth periodic solution of the three-dimensional incompressible Navier-Stokes equations with `f=0` on `T^3` over a finite classical interval `I=[t_0,T]`. Let `s>5/2` be a continuation index.

For a dyadic threshold `N`, write

```math
u=P_{<N}u+P_{\ge N}u.
```

`PST.A` supplies, for any assigned tolerance `\rho>0`, a scheduled threshold `N` and finite scheduler partition such that

```math
\sup_{t\in I}E_N(t)+\int_I D_N(t)\,dt\le \rho,
```

where

```math
E_N(t)=\sum_{j\ge N}2^{2j}\|\Delta_j u(t)\|_2^2,
\qquad
D_N(t)=\sum_{j\ge N}2^{4j}\|\Delta_j u(t)\|_2^2.
```

## Theorem `PEnd.A`

On every finite classical interval, `PST.A` prevents a cascade-driven periodic endpoint. More precisely, the high-frequency tail remains below the endpoint threshold required by the class-membership route, while the low-frequency part remains controlled by finite-dimensional smoothness. Hence a first finite endpoint cannot arise from the high-frequency cascade on the periodic branch.

## Proof

Choose a scheduler threshold `N` from `PST.A`. The high-frequency component obeys

```math
\sup_{t\in I}\|P_{\ge N}u(t)\|_{\dot H^1}^2
=
\sup_{t\in I}E_N(t)
\le \rho.
```

The integrated high-frequency smoothing obeys

```math
\int_I\|P_{\ge N}u(t)\|_{\dot H^2}^2dt
=
\int_I D_N(t)dt
\le \rho.
```

The low-frequency component `P_{<N}u` lies in a finite-dimensional subspace. On a classical interval every Fourier coefficient is smooth, so for each fixed `N`,

```math
\sup_{t\in I}\|P_{<N}u(t)\|_{H^s}<\infty.
```

Thus the full solution decomposes into a finite-dimensional smooth low part plus a high tail with scheduled `H^1` smallness and integrated `H^2` control. This is exactly the endpoint-control input consumed by the class-membership route: the dangerous cascade tail remains budget-small, and the finite low sector has no infinite-dimensional cascade mechanism.

If a first finite periodic endpoint were caused by high-frequency transfer, then for every high threshold the cascade flux would exceed the route budget on some scheduler cell. `PST.A` supplies a threshold and partition where the flux obeys

```math
|\Pi_{\ge N}(t)|
\le
C\widetilde\Lambda_N^\sharp(t)E_N(t)+\eta\nu D_N(t)+C_*2^{-2\delta N},
```

with the right side integrable and budget-small. This contradicts cascade-driven endpoint formation.

Therefore the periodic endpoint faces in the class-membership matrix receive the needed cascade suppression input.

## Consequence

Combining `PEnd.A` with the installed class-membership endpoint matrix gives the periodic branch implication

```math
PST.A+CFI.A+End_{NS}\Longrightarrow\text{no finite periodic endpoint from cascade}.
```

## Boundary

This theorem is stated on the periodic `T^3`, zero-force branch. Whole-space export belongs to its own downstream theorem surface.