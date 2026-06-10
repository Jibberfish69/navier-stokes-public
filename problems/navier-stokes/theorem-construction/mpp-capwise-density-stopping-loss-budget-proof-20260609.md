---
ns_viewer:
  theorem_id: capwise-density-stopping-loss-budget-proof-20260609
  status: conditional-loss-budget-installed-initial-cap-margin-open
  proof_role: selector_shape_packet_dependency_discharge
  logical_landing_node: initial-qsp-core-cap-mass-floor
  edge_effect: "Discharges CapwiseDensityStoppingLossBudget.A conditional on an initial positive margin in every finite QSP core/eigen-cap. Because the cap family is finite, density-adapted regularization losses can be chosen below each cap margin. The remaining unpaid atom is InitialQSPCoreCapMassFloor.A or an equivalent QSP shell-bump/comparability realization."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-retained-density-good-core-cap-occupancy-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-density-adapted-stopping-loss-budget-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/selector-quadratic-sign-separation-packet.md
  downstream_consequence: "The next theorem atom is InitialQSPCoreCapMassFloor.A: prove a positive pre-stopping lower mass in every finite QSP core/eigen-cap, or pay the QSP.U shell-bump plus shell-comparability route that implies it."
---

# MPP Capwise Density-Stopping Loss-Budget Proof

Date: 2026-06-09

Status: conditional dependency discharge. This note closes the finite capwise
loss bookkeeping once an initial cap margin is available. It does not prove the
initial cap margin, `RetainedDensityGoodCoreCapOccupancy.A`,
`DensityGoodSetFiniteFrameCoverage.A`, `PTCShapeNormalization.A`, Pack
survival, or CMI finality.

## Target

The active target is:

```text
CapwiseDensityStoppingLossBudget.A.
```

It must show that density-adapted stopping can remove less than the available
margin inside every required finite QSP core/eigen-cap on the same
selector-good strip.

## Method Pass

Proof program: Navier-Stokes CM contrapositive support route.

Target object: finite selector-shape retention theorem.

Object role: supplier/bridge, not final CM class exit.

Logical skeleton: finite-budget construction.

Mechanism: Lusin/large-set regularization with tolerances chosen below a finite
cap-margin minimum, followed by a finite union bound.

## Theorem: Finite Capwise Stopping Loss

Let `K_1,\dots,K_M` be the finite QSP core/eigen-cap family. Assume the
pre-stopping shape measure has a cap margin

```math
\nu_0(K_m)\ge \alpha_0>0
\qquad
\text{for every }m=1,\dots,M.
```

Let `B_1,\dots,B_N` be the finite bad sets produced by the density-adapted
regularization, terminal-sector refinement, and same-strip compatibility
selections. Suppose each bad set can be selected with arbitrarily small global
loss against the same shape measure. Choose tolerances

```math
\varepsilon_i>0
\qquad
\text{with}
\qquad
\sum_{i=1}^N\varepsilon_i<\alpha_0/2.
```

Run each finite stopping/regularization selection with

```math
\nu_0(B_i)\le \varepsilon_i.
```

Then for every cap `K_m`,

```math
\nu_0(B_i\cap K_m)\le \nu_0(B_i)\le \varepsilon_i,
```

and hence

```math
\nu_0\!\left(
K_m\setminus\bigcup_{i=1}^N B_i
\right)
\ge
\alpha_0-\sum_{i=1}^N\varepsilon_i
>
\alpha_0/2.
```

Thus every required QSP cap survives the stopping with a uniform positive
margin.

## Why The Arbitrarily Small Global Loss Is Available

The density-stopping step being used here is the large-set regularization route
from the preceding pass. On a finite measure parent object, a finite a.e.
measurable diagonal density can be made continuous on a compact retained subset
after discarding a set of arbitrarily small measure. The same finite tolerance
choice can be made for each of the finitely many compatibility selections.

Because the QSP cap family is finite, one can choose all losses first and keep
the total loss below the smallest cap margin. No new infinite diagonal argument
is needed at this bookkeeping level.

## Result

`CapwiseDensityStoppingLossBudget.A` is paid in the only form it can honestly
have:

```text
initial positive mass in every finite QSP cap
+ finite stopping choices with arbitrarily small global loss
=> retained positive mass in every finite QSP cap.
```

The proof does not supply the initial cap margin. The active live theorem atom
therefore moves to:

```text
InitialQSPCoreCapMassFloor.A:
prove that the pre-stopping selector-good family has positive lower mass in
every required finite QSP core/eigen-cap, or prove the QSP.U shell-bump /
finite-shell-comparability route that implies the same finite family.
```

## New Live Criticism

`NS-LIVE-20260609-142`: `CapwiseDensityStoppingLossBudget.A` is paid only
conditional on an initial positive margin in every required finite QSP cap. The
proof still lacks `InitialQSPCoreCapMassFloor.A`, or an equivalent finite
positive shell-bump / shell-comparability theorem on the same QSP cap family.
