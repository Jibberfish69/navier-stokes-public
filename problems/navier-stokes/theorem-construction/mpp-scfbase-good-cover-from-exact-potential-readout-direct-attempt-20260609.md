---
ns_viewer:
  theorem_id: scfbase-good-cover-from-exact-potential-readout-direct-attempt-20260609
  status: demoted-support-only-fieldavg-dichotomy-selected
  proof_role: support-route-demotion-and-cm-target-reselection
  logical_landing_node: h-f-pack-restoration
  edge_effect: "Tests SCFBaseGoodCoverFromExactPotentialReadout.A and demotes it as an optional support theorem rather than a required CM Field certificate. Field_avg is already the installed Field-side object: Field_avg passes as the positive-scale SCF_base cover, and Jump_avg fails the Field face by AveragedFieldFaceAdmission.A under retained Pack+Part. The exact-potential/QSP chain may support continuation, but it is not necessary as the Field certificate. The active public-finality burden returns to OriginalSmoothDataPackSurvival.A through HFTerminalDefectMassVanishing.A / USCP.A2-PackRestoration.A."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-exact-potential-readout-to-fieldavg-bridge-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mcp-field-avg-equivalence-terminal-good-cover.md
    - problems/navier-stokes/theorem-construction/mpp-averaged-field-face-admission-20260607.md
    - problems/navier-stokes/theorem-construction/mpp-hf-unified-survivor-pack-survival-direct-attempt-20260609.md
  downstream_consequence: "The next theorem atom is HFTerminalDefectMassVanishing.A / USCP.A2-PackRestoration.A: prove that original smooth data makes the h/F terminal defect vanish on every licensed same-fluid Pack scale window, or directly restore Pack_Q from the terminal budget."
---

# MPP SCF_base Good Cover From Exact-Potential Readout Direct Attempt

Date: 2026-06-09

Status: target-correction proof pass. This note does not close
`OriginalSmoothDataPackSurvival.A`, `HFTerminalDefectMassVanishing.A`,
`USCP.A2-PackRestoration.A`, `NoGenuineExitFromSmoothData.A`, or CMI finality.

## Target Tested

The selected target was:

```text
SCFBaseGoodCoverFromExactPotentialReadout.A.
```

It would prove that exact-potential `D.7mq / SSC-EP` readout plus CM-exported
pack/tower ledgers yields a terminal finite positive-scale `SCF_base` good
cover.

## Method Pass

Proof program: Navier-Stokes CM contrapositive class exit.

Target object: decide whether exact-potential/QSP support must become the Field
certificate.

Object role: support-route demotion or Field certificate selection.

Logical skeleton: compare the required `Field_avg` dichotomy with the proposed
exact-potential positive support route.

Mechanism: `Field_avg` / `Jump_avg`, retained Pack+Part Field face, and
first-face order.

## Checked Field Dichotomy

The installed averaged Field object is:

```text
Field_avg(T) := terminal positive-scale same-fluid SCF_base good cover.
```

Its complement is:

```text
Jump_avg(T) := not Field_avg(T).
```

The averaged Field-face admission theorem says:

```text
Field_{N,r,Q} on the same CM-test-admitted averaged terminal tail
=> Field_avg(T).
```

So under retained `Pack_Q` and `Part_{N,Q}`,

```text
Jump_avg(T)
=> forall r > 0, not Field_{N,r,Q}.
```

That is already a CM Field-face failure. It does not require the
exact-potential/QSP support route to become the Field certificate.

## Result Of The Target Test

`SCFBaseGoodCoverFromExactPotentialReadout.A` is not the required next CM
finality theorem.

It is a possible positive support theorem:

```text
D.7mq / SSC-EP / EWI.A
=> one route to Field_avg / continuation support.
```

But the CM Field face does not depend on proving that particular support route.
The Field-side pass/fail split is already:

```text
Field_avg(T)  => pass side / positive Field cover,
Jump_avg(T)   => Field face failure under retained Pack+Part.
```

So the exact-potential/QSP chain must stay support-only unless a later proof
needs it as an optional continuation supplier. It cannot remain the active CMI
finality blocker.

## Active Burden After Demotion

The unresolved public-finality burden is now the Pack side from original smooth
data:

```text
OriginalSmoothDataPackSurvival.A.
```

The strongest non-alias child already isolated on disk is:

```text
HFTerminalDefectMassVanishing.A / USCP.A2-PackRestoration.A.
```

The h/F note proved the reduction:

```text
first Pack exit
=> nonzero same-carrier h/F terminal defect mass
   or missing licensed schedule/collar theorem.
```

It did not prove the contradiction. The next theorem must pay one of:

```text
terminal h/F defect mass vanishes on every licensed same-fluid Pack scale window;
nonzero h/F terminal survivor mass is impossible for original smooth NS data;
pair-defect observability/source estimates force the h/F survivor to zero;
USCP.A2-Pack restoration plus a terminal budget closes Pack_Q directly.
```

## New Live Criticism

`NS-LIVE-20260609-157`: the exact-potential/QSP branch has been demoted to
support-only for CM finality. The active proof no longer needs
`SCFBaseGoodCoverFromExactPotentialReadout.A` as the Field certificate because
the installed `Field_avg` / `Jump_avg` dichotomy already supplies the Field
pass/fail split under retained Pack+Part. Public Clay finality remains blocked
at `OriginalSmoothDataPackSurvival.A`, concretely
`HFTerminalDefectMassVanishing.A / USCP.A2-PackRestoration.A`: prove terminal
h/F defect mass vanishes on licensed same-fluid Pack scale windows, rule out
nonzero h/F terminal survivor mass for original smooth NS data, or directly
restore `Pack_Q`.
