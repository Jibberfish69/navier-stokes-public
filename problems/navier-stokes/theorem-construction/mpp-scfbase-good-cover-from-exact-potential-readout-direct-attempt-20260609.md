---
ns_viewer:
  theorem_id: scfbase-good-cover-from-exact-potential-readout-direct-attempt-20260609
  status: reopened-as-possible-scfbase-modulus-supplier
  proof_role: support_route_classification_and_cm_target_reselection
  logical_landing_node: h-f-pack-restoration
  edge_effect: "Reopens SCFBaseGoodCoverFromExactPotentialReadout.A as a possible supplier for the same-tail SCF_base modulus now required by AveragedFieldFaceAdmission.A. Field_avg remains the endpoint object, but Jump_avg no longer gives an unconditional Field-face failure from depth alone."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-exact-potential-readout-to-fieldavg-bridge-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mcp-field-avg-equivalence-terminal-good-cover.md
    - problems/navier-stokes/theorem-construction/mpp-averaged-field-face-admission-20260607.md
    - problems/navier-stokes/theorem-construction/mpp-hf-unified-survivor-pack-survival-direct-attempt-20260609.md
  downstream_consequence: "Downstream work must either prove SCFBaseLocalModulus_N(T,r) from Field_{N,r,Q}, strengthen the Field face to include it, or use an exact-potential/QSP route as a lawful modulus supplier before spending Jump_avg as forall r>0 not Field_{N,r,Q}."
---

# MPP SCF_base Good Cover From Exact-Potential Readout Direct Attempt

Date: 2026-06-09

Status: reopened target-correction proof pass. This note does not close
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

Object role: support-route classification or Field certificate selection.

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

The repaired averaged Field-face admission theorem says:

```text
Field_{N,r,Q} on the same CM-test-admitted averaged terminal tail
  + SCFBaseLocalModulus_N(T,r)
=> Field_avg(T).
```

So under retained `Pack_Q` and `Part_{N,Q}`,

```text
Jump_avg(T)
=> not (exists r > 0 with Field_{N,r,Q}
        and SCFBaseLocalModulus_N(T,r)).
```

That is a conditional CM Field-face failure. It still requires the same-tail
`SCF_base` modulus to be part of the Field row or proved from it. The
exact-potential/QSP support route is therefore not merely optional if it is the
available way to supply that modulus.

## Result Of The Target Test

`SCFBaseGoodCoverFromExactPotentialReadout.A` is not the whole CM finality
theorem, but it may be a required supplier for the repaired Field admission
unless another route proves `SCFBaseLocalModulus_N(T,r)`.

It is a possible exact modulus supplier:

```text
D.7mq / SSC-EP / EWI.A
=> one route to SCFBaseLocalModulus_N(T,r)
=> Field_avg / continuation support.
```

The CM Field face does not depend on this particular support route only if some
other theorem supplies the same-tail modulus. The repaired Field-side split is:

```text
Field_avg(T)  => pass side / positive Field cover,
Jump_avg(T)   => Field face failure under retained Pack+Part
                 after SCFBaseLocalModulus_N(T,r) is supplied.
```

So the exact-potential/QSP chain must stay out of upstream readout, but it cannot
be dismissed as optional until the same-tail modulus has been paid elsewhere.

## Active Burden After Target Reselection

One unresolved public-finality burden remains the Pack side from original smooth
data:

```text
OriginalSmoothDataPackSurvival.A.
```

The strongest non-alias child already isolated on disk for that Pack side is:

```text
HFTerminalDefectMassVanishing.A / USCP.A2-PackRestoration.A.
```

The h/F note proved the reduction:

```text
first Pack exit
=> nonzero same-carrier h/F terminal defect mass
   or missing licensed schedule/collar theorem.
```

It did not prove the contradiction. The Pack-side theorem must pay one of:

```text
terminal h/F defect mass vanishes on every licensed same-fluid Pack scale window;
nonzero h/F terminal survivor mass is impossible for original smooth NS data;
pair-defect observability/source estimates force the h/F survivor to zero;
USCP.A2-Pack restoration plus a terminal budget closes Pack_Q directly.
```

## New Live Criticism

`NS-LIVE-20260609-157`: the exact-potential/QSP branch is classified as
support-only for CM finality only after the same-tail modulus has been paid by
another theorem. The active proof cannot spend the installed `Field_avg` /
`Jump_avg` dichotomy as a Field pass/fail split under retained Pack+Part unless
`SCFBaseLocalModulus_N(T,r)` is supplied. Public Clay finality therefore has two
visible burdens here: the Pack-side `OriginalSmoothDataPackSurvival.A` family,
and the repaired Field-admission modulus needed before `Jump_avg` can be spent
as `forall r>0 not Field_{N,r,Q}`.
