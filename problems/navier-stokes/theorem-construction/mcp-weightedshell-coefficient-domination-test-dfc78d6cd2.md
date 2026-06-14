# WeightedShell Coefficient Domination Test

Status: conditional fixed-threshold coefficient theorem.

## Target

Prove a coefficient domination of the form

```math
\Lambda_N+\Theta_N^\sharp\le c\nu\,2^{2N}.
```

## Low-mode coefficient

By Bernstein and the periodic energy bound,

```math
\Lambda_N(t)=\|\nabla S_{N-4}u(t)\|_{L^\infty}
\le
C\sum_{k\le N-4}2^{5k/2}\|\Delta_k u(t)\|_2.
```

Using

```math
\|\Delta_k u(t)\|_2\le\|u(t)\|_2\le Q_0^{1/2},
```

the finite geometric sum gives

```math
\Lambda_N(t)
\le C Q_0^{1/2}2^{5N/2}.
```

This estimate is too large compared with `2^{2N}`. A sharper energy-only Bernstein route uses the gradient energy split:

```math
\|\Delta_k u\|_2\le 2^{-k}\|\nabla u\|_2,
```

which gives

```math
\Lambda_N(t)
\le C2^{3N/2}\|\nabla u(t)\|_2.
```

This yields pointwise domination whenever

```math
\|\nabla u(t)\|_2\le c_L\nu\,2^{N/2}.
```

Thus large-threshold domination holds on times where the enstrophy amplitude is below the threshold-dependent ceiling.

## Collar coefficient

The finite collar coefficient is

```math
\Theta_N^\sharp(t)=\sum_{m=N-M}^{N+M}2^{3m}\|\Delta_m u(t)\|_2^2.
```

Using energy only,

```math
\Theta_N^\sharp(t)
\le C_MQ_0 2^{3N}.
```

This is too large compared with `2^{2N}`. Using one gradient gives

```math
2^{3m}\|\Delta_m u\|_2^2
=2^m(2^m\|\Delta_m u\|_2)^2
\le C_M2^N\|\nabla u(t)\|_2^2.
```

Hence

```math
\Theta_N^\sharp(t)
\le C_M2^N\|\nabla u(t)\|_2^2.
```

This satisfies

```math
\Theta_N^\sharp(t)
\le c_C\nu\,2^{2N}
```

whenever

```math
\|\nabla u(t)\|_2^2
\le c_C C_M^{-1}\nu\,2^N.
```

## Verdict

The coefficient domination theorem holds under a threshold condition tied to instantaneous enstrophy:

```math
\|\nabla u(t)\|_2\le c_\ast\min\{\nu,\nu^{1/2}\}2^{N/2}
\Longrightarrow
\Lambda_N(t)+\Theta_N^\sharp(t)
\le c\nu\,2^{2N}.
```

A terminal-uniform fixed `N` domination requires a terminal enstrophy ceiling. The current theorem program supplies fixed-threshold reserve summability without needing this stronger pointwise domination.

## Boundary

This theorem is a conditional coefficient criterion. It is stronger than the reserve-summability route and is not required once direct reserve summability has been established.
