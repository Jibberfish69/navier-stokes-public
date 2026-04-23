# Euler Curvature / Geometry Provenance Source Pack

## Status

Provenance-only demotion note for the Euler mirror.

## Exact Demotion Rule

The parent curvature-based regularity branch is not theorem-bearing on the
Euler mirror because its proof packet spends geometric diffusion / damping
terms that arise together with viscosity or heat-style regularization.

So on the Euler branch:

1. the parent curvature file is retained for source provenance;
2. it is not allowed to discharge the continuation slot;
3. any Euler-clean geometric replacement must be written separately through
   transport, Cauchy-Green, or vorticity-stretching objects on the exact Euler
   dynamics.

## Euler-Clean Residual

The exact surviving geometric content is only this:

```math
\partial_t \omega + (u\cdot\nabla)\omega = (\omega\cdot\nabla)u.
```

That is a live transport/stretching law, not a closed curvature-damping
theorem.

## Local Anchors

- [viscosity-dependence-ledger.yaml](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/viscosity-dependence-ledger.yaml)
- [audits/gradient-continuation-audit.yaml](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/audits/gradient-continuation-audit.yaml)

