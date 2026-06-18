# Exact-Potential `V2` Static-Diffusion Heat-Plus-Perturbation Split

## Status

Active theorem-facing reduction note for the repaired direct exact-potential
`V2` branch.

Role: split the repaired bounded-chart `PDO-Carleman` wall into one base heat
observability theorem and one lower-order perturb-transfer theorem.

## Purpose

The repaired direct `V2` route now stops at the existing parabolic node
`PDO-Carleman`; see
[exact-potential-v2-static-diffusion-reduces-to-pdo-carleman.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-static-diffusion-reduces-to-pdo-carleman.md).

This note sharpens that remaining wall. The repaired operator has one fixed
diffusion metric plus bounded first-order and zeroth-order coefficients, so the
direct local theorem should factor into:

1. interval observability for the fixed-metric heat part;
2. perturbative transfer to the full operator satisfying the coefficient bound
   later recorded as `(ELA.2)`.

## Proposition `EHP.A` (the repaired operator splits into base heat plus bounded perturbation)

Fix one retained chart `\Omega_k`, and write the repaired homogeneous operator
as

```math
\mathcal L_k u
=
\underbrace{\nu\,\nabla_\zeta\cdot(G_k\nabla_\zeta u)}_{\mathcal L_k^{heat}u}
\underbrace{\bigl(-\widetilde b_k\cdot\nabla_\zeta u-\widetilde c_k u\bigr)}_{\mathcal P_k u}.
\tag{EHP.1}
```

Then the direct repaired `V2` wall factors as:

```math
\boxed{
\texttt{interval observability for }\partial_t u+\mathcal L_k^{heat}u=0
}
\qquad+\qquad
\boxed{
\texttt{bounded lower-order perturb-transfer from }\mathcal L_k^{heat}\texttt{ to }\mathcal L_k
}.
\tag{EHP.2}
```

### Proof

This is simply the algebraic decomposition `(EHP.1)`. The repaired audit fixes
the leading part `\mathcal L_k^{heat}` once the chart is chosen, and all
dependence on the pair drift enters through the bounded first-order and
zeroth-order perturbation `\mathcal P_k`. Therefore interval observability for
the full operator may be sought by combining a base observability theorem for
`\mathcal L_k^{heat}` with a perturb-transfer theorem for bounded lower-order
terms. ∎

## Corollary `EHP.B` (the direct repaired `V2` wall is a two-packet classical parabolic program)

The repaired exact-potential direct branch now reads:

```math
\boxed{
\texttt{heat observability for the fixed Lipschitz chart metric }G_k
}
\Longrightarrow
\boxed{
\texttt{interval observability for }\mathcal L_k^{heat}
}
\Longrightarrow
\boxed{
\texttt{lower-order perturb-transfer to }\mathcal L_k
}
\Longrightarrow
\boxed{
\texttt{PDO-Carleman}
}
\Longrightarrow
\boxed{
\texttt{windowwise }V2
}.
\tag{EHP.3}
```

So the sharp local wall is no longer an undifferentiated Carleman theorem. It is
the pair

```math
\boxed{
\texttt{fixed-metric heat observability}
}
\qquad+\qquad
\boxed{
\texttt{lower-order perturb-transfer}
}.
\tag{EHP.4}
```

## Interpretation

This is the cleanest honest stop line on the repaired direct route. The fixed
diffusion metric `G_k` suggests a classical heat-observability theorem on a
bounded domain with Lipschitz metric, while the lower-order packet should be a
separate robustness theorem. That matches both the internal perturb-transfer
logic already visible elsewhere in the lane and the external picture:

- [Laurent--Léautaud 2018](https://arxiv.org/abs/1806.00969) give observability
  estimates for the heat equation in a bounded class of Lipschitz metrics;
- [Wang--Zhang 2014](https://arxiv.org/abs/1406.3422) then converts interval
  observability to measurable-time observability in the abstract analytic
  semigroup setting.

What is still not on disk is the exact perturb-transfer theorem for the bounded
first-order and zeroth-order terms on this repaired chart class. This is now
recorded as the intermediate split in
[exact-potential-v2-fixed-metric-heat-supported-perturbation-remaining.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-fixed-metric-heat-supported-perturbation-remaining.md).
That lower-order side is now reduced further in
[exact-potential-v2-bounded-lower-order-absorption-from-fixed-metric-carleman.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-bounded-lower-order-absorption-from-fixed-metric-carleman.md),
which shows that the separate perturb-transfer wall disappears once the
fixed-metric Lipschitz import is taken in the stronger uniform Carleman form.
