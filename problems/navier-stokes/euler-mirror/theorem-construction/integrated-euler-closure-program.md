# Integrated Euler Regularity Program

## Purpose

Assemble the Euler positive-control road and the repaired Euler membership road
without pretending that membership is already smoothness.

This file does not claim Euler global regularity. It closes the integrated
Euler mirror as a terminal classification: conditional routes are conditional,
base membership implications are false, and viscous imports are non-Euler.

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

The positive route closes only after Euler-native controls are added as explicit
hypotheses:

1. [target-fidelity-discharge-source-pack.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/target-fidelity-discharge-source-pack.md)
2. [monotone-functional-discharge-source-pack.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/monotone-functional-discharge-source-pack.md)
3. [scale-barrier-source-pack.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/scale-barrier-source-pack.md)
4. [compactness-discharge-source-pack.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/compactness-discharge-source-pack.md)
5. [gradient-discharge-source-pack.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/gradient-discharge-source-pack.md)
6. [route-b-euler-closure-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/route-b-euler-closure-theorem.md)

Its terminal conditional shape is:

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
7. [mpp-elci-cp-a-separation-closure-20260522.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-elci-cp-a-separation-closure-20260522.md)

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

## Shared Terminal Decisions

The decisive decisions are:

1. an Euler scale or cascade barrier is an added control hypothesis unless
   proved by a new external theorem;
2. a control functional stronger than bare flux-volume membership is not supplied
   by `Member_E`;
3. compactness / nonlinear closure remains conditional on one fixed Euler family
   with earned controls;
4. an Euler transport-pressure continuation theorem is an added hypothesis;
5. the closed `ELCI.CP.A` hypotheses are supplied only by explicit envelopes;
6. optional Lagrangian or one-field persistence is conditional on the chosen
   regularity class.

## Combined Terminal Closure

The installed branch closes as:

```math
\boxed{
\text{conditional controls}
\Longrightarrow
\text{conditional regularity,}
\qquad
Member_E\not\Longrightarrow\text{regularity.}
}
\tag{IEC.C}
```

This is not a live target. It is the terminal distinction: added controls yield
conditional regularity, while rough Euler behavior can still be Euler.

## Auxiliary Roads

The auxiliary parent roads remain comparison/support only unless rewritten on
the exact Euler surface:

1. [selector-geometry-euler-walkdown-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/selector-geometry-euler-walkdown-program.md)
2. [export-whole-space-euler-walkdown-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/export-whole-space-euler-walkdown-program.md)
3. [exact-potential-euler-entry-obstruction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/exact-potential-euler-entry-obstruction-note.md)
4. [curvature-provenance-euler-support-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/curvature-provenance-euler-support-note.md)

## Honest Current Posture

The base object is correct, the `ELCI.CP.A` receiver split is closed, and the
integrated Euler mirror has no live branch burden. The terminal closure authority
is [mpp-euler-mirror-terminal-closure-20260522.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-euler-mirror-terminal-closure-20260522.md).
