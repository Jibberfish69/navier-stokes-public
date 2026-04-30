# Augmented Coefficient Admissibility For `\widetilde\Lambda_N^\sharp`

## Status

Theorem-facing admissibility result for the coefficient in the repaired gradient cascade estimate.

## Definitions

Fix a scheduler interval `I_a=[s_a,s_{a+1}]` and a dyadic threshold `N_a`. Set

```math
\Lambda_{N_a}(t):=\|\nabla S_{N_a-4}u(t)\|_{L^\infty},
```

```math
\Theta_{N_a}^\sharp(t):=
\sum_{m=N_a-M}^{N_a+M}2^{3m}\|\Delta_m u(t)\|_2^2,
```

and

```math
\widetilde\Lambda_{N_a}^\sharp(t):=\Lambda_{N_a}(t)+\Theta_{N_a}^\sharp(t).
```

## Theorem `Coeff.A`

For every fixed scheduler threshold `N_a`,

```math
\widetilde\Lambda_{N_a}^\sharp\in L^1(I_a).
```

Moreover, the integral is finite with an explicit bound depending only on the fixed threshold, the collar width, the length of the scheduler interval, and the route energy/enstrophy budget.

## Proof

For the low-mode coefficient, Bernstein gives

```math
\|\nabla S_{N_a-4}u(t)\|_\infty
\le
C\sum_{k\le N_a-4}2^{\frac52k}\|\Delta_k u(t)\|_2.
```

Since the sum is finite at fixed `N_a`, the energy component of `Q(t)` gives

```math
\Lambda_{N_a}(t)
\le
C_{N_a}\|u(t)\|_2
\le C_{N_a}Q_0^{1/2}.
```

Thus

```math
\int_{I_a}\Lambda_{N_a}(t)\,dt
\le |I_a|C_{N_a}Q_0^{1/2}<\infty.
```

For the threshold-collar coefficient, the finite collar and the energy component give

```math
\Theta_{N_a}^\sharp(t)
=
\sum_{m=N_a-M}^{N_a+M}2^{3m}\|\Delta_m u(t)\|_2^2
\le
C_{N_a,M}\|u(t)\|_2^2
\le C_{N_a,M}Q_0.
```

Therefore

```math
\int_{I_a}\Theta_{N_a}^\sharp(t)\,dt
\le |I_a|C_{N_a,M}Q_0<\infty.
```

Adding the two estimates proves

```math
\int_{I_a}\widetilde\Lambda_{N_a}^\sharp(t)\,dt<\infty.
```

## Scheduler Use

The coefficient is fixed after the scheduler chooses `N_a`. Hence the scheduler may choose subintervals satisfying any prescribed budget

```math
\int_{J}\widetilde\Lambda_{N_a}^\sharp(t)\,dt\le L_*
```

by absolute continuity of the integral.

## Boundary

This result supplies fixed-threshold admissibility on each scheduler interval. It makes no uniform-in-threshold claim and spends no critical `\|\nabla u\|_\infty` control.