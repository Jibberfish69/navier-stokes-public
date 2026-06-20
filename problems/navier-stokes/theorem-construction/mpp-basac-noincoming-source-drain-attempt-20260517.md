# MPP BASACNoIncomingSourceDrain.A Direct Attempt

Date: 2026-05-17

## Status

Direct attempt on the source-drain atom isolated by
`mpp-basac-atom-forces-escape-direct-attempt-20260517.md`.

Outcome: not closed from installed inputs. The attempt sharpens the live burden
to a source-ancestry compactness / no-incoming theorem for the produced
`B_ASAC` class.

## Target

Prove:

```math
\boxed{
BASACNoIncomingSourceDrain.A
}
```

meaning: a nonzero terminal source charge in `B_ASAC` forces one of:

```text
earlier selected same-fluid source parent,
legal/projected/cutoff/boundary exit,
finite or non-Zeno donor-refill exit,
or nonzero ASAC-paid defect measure.
```

Since the definition of `B_ASAC` excludes those alternatives, this theorem
implies `ZenoResidueLiouville_{B_ASAC}.A`, then
`SourceWeightedTerminalAngularDepletion.A`, and then
`PositiveRemainderDepletion.A`.

## Installed Inputs Checked

The available inputs are:

```text
ASACDefectMeasure.A,
TerminalNoFreeSinkEqualityClassProduction.A,
NoIncomingLicense_src.A / FirstPulse.NoParent,
native parent-form TPNI.A,
the May 4 normalized source-drain analytic package,
the May 5 SourceDrain.TheoremGrade.A correction,
and the B_ASAC class clauses.
```

The checked boundary is important: `NoIncomingLicense_src.A` is installed only
as first-pulse no-parent. `NoIncomingFlux_global.A` /
`TransportedCylinderNoFlux.A` is not installed for the `B_ASAC` source-residue
class.

## Attempt 1: import the May 4 source-drain package

The May 4 source-drain package gives the conditional local mechanism:

```text
CoeffStop.A
=> WeightedAdjBessel.A
=> WeightedAdjRes.A
=> GainStop.A
=> ParentKernel.A
=> FirstPulseKill.A
=> LemmaB.SourceDrain.
```

That package does not close this theorem-grade May 17 residue. The May 5
correction identifies the failing step: `FirstPulseKill.A` does not control
diffuse legal source-parent ancestry. A parent cloud can carry total source
charge bounded below by `M_0>0` while every bounded selected parent subfamily has
vanishing mass.

`B_ASAC` removes named legal exits, finite donor trees, non-Zeno refill, and
ASAC-paid defect leakage. It does not upgrade the diffuse terminal Zeno parent
cloud into a compact earlier selected source slice.

Therefore the old source-drain package cannot be imported as a closure.

## Attempt 2: first-pulse no-parent

`NoIncomingLicense_src.A` supplies:

```text
no earlier selected same-fluid source parent.
```

This removes fixed earlier selected parents. It also removes finite/non-Zeno
parent trees once combined with `LocalDonorBalance.A + EntranceLeafDecay.A`.

It does not rule out a terminal Zeno source marginal:

```math
g_m(s)=m\,1_{(-1/m,0]}(s),
```

or a diffuse legal parent cloud concentrating into heat-time zero. The source
charge can have no stable mass on any fixed negative-time slice while still
converging to a nonzero terminal atom.

Thus first-pulse no-parent is not the desired no-incoming theorem.

## Attempt 3: zero ASAC defect and paid exits

`ASACDefectMeasure.A` removes the active-alignment / one-sided pair-weight
defect paid by ASAC. The legal, projected, cutoff, boundary, finite-donor, and
non-Zeno exits have also been removed by the equality-class production.

Those removals classify the survivor. They do not compact the remaining source
ancestry. The retained source charge may still be a legal terminal Zeno
source-residue cloud with zero ASAC defect and no fixed earlier selected slice.

Turning those exclusions into zero terminal source charge would assume the
missing source-ancestry compactness theorem.

## Attempt 4: native parent-form TPNI

The installed native `TPNI.A` parent-drain identity is homogeneous. Its tangent
equation has no volume source charge, so first tangent-pulse minimality gives a
contradiction.

For a `B_ASAC` source-residue object, the adjoint identity contains the terminal
source term:

```math
\int \Phi_T\,d\mu_*^{src}.
```

That term is the live terminal record, not an error. The identity becomes a
source-parent-or-charge identity. First-pulse no-parent removes selected
parents, but it does not remove the terminal charge itself.

Thus `TPNI.A` does not prove `BASACNoIncomingSourceDrain.A`.

## Exact Stop

The direct source-drain attempt leaves one lower theorem:

```math
\boxed{
BASACSourceAncestryCompactness.A
}
```

Statement:

```text
In the produced B_ASAC terminal source-residue class, a nonzero terminal source
charge cannot be represented by a diffuse legal same-fluid parent cloud
invisible to every bounded earlier selected source family. It must contain a
fixed negative-time selected source parent or produce a legal/donor/ASAC exit.
```

With that compactness theorem, `BASACNoIncomingSourceDrain.A` follows
directly. Since `B_ASAC` excludes the resulting alternatives, this would
prove `ZenoResidueLiouville_{B_ASAC}.A`.

An equivalent sufficient form is:

```text
TransportedCylinderNoFlux_{B_ASAC}.A / NoIncomingFlux_global_{B_ASAC}.A
```

for the same source-residue tangent class.

## Verdict

`BASACNoIncomingSourceDrain.A` is not closed by the installed first-pulse,
ASAC, legal, donor, source-drain, or homogeneous TPNI inputs.

The exact next theorem to close is:

```math
\boxed{
BASACSourceAncestryCompactness.A
}
```

This is the missing bridge between "no selected earlier parent" and "no
incoming terminal source charge" for the `B_ASAC` class.
