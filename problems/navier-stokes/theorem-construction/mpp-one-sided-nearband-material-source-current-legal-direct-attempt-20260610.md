---
ns_viewer:
  theorem_id: one-sided-nearband-material-source-current-legal-direct-attempt-20260610
  status: failed-reduced-to-lowhigh-terminal-signed-saturation-or-pure-pressure-branch
  proof_role: active_completion_proof_source_current
  logical_landing_node: one_sided_nearband_material_source_current_legal
  edge_effect: "Tests whether the one-sided near-band material source-current branch is legal after ASAC and post-ASAC no-free-sink reductions. The direct pass fails as a forward no-free-sink proof and separates CM face support from the still-open public first-Pack-survival payment."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-terminal-pressure-hessian-no-sustain-lowhigh-direct-attempt-20260610.md
    - problems/navier-stokes/theorem-construction/mpp-nearband-material-source-after-asac-reduction-20260506.md
    - problems/navier-stokes/theorem-construction/mpp-terminal-weighted-no-free-sink-after-asac-20260506.md
    - problems/navier-stokes/theorem-construction/nearbandmaterialsourcecharge-a-framebvcharge-a-theorem-creation-20260523.md
  downstream_consequence: "OneSidedNearBandMaterialSourceCurrentLegal.A is not proved. The next executable child is LowHighTerminalSignedSaturationForwardNoFreeSink.A, TerminalPressurePureStrainLegal_lowhigh.A, PurePressureSustainResidueLiouville_lowhigh.A, ActiveStrainAlignmentCost_lowhigh.A, TPNILowHighNoIncoming.A, LowHighSourceResidenceEvacuation.A, LowHighTerminalStripModulus.A, or ScaleNestedPackMoleculeLiouville.A."
---

# MPP OneSidedNearBandMaterialSourceCurrentLegal.A Direct Attempt

Date: 2026-06-10

Status: active-completion proof attempt. This note does not close public Clay
finality and does not license PDF finality.

## Target

The pressure-Hessian no-sustain pass left:

```text
OneSidedNearBandMaterialSourceCurrentLegal.A.
```

The theorem would say that the selected low-high pressure/source branch carried
by the one-sided near-band material source-current is legally paid on the same
terminal window, so it cannot survive as the low-high Pack source atom.

## Method Pass

Proof program: CM contrapositive public-finality bridge.

Target role: source-current payment for the low-high first-Pack survival branch.

Logical skeleton: same-ledger saturation / no-free-sink test.

Mechanism tested: post-ASAC source-current reduction, terminal signed saturation,
donor no-free-sink, and CM face-consumption separation.

## Checked Source-Current Reduction

The near-band source audit shows that generic pressure/material estimates are
circular: absolute bounds return to the source wall. After the material
integration by parts, ASAC pays the active-alignment piece, while the remaining
carrier is the terminal selected, one-sided weighted source-current term.

The post-ASAC reduction proves only the conditional statement:

```text
ASAC.A
+ NearBandBoundaryPack.A
+ ProjectedCutoffLedger.A
+ TerminalWeightedNoFreeSink.A
=> NearBandMaterialSourceCharge.A.
```

The no-free-sink note then reduces `TerminalWeightedNoFreeSink.A` to the exact
remaining branch:

```text
ZenoSourceResidueRigidity.A
```

after retained signed partners, legal exits, finite donor sinks, and pair-weight
defects have been paid.

## Why This Does Not Close The Low-High Branch

`TerminalSignedSaturationCMFaceReduction.A` is installed only as CM
witness-face support. It says that failure of terminal signed saturation can be
routed into Pack/Part/Field witness-face exit after the terminal Zeno/atom
classification is admitted.

That is not the same theorem as the forward public payment needed here. This
low-high branch is being used before the first-Pack survival bridge has been
paid. To close `OneSidedNearBandMaterialSourceCurrentLegal.A` as a forward
source-current theorem, the proof still needs a same-window no-free-sink payment
or a lawful reduction of the surviving branch to the pure pressure / terminal
strip / scale-nested rigidity side.

The checked distinction is:

```text
TerminalSignedSaturationCMFaceReduction.A
= CM face support for failed saturation,
not
TerminalWeightedNoFreeSink.A as a forward source-current payment.
```

Spending the CM face support as a forward no-free-sink theorem would collapse
the first-Pack survival question into bookkeeping. That is the exact false move
this loop must prevent.

## Surviving Model

The same countermodel shape survives this source-current pass:

```text
selected high packet
+ positive low strain on a shrinking terminal window
+ same-window pressure/source-current carrier
+ donor sink or terminal Zeno refill not paid by the forward ledger.
```

ASAC removes the active-alignment mismatch for retained partners. Local donor
balance plus entrance decay removes finite non-Zeno donor trees. The remaining
case is the zero-thickness terminal refill/source-residue branch. In CM
language that branch can support Pack/Part/Field exit after the CM test has
admitted the witness. In the public first-Pack survival chain it is still the
unpaid branch unless a forward no-free-sink, terminal strip modulus, pure
pressure Liouville, low-high no-incoming, source-residence evacuation, or
scale-nested rigidity theorem is supplied.

## Result

`OneSidedNearBandMaterialSourceCurrentLegal.A` is not proved.

The live child is now:

```text
LowHighTerminalSignedSaturationForwardNoFreeSink.A,
TerminalPressurePureStrainLegal_lowhigh.A,
PurePressureSustainResidueLiouville_lowhigh.A,
ActiveStrainAlignmentCost_lowhigh.A,
TPNILowHighNoIncoming.A,
LowHighSourceResidenceEvacuation.A,
LowHighTerminalStripModulus.A,
ScaleNestedPackMoleculeLiouville.A,
or an equivalent first-Pack survival theorem.
```

Until one of these is installed and propagated through
`OneSidedNearBandMaterialSourceCurrentLegal.A`,
`TerminalPressureHessianNoSustain_lowhigh.A`,
`DynamicLowHighEigenpacketNoFreeze.A`,
`SelectedLowHighPositiveStrainDecorrelation.A`,
`LowHighPackSourceCarlesonReserve.A`,
`ScaleNestedLowHighPackMoleculeRigidity.A`,
`TwoProfilePackMoleculeRigidity.A`,
`CrossProfilePackAtomBelongsToRigidProfile.A`,
`PackCriticalElementStability.A`,
`ProducedMinimalFirstPackBubbleRigidity.A`,
`NoGenuineExitFromSmoothData.A`, and both rendered PDF rereads, both PDF tracks
remain non-final.

## New Live Criticism

`NS-LIVE-20260609-223`: `OneSidedNearBandMaterialSourceCurrentLegal.A` is not
proved. The post-ASAC source-current corpus pays active alignment, legal exits,
and finite donor sinks only conditionally on a terminal no-free-sink/Zeno
source-residue rigidity atom. `TerminalSignedSaturationCMFaceReduction.A` is CM
witness-face support, not a forward no-free-sink supplier for public first-Pack
survival. The active loop must prove a low-high terminal signed-saturation
forward no-free-sink theorem, pure-pressure legal/Liouville theorem,
active-alignment/no-incoming theorem, source-residence evacuation, terminal
strip modulus, scale-nested Liouville, or an equivalent theorem before claiming
source-current legality, pressure no-sustain, dynamic no-freeze, or PDF finality.
