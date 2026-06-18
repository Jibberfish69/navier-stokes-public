# Exact-Potential `V2` Static-Diffusion Reduces To `PDO-Carleman`

## Status

Active theorem-facing reduction note for the repaired direct exact-potential
`V2` branch.

Role: identify the repaired bounded-chart interval-observability wall with the
already-installed parabolic node `PDO-Carleman`.

## Purpose

The notes
[exact-potential-f11d-static-diffusion-audit.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-f11d-static-diffusion-audit.md),
[exact-potential-v2-static-diffusion-wang-zhang-route.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-static-diffusion-wang-zhang-route.md),
and
[exact-potential-v2-static-diffusion-semigroup-reduction.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-static-diffusion-semigroup-reduction.md)
reduced the direct repaired `V2` branch to interval observability for the
bounded-chart operator

```math
\partial_t u
-\nu\,\nabla_\zeta\cdot(G_k\nabla_\zeta u)
+\widetilde b_k\cdot\nabla_\zeta u
+\widetilde c_k u
=0.
\tag{EPC.1}
```

The pair-defect PDE lane already has one named conditional parabolic node,
`PDO-Carleman`. This note identifies `(EPC.1)` as a bounded-chart realization
of that same node.

## Proposition `EPC.A` (localized repaired `V2` interval observability implies `PDO-Carleman`)

Assume that on every retained chart `\Omega_k\times I_k` the repaired
static-diffusion operator `(EPC.1)` satisfies interval observability from the
open observation subset `\omega_k\subset\Omega_k`, with constants uniform
across the finite-overlap chart family.

Then the repaired exact-potential `V2` route supplies the parabolic node
`PDO-Carleman` for the localized pair-defect packet.

### Proof

`PDO-Carleman` is the theorem-facing label for an observability estimate
controlling the relevant pair-defect observation norm by initial data plus the
pair-defect forcing ledger. On the repaired `V2` route, the homogeneous chart
equation is exactly `(EPC.1)` and the inhomogeneous source packet is the
localized forcing

```math
\widetilde f_k^{hi}+\widetilde f_k^{cut}.
\tag{EPC.2}
```

Apply the interval observability theorem on each chart to the homogeneous part,
then absorb `(EPC.2)` by Duhamel/source splitting exactly as in the direct
Wang--Zhang route. Sum over the finite-overlap chart family. The result is
precisely a route-local realization of the observability inequality named
`PDO-Carleman`. ∎

## Corollary `EPC.B` (the repaired direct `V2` wall collapses to the existing parabolic node)

On the repaired exact-potential branch, the direct `V2` route is now:

```math
\boxed{
\texttt{interval observability for the repaired bounded-chart operator}
}
\Longrightarrow
\boxed{
\texttt{PDO-Carleman}
}
\Longrightarrow
\boxed{
\texttt{pair-defect parabolic closure}
}
\Longrightarrow
\boxed{
\texttt{windowwise }V2
}.
\tag{EPC.3}
```

So the direct repaired `V2` branch no longer introduces a new terminal theorem
name. It terminates at the already-installed parabolic node `PDO-Carleman`.

## Interpretation

This is mainly a route-custody repair. The conservative repaired `V2` branch is
not a new observability family sitting beside the pair-defect PDE program. It is
one bounded-chart realization of that same program.

So the exact local wall may now be read more cleanly as:

```math
\boxed{
\texttt{prove the repaired bounded-chart operator lies in the existing }PDO\texttt{-Carleman class}
}.
\tag{EPC.4}
```

That wall is now sharpened once more in
[exact-potential-v2-static-diffusion-heat-plus-perturbation-split.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-static-diffusion-heat-plus-perturbation-split.md):
it splits into fixed-metric heat observability plus one bounded lower-order
perturb-transfer theorem. With the external fixed-metric heat import accepted,
the lower-order side is then reduced further in
[exact-potential-v2-bounded-lower-order-absorption-from-fixed-metric-carleman.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-bounded-lower-order-absorption-from-fixed-metric-carleman.md):
once the fixed-metric packet is imported in uniform Carleman form, the bounded
first-order and zeroth-order coefficients satisfying `(ELA.2)` are absorbed by
the threshold `(ELA.7)`, so the repaired direct branch reduces to the
fixed-metric Lipschitz Carleman import alone.
