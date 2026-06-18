# Exact-Potential `V2` Fixed-Metric Heat Supported, Perturbation Remaining

## Status

Intermediate theorem-facing reduction note for the repaired direct
exact-potential `V2` route.

Role: isolate the sole remaining local theorem once the fixed-metric heat
observability import is accepted.

## Purpose

The note
[exact-potential-v2-static-diffusion-heat-plus-perturbation-split.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-static-diffusion-heat-plus-perturbation-split.md)
reduced the repaired direct `V2` branch to:

1. fixed-metric heat observability for the static chart metric `G_k`;
2. bounded lower-order perturb-transfer.

This note records the split itself. The lower-order side is now sharpened
further in
[exact-potential-v2-bounded-lower-order-absorption-from-fixed-metric-carleman.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-bounded-lower-order-absorption-from-fixed-metric-carleman.md).

## Proposition `EHR.A` (base heat observability is externally supported on the repaired chart class)

Assume the retained chart family satisfies the uniform geometric packet already
named in `F.11d`:

1. `\Omega_k` belongs to one bounded chart family;
2. `G_k` is uniformly elliptic;
3. `G_k` is uniformly Lipschitz on the retained charts.

Then the base-model heat observability theorem for

```math
\partial_t u-\nu\,\nabla_\zeta\cdot(G_k\nabla_\zeta u)=0
\tag{EHR.1}
```

is supported by the external Lipschitz-metric heat observability literature.

### Source support

[Laurent--Léautaud 2018](https://arxiv.org/abs/1806.00969) prove a uniform
Carleman estimate for bounded families of Lipschitz metrics, and explicitly note
that it yields uniform spectral inequalities and observability estimates for the
heat equation in a bounded class of Lipschitz metrics.

So, once the repaired `F.11d` packet is read with fixed diffusion `\nu G_k`,
the base heat-observability side is no longer the sharp open local theorem on
this route.

## Corollary `EHR.B` (at this stage, the only remaining local theorem on the repaired direct route)

On the repaired direct exact-potential `V2` branch, the sharp remaining local
wall is now:

```math
\boxed{
\texttt{bounded lower-order perturb-transfer from }
\partial_t-\nu\nabla_\zeta\cdot(G_k\nabla_\zeta)
\texttt{ to }
\partial_t-\nu\nabla_\zeta\cdot(G_k\nabla_\zeta)
+\widetilde b_k\cdot\nabla_\zeta
+\widetilde c_k
}.
\tag{EHR.2}
```

Equivalently, after importing the fixed-metric heat observability theorem, the
repaired direct route reduces to proving that interval observability is stable
under the bounded first-order and zeroth-order perturbation packet carried by
`\widetilde b_k,\widetilde c_k`.

## Interpretation

This is the cleanest honest intermediate split on the repaired direct branch:

```math
\boxed{
\texttt{fixed-metric heat observability}
}
\Longrightarrow
\boxed{
\texttt{bounded lower-order perturb-transfer}
}
\Longrightarrow
\boxed{
\texttt{PDO-Carleman}
}
\Longrightarrow
\boxed{
\texttt{windowwise }V2
}.
\tag{EHR.3}
```

So the exact remaining local theorem is no longer a generic observability theorem
for the whole repaired operator. At this stage it is the perturb-transfer
theorem for bounded first-order and zeroth-order coefficients on the fixed
Lipschitz chart metric class. That coefficient wall is now reduced further in
[exact-potential-v2-bounded-lower-order-absorption-from-fixed-metric-carleman.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-bounded-lower-order-absorption-from-fixed-metric-carleman.md),
which shows that once the fixed-metric packet is imported in Carleman form, the
bounded coefficients satisfying `(ELA.2)` are absorbed by `(ELA.7)`.
