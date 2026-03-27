# Lemma S.T (Classical Dyadic Tail-Flux Scale Barrier)

## Role

This lemma isolates the exact scale-barrier bridge required before the compactness and gradient packages can be treated as theorem-bearing on the classical Navier-Stokes surface.

## Setting

Let `\{u^(n), p^(n)\}_{n \in N}` be classical solutions of

```math
\partial_t u^(n) + (u^(n)\cdot\nabla)u^(n) + \nabla p^(n) = \nu \Delta u^(n),
\qquad \nabla \cdot u^(n) = 0,
```

on `(0,T) x R^3`, with `\nu > 0`, smooth divergence-free data in the theorem admissible class, and uniform bounds

```math
\sup_n \sup_{t \in [0,T]} \|u^(n)(t)\|_{L^2_x}^2
+ 2\nu \sup_n \int_0^T \|\nabla u^(n)(t)\|_{L^2_x}^2 dt \le C_E.
```

Let `P_j` be homogeneous Littlewood-Paley projectors and define high-frequency energy

```math
E_N^(n)(t) := \sum_{j \ge N}\|P_j u^(n)(t)\|_{L^2_x}^2.
```

Define the mediating object

```math
\mathfrak{S}_N[u^(n)]
:=
\int_0^T \sum_{j \ge N}
\left|\left\langle P_j((u^(n)\cdot\nabla)u^(n)),\,P_j u^(n)\right\rangle\right|dt
- \eta \nu \int_0^T \sum_{j \ge N}2^{2j}\|P_j u^(n)\|_{L^2_x}^2dt.
```

## Lemma Statement

Assume there exist constants `\delta > 0`, `N_* in N`, `C_0 > 0`, and `0 < \eta < \nu` such that, for every `n` and `N \ge N_*`,

```math
\int_0^T \sum_{j \ge N}
\left|\left\langle P_j((u^(n)\cdot\nabla)u^(n)),\,P_j u^(n)\right\rangle\right|dt
\le C_0 2^{-2\delta N}
+ \eta \int_0^T \sum_{j \ge N}2^{2j}\|P_j u^(n)\|_{L^2_x}^2dt.
```

Then there is `C_* = C_*(C_E,\nu,\eta,C_0,T)` such that

```math
\sup_n \int_0^T \|P_(\ge N)u^(n)(t)\|_{L^2_x}^2 dt
\le C_* 2^{-2\delta N},
\qquad \forall N \ge N_*.
```

Equivalently,

```math
E_N^(n)(T)
+ (\nu-\eta)\int_0^T\sum_{j\ge N}2^{2j}\|P_j u^(n)\|_{L^2_x}^2dt
\le E_N^(n)(0) + C_0 2^{-2\delta N}.
```

## Proof Skeleton

1. Apply `P_j` to the classical equation and pair with `P_j u^(n)`.
2. Sum over `j \ge N`; the pressure contribution cancels by Leray-divergence structure.
3. Keep viscous terms exact as `\nu \sum_{j \ge N}2^{2j}\|P_j u^(n)\|_{L^2_x}^2`.
4. Insert the dyadic flux assumption and absorb the `\eta` fraction into viscous dissipation.
5. Integrate in time and control initial tail through the same admissible-data surface.
6. Conclude uniform-in-`n` exponential dyadic tail decay in `N`.

## Object Slots

- `domain`: classical approximation family on `(0,T) x R^3`
- `codomain`: tail-defect scalar `\mathfrak{S}_N[u^(n)]`
- `admissibility`: same energy surface and same classical PDE as the main theorem
- `invariance`: pressure gauge and equivalent dyadic partitions
- `theorem_interface`: exact upstream input for compactness and gradient continuation
- `critical_scale_measure`: `E_N^(n)` and the dissipation tail
- `closure_mechanism`: defect absorption into viscosity
- `gradient_transfer_role`: supplies the summable remainder seen by the gradient-transfer operator

## Conditional Boundary (Honesty Clause)

This lemma is **conditional on the dyadic flux hypothesis** above. The unresolved frontier is proving that flux inequality directly on the classical Euclidean Navier-Stokes equation with constants uniform in `n` and `N`, without modified dynamics, extra smoothing hypotheses, or geometric surrogates.
