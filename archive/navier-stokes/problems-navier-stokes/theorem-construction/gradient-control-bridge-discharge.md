# Mediating Object: `gradient_control_bridge_discharge`

## Object Identifier

- `object_id`: `gradient_control_bridge_discharge`
- `canonical_alias`: `ricci_damped_gradient_surface`
- `object_kind`: fourth-bridge selector object
- `frontier_target`: `bridge-gradient-control`

## Purpose

This file now makes the fourth bridge exact in the form the lane is actually using.

Its job is:

- select the source-faithful curvature route as the primary fourth-bridge branch,
- keep the later Euclidean package available only as an explicit fallback upgrade,
- and give dependency-discharge one bounded object instead of a floating branch dispute.

## Domain

For fixed horizon `T > 0`, viscosity `\nu > 0`, and a source-faithful geometric carrier `(M,g(t))`, the primary domain consists of divergence-free Navier-Stokes solutions `u` such that:

1. `u` satisfies the curvature-form source equation
   `partial_t u + nabla_u u = -grad_g(p) + nu Delta_g u`.
2. `Ric(g) >= kappa > 0` on the chosen source carrier.
3. This branch is being used as the original fourth slot in the four-way loop.

The fallback domain, used only if the primary branch is explicitly superseded, is the lane-local Euclidean package with dyadic thresholds and high-frequency coercivity objects.

## Codomain

The primary codomain is the curvature-damped gradient control package:

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

The fallback codomain, if the lane explicitly switches branches, is the Euclidean coercivity residual

```math
\mathfrak{G}_N[u](t)
:=
\frac{d}{dt}E_N(t) + (1-\eta)\nu D_N(t) - C\,\mathcal{L}_N(t)\,E_N(t).
```

## Theorem Interface

Discharging this object now means:

1. the original source-grounded fourth bridge is carried by the curvature route first;
2. the Ricci-damped gradient evolution is the theorem-bearing bridge object on that route;
3. the missing mathematical move is the pullback of that curvature bridge to the declared classical Euclidean theorem surface;
4. the Euclidean package is only a fallback upgrade branch unless explicitly promoted later.

This object therefore resolves the branch-order question locally, even if the final theorem warrant still depends on later route closure.

## Bridge Alias Contract

- `bridge_slot`: `gradient-control bridge discharge`
- `source_grounded_bridge`: `curvature-based regularity`
- `primary_selected_branch`: `curvature_based_gradient_bridge_discharge`
- `remaining_bridge_burden`: `curvature_to_euclidean_pullback_target`
- `lane_local_upgrade_candidate`: `gradient_transfer_coercivity_lemma`
- `status`: source-faithful primary branch selected; Euclidean package demoted to fallback upgrade
