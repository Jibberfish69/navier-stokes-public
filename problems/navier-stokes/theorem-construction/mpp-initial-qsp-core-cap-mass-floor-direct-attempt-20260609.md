---
ns_viewer:
  theorem_id: initial-qsp-core-cap-mass-floor-direct-attempt-20260609
  status: failed-direct-cap-floor-discharge
  proof_role: selector_shape_packet_direct_attempt
  logical_landing_node: finite-positive-reference-shell-bump-packet
  edge_effect: "Tests InitialQSPCoreCapMassFloor.A. Positive total selector-good mass does not imply positive mass in each finite QSP cap. The installed QSP route reduces the cap-floor burden to a finite positive reference shell-bump packet plus finite shell comparability on the same cap family."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-capwise-density-stopping-loss-budget-proof-20260609.md
    - problems/navier-stokes/theorem-construction/selector-quadratic-sign-separation-packet.md
    - problems/navier-stokes/theorem-construction/finite-shell-comparability-on-core-cap-family.md
    - problems/navier-stokes/theorem-construction/ptc-shape-normalization-closure.md
  downstream_consequence: "The next theorem atom is FinitePositiveReferenceShellBumpPacket.A, paired with finite shell comparability and regular-window segment-gradient control on the same QSP core-cap family."
---

# MPP Initial QSP Core-Cap Mass-Floor Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close
`InitialQSPCoreCapMassFloor.A`, `RetainedDensityGoodCoreCapOccupancy.A`,
`DensityGoodSetFiniteFrameCoverage.A`, `PTCShapeNormalization.A`, Pack
survival, or CMI finality.

## Target

The active target is:

```text
InitialQSPCoreCapMassFloor.A.
```

It must prove that the pre-stopping selector-good family has positive lower
mass in every required finite QSP core/eigen-cap, or provide an equivalent
finite shell-bump / shell-comparability realization on the same cap family.

## Method Pass

Proof program: Navier-Stokes CM contrapositive support route.

Target object: initial selector-shape mass floor beneath the finite-frame
branch.

Object role: supplier/bridge, not final CM class exit.

Logical skeleton: direct mass-floor attempt, then route reduction through the
installed QSP descendants.

Mechanism: finite cap occupancy, graph/shell bump lower bounds, shell
comparability, and regular-window angular transport.

## Direct Attempt: Positive Total Mass

Positive total selector-good mass does not imply positive mass in every finite
QSP cap. A selector-good directional measure can be supported in one cap, or in
a finite set of directions disjoint from a chosen required cap, while retaining
positive total mass.

That gives no lower bound for the missing cap. The downstream QSP branch needs
the finite cap family uniformly, not merely one nonempty direction set.

This is the same obstruction as the QSP cross-measure warning in a simpler
form: directionally rich enough for one averaged statement is not automatically
rich enough for the finite cap occupancy packet consumed by the finite-frame
route.

## Installed Conditional Route

The QSP packet gives an exact conditional replacement. On the canonical
graph-fiber route, it is enough to prove:

```text
finite positive reference shell-bump packet
+ finite shell comparability
+ regular-window segment-gradient control
=> initial finite cap occupancy
=> finite sign separation
=> balanced finite frame.
```

The finite shell-comparability note isolates the shell-leakage side. The
remaining graph-mass side is the positive reference shell-bump packet on the
same finite QSP cap family.

## Result

`InitialQSPCoreCapMassFloor.A` is not proved from the installed inputs.

The direct total-mass route fails. The live route narrows to:

```text
FinitePositiveReferenceShellBumpPacket.A:
prove a positive lower bump mass on the finite QSP shell/core-cap family for
the selected reference carrier used by the graph-fiber route.
```

This atom remains paired with finite shell comparability and the regular-window
segment-gradient control already named by the PTC/QSP route.

## New Live Criticism

`NS-LIVE-20260609-143`: `InitialQSPCoreCapMassFloor.A` is not proved. Positive
total selector-good mass does not imply positive mass in every finite QSP cap.
The proof still lacks `FinitePositiveReferenceShellBumpPacket.A`, paired with
finite shell comparability and regular-window segment-gradient control on the
same QSP cap family.
