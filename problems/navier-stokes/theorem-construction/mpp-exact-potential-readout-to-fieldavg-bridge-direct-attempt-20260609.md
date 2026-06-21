---
ns_viewer:
  theorem_id: exact-potential-readout-to-fieldavg-bridge-direct-attempt-20260609
  status: failed-scfbase-good-cover-bridge-missing
  proof_role: cm_fieldavg_bridge_license_test
  logical_landing_node: scfbase-good-cover-from-exact-potential-readout
  edge_effect: "Tests ExactPotentialReadoutToFieldAvgBridge.A. The installed Field_avg object is a terminal positive-scale same-fluid SCF_base good cover. D.7mq / SSC-EP supplies branch-sensitive projector and selector-strain readout support, and EWI.A exports class-membership ledgers into that readout, but the checked surfaces do not prove the full SCF_base good-cover components from that exact-potential packet. The next atom is SCFBaseGoodCoverFromExactPotentialReadout.A: prove that the exact-potential readout plus CM-exported pack/tower ledgers yields a terminal finite positive-scale SCF_base good cover, or demote the exact-potential/QSP branch to support-only and choose a different Field certificate."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-selector-readout-to-field-bridge-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mcp-field-avg-equivalence-terminal-good-cover.md
    - problems/navier-stokes/theorem-construction/mpp-averaged-field-face-admission-20260607.md
    - problems/navier-stokes/theorem-construction/mpp-exact-potential-witness-to-readout-theorem.md
    - problems/navier-stokes/theorem-construction/exact-potential-balanced-frame-to-d7mq.md
    - problems/navier-stokes/theorem-construction/reference-projector-to-top-strain-comparison.md
  downstream_consequence: "The next theorem atom is SCFBaseGoodCoverFromExactPotentialReadout.A: pay velocity fluctuation, local gradient energy, pressure normalization, and same-fluid frame components of SCF_base from the exact-potential readout and CM-exported pack/tower ledgers on one terminal finite cover."
---

# MPP Exact-Potential Readout To Field_avg Bridge Direct Attempt

Date: 2026-06-09

Status: bridge-license proof attempt. This note does not close
`ExactPotentialReadoutToFieldAvgBridge.A`,
`SelectorReadoutToFieldBridge.A`, Field success, Field failure, or CMI finality.

## Target

The active target is:

```text
ExactPotentialReadoutToFieldAvgBridge.A.
```

It must prove that the `D.7mq / SSC-EP` exact-potential readout supplies
`Field_avg` on the same terminal `READ.COVER / ATD_m^epsilon` layer, or else
name an alternate Field certificate.

## Method Pass

Proof program: Navier-Stokes CM contrapositive class exit.

Target object: bridge from exact-potential branch readout to the averaged Field
object.

Object role: Field_avg certificate construction or failure-necessity test.

Logical skeleton: compare the exact-potential branch output with the installed
definition of `Field_avg(T)`.

Mechanism: terminal `SCF_base` good cover, exact-potential projector/strain
readout, and CM-exported pack/tower ledgers.

## Checked Definition Of Field_avg

The installed `Field_avg` object is not a name for any useful readout. It is:

```text
terminal positive-scale same-fluid SCF_base good cover.
```

Equivalently, after passing to a terminal subtail, every retained point has an
`SCF_base` good same-fluid cylinder with radius bounded below by one positive
number.

The averaged Field-face admission note also identifies the components that a
Field certificate must dominate at the needed finite depth:

```text
velocity fluctuation,
local gradient energy,
pressure normalization,
same-fluid frame terms.
```

Those are the components of the `SCF_base` good-cover object.

## What Exact-Potential Readout Supplies

The exact-potential branch supplies branch-sensitive projector and strain
readout:

```text
D.7mq + SSC-EP
=> D.7mr2
=> RPC.3
=> SG.4
=> BR.lambda2
=> continuation support.
```

The exact-potential witness-to-readout theorem supplies a semantic splice:

```text
class-membership packet + exact-potential branch readout
=> branch supplier ledger.
```

The exported ledger has pack, tower/strain, and branch-calibration pieces. This
is useful support, but its proved target is an exact-potential directional
ledger, not the full terminal `SCF_base` good-cover object.

## Failed Discharge

To close the active bridge from the checked surfaces, the exact-potential packet
would need to prove:

```text
D.7mq + SSC-EP + EWI.A ledgers
=> finite positive-scale same-fluid SCF_base good cover
=> Field_avg(T).
```

The checked files do not install that implication.

`D.7mq` controls synchronized pair/projector geometry. `SSC-EP` controls the
comparison from the Cauchy-Green projector to the top-strain projector. `EWI.A`
exports CM pack/tower/calibration error ledgers into that branch. None of those
surfaces proves that the velocity fluctuation, local gradient energy, pressure
normalization, and same-fluid frame terms of `SCF_base` are all small on a
terminal finite cover with one positive lower radius.

So the current state is:

```text
D.7mq / SSC-EP exact-potential readout => branch continuation support;
D.7mq / SSC-EP exact-potential readout != installed Field_avg(T).
```

The failure side also remains unpaid:

```text
failure of the exact-potential readout != Jump_avg(T)
```

because `Jump_avg(T)` is failure of every terminal positive-scale `SCF_base`
good cover, not failure of one branch-sensitive projector route.

## Result

`ExactPotentialReadoutToFieldAvgBridge.A` is not proved.

The next theorem atom is:

```text
SCFBaseGoodCoverFromExactPotentialReadout.A:
prove that the exact-potential D.7mq / SSC-EP readout plus CM-exported pack and
tower ledgers yields a terminal finite positive-scale SCF_base good cover.
```

If that atom cannot be proved, the exact-potential/QSP branch must stay
support-only for CM finality, and the loop must choose another Field
certificate or another Part/Field face route.

## New Live Criticism

`NS-LIVE-20260609-156`: `ExactPotentialReadoutToFieldAvgBridge.A` is not
proved. The installed `Field_avg` object is a terminal positive-scale
`SCF_base` good cover, while `D.7mq / SSC-EP / EWI.A` supplies branch-sensitive
projector/strain readout support and CM-exported ledgers. The proof still lacks
`SCFBaseGoodCoverFromExactPotentialReadout.A`: a theorem paying the full
`SCF_base` good-cover components from the exact-potential readout on one
terminal finite positive-scale cover, or an explicit alternate Field
certificate.
