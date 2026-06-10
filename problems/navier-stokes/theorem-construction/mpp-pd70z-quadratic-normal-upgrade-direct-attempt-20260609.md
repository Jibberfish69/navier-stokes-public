---
ns_viewer:
  theorem_id: pd70z-quadratic-normal-upgrade-direct-attempt-20260609
  status: failed-pd70z-discharge
  proof_role: selector_normal_quadratic_upgrade_attempt
  logical_landing_node: cn13j_quadratic_selector_normal_calibration
  edge_effect: "Tests all three installed upgrade routes from weighted normal-covector closure to the full PD.70z quadratic directional ledger."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-hf-terminal-defect-mass-vanishing-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/pd70z-cycle-exact-normal-covector-route.md
    - problems/navier-stokes/theorem-construction/tps-shadow-time-budget-packet.md
    - problems/navier-stokes/theorem-construction/mpp-normal-covector-witness-to-readout-theorem.md
  downstream_consequence: "The next theorem atom is CN13jQuadraticSelectorNormalCalibration.A, with CN13t1/CN13q support-pricing and CN13ab-CN13ad weight control retained as alternate routes."
---

# MPP PD.70z Quadratic Normal Upgrade Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close `PD.70z`,
Pack survival, or CMI finality.

## Target

The active child from the h/F mass pass is:

```text
PD70zQuadraticNormalUpgrade.A.
```

This pass tests the three upgrade routes already isolated on disk:

```text
CN.13j: strengthened quadratic selector-normal calibration;
CN.13q: support-smallness of the active normal-defect set;
CN.13ab-CN.13ad: two-sided weight control for the quadratic normal ledger.
```

Closing any one of these would upgrade the cycle-exact normal-covector route
from weighted closure to the full quadratic directional ledger consumed by
`PD.70z`.

## Installed Starting Point

The normal-covector route has already removed two false gaps:

```text
measurable normal covectors exist,
and the 3D finite-coframe alternative collapses to the same normal row space.
```

It also gives the concrete directional density:

```text
Theta_J^perp = M_J(t)^2 (Xi_J^perp)^2,
Xi_J^perp = |n_J(a) . e_ab(t)|^2.
```

The pair-defect packet and selector-normal observable give a weighted closure:

```text
selector-normal calibration + pair-averaged parabolic domination
=> weighted L4 normal-defect closure.
```

That is not yet the quadratic `PD.70z` ledger.

## Attempt 1: `CN.13j`

The desired pointwise strengthening is:

```text
M_J(t)^2 (Xi_J^perp)^2
<= C (M_J^perp)^2 + error.
```

The installed route has only the weaker selector-normal calibration:

```text
M_J(t)^2 (Xi_J^perp)^2
<= C M_J^perp + error.
```

That weaker form yields the weighted `L4` closure after squaring. It does not
yield the quadratic ledger after integration. The missing content is a genuine
quadratic readout theorem saying the selector-normal moment controls the
normal-direction density at squared strength, not only at first-moment strength.

So `CN.13j` is not proved.

## Attempt 2: `CN.13q`

The support-smallness route says weighted `L4` closure becomes quadratic
closure if the active normal-defect support has linear pair-time measure:

```text
measure(support of M_J Xi_J^perp)
<= C (E_obs + E_err).
```

The shadow-time packet supplies an exact occupancy ledger:

```text
T_J mu(C_j) O_J <= C_occ B_J^occ(I),
```

once the bad-residue mass and per-pair shadow-time cost are priced.

The normal-covector packet also reduces support-smallness to the shadow route
under the support localization condition:

```text
active normal defect lives inside the route-local shadow tube.
```

That support localization is not installed. The note stack also explicitly
proves that support-smallness does not follow from weighted `L4` closure alone.
The weak shadow occupancy route gives a vanishing-error closure when occupancy
tends to zero and the quartic budget stays bounded, but the full linear
`PD.70z` ledger needs the stronger linear support pricing.

So `CN.13q` is not proved.

## Attempt 3: `CN.13ab`--`CN.13ad`

The two-sided weight route would close the upgrade if there were a measurable
weight satisfying:

```text
0 < c <= w_J^perp <= C < infinity
```

and a weighted quadratic observability estimate:

```text
int w_J^perp Theta_J^perp <= C (E_obs + E_err).
```

The normal-covector witness-to-readout theorem gives the semantic carrier
splice from the class-membership packet into the normal-covector readout. It
does not construct a lower-bounded weight or prove the weighted quadratic
observability estimate.

So `CN.13ab`--`CN.13ad` is not proved.

## Result

`PD70zQuadraticNormalUpgrade.A` is not proved from the installed inputs.

The shortest exact child is:

```text
CN13jQuadraticSelectorNormalCalibration.A:
prove the strengthened quadratic selector-normal calibration
M_J(t)^2 (Xi_J^perp)^2
<= C (M_J^perp)^2 + error
on the cycle-exact selector-normal branch.
```

The alternate branch remains:

```text
CN13t1ShadowSupportLocalization.A
plus the ST.12c occupancy ledger
=> CN.13q support-smallness
=> PD.70z.
```

The two-sided-weight branch remains available only after a concrete lower-
bounded weight and its weighted quadratic observability estimate are produced.

Until one of these is proved, `PD.70z` does not feed `SG.4B`, h/F mass
vanishing, Pack restoration, `OriginalSmoothDataPackSurvival.A`, or
`NoGenuineExitFromSmoothData.A`.

## New Live Criticism

`NS-LIVE-20260609-130`: `PD70zQuadraticNormalUpgrade.A` is still open. The
installed normal-covector route gives weighted `L4` closure, but not the full
quadratic directional ledger. `CN.13j` lacks a strengthened quadratic
selector-normal calibration; `CN.13q` lacks independent support-smallness
pricing or shadow-support localization; and `CN.13ab-CN.13ad` lacks a
constructed two-sided weight. The paper cannot claim `PD.70z`, h/F mass
vanishing, Pack survival, or CMI-final closure until one of these upgrades is
proved and propagated.
