# Mediating Object: `curvature_based_gradient_bridge_discharge`

## Object Identifier

- `object_id`: `curvature_based_gradient_bridge_discharge`
- `canonical_alias`: `ricci_damped_gradient_surface`
- `object_kind`: source-faithful fourth-bridge object
- `frontier_target`: `bridge-gradient-control`

## Purpose

This file formalizes the original source-family fourth bridge in the same object style
used elsewhere in the lane.

Its job is to make the curvature route exact enough that the lane can treat it as the
primary fourth-bridge branch instead of leaving gradient control trapped in a vague
"curvature vs Euclidean" mismatch.

## Domain

For fixed horizon `T > 0`, viscosity `nu > 0`, and a source-faithful geometric carrier
`(M, g(t))`, the domain consists of divergence-free Navier-Stokes solutions `u` on
`(0,T) x M` satisfying:

1. `partial_t u + nabla_u u = -grad_g(p) + nu Delta_g u`;
2. `Ric(g) >= kappa > 0` on the source-permitted carrier;
3. the bridge is being used as the original fourth slot rather than as a Euclidean replacement;
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

- source-faithful curvature route only;
- positive Ricci lower bound explicit;
- same theorem-family branch as `Section_5-_Curvature-Based_Regularity.tex`;
- not automatically interchangeable with the Euclidean replacement package.

## Invariance

- geometric under the chosen source carrier `(M,g)`;
- preserves the original fourth-bridge posture of the source family;
- forgets the later Euclidean dyadic replacement machinery unless that branch is explicitly selected instead.

## Theorem Interface

Discharging `bridge-gradient-control` on the curvature-first branch means proving the following local content:

1. the fourth bridge is carried by the Ricci-damped gradient evolution law;
2. positive curvature plus viscosity bound the gradient quantity on the source carrier;
3. that bounded gradient quantity is the exact source-faithful mechanism that feeds back into the scale barrier;
4. if the lane later switches to the Euclidean replacement, that switch must be declared as a theorem upgrade rather than treated as hidden equivalence.

## Critical Scale Measure

The controlled quantity is the geometric gradient energy `Gamma_g[u](t)`.
Its theorem role is to prevent the gradient blow-up channel that would otherwise keep the cascade alive.

## Closure Mechanism

The source-family closure mechanism is loop-based:

- scale control supports compactness,
- compactness supports curvature-based regularity,
- curvature-damped gradient control strengthens the scale barrier again.

So this object closes the fourth slot only on the curvature branch and only as part of that loop.

## Gradient Transfer

Direct on the curvature branch.
Unlike the later Euclidean package, this object does not need dyadic coercivity transfer to define its bridge role.
Its transfer mechanism is the Ricci-damped evolution itself.

## Branch Contract

- `bridge_slot`: `gradient-control bridge discharge`
- `selected_branch`: `source-faithful curvature route`
- `fallback_branch`: `later Euclidean theorem upgrade`
- `status`: exact local source-faithful fourth-bridge object available
