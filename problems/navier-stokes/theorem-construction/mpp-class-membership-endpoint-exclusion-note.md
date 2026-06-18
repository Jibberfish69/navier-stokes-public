# MPP Class-Membership Endpoint Exclusion Note

## Status

Separate leading-edge note.

This note does **not** replace the current live selector/defect route. Its job
is narrower: isolate the distinct class-membership argument that has been
developed in the current chat, without mixing it with donor-financing language
or with the current pair-defect observability wall.

## Purpose

The claim isolated here is:

```math
\boxed{
\text{the Navier--Stokes MPP object should be attacked by endpoint exclusion through class membership.}
}
\tag{CM.0}
```

The point is not that blowup must be financed by donor collapse, and not that
the proof must run through a defect-ledger route. The point is that the MPP
specifies one particular kind of fluid object, and the dangerous endpoints do
not occur inside that object. They are exit events from that object.

## The MPP Object

Fix smooth initial data `u_0` with

```math
\nabla\cdot u_0=0,
\tag{CM.1}
```

and viscosity `\nu>0`. On `\Omega=\mathbf R^3` or `\mathbf T^3`, define an
`MPP` evolution on `[0,T)` to mean a pair `(u,p)` such that

```math
\partial_t u + (u\cdot\nabla)u + \nabla p = \nu\Delta u,
\qquad
\nabla\cdot u = 0,
\tag{CM.2}
```

with `u,p` smooth on `\Omega\times[0,T)`. For each point-time `(x,t)` define the
local mixed-jet tower by

```math
\mathcal T_{x,t}(u,p)
:=
\left\{
\partial_t^m\partial_x^\alpha u(x,t),
\partial_t^m\partial_x^\alpha p(x,t)
:\ m\ge 0,\ \alpha\in\mathbf N^3
\right\}.
\tag{CM.3}
```

Then this note defines

```math
(u,p)\in \mathcal MPP([0,T))
```

to mean not only that `(CM.2)` holds smoothly, but that the solution remains one
single coupled incompressible viscous object in the following tower-internal
sense:

1. `u` is one single smooth incompressible velocity field;
2. `p` enforces the common volume constraint;
3. viscosity provides the local drag/damping coupling inside that same field,
   and in the present route it is read not only as damping but as the
   force-carrying mechanism that keeps points dynamically live inside a still-
   live neighborhood;
4. the evolution remains one shared smooth motion, not a patchwork of locally
   disconnected laws.
5. for every finite point-time `(x,t)`, the local tower `\mathcal T_{x,t}(u,p)`
   remains the tower of that same shared field rather than a detached local law.

The fifth clause is the part that matters for the present chat: tower
membership is built into class membership itself.

Ordinary stagnation is still allowed inside `\mathcal MPP([0,T))`. In
particular,

```math
\boxed{
u(x,t)=0
\text{ at some point-time does not by itself imply }
(u,p)\notin\mathcal MPP([0,T)).
}
\tag{CM.4}
```

What is excluded is not raw zero velocity, but tower nonparticipation:

```math
\boxed{
\text{tower-membership may include zero entries;}
\quad
\text{it may not include tower detachment, tower jump, or tower blowup.}
}
\tag{CM.5}
```

So `\mathcal MPP([0,T))` is the class of smooth Navier--Stokes evolutions whose
local mixed-jet tower remains pointwise internal to the same shared
incompressible viscous field at every finite time.

## Incompressibility-Pressure-Viscosity Reading

This note adopts the stronger three-part reading developed in the current chat:

```math
\boxed{
\text{incompressibility gives the common packing law,}
}
```

```math
\boxed{
\text{pressure enforces that law across the field,}
}
\tag{CM.5a}
```

```math
\boxed{
\text{and viscosity carries the local force-coupling that keeps points dynamically participating.}
}
\tag{CM.5b}
```

So the present route does **not** treat viscosity alone as the keeper of the
class. The keeper doctrine is the joint triple

```math
(\text{incompressibility},\ \text{pressure},\ \text{viscosity}).
\tag{CM.5c}
```

More precisely:

1. incompressibility locks the field into one common packing geometry;
2. pressure transmits and enforces that common packing law;
3. viscosity provides the local force-coupling by which still-live
   neighborhoods keep points dynamically participating.

Inside that reading,

```math
\boxed{
\text{exact local deadness inside a still-live neighborhood would mean failure of the pressure-viscosity participation law inside the incompressible class.}
}
\tag{CM.5d}
```

This is why the present route treats `transport-dead / tower-dead` as a
class-exit notion rather than a mere low-velocity event.

## Formal Consequences Of The Triple Reading

The displayed implications used by this note are the following.

First, along the Lagrangian flow map

```math
\partial_t \Phi(a,t)=u(\Phi(a,t),t),
\qquad
\Phi(a,0)=a,
\tag{CM.5e}
```

incompressibility gives the common packing law

