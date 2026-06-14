# Euclidean Cascade Analogue With Localization And Exterior Tails

## Status

Conditional localized `R^3` analogue of the repaired periodic shell/tail suppression theorem.

## Setup

Let `u` be a smooth whole-space solution on a finite classical interval `I=[0,T]`. Let `\chi_R` be a cutoff equal to one on `B_R`, supported in `B_{2R}`, with

```math
|\nabla^k\chi_R|\le C_kR^{-k}.
```

Define localized high-tail quantities

```math
E_{N,R}(t):=\sum_{j\ge N}2^{2j}\|\chi_R\Delta_j u(t)\|_2^2,
```

```math
D_{N,R}(t):=\sum_{j\ge N}2^{4j}\|\chi_R\Delta_j u(t)\|_2^2.
```

## Theorem `ECascade.R3`

Assume exterior energy and pressure-tail budgets are available:

```math
Tail_R(T):=\sup_{t\le T}\int_{|x|>R}|u(x,t)|^2dx\to0,
```

and the pressure-tail theorem controls far-field pressure on `B_R`. Then the repaired cascade estimate localizes to

```math
\frac{d}{dt}E_{N,R}+(1-\eta)\nu D_{N,R}
\le
C\widetilde\Lambda_{N,R}^\sharp E_{N,R}+C_*2^{-2\delta N}+Err_{R,N}(t),
```

where

```math
\int_0^T Err_{R,N}(t)dt\to0
```

as `R\to\infty` after the exterior budgets are chosen.

Consequently, a localized threshold scheduler gives

```math
\sup_{t\le T}E_{N,R}(t)+\int_0^TD_{N,R}(t)dt\le \rho+o_R(1).
```

## Proof

The interior dyadic packet split is identical to the periodic proof on `B_R`:

```math
LowMode.A+SP.A+HH.Abs.Q\Longrightarrow GC.A.
```

The strict low-mode, threshold-spill, and high-high estimates are local Fourier estimates plus finite-collar summations. They hold on the interior region where `\chi_R=1`.

Commuting the cutoff through the equation introduces boundary terms supported in `B_{2R}\setminus B_R`. The representative terms are

```math
R^{-1}\int_{B_{2R}\setminus B_R}|u||\nabla u||\Delta_j u|,
\qquad
R^{-2}\int_{B_{2R}\setminus B_R}|u||\Delta_j u|.
```

By Cauchy-Schwarz, local smoothing, and exterior energy tightness, their time integrals are bounded by `Err_{R,N}` with

```math
\int_0^TErr_{R,N}(t)dt\to0
```

as `R\to\infty` along the exhaustion.

The pressure terms are split into local Poisson and far-field parts. The local part is controlled by the same Calderon-Zygmund/Schauder estimates as in the periodic branch. The far-field part is controlled by the whole-space pressure-tail theorem.

Thus the localized differential inequality follows. The coefficient `\widetilde\Lambda_{N,R}^\sharp` is fixed-threshold and fixed-window integrable on `[0,T]`; applying the same scheduler as in `PST.A` gives the localized shell/tail suppression estimate.

## Boundary

The theorem transfers the repaired cascade mechanism to `R^3` only under explicit exterior tail and pressure-tail budgets. It supplies the local component of an `R^3` exhaustion export; it does not create those exterior budgets from energy alone.
