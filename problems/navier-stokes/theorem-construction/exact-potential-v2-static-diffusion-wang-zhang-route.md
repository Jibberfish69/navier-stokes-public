# Exact-Potential `V2` Static-Diffusion Wang--Zhang Route

## Status

Active theorem-facing reduction note for the repaired exact-potential convex
`V2` branch.

Role: reduce measurable-time observability on the repaired `F.11d` packet to an
interval-observability theorem via the abstract analytic-semigroup route.

## Purpose

The static-diffusion audit
[exact-potential-f11d-static-diffusion-audit.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-f11d-static-diffusion-audit.md)
shows that the active localized operator-class wall is

```math
\partial_t \widetilde q_k
-\nu\,\nabla_\zeta\cdot(G_k\nabla_\zeta \widetilde q_k)
+\widetilde b_k\cdot \nabla_\zeta \widetilde q_k
+\widetilde c_k\widetilde q_k
=
\widetilde f_k^{hi}+\widetilde f_k^{cut}.
\tag{EWZ.1}
```

Proposition `F.11g` already allowed a direct measurable-time observability
theorem for the coefficient class produced by `F.11d`. This note sharpens that
option using the abstract measurable-time theorem of Wang--Zhang.

## Proposition `EWZ.A` (static-diffusion `V2` reduces to interval observability)

Fix one retained chart `\Omega_k\times I_k`, let `H_k:=L^2(\Omega_k)`, and let
`A_k` denote the realized homogeneous operator associated to the repaired
static-diffusion packet `(EWZ.1)` on the chart with the chosen boundary
condition.

Assume:

1. `-A_k` generates an analytic semigroup on `H_k`;
2. the observation operator `B_k` given by restriction to the open observation
   set `\omega_k\subset\Omega_k` is admissible for that semigroup;
3. the pair `(A_k,B_k)` satisfies an observability inequality on time
   intervals.

Then Wang--Zhang's abstract measurable-time theorem yields observability from
every measurable time set `E_k\subset I_k` with `|E_k|>0`. Therefore the
repaired exact-potential `V2` wall on that chart reduces to one interval
observability theorem for the static-diffusion operator.

### Proof

Wang--Zhang prove measurable-time observability for abstract evolutions
`u'=A u` in a Hilbert space under exactly the packet above: `A` generates an
analytic semigroup, `B` is an admissible observation operator, and interval
observability is already available. Apply that theorem to the homogeneous part
of `(EWZ.1)` on `H_k`. Then Duhamel's formula absorbs the source ledger
`\widetilde f_k^{hi}+\widetilde f_k^{cut}` into the same forcing packet already
tracked on the exact-potential route. ∎

## Corollary `EWZ.B` (the repaired convex `V2` wall)

On the repaired theorem-facing `F.11d` readout, the live convex branch may be
read as

```math
\boxed{
\texttt{static-diffusion chart operator admits analytic-semigroup realization}
}
\Longrightarrow
\boxed{
\texttt{interval observability on open time windows}
}
\Longrightarrow
\boxed{
\texttt{Wang--Zhang measurable-time observability}
}
\Longrightarrow
\boxed{
\texttt{windowwise }V2
}.
\tag{EWZ.2}
```

So the measurable-time step itself is no longer the sharp local burden once the
static-diffusion audit is accepted. The sharp burden is the interval
observability theorem for the repaired operator class. This reduction is now
made explicit in
[exact-potential-v2-static-diffusion-semigroup-reduction.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-static-diffusion-semigroup-reduction.md),
which collapses the direct route to interval observability alone, and then in
[exact-potential-v2-static-diffusion-reduces-to-pdo-carleman.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-static-diffusion-reduces-to-pdo-carleman.md),
which identifies that wall with the existing parabolic node `PDO-Carleman`.

## Interpretation

This is the conservative direct route on the repaired `F.11d` packet. It avoids
the stronger flattening-to-`\Delta` requirement of the Phung--Wang import and
instead asks for one interval observability theorem for the fixed chart metric
operator. That interval-observability wall is now sharpened further in
[exact-potential-v2-bounded-lower-order-absorption-from-fixed-metric-carleman.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-bounded-lower-order-absorption-from-fixed-metric-carleman.md):
the separate lower-order packet is absorbed once the fixed-metric Lipschitz
import is taken in uniform Carleman form. The external support for the
measurable-time step remains:
[Wang--Zhang 2014](https://arxiv.org/abs/1406.3422).
