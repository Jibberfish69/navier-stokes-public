# Compactness Upgrade Lemma (Classical Euclidean Surface)

## Scope

This lemma package addresses the compactness/nonlinear-closure front for the classical 3D incompressible Navier-Stokes equation on `(0,T) x R^3`. It does not alter the theorem target and does not use modified equations.

## Fixed Classical Approximation Scheme

Let `u_0` be the theorem-target datum and define

`u_0^(n) := \mathbb{P}(\chi_{B_n}(u_0 * \rho_(1/n)))`.

Let `(u^(n), p^(n))` denote the corresponding smooth classical Navier-Stokes solutions on a common interval `(0,T) x R^3`.

## Hypotheses

Let `(u^(n), p^(n))` satisfy
`partial_t u^(n) + (u^(n) . grad)u^(n) + grad p^(n) = nu Delta u^(n)`,
`div u^(n) = 0`,
with a fixed admissible divergence-free initial-data class. Assume:

1. `sup_n ||u^(n)||_{L^infty(0,T;L^2(R^3))} < infty`.
2. `sup_n ||u^(n)||_{L^2(0,T;H^1(R^3))} < infty`.
3. `sup_n ||partial_t u^(n)||_{L^2(0,T;H^{-1}(R^3))} < infty`.
4. (Scale-barrier tail input) There exist `C_*, delta > 0` such that for all dyadic thresholds `N`,
   `sup_n int_0^T ||P_{>=N}u^(n)(t)||_{L^2_x}^2 dt <= C_* 2^{-2 delta N}`.

Define the compactness-defect operator

```math
\mathfrak{K}_{R,N}[u^(n),u]
:=
\limsup_{n\to\infty}\|P_{<N}(u^(n)-u)\|_{L^2(0,T;L^2(B_R))}
+ \sup_m \|P_{>=N}u^(m)\|_{L^2(0,T;L^2(B_R))}.
```

## Lemma C-U1 (Strong Local Compactness)

For each `R > 0`, there exists a subsequence and `u` such that
`u^(n) -> u` strongly in `L^2(0,T;L^2(B_R))`,
and additionally `u^(n) -> u` weak-* in `L^infty_t L^2_x` and weak in `L^2_t H^1_x`.

### Proof Skeleton

1. Low-frequency compactness: for fixed `N`, `P_{<N}u^(n)` is compact in `L^2(0,T;L^2(B_R))` by Aubin-Lions from hypotheses (2)-(3).
2. High-frequency smallness: hypothesis (4) makes `P_{>=N}u^(n)` uniformly small in `L^2_t L^2_x` for large `N`.
3. Recombination: write `u^(n) = P_{<N}u^(n) + P_{>=N}u^(n)`, pass `n -> infty` at fixed `N`, then send `N -> infty`.
4. This is exactly the statement that `\mathfrak{K}_{R,N}[u^(n),u] -> 0`.

## Lemma C-U2 (Nonlinear Tensor Closure)

On every `B_R`,
`u^(n) tensor u^(n) -> u tensor u` in `L^1(0,T;L^1(B_R))`.
Equivalently, for all compactly supported test tensors `Phi`,
`int_0^T int (u^(n) tensor u^(n)) : Phi -> int_0^T int (u tensor u) : Phi`.

### Proof Skeleton

Use
`u^(n) tensor u^(n) - u tensor u = (u^(n)-u) tensor u^(n) + u tensor (u^(n)-u)`.
By C-U1, `u^(n)-u` is strong in local `L^2`; by hypothesis (1), the companion factor is uniformly bounded in `L^2`. Apply Holder on `(0,T) x B_R`.

## Precise Remaining Conditional Point

The package is conditional only through hypothesis (4). If the scale-barrier tail estimate is proved on the same classical equation surface, C-U1 and C-U2 become fully discharged on that surface. Without (4), the strong local compactness step remains open, so nonlinear closure remains open.

In other words, the compactness bridge is a discharged downstream implication once the upstream scale-barrier bridge is available on this fixed approximation scheme.