```math
\det D_a\Phi(a,t)=1.
\tag{CM.5f}
```

This flow-map language must be read with one strict semantic boundary:

```math
\boxed{
\text{transported regions are not separate sub-fluids with their own surface laws;}
}
```

```math
\boxed{
\text{they are only parcels of the same incompressible velocity-pressure-viscosity field tracked in label coordinates.}
}
\tag{CM.5f'}
```

In particular, the present route does **not** allow a transported region to pick
up an extra friction, interface, or boundary-mechanics law not already present
in the original Navier--Stokes system.

Second, the momentum law can be read as

```math
D_t u
:=
\partial_t u+(u\cdot\nabla)u
=
-\nabla p+\nu\Delta u.
\tag{CM.5g}
```

In the present route, `-\nabla p` and `\nu\Delta u` are the two class-internal
carriers of participation: pressure enforces the common incompressible packing
constraint, while viscosity carries the local dragging/coupling across the
field.

Third, pressure is globally constrained by

```math
-\Delta p=\partial_i\partial_j(u_i u_j).
\tag{CM.5h}
```

So even the pressure side of the dynamics is not a local isolated law.

Under these readings, the endpoint consequences are:

```math
\text{dead endpoint in local participation-side form}
\Longrightarrow
\text{failure of the shared }(-\nabla p+\nu\Delta u)\text{ participation law;}
\tag{CM.5i}
```

```math
\text{packing-detached in local packing-side form}
\Longrightarrow
\text{failure of the common }\det D\Phi=1\text{ packing witness as a class-membership description;}
\tag{CM.5j}
```

```math
\text{jump endpoint in local coherence-side form}
\Longrightarrow
\text{failure of one common smooth field carrying that same law.}
\tag{CM.5k}
```

These displayed implications are the exact content behind the verbal slogan
that the incompressibility-pressure-viscosity triple keeps the field in motion
as one shared object.

## The Three Endpoint Types

The present argument isolates three endpoint types.

### 1. Dead Endpoint

A point or region is called `dead` in the present note when it has
ceased to participate in the common viscous-pressure-coupled smooth motion while
the surrounding evolution remains live.

In the intended viscosity reading, this means more than "small" or "flattened"
motion. A point may slow, flatten, or pass through zero velocity and still
remain inside the class. What is excluded is exact local deadness in the strong
sense that the point no longer remains dynamically dragged by a still-live
viscous neighborhood.

This is intentionally stronger than raw stagnation.

```math
\boxed{
\text{dead endpoint} \neq \text{merely }u(x,t)=0.
}
\tag{CM.6}
```

Ordinary zero velocity or ordinary stagnation is not the target here. The target
is exit from common participation in the shared smooth field.

In this note, the local participation-side aliases are:

```math
\text{transport-dead},\ \text{tower-dead}
\Longrightarrow
\text{dead endpoint in local participation-side form.}
\tag{CM.7a}
```

The tower-language restatement is:

```math
\boxed{
\text{tower-dead means the local jet/tower realizes the dead endpoint at tower level,}
\qquad
\text{i.e. it is no longer participating as part of the same smooth coupled field.}
}
\tag{CM.7}
```

The strongest literal dead-patch form is already over-rigid. On the positive-time
classical surface, a nonempty open set on which `u(\cdot,t_0)=0` forces
`u(\cdot,t_0)\equiv 0` on the whole connected component; see
[mpp-open-dead-patch-rigidity-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-open-dead-patch-rigidity-theorem.md).
The exact reduction after that literal rigidity lemma is now written in
[mpp-dead-tower-rigidity-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-dead-tower-rigidity-reduction-note.md):
witness-level nonparticipation forces either an already-rigid literal deadness
shape or explicit failure of the participation witness
`\mathfrak P_N+\mathfrak Q_N`. So the remaining dead-tower burden is no longer
ordinary open-set zero velocity; it is the stronger class-membership
nonparticipation notion, narrowed further to the participation no-drop theorem.

### 2. Blown Endpoint

A point or region is called `blown` in the present note when either the
pack-side carrier geometry or a finite-order tower/carrier amplitude regime
escapes the still-live class-membership window.

The intended split reading is:

```math
\boxed{
\text{packing-detached is not a larger value inside the same object;}
}
```

```math
\boxed{
\text{it is a point or region that has detached from the common incompressible motion law.}
}
\tag{CM.8}
```

```math
\boxed{
\text{tower-blown is the tower-amplitude blown face;}
\quad
\text{it is not yet owned by one primitive law row.}
}
\tag{CM.8aa}
```

In this note, the local blown-side aliases split as:

```math
\text{packing-detached}
\Longrightarrow
\text{blown endpoint in local packing-side form.}
\tag{CM.8a}
```

```math
\text{tower-blown}
\Longrightarrow
\text{blown endpoint in local tower-amplitude form.}
\tag{CM.8b}
```

### 3. Jump Endpoint

