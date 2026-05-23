# NS 20 Completion Contract

## Identity

This contract governs `NS 20` (`chat20`) inside
`problems/navier-stokes/euler-mirror/**`.

Main objective:

```math
\boxed{
\text{terminally classify Euler regularity routes from the actual incompressible Euler object.}
}
```

Execution doctrine:

```math
\boxed{
\text{define Euler membership natively, remove viscosity literally from every governing equation, and classify smoothness claims as conditional, false from base membership, or non-Euler.}
}
```

## Hard Fidelity Rules

1. Keep the governing PDE fixed to incompressible Euler:

```math
\partial_t u + \nabla\cdot(u\otimes u) + \nabla p = 0,
\qquad
\nabla\cdot u = 0.
```

2. Preserve pressure and incompressibility as primitive Euler structure.
3. Define class membership as `Member_E = EVol + EMom`; treat flow-map,
   transported-carrier, same-fluid, `Part`, and `Field` language as optional
   regularity/support language only.
4. Preserve theorem order whenever mirroring a parent proof family.
5. Do not silently keep any step that spends viscosity, dissipation, diffusion,
   heat, Stokes, Carleman, or other parabolic structure.
6. Keep the branch quarantined under `euler-mirror/**` unless the user
   explicitly reassigns ownership.

## Completion Conditions

This contract is complete only when **all** of the following are true.

### C1. Positive-Control Rewrite Complete

All positive-control files have been rewritten one by one into Euler form.

This includes, at minimum:

1. the target-fidelity / theorem-target ladder;
2. the source-grounded four-principle framework;
3. scale-barrier authoring surfaces;
4. monotone-functional authoring surfaces;
5. compactness / nonlinear-closure authoring surfaces;
6. continuation / regularity / Route B authoring surfaces;
7. integrated positive-route closure surfaces.

### C2. Euler Membership / Regularity Stack Rewrite Complete

The copied

```text
L13 -> CFI -> OFP -> LCI
```

stack has been retyped end-to-end beyond the first-wave mirror, including:

1. Euler-native `Member_E = EVol + EMom` authority;
2. `L13` endpoint vocabulary demotion in Euler form;
3. `CFI` regularity-forward-invariance boundary in Euler form;
4. `OFP` optional one-field regularity surface in Euler form;
5. the reduction notes beneath those surfaces;
6. an Euler-clean regularity-support replacement for `LCI.A` and its downstream
   receiver package.

### C3. Route B / Four-Bridge Euler Authoring Complete

The Route B / claim-ladder / four-bridge authoring surfaces have been rebuilt
as Euler theorem files, not left as Navier-Stokes summaries.

### C4. Exhaustive Family Audit Complete

Every one of the following families has been audited individually, file by
file, for Euler mirroring status:

1. selector
2. Hopf-shuffle
3. compactness
4. exact-potential
5. gradient / continuation
6. export / whole-space discharge

For each file, the audit must say one of:

1. mirrored faithfully,
2. mirrored with explicit theorem changes,
3. blocked by a non-Euler dependence,
4. provenance only.

### C5. Viscous / Parabolic Packets Replaced

Every explicitly viscous or parabolic packet used by the branch has either:

1. been replaced by an Euler-clean analogue, or
2. been permanently demoted from theorem-bearing status with that demotion
   recorded explicitly.

This includes at minimum:

1. `LCI.A`,
2. top-viscous readout packets,
3. viscous-center supplier packets,
4. exact-potential heat/static-diffusion packets,
5. any Route B continuation packet that still spends `\nu`.

### C6. Integrated Euler Closure Surface Exists

The branch contains at least one integrated theorem-facing Euler closure
surface that honestly assembles the rewritten routes into a terminal
classification.

## Execution Rule

The branch may use both:

1. positive-control / exhaustive estimates,
2. contradiction / class-membership.

Neither route may be silently discarded before the branch has earned that
decision on the Euler surface.

## Stop Rule

This contract does **not** count as complete merely because the branch is
mapped, scaffolded, or partially mirrored.

It is complete only when conditions `C1` through `C6` all hold.

Contract completion under `C1-C6` is still not a proof that Euler global
smoothness is solved. After terminal comparison closure, stronger Euler theorem
work stays inside route control through the May 23 continuum closure surfaces,
which separate viscosity-free smoothness overlap, viscosity divergence,
nonsmooth Euler boundary, and the local-to-global bridge rule.
