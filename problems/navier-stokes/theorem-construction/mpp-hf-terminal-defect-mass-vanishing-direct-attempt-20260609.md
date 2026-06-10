---
ns_viewer:
  theorem_id: hf-terminal-defect-mass-vanishing-direct-attempt-20260609
  status: failed-pack-survival-discharge
  proof_role: h_f_terminal_mass_vanishing_attempt
  logical_landing_node: pd70z_quadratic_normal_upgrade
  edge_effect: "Reduces HFTerminalDefectMassVanishing.A / USCP.A2-PackRestoration.A to the selector-normal quadratic upgrade needed for PD.70z."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-hf-unified-survivor-pack-survival-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/tps-pair-defect-pde-packet.md
    - problems/navier-stokes/theorem-construction/tps-selector-observability-to-sg4-bridge-proof-attempt.md
    - problems/navier-stokes/theorem-construction/pd70z-cycle-exact-normal-covector-route.md
  downstream_consequence: "The next theorem atom is PD70zQuadraticNormalUpgrade.A: prove CN.13j, CN.13q, or CN.13ab-CN.13ad on the cycle-exact selector-normal branch."
---

# MPP h/F Terminal Defect Mass Vanishing Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt. This note does not prove Pack survival
or CMI finality.

## Target

The previous pass reduced the first non-source-time Pack-survival target to:

```text
HFTerminalDefectMassVanishing.A / USCP.A2-PackRestoration.A.
```

This pass tests whether the installed pair-defect and selector-observability
packets already force the enhanced h/F terminal survivor mass to vanish on the
licensed same-fluid Pack windows.

## Direct Route Tested

The route would need the following implication:

```text
pair-defect PDE + selector observability
=> h/F terminal defect mass vanishes
=> Pack_Q survives
=> OriginalSmoothDataPackSurvival.A.
```

The installed two-point defect equation is strong enough to produce signless
energy control:

```text
W_J solves a coarse two-point parabolic equation
with explicit high-frequency divergence forcing.
```

It also has an exact energy identity:

```text
||W_J(t)||_2^2 + nu int ||grad W_J||_2^2
is controlled by W_J(t0) and the high-frequency source product.
```

That pays the signless pair-defect side, not the one-sided direction side.

## Where h/F Vanishing Would Have To Enter

The h/F survivor packet needs terminal finite-to-infinitesimal separation
defect to disappear on every licensed Pack scale window:

```text
D_{h/F}/|r| -> 0
on the same-fluid terminal scale windows.
```

In the selector route, this can only be obtained after converting signless
pair-defect control into a one-sided directional deficit bound:

```text
pair-defect observation
=> [lambda_J - s_J]_+ is controlled.
```

That is the `PD.70` splice. The installed downstream part is formal:

```text
one-sided defect budget
=> SG.4B
=> the selector-good strip gain.
```

The missing step is upstream:

```text
signless pair-defect energy
=> one-sided directional selector deficit.
```

## Checked Reduction To `PD.70z`

The cycle-exact branch removes the loop ledger:

```text
E_loop(I)=0.
```

So the residual closure reduces to the directional estimate:

```text
E_dir(I) <= C E_obs(I).
```

The normal-covector route makes that directional defect concrete. A measurable
normal covector to the rank-two expanding bundle exists, and the normal leakage

```text
Xi_J^perp = |n_J(a) . e_ab(t)|^2
```

is the relevant directional ledger.

The route then proves a weighted closure:

```text
selector-normal calibration + pair-averaged parabolic domination
=> weighted L4 normal-defect closure.
```

This still does not give the full quadratic `PD.70z` budget. The exact upgrade
needed is one of:

```text
CN.13j: strengthened quadratic selector-normal calibration;
CN.13q: support-smallness of the active normal-defect set;
CN.13ab-CN.13ad: two-sided weight control for the quadratic normal ledger.
```

Those are not installed.

## Why The Attempt Does Not Close

The affine survivor route does not close h/F mass either. The stripped-down
affine note proves that the positive-carrier quotient reduces to an endpoint
moment theorem for `M_0`, and that first-order signed scale exactness is one
scale derivative short. The exact moment law for `(M_0,M_1)` is real, but it is
not closed on those moments because the dissipation and nonlinear source terms
still live in the full scale profile.

Thus neither side currently proves h/F terminal mass vanishing:

```text
Family A / affine route:
  exact reductions, no closed moment contraction.

Family B / pair-defect route:
  signless energy control, no quadratic directional upgrade to PD.70z.
```

The h/F packet remains a serious representation and reduction mechanism, but
not an elimination theorem.

## Result

`HFTerminalDefectMassVanishing.A` is not proved from the installed inputs.

The next exact theorem atom is:

```text
PD70zQuadraticNormalUpgrade.A:
prove CN.13j, CN.13q, or CN.13ab-CN.13ad
on the cycle-exact selector-normal branch,
then propagate that result to PD.70z, SG.4B,
h/F terminal mass vanishing, Pack survival,
OriginalSmoothDataPackSurvival.A,
and NoGenuineExitFromSmoothData.A.
```

Until that atom or an equivalent Pack-restoration theorem is proved and paid
inside the reader-facing manuscripts, the PDFs remain nonfinal.

## New Live Criticism

`NS-LIVE-20260609-129`: the h/F terminal defect mass vanishing route does not
close from the installed pair-defect packet. The pair-defect PDE gives
signless energy and a conditional selector bridge, but the proof still needs a
quadratic normal-covector upgrade to `PD.70z`: `CN.13j`, `CN.13q`, or
`CN.13ab-CN.13ad`. Without that one-sided directional upgrade, the paper cannot
honestly claim h/F mass vanishing, Pack survival, or CMI-final Navier-Stokes
closure.
