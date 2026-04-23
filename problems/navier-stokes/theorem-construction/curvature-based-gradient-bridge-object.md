# Mediating Object: `curvature_based_gradient_bridge_discharge`

## Object Identifier

- `object_id`: `curvature_based_gradient_bridge_discharge`
- `canonical_alias`: `ricci_damped_gradient_surface`
- `object_kind`: source-faithful fourth-bridge object
- `frontier_target`: `bridge-gradient-control`

## Purpose

This file formalizes the original source-family fourth bridge in the same object style
used elsewhere in the lane.

Its job is now to preserve the old curvature route as a precise provenance object
rather than leave gradient control trapped in a vague historical note.

## Domain

For fixed horizon `T > 0`, viscosity `nu > 0`, and a source-faithful geometric carrier
`(M, g(t))`, the domain consists of divergence-free Navier-Stokes solutions `u` on
`(0,T) x M` satisfying:

1. `partial_t u + nabla_u u = -grad_g(p) + nu Delta_g u`;
2. `Ric(g) >= kappa > 0` on the source-permitted carrier;
3. the bridge is retained only as the original fourth-slot provenance object rather than as the theorem-primary Euclidean route;
4. no modified dissipation, filtered evolution, or morphic regularization is introduced.

## Codomain

The codomain is the curvature-damped gradient control package:

```math
\Gamma_g[u](t) := \|\nabla u(t)\|_{L^2(M,g)}^2
```

together with the source evolution law

```math
\partial_t |\nabla u|^2
=
- \mathrm{Ric}(g)(\nabla u,\nabla u)
+ \nu \Delta_g |\nabla u|^2
+ C |\nabla u|^3.
```

## Admissibility

- source-faithful curvature provenance only;
- positive Ricci lower bound explicit;
- same theorem-family branch as `Section_5-_Curvature-Based_Regularity.tex`;
- not automatically interchangeable with the Euclidean replacement package.

## Invariance

- geometric under the chosen source carrier `(M,g)`;
- preserves the original fourth-bridge posture of the source family;
- stays separate from the theorem-primary Euclidean dyadic machinery.

## Theorem Interface

Discharging `bridge-gradient-control` on the old curvature branch means proving the following local provenance content:

1. the fourth bridge is carried by the Ricci-damped gradient evolution law;
2. positive curvature plus viscosity bound the gradient quantity on the source carrier;
3. that bounded gradient quantity is the exact source-faithful mechanism that feeds back into the scale barrier;
4. after Route B promotion, this object remains explanatory provenance rather than theorem-primary closure.

## Critical Scale Measure

The controlled quantity is the geometric gradient energy `Gamma_g[u](t)`.
Its theorem role is to prevent the gradient blow-up channel that would otherwise keep the cascade alive.

## Closure Mechanism

The source-family closure mechanism is loop-based:

- scale control supports compactness,
- compactness supports curvature-based regularity,
- curvature-damped gradient control strengthens the scale barrier again.

So this object closes the fourth slot only on the old curvature branch and only as part of that legacy loop.

## Gradient Transfer

Direct on the curvature branch.
Unlike the later Euclidean package, this object does not need dyadic coercivity transfer to define its bridge role.
Its transfer mechanism is the Ricci-damped evolution itself.

## Branch Contract

- `bridge_slot`: `gradient-control bridge discharge`
- `selected_branch`: `deprecated source-faithful curvature provenance`
- `theorem_primary_branch`: `route_b_euclidean_gradient_transfer`
- `status`: exact local source-faithful provenance object preserved
