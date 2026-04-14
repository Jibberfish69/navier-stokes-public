# MPP Class-Membership Contradiction Frontier Packet

## Status

Compact frontier packet.

This packet extracts only the live class-membership contradiction object from the
current Navier-Stokes route work. It does **not** replace the selector/defect
route, and it does **not** advance the object to witness-bundle or classical
continuation packaging.

## Fixed Target

The equation stays fixed:

```math
\partial_t u+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0,
\qquad
\nu>0.
```

The target stays fixed:

```math
\text{global smoothness for the classical incompressible Navier--Stokes problem.}
```

What changes is only the proof architecture:

```math
\boxed{
\text{attack singularity as class-exit from the NS fluid object.}
}
```

## Core Object

The class-membership contradiction theory says:

```math
\boxed{
\text{the dangerous endpoint should be treated as leaving the NS object, not as an event occurring inside it.}
}
```

The NS object is being read here as one shared incompressible-pressure-viscosity
field, not as a collection of locally unrelated laws.

## Governing Triple

The live triple is:

```math
\boxed{
\text{incompressibility gives the common packing law,}
}
```

```math
\boxed{
\text{pressure enforces that law across the field,}
}
```

```math
\boxed{
\text{and viscosity carries the local force-coupling that keeps points dynamically participating.}
}
```

## Primitive Class Laws

The route currently isolates three primitive laws.

### 1. Shared Packing Law

The solution evolves through one common smooth volume-preserving motion map.

### 2. Shared Participation Law

Inside a still-live smooth neighborhood, points remain dynamically carried by
one common pressure-viscosity participation law.

### 3. Shared One-Field Law

Neighboring regions belong to one common smooth field, not to different local
laws patched together.

## Endpoint Taxonomy

The route treats three endpoint types as class-exit modes.

### Dead Endpoint

Not raw zero velocity. It means failure of shared participation inside a
still-live neighborhood.

### Blown Endpoint

Not merely a larger value. It means failure of the shared packing law / common
deformation class.

### Jump Endpoint

Failure of the one-field law: neighboring regions no longer belong to one common
smooth field.

## Frontier Claim

The route-primary claim is:

```math
\boxed{
\text{every smooth scenario belongs to the MPP object, and every genuine singular endpoint lies outside it.}
}
```

Equivalently:

```math
\boxed{
\text{any alleged blowup mechanism must leave the MPP object before it qualifies as an internal NS singularity.}
}
```

This is the clean class-membership contradiction form of the route.

## Exact Live Burden

The unresolved burden is now:

```math
\boxed{
\text{turn each primitive class law into an exact analytic predicate without replacing the law by a generic substitute.}
}
```

Concretely:

1. make the shared packing law exact;
2. make the shared participation law exact;
3. make the shared one-field law exact;
4. prove that every candidate singularity forces failure of one of those exact
   predicates before it can count as an internal NS event.

## Immediate Next Move

The first safe formalization step is the shared packing law, because it already
has a route-faithful geometric carrier in the Lagrangian motion map and does not
yet force the object into a generic witness bundle.

## Guardrails

This packet explicitly refuses two substitutions.

1. Do **not** collapse the route into the standard continuation wall
   `\int_0^T \|\nabla u\|_{L^\infty}\,dt`.
2. Do **not** treat the generic witness bundle as the primary live object.

Those may become comparison or downstream packaging layers later, but they are
not the present frontier.

## Source Surfaces

Primary source surfaces for this packet:

1. `problems/navier-stokes/theorem-construction/mpp-primitive-class-laws-note.md`
2. `problems/navier-stokes/theorem-construction/mpp-class-membership-endpoint-exclusion-note.md`
3. `problems/navier-stokes/codex-route-fidelity-delta-card.md`
