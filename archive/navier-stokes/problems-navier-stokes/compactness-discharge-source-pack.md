# Compactness Discharge Source Pack

## Frontier Target

Discharge the compactness/nonlinear-closure bridge on the classical Euclidean 3D Navier-Stokes surface:

- strong local compactness of the approximation family,
- convergence of the nonlinear tensor to the classical limit tensor.

## Classical-Euclidean Setup

Fix one approximation scheme once and for all. Let `u_0` be the theorem-target datum and define

`u_0^(n) := \mathbb{P}(\chi_{B_n}(u_0 * \rho_(1/n)))`,

where `\mathbb{P}` is the Leray projector, `\rho_(1/n)` is a standard mollifier, and `\chi_{B_n}` is a smooth cutoff. Let `(u^(n), p^(n))` be the corresponding smooth classical Navier-Stokes solutions on a common interval `(0,T) x R^3`.

Each pair solves the same incompressible Navier-Stokes system:
`partial_t u^(n) + (u^(n) . grad)u^(n) + grad p^(n) = nu Delta u^(n)`, `div u^(n) = 0`,
with the same admissible divergence-free data class as the main theorem target.

No modified equation, surrogate geometry, or morphic regularization is allowed in this package.

## Mediating Object

- `nonlinear_compactness_upgrade_operator`
- domain: the fixed classical approximation family together with a weak limit candidate `u`
- codomain: a compactness-defect scalar `\mathfrak{K}_{R,N}[u^(n),u]` on each ball `B_R`
- admissibility: `L^\infty_t L^2_x`, `L^2_t H^1_x`, `\partial_t` control, and the classical scale-barrier tail estimate on the same family
- invariance: compatible with subsequence extraction and independent of pressure normalization
- theorem_interface: vanishing defect implies strong local `L^2` convergence and then nonlinear tensor closure on the same equation surface
- closure_mechanism: low-mode Aubin-Lions compactness plus high-mode tail smallness

Define

```math
\mathfrak{K}_{R,N}[u^(n),u]
:=
\limsup_{n\to\infty}\|P_{<N}(u^(n)-u)\|_{L^2(0,T;L^2(B_R))}
+ \sup_m \|P_{>=N}u^(m)\|_{L^2(0,T;L^2(B_R))}.
```

## Hypotheses For Compactness Upgrade

Assume, uniformly in `n`:

- `u^(n)` bounded in `L^infty(0,T;L^2(R^3))`,
- `u^(n)` bounded in `L^2(0,T;H^1(R^3))`,
- `partial_t u^(n)` bounded in `L^2(0,T;H^{-1}(R^3))`,
- dyadic tail estimate from the scale-barrier package:
  `sup_n int_0^T ||P_{>=N} u^(n)(t)||_{L^2_x}^2 dt <= C_* 2^{-2 delta N}` for all `N`.

## Compactness Statement (C1)

For every ball `B_R`, there is a subsequence (not relabeled) and `u` such that:

- `u^(n) -> u` weak-* in `L^infty_t L^2_x`,
- `u^(n) -> u` weak in `L^2_t H^1_x`,
- `u^(n) -> u` strong in `L^2(0,T;L^2(B_R))`.

### Proof Sketch For C1

1. For fixed `N`, apply an Aubin-Lions argument to low modes `P_{<N}u^(n)` using the `L^2_t H^1_x` and `partial_t` bounds to get strong local compactness of low frequencies.
2. Use the scale-barrier tail bound to make `P_{>=N}u^(n)` uniformly small in `L^2_t L^2_x` for large `N`.
3. Combine low-mode compactness plus high-mode smallness by a low/high decomposition:
   `u^(n) = P_{<N}u^(n) + P_{>=N}u^(n)`,
   then send `n -> infty` first and `N -> infty` second.
4. In the operator language above, `\mathfrak{K}_{R,N}[u^(n),u]` tends to zero as `N -> infty`, which is the exact compactness bridge object.

## Nonlinear Tensor Closure Statement (C2)

For each `R > 0`,
`u^(n) tensor u^(n) -> u tensor u` in `L^1(0,T;L^1(B_R))`.
Hence, for every compactly supported test tensor `Phi`,
`int_0^T int_{R^3} (u^(n) tensor u^(n)) : Phi -> int_0^T int_{R^3} (u tensor u) : Phi`.

### Proof Sketch For C2

Use
`u^(n) tensor u^(n) - u tensor u = (u^(n)-u) tensor u^(n) + u tensor (u^(n)-u)`.
On each `B_R`, the strong `L^2` convergence from C1 controls one factor, while the uniform `L^2` energy bound controls the other. Holder then yields `L^1_t L^1_x` convergence.

## Exact Dependency On Scale-Barrier Tail Estimate

The compactness package is no longer open-ended. Its only upstream dependency is the named scale-barrier tail estimate on the same fixed classical approximation scheme.

If that dyadic tail estimate is proved on the same surface, C1 and C2 follow by the decomposition argument above. The compactness/nonlinear-closure bridge is therefore discharged downstream of the scale-barrier input; it is not an independent frontier invention any more.

## Local Anchors

- [compactness-upgrade-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/compactness-upgrade-lemma.md)
- [nonlinear-compactness-upgrade-operator.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/nonlinear-compactness-upgrade-operator.md)
- [nonlinear-closure-discharge-source-pack.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/nonlinear-closure-discharge-source-pack.md)
