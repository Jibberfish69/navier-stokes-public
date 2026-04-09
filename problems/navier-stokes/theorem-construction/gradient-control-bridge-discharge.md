# Mediating Object: `gradient_control_bridge_discharge`

## Object Identifier

- `object_id`: `gradient_control_bridge_discharge`
- `canonical_alias`: `ricci_damped_gradient_surface`
- `object_kind`: fourth-bridge selector object
- `frontier_target`: `bridge-gradient-control`

## Purpose

This file now makes the fourth bridge exact in the form the lane is actually using.

Its job is:

- select the Euclidean gradient-transfer route as the primary fourth-bridge branch,
- retain the old curvature package only as deprecated provenance,
- and give dependency-discharge one bounded object instead of a floating branch dispute.

## Domain

For fixed horizon `T > 0` and viscosity `\nu > 0`, the primary domain is the
lane-local Euclidean package with dyadic thresholds and high-frequency coercivity
objects on the classical Navier-Stokes theorem surface.

The deprecated provenance domain is the old geometric carrier `(M,g(t))` with
Ricci-damped gradient evolution. It is no longer a live theorem blocker.

## Codomain

The primary codomain is the Euclidean coercivity residual

```math
\mathfrak{G}_N[u](t)
:=
\frac{d}{dt}E_N(t) + (1-\eta)\nu D_N(t) - C\,\mathcal{L}_N(t)\,E_N(t).
```

The deprecated provenance codomain is the old curvature-damped gradient package.

## Theorem Interface

Discharging this object now means:

1. the Euclidean gradient-transfer inequality is the theorem-bearing fourth bridge on the declared theorem surface;
2. the compactness -> Euclidean gradient-transfer -> scale-barrier return chain is the active Route B closure path;
3. the old curvature branch is preserved only as deprecated provenance;
4. the remaining mathematical move is the final Euclidean closed-loop warrant, not a pullback theorem.

This object therefore resolves the branch-order question locally, even if the final theorem warrant still depends on later route closure.

## Bridge Alias Contract

- `bridge_slot`: `gradient-control bridge discharge`
- `legacy_source_bridge`: `curvature-based regularity`
- `primary_selected_branch`: `route_b_euclidean_gradient_transfer`
- `remaining_bridge_burden`: `final_euclidean_closed_loop_warrant`
- `lane_local_primary_object`: `route_b_euclidean_closure_theorem`
- `status`: Euclidean primary branch selected; curvature route deprecated to provenance
