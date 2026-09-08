# Mediating Object: `monotone_functional_bridge_discharge`

## Object Identifier

- `object_id`: `monotone_functional_bridge_discharge`
- `canonical_alias`: `q_t_control_surface`
- `object_kind`: bridge-facing control alias
- `frontier_target`: `bridge-monotone-functional`

## Purpose

This file gives the monotone bridge an exact local object in the same style used by the other bridge-facing packets.

Its job is to say, in exact theorem language, what counts as discharging the monotone bridge:

- not a proof of the whole theorem,
- but a proof that the original source family carries a named same-surface global control quantity `Q(t)` whose boundedness packages the classical energy/enstrophy layer for the rest of the route.

## Domain

For fixed horizon `T > 0`, viscosity `\nu > 0`, and forcing `f` in the source-permitted class, the domain consists of classical divergence-free Euclidean solutions `u` on `(0,T) x R^3` such that:

1. `u` solves the original classical Navier-Stokes equation on the theorem surface.
2. `u \in L^\infty_t L^2_x \cap L^2_t H^1_x`.
3. No modified equation, morphic smoothing, or hidden geometric surrogate is introduced.

## Codomain

The codomain is the global control package

```math
Q[u](t) := \|u(t)\|_{L^2_x}^2 + \|\nabla u(t)\|_{L^2_x}^2
```

together with its integrated dissipation balance

```math
\mathcal{M}[u](t)
:=
Q[u](t)
+ 2\nu \int_0^t \|\nabla u(s)\|_{L^2_x}^2 ds
+ 2\nu \int_0^t \|\Delta u(s)\|_{L^2_x}^2 ds.
```

## Admissibility

- classical Euclidean Navier-Stokes only;
- same admissible data class as the theorem target;
- forcing only in the source-grounded energy identity sense;
- no added dissipation or altered dynamics.

## Invariance

- pressure-gauge invariant under the classical energy identity;
- compatible with Euclidean translation and rotation symmetry;
- independent of any dyadic decomposition choice because it lives at the global energy/enstrophy level.

## Theorem Interface

Discharging `bridge-monotone-functional` means proving the following exact local content:

1. the original source family really does elevate `Q(t)` into a named bridge;
2. `Q(t)` gives the same-surface global energy/enstrophy control quantity used by the route;
3. this control surface is what the compactness and later bridge packages are allowed to consume;
4. this bridge does not itself discharge the scale-barrier or fourth-bridge burdens.

So the bridge closes as a local theorem object precisely when the lane can say:

- `Q(t)` is explicit,
- `Q(t)` is same-surface,
- `Q(t)` is necessary,
- `Q(t)` is insufficient by itself.

## Critical Scale Measure

The object controls the global energy/enstrophy layer.
It does not directly control the dangerous-scale tail.
That distinction is exactly why the bridge must hand off to the cascade carrier rather than pretending to close the theorem.

## Closure Mechanism

The bridge stabilizes the global layer used by the later route:

- it bounds total energy and enstrophy,
- it legitimizes the compactness package as living on a controlled classical surface,
- it localizes the remaining unresolved pressure to the high-frequency cascade.

## Gradient Transfer

Only indirect.
The monotone bridge does not itself force continuation control.
It merely ensures the gradient-side argument, whatever form it ultimately takes, inherits a legitimate same-surface global control layer.

## Bridge Alias Contract

- `bridge_slot`: `monotone-functional bridge discharge`
- `exact_local_object`: `q_t_control_surface`
- `status`: exact local object available; bridge still awaits final dependency discharge
