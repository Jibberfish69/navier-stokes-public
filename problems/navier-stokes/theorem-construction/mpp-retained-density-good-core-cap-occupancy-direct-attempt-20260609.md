---
ns_viewer:
  theorem_id: retained-density-good-core-cap-occupancy-direct-attempt-20260609
  status: partial-capwise-retention-lemma-closed-capwise-loss-budget-open
  proof_role: selector_shape_packet_bounded_follow_up
  logical_landing_node: capwise-density-stopping-loss-budget
  edge_effect: "Tests RetainedDensityGoodCoreCapOccupancy.A. A finite capwise-retention lemma is paid: initial cap lower bounds survive all finite same-strip losses when every QSP cap has its own loss budget below the cap margin. The installed density-stopping route supplies only global retained measure/regularity, so the live leaf narrows to CapwiseDensityStoppingLossBudget.A."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-density-good-set-finite-frame-coverage-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-density-adapted-stopping-loss-budget-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/selector-quadratic-sign-separation-packet.md
    - problems/navier-stokes/theorem-construction/finite-shell-comparability-on-core-cap-family.md
  downstream_consequence: "The next theorem atom is CapwiseDensityStoppingLossBudget.A: prove per-cap loss bounds for the density-adapted stopping on every required QSP core/eigen-cap, or replace that with the QSP shell-bump/comparability route."
---

# MPP Retained Density-Good Core-Cap Occupancy Direct Attempt

Date: 2026-06-09

Status: bounded follow-up proof attempt. This note does not close
`RetainedDensityGoodCoreCapOccupancy.A`, `DensityGoodSetFiniteFrameCoverage.A`,
`PTCShapeNormalization.A`, `D.7mq`, Pack survival, or CMI finality.

## Target

The active target is:

```text
RetainedDensityGoodCoreCapOccupancy.A.
```

It must show that after density-adapted stopping and all same-strip finite
losses, every finite QSP core/eigen-cap still has a positive retained lower
mass bound.

## Method Pass

Proof program: Navier-Stokes CM contrapositive support route.

Target object: selector-shape support theorem beneath the finite-frame branch.

Object role: supplier/bridge, not final CM class exit.

Logical skeleton: finite-cap intersection lemma plus countermodel pressure.

Mechanism: capwise loss budgets, finite union bound, same-strip retention, and
QSP cap occupancy.

## Closed Piece: Finite Capwise-Retention Lemma

Let `K_1,\dots,K_M` be the finite QSP core/eigen-cap family on the active
selector-good strip. Suppose the pre-stopping shape measure has a uniform lower
bound

```math
\nu_0(K_m)\ge \alpha_0
\qquad
\text{for every }m=1,\dots,M.
```

Suppose the same-strip stopping and compatibility selections remove finitely
many bad sets `B_1,\dots,B_N`, and suppose each bad set has a capwise loss
budget

```math
\nu_0(B_i\cap K_m)\le \varepsilon_{i,m},
\qquad
\sum_{i=1}^N \varepsilon_{i,m}<\alpha_0
\qquad
\text{for every }m.
```

For the retained family

```math
G_*:=G\setminus \bigcup_{i=1}^N B_i,
```

each cap retains positive mass:

```math
\nu_0(G_*\cap K_m)
\ge
\nu_0(K_m)-\sum_{i=1}^N\nu_0(B_i\cap K_m)
\ge
\alpha_0-\sum_{i=1}^N\varepsilon_{i,m}
>0.
```

Thus cap occupancy is preserved once every stopping/removal step pays a loss
budget inside every required QSP cap. This is the exact capwise analogue of the
plain retained-intersection lemma from the earlier pass.

## Failed Discharge: The Installed Stopping Budget Is Global

The installed density-adapted stopping route gives, at best, a global retained
mass or large-set regularity statement:

```text
discard a small total bad set and keep density-good pieces.
```

That does not imply the capwise inequalities above. A bad set can have small
total mass and still remove all of a small QSP cap. Then the global retained
family remains positive, the density can be regular on the retained portion,
and one cap required by the finite-frame branch is empty.

This is exactly the failure exposed by `DensityGoodSetFiniteFrameCoverage.A`.
The active shape route consumes capwise survival, not just positive total
survival.

## Result

`RetainedDensityGoodCoreCapOccupancy.A` is not proved from the installed inputs.

The proof did close the finite bookkeeping step:

```text
initial lower mass in every QSP cap
+ capwise finite loss budgets below the cap margins
=> retained lower mass in every QSP cap.
```

The actual next theorem atom is:

```text
CapwiseDensityStoppingLossBudget.A:
prove that the density-adapted stopping bad sets have quantitative loss bounds
inside every required finite QSP core/eigen-cap on the same selector-good strip.
```

An alternate route remains available through the installed QSP descendants:
finite graph/shell bump lower bounds plus finite shell comparability can replace
the raw capwise stopping theorem, but that replacement still has to pay the
same finite family, not only total retained density-good mass.

## New Live Criticism

`NS-LIVE-20260609-141`: `RetainedDensityGoodCoreCapOccupancy.A` is not proved.
The finite capwise-retention lemma is paid, but the installed density-stopping
route supplies only global retained measure / large-set regularity. The proof
still lacks `CapwiseDensityStoppingLossBudget.A`: per-cap loss bounds showing
that every finite QSP core/eigen-cap survives density-adapted stopping on the
same selector-good strip, or an equivalent shell-bump/comparability theorem on
the same finite cap family.
