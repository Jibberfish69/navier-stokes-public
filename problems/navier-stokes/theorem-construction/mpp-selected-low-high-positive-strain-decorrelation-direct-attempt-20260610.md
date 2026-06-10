---
ns_viewer:
  theorem_id: selected-low-high-positive-strain-decorrelation-direct-attempt-20260610
  status: failed-reduced-to-dynamic-eigenpacket-no-freeze
  proof_role: active_completion_proof_pressure
  logical_landing_node: selected_low_high_positive_strain_decorrelation
  edge_effect: "Tests whether the selected high packet decorrelates from the expanding eigendirection of the selected low strain on the same terminal heat windows. The direct pass fails from current inputs and reduces the child to a dynamic eigenpacket no-freeze / pressure-Leray rotation-cost theorem."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-low-high-pack-source-carleson-reserve-direct-attempt-20260610.md
    - problems/navier-stokes/theorem-construction/mpp-terminal-strain-alignment-frozen-packet-pressure-test-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-alignmentdecorrel-direct-attempt-note.md
  downstream_consequence: "SelectedLowHighPositiveStrainDecorrelation.A is not proved. The next executable child is DynamicLowHighEigenpacketNoFreeze.A, PressureLerayEigenframeRotationCost.A, LowHighFrameBVCharge.A, MultiDirectionParticipationTether.A, LowHighPositiveStrainResidence.A, or an equivalent theorem."
---

# MPP SelectedLowHighPositiveStrainDecorrelation Direct Attempt

Date: 2026-06-10

Status: active-completion proof attempt. This note does not close public Clay
finality and does not license PDF finality.

## Target

The previous pass reduced `LowHighPackSourceCarlesonReserve.A` to control of
the low-strain multiplier in

```math
\left[\langle S_{<j}^{low} w_j,w_j\rangle\right]_+
\le a_P |w_j|^2.
```

The next direct target is:

```text
SelectedLowHighPositiveStrainDecorrelation.A.
```

It would say that the selected high packet cannot remain aligned with the
expanding eigendirection of the selected low strain on the same shrinking
terminal heat windows.

## Method Pass

Proof program: CM contrapositive public-finality bridge.

Target role: prove or reduce the decorrelation payment needed by the low-high
source-Carleson branch.

Logical skeleton: obstruction model plus dynamic-cost reduction.

Mechanism tested: incompressibility, signed dyadic exchange, pressure recovery,
same-fluid transport, and existing alignment-decorrelation notes.

## Static Inputs Do Not Prove Decorrelation

The existing terminal strain-alignment pressure test already gives the relevant
model. Freeze a trace-free lower strain matrix

```text
S=diag(2,-1,-1),
```

choose a principal high packet with polarization `e_1` and wave vector `e_2`,
and place it on shrinking terminal heat windows with

```math
g_m(s)=m\,1_{(-1/m,0]}(s).
```

The packet is divergence-free at principal-symbol level, the polarization sits
in an expanding eigendirection, and the selected positive source is order one
on the terminal strip. The model keeps finite local `L^1_s` mass and no fixed
earlier selected slice.

This means trace-free strain, principal incompressibility, finite source mass,
same-fluid packet custody, and no fixed earlier selected source slice do not
prove the target.

## Why The Installed Alignment Notes Do Not Close The Low-High Version

`AlignmentDecorrel.A` and the positive-strain decorrelation notes isolate the
same analytic wall. They show that signed exchange and pressure recovery act
before terminal positive selection. A signed cancellation identity does not
bound

```math
|w_j|^2 [e_j\cdot S_{<j}^{low}e_j]_+
```

after the selector has chosen the positive terminal windows.

The low-high specialization does not add the missing theorem. It identifies
which low strain and which high packet must be coupled, but it does not force
rotation, angular mixing, or a time modulus for their relative eigenframe.

## Conditional Reduction

The following conditional statement is valid:

```text
SelectedLowHighPositiveStrainDecorrelation.A
follows from any theorem that forces a same-ledger cost when a selected high
packet remains in an expanding low-strain eigendirection on shrinking terminal
heat windows.
```

Usable forms are:

```text
DynamicLowHighEigenpacketNoFreeze.A,
PressureLerayEigenframeRotationCost.A,
LowHighFrameBVCharge.A,
MultiDirectionParticipationTether.A,
LowHighPositiveStrainResidence.A,
or LowHighTerminalStripModulus.A.
```

## Result

`SelectedLowHighPositiveStrainDecorrelation.A` is not proved from current
installed inputs.

The live child is now:

```text
DynamicLowHighEigenpacketNoFreeze.A,
PressureLerayEigenframeRotationCost.A,
LowHighFrameBVCharge.A,
MultiDirectionParticipationTether.A,
LowHighPositiveStrainResidence.A,
LowHighTerminalStripModulus.A,
ScaleNestedPackMoleculeLiouville.A,
or an equivalent theorem.
```

Until one of these is installed and propagated through
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

`NS-LIVE-20260609-220`: `SelectedLowHighPositiveStrainDecorrelation.A` is not
proved. The frozen trace-free expanding-eigenpacket model survives the current
soft inputs and shows that a selected high packet can co-locate with positive
low strain on shrinking terminal heat windows. The active loop must prove a
dynamic eigenpacket no-freeze, pressure/Leray eigenframe rotation cost,
low-high frame BV charge, multi-direction participation tether, low-high
positive-strain residence, terminal strip modulus, scale-nested Liouville, or an
equivalent theorem before claiming decorrelation, low-high Carleson reserve, or
PDF finality.
