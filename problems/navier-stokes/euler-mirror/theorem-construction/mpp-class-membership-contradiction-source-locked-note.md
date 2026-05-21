# MPP Class-Membership Contradiction Source-Locked Note (Euler Mirror)

## Status

Theorem-facing ontology repair note for the Euler mirror.

Role: restart the Euler mirror class-membership program from the actual inviscid
object instead of from the copied Navier-Stokes `Pack / Part / Field` row.

## Fixed Problem

The mirror equation is incompressible Euler, read at the base membership level in
weak / distributional form:

```math
\partial_t u+\nabla\cdot(u\otimes u)+\nabla p=0,
\qquad
\nabla\cdot u=0.
\tag{ESC.0}
```

This file no longer assumes a smooth Euler evolution as the membership object.
Smoothness is a theorem target or a regularity upgrade; it is not part of the
definition of belonging to the Euler equation.

## Euler Membership Object

The Euler object is:

1. a velocity field with enough local integrability for the fluxes in `(ESC.0)`;
2. distributional incompressibility / local flux-volume balance;
3. a pressure multiplier enforcing the incompressibility constraint;
4. the Euler momentum law in weak form;
5. boundary no-penetration where a boundary is present.

It is not:

1. a pressure-viscosity participation carrier;
2. a smooth one-field coherence class;
3. a Lagrangian flow-map class;
4. a no-slip or tangential-shear law.

The primitive membership predicate is therefore:

```math
\boxed{
\mathrm{Member}_E(Q)
:=
\mathrm{EVol}_Q(u)
\wedge
\mathrm{EMom}_Q(u,p).
}
\tag{ESC.1}
```

as defined in
[mpp-euler-class-membership-flux-volume-definition.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-euler-class-membership-flux-volume-definition.md).

## Participation Repair

The Navier-Stokes `Part` row is not available on Euler.

In the NS route, participation meant that nearby points remain dynamically tied
through the same pressure-viscosity carrier. Removing viscosity removes the
mechanism that transfers tangential shear and enforces no-slip style
participation. Pressure alone enforces incompressibility and normal compatibility
but does not prevent inviscid slip past neighboring material sheets.

So Euler may have pressure/incompressibility participation without
one-field participation. A localized jet can force pressure and momentum balance
while still producing slip-like or jump-like shear relative to a stronger
carrier picture.

So an Euler theorem may prove pressure compatibility, vorticity transport,
Kelvin circulation, or a continuation estimate, but none of those is the old
`Part` primitive.

## Field Repair

The old `Field` row is also not primitive membership.

One coherent smooth `(u,p)` field is a regularity conclusion or continuation
hypothesis. Euler membership may still make sense for a rough or sheet-like
configuration satisfying the weak flux-volume and momentum laws. Therefore a
loss of positive-scale smooth coherence is not automatically exit from
`Member_E`; it is failure of an extra regularity class.

## Packing Repair

The only primitive packing content that survives is Eulerian flux-volume balance.

The Lagrangian reading of `Pack` requires enough velocity regularity to define a
flow map and finite deformation gauge. That can be used later as an optional
regularity structure, but it cannot sit inside base Euler membership.

## Couette / Slip Sanity Check

Couette-type shear in Navier-Stokes is a viscous participation phenomenon. On
Euler, the natural wall condition is no-penetration, and tangential slip is
allowed unless imposed as an external boundary condition. This is the concrete
reason the old `Part` row must be removed from Euler membership.

## Correct Contradiction Posture

The old mirror sentence

```math
\text{singularity is class exit from the Euler object}
```

is too strong unless "class" means a separately defined smooth or regularity
class.

The repaired statement is:

```math
\boxed{
\text{Euler equation membership is } \mathrm{Member}_E;
\quad
\text{smoothness is a further regularity problem over } \mathrm{Member}_E.
}
\tag{ESC.2}
```

There may be an intermediate admissibility layer:

```math
\mathrm{Member}_E(Q)
+ \mathrm{EAdm}_Q(u,p),
\tag{ESC.2a}
```

where `EAdm` names energy balance, local energy inequality/equality, Kelvin
circulation, or another explicit selection rule. That layer is still not
smoothness; it is a physical or theorem-selection condition above weak
membership.

So theorem work cannot close Euler smoothness by proving that roughness exits
base membership. It must prove a genuine Euler regularity upgrade:

```math
\mathrm{Member}_E(Q)
+ \mathrm{EAdm}_Q(u,p)
+ \text{Euler controls}
\Longrightarrow
\text{classical / positive-scale regularity on }Q.
\tag{ESC.3}
```

Every old `CFI`, `OFP`, `EL13`, and `ELCI` mirror surface must be read through
this repair: those files may be useful as regularity sidecars, not as primitive
membership faces.