The third endpoint type is jump:

```math
\boxed{
\text{neighboring regions no longer share one smooth field.}
}
\tag{CM.9}
```

So a jump is a class-exit event for the same reason: the one-field condition has
already failed there.

In this note, the local coherence-side aliases are:

```math
\text{velocity-jump},\ \text{tower-jump}
\Longrightarrow
\text{jump endpoint in base-rung or higher-rung local form.}
\tag{CM.9a}
```

## Core Claim

The class-membership claim is:

```math
\boxed{
\text{every smooth scenario belongs to the MPP object, and every genuine singular endpoint lies outside it.}
}
\tag{CM.10}
```

More explicitly,

```math
\text{dead endpoint}
\quad\Longrightarrow\quad
(u,p)\notin\mathcal MPP([0,T)),
\tag{CM.11}
```

```math
\text{blown endpoint}
\quad\Longrightarrow\quad
(u,p)\notin\mathcal MPP([0,T)),
\tag{CM.12}
```

and

```math
\text{jump endpoint}
\quad\Longrightarrow\quad
(u,p)\notin\mathcal MPP([0,T)).
\tag{CM.13}
```

So the argument is not donor-financing first and contradiction later. The
argument is endpoint exclusion by direct class-membership contradiction.

## Endpoint-Exclusion Theorem Shape

The theorem-shaped target is therefore:

```math
\boxed{
(u,p)\in \mathcal MPP([0,T))
\Longrightarrow
\text{no dead, blown, or jump endpoint occurs on }[0,T).
}
\tag{CM.14}
```

Equivalently,

```math
\boxed{
\text{any alleged blowup mechanism must leave the MPP object before it qualifies as an internal MPP singularity.}
}
\tag{CM.15}
```

This is the clean class-membership version of the route.

## Why This Is Distinct From The AD Donor Route

This note is intentionally separate from the AD donor-financing track.

1. It does **not** require a donor-collapse middle step.
2. It does **not** require pointwise energy-transfer bookkeeping.
3. It does **not** require a quantized first-positive-rung model.
4. It does **not** frame the problem as "how much of the field must drain to
   feed one receiver."

Instead, it says:

```math
\boxed{
\text{dead endpoint and blown endpoint are the same contradiction viewed from opposite ends:}
}
```

```math
\boxed{
\text{both are exit events from the common incompressible viscous class.}
}
\tag{CM.16}
```

## Tower-Internal Restatement

The tower language is not secondary here. It is part of the definition of class
membership itself.

At every finite point-time `(x,t)`, membership in `\mathcal MPP([0,T))`
includes the requirement that the local mixed-jet tower `\mathcal T_{x,t}(u,p)`
is still the tower of one shared smooth incompressible viscous evolution.

Under that reading, the three endpoint failures are:

```math
\text{tower-dead}
\quad\Longrightarrow\quad
\text{dead endpoint in tower form,}
\tag{CM.17}
```

```math
\text{tower-blown}
\quad\Longrightarrow\quad
\text{blown endpoint in tower form.}
\tag{CM.18}
```

and tower-jump is the discontinuous version:

```math
\text{tower-jump}
\quad\Longrightarrow\quad
\text{jump endpoint in tower form.}
\tag{CM.19}
```

So the class-membership target can be restated as

```math
\boxed{
(u,p)\in\mathcal MPP([0,T))
\Longrightarrow
0<\text{live tower participation}<\infty
\text{ in the class-membership sense at every finite point-time.}
}
\tag{CM.20}
```

Here the notation `0<\text{live tower participation}<\infty` is not being used
to forbid ordinary zero velocity. It means:

1. no local tower realizes a dead endpoint type;
2. no local tower realizes a blown endpoint type;
3. no local tower realizes a jump endpoint type.

That is the exact sense in which the tower is built into `\mathcal MPP([0,T))`
rather than merely read off after the fact.

## Immediate Formal Burden

The unresolved work is now sharply identifiable.

1. the exact analytic predicate family is now installed separately through the
   class-membership witness surfaces;
2. the participation-side no-drop exclusion is now installed separately;
3. the remaining endpoint-exclusion work is now governed by the explicit law /
   endpoint proof matrix, with `(Part, Dead)` installed and the strongest open
   shell programs organized in
   [mpp-law-endpoint-proof-matrix-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-law-endpoint-proof-matrix-note.md)
   and
   [mpp-law13-surviving-endpoint-exclusion-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-law13-surviving-endpoint-exclusion-program.md).

That is the whole burden of this note.

## Non-Claims

This note does **not** yet prove global regularity.

It also does **not** yet identify the final analytic witness of class exit. It
only isolates the leading-edge claim that the right contradiction should be
framed as:

```math
\boxed{
\text{the singular event is not an event inside the MPP fluid object;}
}
```

```math
\boxed{
\text{it is the event of leaving that object.}
}
\tag{CM.21}
```
