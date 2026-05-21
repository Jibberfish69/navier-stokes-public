# WeightedLiftedSkewDefectLegal.A current-gate continuation

## Status

Continuation note for the signed-current source-wall branch.

Claimed status: failed under current installed inputs.

## Route position

The current signed-current route is

```math
BareDyadicSkewCurrent.0
+
SkewSaturationAdmissibility.A
+
WeightedLiftedSkewDefectLegal.A
+
OffSaturationBoundaryPricing.A
\Longrightarrow
TerminalSkewLocalizationLedger.A
\Longrightarrow
LocalizedSkewCurrent.A.
```

The next downstream stage is

```math
LocalizedSkewCurrent.A
+CycleHeatAction.A/ParabolicEdgeResistance.A
\Longrightarrow
ScaleCriticalTreeCarleson.A.
```

The live gate is `WeightedLiftedSkewDefectLegal.A`, with adjacent boundary pricing through `OffSaturationBoundaryPricing.A`.

## PairWeightFlattening.A test

The pairwise weighted skew defect is

```math
W_PJ^0(P'\to P)+W_{P'}J^0(P\to P')
=(W_P-W_{P'})J^0(P'\to P).
```

On legal separated shell edges, the one-sided terminal source weights have order-size mismatch.  Terminal heat-scale rescaling can flatten smooth geometric coefficients inside a packet, while the dyadic source-wall weights still differ across paired endpoints.

Thus absolute `PairWeightFlattening.A` reduces to a new terminal
weight-coherence theorem plus active strain alignment cost. Estimating the
mismatch by absolute value returns to the scalar source wall.

The 2026-05-06 ASAC update changes the consumer target.  The positive terminal
source wall does not require absolute pair-weight flattening.  It requires only
the one-sided positive pair defect:

```math
\sum_e\int (W_P-W_{P'})_+[J_e]_+\,dt.
```

This is now charged by `ASAC.A` in
`mpp-one-sided-pair-weight-defect-after-asac-20260506.md`:

```text
ASAC.A => PositivePairWeightDefectCharge.A.
```

So the live post-ASAC weight branch is not `PairWeightFlattening.A`; it is
terminal signed-partner saturation after the one-sided weight defect is paid.

## LiftedSkewCommutator.A test

The true lifted remainder contains the principal packet-local strain term

```math
2^{2j}\sum_P
\langle S_k(x_P,t)e_P,e_P\rangle |c_P(t)|^2.
```

Trace-free incompressibility allows cancellation over all directions.  Terminal packet selection may concentrate on expanding eigendirections, producing positive local strain alignment.  The lifted object therefore needs an active-strain alignment theorem or terminal signed saturation before it becomes an antisymmetric localized edge current.

## OffSaturationBoundaryPricing.A test

A missing signed partner can be a legal same-fluid donor inside the packet system.  Such a donor is an internal negative sink feeding a terminal positive receiver.  Boundary/collar/pressure/cutoff/off-family ledgers price genuine exits and localization errors; they do not price an interior donor sink.

Thus `OffSaturationBoundaryPricing.A` reduces to `TerminalSignedSaturation.A` or `ParabolicNoFreeSink.A`.

## ParabolicNoFreeSink.A test

A localized skew current can contain an internal transfer

```math
J(A\to B)=F>0,
\qquad
\operatorname{div}J(B)=F,
\qquad
\operatorname{div}J(A)=-F.
```

The receiver `B` has positive terminal divergence.  The donor `A` is an internal sink.  First-current pruning removes earlier positive arrivals, while this donor is a negative source sink.  Heat action acts after a cycle or heat edge appears; the transfer can be inviscid and internal at the source-current level.

So `ParabolicNoFreeSink.A` requires signed saturation or donor-depletion reserve.

## Common remaining primitive

The attempts above collapse to the same primitive:

```math
\boxed{TerminalSignedSaturation.A / SignedPositiveBalance.A.}
```

After the ASAC update, equivalent sufficient inputs are:

```math
PositivePairWeightDefectCharge.A+TerminalSignedSaturation.A,
```

or

```math
TerminalSignedSaturation.A+TwoTowerDonorDepletion.A,
```

or a direct donor-depletion reserve for legal internal sinks.

## Conclusion

`WeightedLiftedSkewDefectLegal.A` remains open.  The correct next theorem is a signed positive-source balance theorem:

```math
\int_{\mathcal F_N}(\mathfrak S_{N,loc}^{active})_+
\le
\int_{\mathcal F_N}(\mathfrak S_{N,loc}^{active})_-
+o_N(1)+Loss_{legal}.
```

This theorem must survive one-sided terminal weights, lifted commutator replacement, and terminal same-fluid selection.  Without it, the signed-current branch returns to the scalar source wall:

```math
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
```
