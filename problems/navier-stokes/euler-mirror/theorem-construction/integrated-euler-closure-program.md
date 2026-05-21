# Integrated Euler Regularity Program

## Purpose

Assemble the Euler positive-control road and the repaired Euler membership road
without pretending that membership is already smoothness.

This file does not claim Euler global regularity. It fixes the exact burdens
whose discharge would upgrade an Euler member into the desired smooth class.

## Fixed Surface

Work on incompressible Euler:

```math
\partial_t u+\nabla\cdot(u\otimes u)+\nabla p=0,
\qquad
\nabla\cdot u=0.
\tag{IEC.0}
```

Base membership is:

```math
\mathrm{Member}_E
=
\mathrm{EVol}
\wedge
\mathrm{EMom}.
\tag{IEC.1}
```

Admissibility, when needed, is a separate layer:

```math
\mathrm{EAdm}
=
\text{chosen energy / circulation / local-balance selection rule.}
\tag{IEC.1a}
```

## Route A: Positive-Control Package

The positive route still asks for Euler-native controls:

1. [target-fidelity-discharge-source-pack.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/target-fidelity-discharge-source-pack.md)
2. [monotone-functional-discharge-source-pack.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/monotone-functional-discharge-source-pack.md)
3. [scale-barrier-source-pack.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/scale-barrier-source-pack.md)
4. [compactness-discharge-source-pack.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/compactness-discharge-source-pack.md)
5. [gradient-discharge-source-pack.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/gradient-discharge-source-pack.md)
6. [route-b-euler-closure-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/route-b-euler-closure-theorem.md)

Its integrated shape is:

```math
\boxed{
\mathrm{Member}_E
+ \mathrm{EAdm}\ \text{when selected}
+ \text{Euler scale barrier}
+ \text{Euler control functional}
+ \text{Euler compactness / nonlinear closure}
+ \text{Euler continuation bridge}
\Longrightarrow
\text{regularity continuation.}
}
\tag{IEC.A}
```

## Route B: Repaired Membership / Regularity Package

The repaired membership road is now:

1. [mpp-euler-class-membership-flux-volume-definition.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-euler-class-membership-flux-volume-definition.md)
2. [mpp-class-membership-forward-invariance-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-class-membership-forward-invariance-theorem-program.md)
3. [mpp-law13-surviving-endpoint-exclusion-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-law13-surviving-endpoint-exclusion-program.md)
4. [mpp-one-field-forward-preservation-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-one-field-forward-preservation-theorem-program.md)
5. [mpp-one-field-forward-preservation-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-one-field-forward-preservation-reduction-note.md)
6. [mpp-lower-carrier-interval-integrability-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-lower-carrier-interval-integrability-theorem-program.md)

Its integrated shape is:

```math
\boxed{
\mathrm{Member}_E
+ \mathrm{EAdm}\ \text{when selected}
+ \text{chosen Lagrangian / one-field / continuation regularity class}
+ \text{Euler-native propagation estimates}
\Longrightarrow
\text{regularity persists.}
}
\tag{IEC.B}
```

## Shared Decisive Burdens

The decisive burdens are:

1. an Euler scale or cascade barrier that does not use viscous damping;
2. a control functional stronger than bare flux-volume membership wherever
   continuation needs it;
3. compactness / nonlinear closure without hidden parabolic smoothing;
4. an Euler transport-pressure continuation theorem;
5. optional Lagrangian or one-field persistence only after the relevant
   regularity class is explicitly chosen.

## Combined Closure Target

The honest closure target is:

```math
\boxed{
\mathrm{Member}_E
+ \mathrm{EAdm}\ \text{when selected}
+ IEC.A
+ IEC.B
\Longrightarrow
\text{the desired classical Euler regularity.}
}
\tag{IEC.C}
```

This is a regularity theorem over Euler membership. It is not a proof that rough
Euler behavior fails to be Euler.

## Auxiliary Roads

The auxiliary parent roads remain comparison/support only unless rewritten on
the exact Euler surface:

1. [selector-geometry-euler-walkdown-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/selector-geometry-euler-walkdown-program.md)
2. [export-whole-space-euler-walkdown-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/export-whole-space-euler-walkdown-program.md)
3. [exact-potential-euler-entry-obstruction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/exact-potential-euler-entry-obstruction-note.md)
4. [curvature-provenance-euler-support-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/curvature-provenance-euler-support-note.md)

## Honest Current Posture

The base object is now correct. The theorem remains open because the missing
work is a real Euler regularity upgrade, not a membership-definition trick.
