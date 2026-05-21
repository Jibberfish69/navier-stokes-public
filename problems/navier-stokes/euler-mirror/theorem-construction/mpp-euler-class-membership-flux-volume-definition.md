# MPP Euler Class-Membership Flux-Volume Definition

## Status

Theorem-facing ontology repair note for the Euler mirror.

Role: replace the copied Navier-Stokes `Pack / Part / Field` membership triad
with an Euler-native membership predicate and a strict non-participation
boundary. This note is now the local authority for Euler class membership
inside the mirror lane.

## Core Repair

Euler membership is not smoothness, and it is not the Navier-Stokes witness row
with `nu Delta u` deleted.

The inviscid equation has no bulk shear stress and no viscous participation
mechanism. Pressure enforces incompressibility and normal compatibility; it does
not by itself impose tangential no-slip or make neighboring material sheets
participate in one parabolic carrier. So the old `Part` predicate has no
Euler-native primitive meaning.

The stronger correction is that Euler pressure/incompressibility participation
is not one-field participation. It is a constraint law on volume, normal flux,
and weak momentum balance. It can coexist with tangential slip, vortex-sheet
type velocity jumps, jet-driven shear layers, and regions that do not join a
single smooth carrier. A localized injection or sharp jet is therefore a sanity
test: Euler has no viscous shear law saying that neighboring material must all
move as one coupled packet after the cue is struck.

The old `Field` predicate is also too strong as membership. A single smooth
field is a regularity target, not the base Euler object. Euler may still satisfy
its flux-volume and weak momentum laws while losing the smooth coherence that
the Navier-Stokes route tried to package as `Field`.

The only primitive packing content that survives without extra regularity is an
Eulerian flux-volume law. A Lagrangian flow map is a useful upgrade when the
velocity is regular enough to generate one, but it is not part of base Euler
membership.

The conclusion of the ontology audit is tiered:

```math
\boxed{
\text{weak Euler membership}
\;<\;
\text{admissible / energy-controlled Euler}
\;<\;
\text{Lagrangian-carrier Euler}
\;<\;
\text{smooth one-field Euler.}
}
\tag{ECM.Tier}
```

The first tier is the actual equation class. The later tiers are additional
physical, selection, or regularity structures. The smoothness problem lives in
the later tiers; it cannot be solved by baking those tiers into membership.

## Fixed Euler Surface

On a window `Q`, the Euler member object is governed by the distributional
incompressible Euler system:

```math
\partial_t u + \nabla\cdot(u\otimes u) + \nabla p = 0,
\qquad
\nabla\cdot u = 0.
\tag{ECM.0}
```

On a boundary, the Euler boundary condition is flux/no-penetration:

```math
u\cdot n = 0
\tag{ECM.0b}
```

in the trace sense available on the chosen theorem surface. Tangential no-slip is
not an Euler membership law.

## Primitive Euler Membership

Write

```math
\mathrm{EVol}_Q(u)
\tag{ECM.1}
```

for local Eulerian flux-volume membership on `Q`:

1. `u` is locally integrable enough for the fluxes in `(ECM.0)` to be meaningful;
2. `\nabla\cdot u=0` distributionally on `Q`;
3. every admissible control volume has balanced normal flux in the weak
   divergence-free sense;
4. no Lagrangian chart, finite deformation gauge, or material-packet smoothness
   is assumed.

Write

```math
\mathrm{EMom}_Q(u,p)
\tag{ECM.2}
```

for Euler momentum/pressure fidelity on `Q`:

1. `(u,p)` satisfies `(ECM.0)` distributionally;
2. pressure is the incompressibility multiplier / elliptic compatibility object
   for the velocity field;
3. pressure is not promoted into a viscous participation force and does not
   enforce tangential no-slip between neighboring sheets.

The Euler membership predicate is therefore:

```math
\boxed{
\mathrm{Member}_E(Q)
:=
\mathrm{EVol}_Q(u)
\wedge
\mathrm{EMom}_Q(u,p).
}
\tag{ECM.3}
```

This is base equation membership. It deliberately does not contain `Part`,
`Field`, smoothness, a Lagrangian flow map, a one-carrier response law, or a
Navier-Stokes pressure-viscosity carrier law.

## What Becomes Optional Structure

The old mirror vocabulary may still be useful, but only after retyping:

```math
\mathrm{EAdm}_Q(u,p)
\tag{ECM.3a}
```

