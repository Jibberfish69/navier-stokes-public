# MPP B_ASAC Preterminal Parent-Cloud Concentration Direct Attempt

Date: 2026-05-17

## Status

Direct attempt on the parent-cloud concentration theorem below the `B_ASAC` equality route.

Outcome: open from installed inputs.

## Target

Prove:

```math
\boxed{BASACPreterminalParentCloudConcentration.A}
```

Statement: if a produced `B_ASAC` terminal source-residue object has nonzero terminal source charge, then for some `a>0`, `R<\infty`, and `\eta>0`, a bounded selected same-fluid source-parent family in `B_R\times[-1,-a]` carries mass at least `\eta`, unless a legal/projected/cutoff/boundary exit, finite or non-Zeno donor-refill exit, or nonzero ASAC-paid defect occurs.

This is the parent-cloud form of:

```math
B_{ASAC}PreterminalParentTightness.A.
```

## Available Inputs

`B_ASAC` excludes fixed earlier selected source slices, paid legal exits, finite donor-refill, non-Zeno refill, and ASAC-paid defect. It retains terminal Zeno source support and a nonzero native positive source residue.

## Attempt 1: Pigeonhole the terminal source mass

Terminal source charge bounded below by `M_0>0` gives total source mass at
least `M_0` in shrinking terminal layers. A pigeonhole argument can select a
time layer where the density is large. The selected layer may still lie in
`(-\epsilon_m,0]` with `\epsilon_m\downarrow0`.

The desired conclusion needs a fixed preterminal gap `a>0`. Total mass alone
gives no such gap. The endpoint time-marginal witness

```math
g_m(s)=m\,1_{(-1/m,0]}(s)
```

concentrates all mass inside a vanishing time layer, so every fixed `[-1,-a]` receives zero mass for large `m`.

## Attempt 2: Compactness of selected parent families

A selected-parent compactness proof would need a threshold forcing one bounded
selected family from the diffuse cloud. The obstruction is a cloud of many
near-terminal legal pieces whose individual selected weights vanish while the
total source charge remains bounded below by `M_0>0`.

The branch can satisfy:

```text
no bounded selected family with fixed mass,
infinitely many legal near-terminal pieces,
total native source mass bounded below by `M_0>0`,
heat-time support shrinking to zero.
```

This is exactly the terminal Zeno case retained in `B_ASAC`.

## Attempt 3: FirstPulse.NoParent

`FirstPulse.NoParent` states that no earlier selected same-fluid source parent exists. This is an exclusion, rather than a concentration mechanism. Combined with finite and non-Zeno donor removal, it identifies terminal Zeno source ancestry as the remaining case.

It gives the conclusion only if a separate concentration theorem first turns nonzero terminal charge into a fixed earlier selected parent.

## Attempt 4: Zero ASAC defect

Zero ASAC defect removes paid angular and pair-weight leakage. Parent-cloud concentration needs a compactness estimate on source ancestry and time scales. These are distinct ledgers.

A diffuse terminal Zeno cloud can carry zero ASAC defect after the ASAC-paid leakage has vanished.

## Verdict

`BASACPreterminalParentCloudConcentration.A` remains open from installed inputs.

A valid proof requires a quantitative concentration principle:

```text
terminal native source charge bounded below by `M_0>0`
=> fixed preterminal selected same-fluid parent mass
```

up to the already paid legal, donor, and ASAC exits.

Current `B_ASAC` data classify the diffuse terminal Zeno parent cloud; they do not compact it into a fixed earlier selected parent.
