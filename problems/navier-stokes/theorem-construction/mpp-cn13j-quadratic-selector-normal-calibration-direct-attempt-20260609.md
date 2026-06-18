---
ns_viewer:
  theorem_id: cn13j-quadratic-selector-normal-calibration-direct-attempt-20260609
  status: failed-cn13j-discharge
  proof_role: selector_normal_quadratic_calibration_attempt
  logical_landing_node: cn13j-selector-normal-amplitude-floor-or-small-moment-absorption
  edge_effect: "Tests whether the installed linear selector-normal moment calibration can be upgraded to the quadratic calibration needed by PD.70z."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/pd70z-cycle-exact-normal-covector-route.md
    - problems/navier-stokes/theorem-construction/mpp-pd70z-quadratic-normal-upgrade-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-normal-covector-witness-to-readout-theorem.md
    - problems/navier-stokes/theorem-construction/tps-pair-defect-pde-packet.md
  downstream_consequence: "The next theorem atom is a selector-normal amplitude-floor / small-moment coefficient-margin theorem, with the PD.70za polarity route and CN.13q support-smallness route retained as alternate exact exits."
---

# MPP CN13j Quadratic Selector-Normal Calibration Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close `CN.13j`,
`PD.70z`, Pack survival, or CMI finality.

## Target

The active target from the `PD.70z` pass is:

```text
CN13jQuadraticSelectorNormalCalibration.A.
```

In the notation of
[pd70z-cycle-exact-normal-covector-route.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/pd70z-cycle-exact-normal-covector-route.md),
write

```text
A_J(a,b,t) := M_J(t)^2 (Xi_J^perp(a,b,t))^2,
B_J(a,b,t) := mathcal M_J^perp(a,b,t).
```

The desired strengthened calibration is:

```text
A_J <= C B_J^2 + error.
```

## Installed Starting Point

The installed normal-covector route gives the linear selector-normal
calibration:

```text
A_J <= C B_J + epsilon_J^perp.          (CN.10)
```

Together with the pair-averaged parabolic domination of `B_J`, this proves the
weighted fourth-power closure:

```text
int A_J^2 <= C E_obs + error.           (CN.13)
```

The normal-covector witness-to-readout theorem gives an integrated linear
readout ledger. It does not prove that `W_J` alone forces the normal-covector
readout, and it explicitly keeps the branch readout packet as a separate
consumer.

The pair-defect PDE packet gives the parabolic energy and Duhamel equations for
`W_J`. It also states that this packet does not solve the selector-local lower
bound burden.

## Attempt 1: Square the Installed Calibration

Squaring `(CN.10)` gives

```text
A_J^2 <= C B_J^2 + C (epsilon_J^perp)^2.
```

After integration, this is exactly the installed weighted `L4` closure
`(CN.13)`. It controls `int A_J^2`, not `int A_J`.

So the naive squaring step proves the wrong exponent. It does not prove
`CN.13j`.

## Attempt 2: Use Finite Pair-Time Measure

On a finite selector-good strip, Holder gives

```text
int A_J <= |I x G|^(1/2) (int A_J^2)^(1/2).
```

This is the installed square-root upgrade `(CN.13n)`. It gives a vanishing
budget when the weighted `L4` budget vanishes, but it is sublinear in the
observability budget. It is not the full linear quadratic ledger needed by
`PD.70z`.

So finite measure improves the closure qualitatively but does not discharge
`CN.13j`.

## Attempt 3: Use the Pair-Defect PDE Directly

The pair-defect equation controls `W_J` from above through its parabolic energy
and source ledger. The selector-normal moment `B_J` is an absolute first moment
of `W_J` against the normal kernel. Those facts do not give a lower bound for
`B_J` on the active normal-defect set.

The obstruction is structural. A signed or oscillatory `W_J` can have small
normal moment against the selector kernel while the geometric direction
`Xi_J^perp` remains nonzero. The current packet has no polarity map, no
coercive square observation, and no lower amplitude floor tying the normal
geometric defect back to the signed pair-defect field.

So the pair-defect PDE alone does not prove `CN.13j`.

## Exact Reduction

The installed linear calibration does identify the smaller missing theorem.
From

```text
A_J <= C B_J + epsilon_J^perp,
```

the desired quadratic calibration follows on the region where

```text
B_J >= beta > 0,
```

because there

```text
A_J <= (C / beta) B_J^2 + epsilon_J^perp.
```

On the complementary region `B_J < beta`, one needs a theorem saying that the
normal-defect contribution is absorbed into a charged error or a small support
set.

Thus `CN.13j` is not a single algebraic upgrade. It reduces to the exact
selector-normal threshold theorem:

```text
CN13jSelectorNormalAmplitudeFloorOrSmallMomentAbsorption.A:
on the active normal-defect support, either the selector-normal moment has a
uniform polarity/amplitude floor, or a coefficient-margin estimate charges the
small-moment region to the existing error, shadow-support, or support-smallness
ledger.
```

There are three honest exits from this child:

```text
1. a polarity theorem in the style of PD.70za, producing a signed/coercive
   selector-normal readout from W_J;
2. a direct amplitude-floor theorem on the active normal-defect support;
3. the CN.13q support-smallness/shadow-localization route, which bypasses
   CN.13j and upgrades CN.13 through support pricing.
```

## Result

`CN13jQuadraticSelectorNormalCalibration.A` is not proved from the installed
inputs.

The next live theorem atom is:

```text
CN13jSelectorNormalAmplitudeFloorOrSmallMomentAbsorption.A.
```

It is genuinely smaller than `PD.70z`: it asks only for the missing lower
link between the selector-normal first moment and the active normal-defect
support. Once this atom lands, `(CN.13j)` follows by the threshold split above;
then `(PD.70z)` feeds `SG.4B`, h/F terminal mass vanishing, Pack restoration,
`OriginalSmoothDataPackSurvival.A`, and `NoGenuineExitFromSmoothData.A`.

Until that lower link or an alternate `CN.13q` / `CN.13ab`-`CN.13ad` route is
proved, the paper cannot claim `PD.70z`, h/F mass vanishing, Pack survival, or
CMI-final closure.

## New Live Criticism

`NS-LIVE-20260609-131`: `CN13jQuadraticSelectorNormalCalibration.A` is still
open. The installed route gives a linear selector-normal calibration and a
weighted `L4` closure, but it lacks the lower polarity/amplitude-floor or
small-moment coefficient-margin theorem needed to turn that into the quadratic
`PD.70z` ledger. The next target is
`CN13jSelectorNormalAmplitudeFloorOrSmallMomentAbsorption.A`, with the
`PD.70za` polarity theorem and the `CN.13q` shadow-support route retained as
alternate exact exits.