is an optional admissibility layer: energy equality/inequality, local energy
balance, Kelvin circulation, or any other selection rule explicitly chosen for
the theorem surface. It is not automatic from weak membership and it is not a
replacement for viscosity.

```math
\mathrm{ELag}_Q(u,\Phi)
\tag{ECM.4}
```

is an optional Lagrangian-carrier upgrade, available only under hypotheses that
produce a meaningful flow map.

```math
\mathrm{EReg}_{N,r,Q}(u,p)
\tag{ECM.5}
```

is an optional regularity/coherence upgrade, available only when one has proved
finite positive-scale coherence or a continuation criterion. This is the Euler
replacement for any honest use of the old `Field` burden.

There is no primitive NS-style `Part_E` row. If a note needs Euler
participation vocabulary, the admissible base version is only

```math
\mathrm{EPart}^{press}_Q(u,p),
\tag{ECM.5a}
```

meaning pressure/incompressibility compatibility inside `(ECM.1)` and
`(ECM.2)`. This predicate is not a smoothness claim, not viscous participation,
and not a one-field coherence law. It may hold in the presence of tangential
slip, vortex-sheet-like jumps, jet-driven shear, and other nonsmooth weak Euler
behavior.

Any stronger participation-like theorem on Euler must name the actual mechanism
it proves: transported vorticity control, Kelvin circulation, boundary flux,
Lagrangian carrier control, or a separately defined regularity estimate. It
must not inherit the Navier-Stokes pressure-viscosity carrier.

## Jet / Pool-Cue Diagnostic

This is the same sanity check as Couette/slip, but in the interior.

A sharply injected jet can impose momentum and force a pressure response while
still failing to entrain neighboring material into one smooth packet. Thinking
in particles, Euler has transport and pressure constraints, but no viscous
friction law that makes every neighboring particle participate in the same
shear response. The weak Euler class therefore has room for slip-like and
jump-like behavior unless an additional regularity or admissibility theorem has
removed it.

Formal witness:
[mpp-euler-pressure-nonparticipation-vortex-sheet-witness-20260517.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-euler-pressure-nonparticipation-vortex-sheet-witness-20260517.md)
constructs a stationary tangential vortex sheet satisfying weak Euler while
failing one-field coherence.

Smooth-data bridge:
[mpp-smooth-data-to-euler-nonsmooth-bridge-20260517.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-smooth-data-to-euler-nonsmooth-bridge-20260517.md)
proves that the same sheet is the zero-thickness limit of smooth stationary
Euler shear layers from smooth initial data.

## Couette / Slip Diagnostic

This is the sanity check for the repair.

In Navier-Stokes, Couette-type behavior is tied to viscous shear transfer and
no-slip boundary forcing. In Euler, the natural wall condition is no-penetration;
tangential slip is allowed unless imposed externally. Pressure can enforce the
normal constraint and global incompressibility, but it does not create viscous
shear participation. Therefore an Euler class-membership definition that
requires the old `Part` row is importing Navier-Stokes physics.

## Smoothness Is Not Membership

Smooth Euler solutions are members when they satisfy `(ECM.3)`, but membership
does not imply smoothness.

The smoothness problem must be stated as a regularity upgrade:

```math
\mathrm{Member}_E(Q)
+ \text{Euler regularity / continuation controls}
\Longrightarrow
\mathrm{EReg}_{N,r,Q}(u,p)
\text{ or classical continuation.}
\tag{ECM.6}
```

So a loss of smoothness is not automatically an exit from `Member_E`. It is an
exit from a stronger regularity class only after the stronger class has been
defined and proved relevant.

## Replacement Rule For The Mirror Lane

The old copied row

```math
\mathrm{Pack}_Q \wedge \mathrm{Part}_{N,Q}\wedge \mathrm{Field}_{N,r,Q}
```

is invalid as primitive Euler membership.

Use this split instead:

```math
\boxed{
\mathrm{Member}_E
=
\mathrm{EVol}
\wedge
\mathrm{EMom},
\qquad
\mathrm{ELag},\ \mathrm{EReg},\ \text{and one-field coherence are extra
regularity structures.}
}
\tag{ECM.7}
```

More explicitly:

```math
\boxed{
\mathrm{Member}_E
\quad\text{is the equation class;}
\qquad
\mathrm{EAdm},\ \mathrm{ELag},\ \mathrm{EReg}
\quad\text{are extra layers that must be named and proved.}
}
\tag{ECM.8}
```

Every Euler mirror note that still speaks as though `Part` or `Field` is a
primitive membership face should be read as stale until repaired against this
definition.
