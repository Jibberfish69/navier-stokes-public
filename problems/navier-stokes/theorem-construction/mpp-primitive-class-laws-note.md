# MPP Primitive Class Laws Note

## Status

Separate theorem-facing note.

This note is the route-faithful primitive surface for the current
class-membership contradiction program. It does **not** replace the live
selector/defect route. It does **not** introduce a generic witness bundle. Its
job is simpler: write down the primitive class laws the user is actually trying
to build for the classical incompressible Navier--Stokes equations.

## Fixed Problem

The PDE is unchanged:

```math
\partial_t u+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0,
\qquad
\nu>0.
\tag{PL.0}
```

The target is unchanged:

```math
\text{global smoothness for the classical incompressible Navier--Stokes problem.}
\tag{PL.1}
```

What changes here is only the proof architecture:

```math
\boxed{
\text{attack singularity as class-exit from the NS fluid object.}
}
\tag{PL.2}
```

## Primitive Triple

The governing triple is:

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
\tag{PL.3}
```

So the primitive question is not "which norm blows up first?" The primitive
question is:

```math
\boxed{
\text{what must fail before the solution stops being one shared incompressible-pressure-viscosity field?}
}
\tag{PL.4}
```

## Primitive Class Laws

The route uses three primitive laws.

### Law 1. Shared Packing Law

Let `\Phi(a,t)` be the Lagrangian flow map:

```math
\partial_t\Phi(a,t)=u(\Phi(a,t),t),
\qquad
\Phi(a,0)=a.
\tag{PL.5}
```

The shared packing law says:

```math
\boxed{
\text{the solution evolves through one common smooth volume-preserving motion map.}
}
\tag{PL.6}
```

Formally,

```math
\det D_a\Phi(a,t)=1
\tag{PL.7}
```

and the same `\Phi_t` carries the whole field.

This law is what the route means by "one common incompressible packing class."

### Law 2. Shared Participation Law

The momentum equation is read as

```math
D_tu:=\partial_t u+(u\cdot\nabla)u=-\nabla p+\nu\Delta u.
\tag{PL.8}
```

The shared participation law says:

```math
\boxed{
\text{inside a still-live smooth neighborhood, points remain dynamically carried by one common pressure-viscosity participation law.}
}
\tag{PL.9}
```

This is the route's exact reading of "kept in motion." It does **not** mean
every point has large speed. It means the point has not dropped out of the same
pressure-viscosity carrier that is acting on the surrounding field.

### Law 3. Shared One-Field Law

The third law says:

```math
\boxed{
\text{neighboring regions belong to one common smooth field, not to different local laws patched together.}
}
\tag{PL.10}
```

Equivalently, there is one common smooth velocity/pressure field whose local
towers are compatible from point to point.

This is the primitive "no jump / no split field" law.

## Endpoint Meanings

Under these primitive laws, the three endpoint types are:

### Dead Endpoint

```math
\boxed{
\text{dead endpoint}
\Longleftrightarrow
\text{failure of the shared participation law inside a still-live neighborhood.}
}
\tag{PL.11}
```

This is intentionally stronger than raw stagnation.

```math
u(x,t)=0
\not\Rightarrow
\text{dead endpoint.}
\tag{PL.12}
```

The route means class nonparticipation, not merely zero speed.

### Blown Endpoint

```math
\boxed{
\text{blown endpoint}
\Longleftrightarrow
\text{failure of the shared packing law / common deformation class.}
}
\tag{PL.13}
```

This is the route's exact meaning of "packing-detached."

### Jump Endpoint

```math
\boxed{
\text{jump endpoint}
\Longleftrightarrow
\text{failure of the shared one-field law.}
}
\tag{PL.14}
```

This is the route's exact meaning of neighboring regions no longer belonging to
one common smooth field.

## Primitive Contradiction Schema

The primitive contradiction schema is then:

```math
\boxed{
\text{if the three primitive class laws hold, the solution is still an internal NS class member.}
}
\tag{PL.15}
```

Therefore,

```math
\text{dead endpoint}
\Longrightarrow
\text{class exit,}
\tag{PL.16}
```

```math
\text{blown endpoint}
\Longrightarrow
\text{class exit,}
\tag{PL.17}
```

```math
\text{jump endpoint}
\Longrightarrow
\text{class exit.}
\tag{PL.18}
```

So the route's theorem burden is:

```math
\boxed{
\text{every candidate singularity must violate one of the primitive class laws before it can count as an internal NS event.}
}
\tag{PL.19}
```

This is the class-membership contradiction program in its primitive form.

## What This Note Refuses To Do

This note deliberately does **not**:

1. collapse the route into the standard continuation wall
   `\int_0^T \|\nabla u\|_{L^\infty}\,dt`;
2. over-compose the route into a generic bundle of amplitudes, coherence
   moduli, and carrier norms;
3. replace the primitive class laws with a cleaner but less faithful theorem
   package.

Those moves may become useful later, but they are not the primitive route.

## Exact Next Burden

The next burden, still inside this primitive surface, is:

```math
\boxed{
\text{turn each primitive class law into an exact analytic predicate without replacing the law by a generic substitute.}
}
\tag{PL.20}
```

Meaning:

1. make "shared packing law" exact;
2. make "shared participation law" exact;
3. make "shared one-field law" exact;
4. then prove a candidate singularity forces one of those exact predicates to
   fail first.

That is what this route should do next.
