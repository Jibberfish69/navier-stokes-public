# MPP Euler Endpoint Vocabulary Demotion Note

## Status

Theorem-facing repair note for the old `EL13` endpoint split.

Role: remove `dead / blown / jump` from primitive Euler membership while
preserving them as live possible failures of stronger Euler regularity or
NS-style comparison classes.

## Core Repair

The old statement was:

```math
\text{no dead}+\text{no blown}+\text{no jump}
\Longrightarrow
\text{no Euler class exit.}
\tag{EL13.bad}
```

That statement copied the Navier-Stokes class-exit grammar. It is not Euler
truth.

Euler base membership is:

```math
\mathrm{Member}_E
=
\mathrm{EVol}
\wedge
\mathrm{EMom}.
\tag{EL13.1}
```

There is no primitive `dead` face because Euler pressure participation is only
incompressibility / normal compatibility, not viscosity-level participation.
There is no primitive `jump` face because one-field coherence is regularity,
not base membership. There is no primitive Lagrangian `blown` face because
flow-map control is also extra regularity.

## Repaired Endpoint Reading

The endpoint words may still be used in this restricted way:

1. `dead`: failure of an added participation-like regularity theorem, if one is
   explicitly defined; relative to an NS-style carrier this is a live Euler
   possibility, not a contradiction of pressure incompressibility;
2. `blown`: failure of an added Lagrangian carrier / deformation-control theorem;
3. `jump`: failure of an added one-field coherence theorem; this can coexist
   with weak Euler membership unless an Euler-native regularity theorem excludes
   it.

They are labels for stronger classes above `Member_E`.

The endpoint cover taxonomy is recorded in
[mpp-endpoint-cover-taxonomy-dead-blown-jump-slip-map-20260517.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-endpoint-cover-taxonomy-dead-blown-jump-slip-map-20260517.md).
Under that taxonomy, Euler tangential slip is a `jump` reading for an added
one-field regularity class, while remaining compatible with weak `Member_E`.

## Consequence For The Old No-Dead Line

The old no-dead line disappears from primitive Euler membership. The correct
statement is:

```math
\boxed{
\text{Euler has no base participation face to preserve; participation-like
claims must name pressure/incompressibility compatibility, vorticity,
transport, boundary flux, or a separate regularity mechanism.}
}
\tag{EL13.2}
```

Couette/slip is the sanity check: inviscid Euler imposes no-penetration at a
wall, not tangential no-slip, unless the tangential condition is added from
outside the Euler membership law.

A sharp jet gives the same test in the interior. It can force a pressure
response and still fail to entrain neighboring material into one smooth
carrier; pressure participation alone does not rule out that
dead-relative-to-carrier behavior.

## Consequence For The Old No-Blown Line

The old packing-side line becomes:

```math
\boxed{
\text{flux-volume balance is primitive; Lagrangian flow-map control is a
regularity upgrade.}
}
\tag{EL13.3}
```

If the branch wants no-blown as a theorem, it must prove an Euler flow-map or
continuation estimate, for example from an integrable gradient condition. That
theorem would not define base membership.

## Consequence For The Old No-Jump Line

The old one-field line becomes:

```math
\boxed{
\text{one-field coherence is optional regularity over } \mathrm{Member}_E,
\text{ not a membership face.}
}
\tag{EL13.4}
```

`EOFP` and `EOFR` remain useful only as a possible route to such a regularity
upgrade.

Slip lands here in its native readout: it is a base-rung velocity jump /
one-field split, not a Pack failure and not a primitive Euler membership
failure. If a stronger Euler comparison class separately defines
participation failure, slip may also be a cross-entry for that stronger class;
it still does not become base `Member_E` failure.

So the honest Euler reading is that `dead` and `jump` are not primitive exit
faces, but they remain meaningful nonsmoothness scenarios for stronger classes.

## Terminal Regularity Reading

The Euler contradiction package now has one terminal regularity reading:

```math
\boxed{
\mathrm{Member}_E
+ \text{Euler-native regularity controls}
\Longrightarrow
\text{the desired smooth / coherent class persists.}
}
\tag{EL13.5}
```

The old endpoint split is no longer allowed to stand in for an external
regularity theorem.
