# Periodic Endpoint Conversion From `PST.A`

## Status

Theorem-facing conversion from repaired periodic shell/tail suppression to the
cascade face of the endpoint analysis on the exact periodic Navier-Stokes
branch.

Boundary correction, 2026-06-25: this note must not be used as a substitute
for the forward-gold material-history clock.  `PST.A` supplies scheduled
fixed-threshold \(H^1\)-tail suppression and integrated \(H^2\)-tail control.
It does not by itself prove finite rectified annular force-action variation,
does not control the full gauge-reduced annular derivative density, and does
not supply a fixed \(H^s\), \(s>5/2\), continuation bound.

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

On every finite classical interval, `PST.A` prevents the particular scheduled
high-frequency cascade tail measured by \(E_N\) and \(D_N\) from serving as an
unpaid endpoint face.  More precisely, it supplies a threshold and finite
partition on which the repaired cascade flux is integrable and budget-small.

This statement is not the full continuation theorem.  A first finite endpoint
is excluded only after the remaining endpoint matrix supplies the missing
field/readout or material-clock input.

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

The low-frequency component `P_{<N}u` lies in a finite-dimensional subspace.
Energy gives a uniform finite-dimensional bound at fixed \(N\), and on every
strictly preterminal classical interval each Fourier coefficient is smooth, so
for each fixed `N` and \(T<T_*\),

```math
\sup_{t\in I}\|P_{<N}u(t)\|_{H^s}<\infty.
```

Thus the full solution decomposes into a finite-dimensional low part plus a
high tail with scheduled `H^1` smallness and integrated `H^2` control.  This is
the endpoint-control input for the cascade face only.  It is not a fixed
\(H^s\), \(s>5/2\), bound and it is not the full material annular
stress-transfer clock.

If a first finite periodic endpoint were caused by high-frequency transfer, then for every high threshold the cascade flux would exceed the route budget on some scheduler cell. `PST.A` supplies a threshold and partition where the flux obeys

```math
|\Pi_{\ge N}(t)|
\le
C\widetilde\Lambda_N^\sharp(t)E_N(t)+\eta\nu D_N(t)+C_*2^{-2\delta N},
```

with the right side integrable and budget-small. This contradicts cascade-driven endpoint formation.

Therefore the periodic endpoint matrix receives the needed cascade suppression
input for this face.

## Consequence

Combining `PEnd.A` with an independently installed class-membership endpoint
matrix gives the periodic branch implication

```math
PST.A+CFI.A+End_{NS}\Longrightarrow\text{no finite periodic endpoint from cascade}.
```

## Boundary

This theorem is stated on the periodic `T^3`, zero-force branch. Whole-space
export belongs to its own downstream theorem surface.

For the active forward-gold material-history route, this note is support only.
The live estimate remains the full annular-density bridge

```math
\int_0^{T_*}
\sum_j2^{\gamma j}
\|\Delta_j\mathcal B^\sharp_\phi(t)\|_{L^1_x}\,dt<\infty ,
```

or equivalently the signed same-material full-clock estimate that implies the
fixed \(H^s\) continuation readout.
