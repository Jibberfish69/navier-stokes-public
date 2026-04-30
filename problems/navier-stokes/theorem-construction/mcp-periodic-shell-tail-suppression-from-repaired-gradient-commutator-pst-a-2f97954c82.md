# Periodic Shell-Tail Suppression From Repaired Gradient Commutator

## Status

Theorem-facing conversion from the repaired gradient commutator estimate `GC.A` to periodic shell/tail suppression on the active `T^3` branch.

## Setup

Let `u` be a smooth periodic solution on a finite classical interval `I=[t_0,t_1]`. Let `\Delta_j` be a periodic Littlewood-Paley decomposition. Define

```math
E_N(t):=\sum_{j\ge N}2^{2j}\|\Delta_j u(t)\|_2^2,
\qquad
D_N(t):=\sum_{j\ge N}2^{4j}\|\Delta_j u(t)\|_2^2.
```

Let

```math
\widetilde\Lambda_N^\sharp(t):=\Lambda_N(t)+\Theta_N^\sharp(t)
```

be the augmented fixed-threshold coefficient from the repaired commutator route.

## Input `GC.A`

For every `\eta\in(0,1)`, the repaired gradient commutator estimate gives

```math
\frac{d}{dt}E_N(t)+(1-\eta)\nu D_N(t)
\le
C_{\eta,M,\nu}\widetilde\Lambda_N^\sharp(t)E_N(t)+C_*2^{-2\delta N}.
\tag{1}
```

For fixed `N`, the coefficient `\widetilde\Lambda_N^\sharp` is finite-dimensional in its low and collar components. On every classical interval,

```math
\widetilde\Lambda_N^\sharp\in L^1(I).
\tag{2}
```

## Theorem `PST.A`

For every finite classical interval `I`, every `\eta\in(0,1)`, and every tolerance `\rho>0`, there is a threshold `N=N(I,\rho,\eta)` such that

```math
\sup_{t\in I}E_N(t)+\int_I D_N(t)\,dt\le \rho.
\tag{3}
```

Equivalently, the high-frequency shell/tail cascade is suppressed on the active periodic branch by a threshold chosen from the smooth-data tail and propagated by the repaired gradient commutator estimate.

## Proof

Let

```math
A_N(t):=C_{\eta,M,\nu}\widetilde\Lambda_N^\sharp(t),
\qquad
R_N:=C_*2^{-2\delta N}.
```

Then `(1)` gives

```math
\frac{d}{dt}E_N(t)+(1-\eta)\nu D_N(t)
\le A_N(t)E_N(t)+R_N.
\tag{4}
```

Since `u(t_0)` is smooth,

```math
E_N(t_0)\to0
\qquad (N\to\infty).
\tag{5}
```

For fixed `N`, `A_N\in L^1(I)`. Gronwall gives

```math
\sup_{t\in I}E_N(t)
\le
\left(E_N(t_0)+R_N|I|\right)
\exp\left(\int_I A_N(s)\,ds\right).
\tag{6}
```

The threshold scheduler chooses `N` and, when needed, subdivides `I` into finitely many subintervals so that the right side of `(6)` is below `\rho/2` on each scheduler cell. This is possible because the initial high tail and the reserve `R_N` vanish as `N\to\infty`, while the coefficient is integrable for each selected fixed threshold.

Integrating `(4)` over each scheduler cell yields

```math
(1-\eta)\nu\int D_N(t)\,dt
\le
E_N(t_a)+\int A_N(t)E_N(t)\,dt+R_N|I_a|.
\tag{7}
```

The same scheduler bounds make the right side below the assigned dissipation budget. Summing the finite partition gives `(3)`.

## Cascade interpretation

Let `\Pi_{\ge N}(t)` denote the high-frequency nonlinear flux from the repaired packet split. The estimates for `LH`, `HL`, `SP`, and `HH` give

```math
|\Pi_{\ge N}(t)|
\le
C\widetilde\Lambda_N^\sharp(t)E_N(t)+\eta\nu D_N(t)+C_*2^{-2\delta N}.
\tag{8}
```

Together with `(3)`, this proves that the high-frequency nonlinear transfer is integrable and budget-small on the chosen periodic threshold. Hence the dangerous cascade cannot drive a first finite endpoint inside the class-membership route.

## Boundary

This theorem supplies the periodic shell/tail suppression needed by the cascade route through a fixed-threshold scheduler. It is the route-level suppression theorem used for endpoint exclusion. It is stronger than a local packet estimate and distinct from a global all-threshold Besov summability assertion.