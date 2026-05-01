# Whole-Space R3 Shell-Tail Theorem From Localized Cascade And Tails

## Statement

Assume `Tail.E`, `PTail.EXH`, and `ECascade.Sched`. Then for every finite interval `[0,T]` and tolerance `rho>0`, there are a radius `R` and dyadic threshold `N` such that

```math
\sup_{t\le T}E_{N,R}(t)+\int_0^TD_{N,R}(t)dt\le \rho.
```

Here

```math
E_{N,R}=\sum_{j\ge N}2^{2j}\|\chi_R\Delta_j u\|_2^2,
\qquad
D_{N,R}=\sum_{j\ge N}2^{4j}\|\chi_R\Delta_j u\|_2^2.
```

## Proof

By `Tail.E` and `PTail.EXH`, choose `R` so large that the exterior energy, cutoff commutator, and pressure-tail errors in the localized cascade inequality have total integral below `rho/4`.

For this fixed `R`, `ECascade.Sched` gives a dyadic threshold `N` and finite scheduler partition such that the interior high-tail and dissipation budgets are below the remaining `3rho/4`.

Adding the interior scheduler estimate and the exterior error budget yields

```math
\sup_{t\le T}E_{N,R}(t)+\int_0^TD_{N,R}(t)dt\le \rho.
```

## Consequence

The repaired periodic shell-tail mechanism has a whole-space localized counterpart once exterior tightness and pressure tails are supplied.

## Boundary

This theorem gives localized `R^3` shell-tail suppression. It is an export component, not a direct global `H^s` theorem by itself.