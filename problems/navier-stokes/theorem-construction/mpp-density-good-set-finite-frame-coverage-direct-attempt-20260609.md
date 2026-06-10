---
ns_viewer:
  theorem_id: density-good-set-finite-frame-coverage-direct-attempt-20260609
  status: failed-core-cap-occupancy-discharge
  proof_role: selector_shape_packet_direct_attempt
  logical_landing_node: retained-density-good-core-cap-occupancy
  edge_effect: "Tests DensityGoodSetFiniteFrameCoverage.A. The installed QSP route proves that finite eigen-cap/core-cap occupancy supplies sign separation and the finite-frame branch, but retained density-good measure by itself does not prove occupancy in each required cap. The active leaf narrows to RetainedDensityGoodCoreCapOccupancy.A."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-density-adapted-stopping-loss-budget-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/selector-quadratic-sign-separation-packet.md
    - problems/navier-stokes/theorem-construction/ptc-shape-normalization-closure.md
    - problems/navier-stokes/theorem-construction/exact-potential-balanced-frame-to-d7mq.md
  downstream_consequence: "The next theorem atom is RetainedDensityGoodCoreCapOccupancy.A: prove that density-adapted stopping preserves a positive lower bound in every required QSP finite eigen-cap/core-cap on the same selector-good strip."
---

# MPP Density-Good Set Finite-Frame Coverage Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close
`DensityGoodSetFiniteFrameCoverage.A`, `PTCShapeNormalization.A`, `D.7mq`,
`DG-Cal`, Pack survival, or CMI finality.

## Target

The active target is:

```text
DensityGoodSetFiniteFrameCoverage.A.
```

It must prove that the retained density-good / oscillation-good family produced
by density-adapted stopping still occupies the finite entrance-sector or
core-cap family needed by the balanced finite-frame route on the same
selector-good strip.

## Method Pass

Proof program: Navier-Stokes CM contrapositive support route.

Target object: selector-shape support theorem beneath `PTCShapeNormalization.A`.

Object role: supplier/bridge, not final CM class exit.

Logical skeleton: conditional discharge plus countermodel pressure.

Mechanism: finite cap occupancy, two-sided quadratic sign separation, balanced
finite frame, and density-stopping preservation.

## Closed Conditional Bridge

The installed QSP route pays the following conditional theorem.

Assume the retained density-good shape measure on the active family satisfies a
finite eigen-cap occupancy packet: for the QSP caps `C_{+,r}` and `C_{-,r}`,
there is `alpha_* > 0` such that each retained shape measure gives at least
`alpha_*` mass to every cap in the finite list. Then Corollary `QSP.B` gives
the finite two-sided sign-separation packet `(QSP.7a)`-`(QSP.7b)`. Theorem
`Q.A` turns that packet into the support-level quadratic richness needed by the
balanced-frame lemma. The finite balanced frame then feeds the constructive
shape branch in `PTCShapeNormalization.A`, and the exact-potential note packages
that branch into `D.7mq` once the comparison, continuity, and Cauchy--Green gap
inputs are present.

So the paid implication is:

```text
finite retained cap occupancy
=> finite sign separation
=> balanced finite frame
=> constructive PTC shape branch
=> D.7mq subject to the listed downstream comparison/continuity/gap inputs.
```

That is useful progress. It identifies the exact geometry the density-good set
must preserve.

## Failed Discharge: Retained Density-Good Measure Does Not Imply Cap Occupancy

The density-adapted stopping pass can conditionally produce a retained set on
which the density oscillation is controlled. It can also be paired with the
finite retained-intersection lemma so long as each bad-set loss has a quantified
budget.

That still does not imply the QSP cap occupancy packet.

A retained density-good set may have positive mass and excellent oscillation
control while lying entirely inside one entrance sector or one small directional
cap. Then it supplies no mass to another cap in the finite QSP list. For a
traceless quadratic test whose positive direction is in the missing cap, the
positive-sign half of the QSP packet is absent. For the opposite test, the
negative-sign half can be absent. The retained set is density-good, but it is
not frame-good.

The installed QSP note contains the same warning in stronger form: Proposition
`QSP.D` shows that even exact degree-2 isotropy does not force finite eigen-cap
occupancy. The current density-stopping result is weaker than exact isotropy, so
it cannot pay the finite-frame coverage theorem without an additional occupancy
or comparability input.

## Result

`DensityGoodSetFiniteFrameCoverage.A` is not proved from the installed inputs.

The pass closes the conditional bridge:

```text
retained cap occupancy on the QSP finite family
=> finite-frame coverage for the shape branch.
```

The pass also isolates the missing theorem:

```text
RetainedDensityGoodCoreCapOccupancy.A:
prove that density-adapted stopping preserves a positive lower bound in every
required finite eigen-cap/core-cap on the same selector-good strip.
```

Equivalently, the route can use a stronger same-family comparability theorem or
the QSP shell-bump route, but some theorem of that strength must be proved
before the finite-frame branch can carry the public Clay finality bridge.

## New Live Criticism

`NS-LIVE-20260609-140`: `DensityGoodSetFiniteFrameCoverage.A` is not proved.
The installed QSP route proves that finite retained eigen-cap/core-cap
occupancy is sufficient for sign separation and the balanced finite-frame
branch, but retained density-good measure and oscillation control do not imply
that every required cap still carries positive mass. The next proof atom is
`RetainedDensityGoodCoreCapOccupancy.A`: prove a same-strip positive lower
bound in every QSP finite core/eigen-cap after density-adapted stopping, or
replace it with an equivalent same-family comparability or shell-bump theorem.
