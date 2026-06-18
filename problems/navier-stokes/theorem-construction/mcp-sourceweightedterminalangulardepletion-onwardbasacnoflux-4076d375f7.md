# SourceWeightedTerminalAngularDepletion.OnwardBASACNoFlux

## Status

Local theorem-note artifact.  This continuation tests the ASAC/equality-class and pressure/eigenframe routes for the source-weighted terminal angular carrier.

## Target

The separate downstream no-pulse/source-control support target is

```math
SourceWeightedTerminalAngularDepletion.A:
\quad
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
|w_{j_P}|^2
\left[e_{j_P}\cdot S_{<j_P}^{loc}e_{j_P}\right]_+dxdt
\le
Drain_{parent}(\mathcal F_N)+Loss_{legal}(\mathcal F_N)+o_N(1).
```

## ASAC/equality-class test

The ASAC route pays active alignment in the signed-current presentation only
after its exact residual/no-incoming inputs are installed.  The newer equality
route gives

```math
ASACDefectMeasure.A
+
TerminalNoFreeSinkEqualityClassProduction.A
\Longrightarrow
B_{ASAC}.
```

This produces the equality class for terminal tangent/no-free-sink analysis.  Inside this class, the remaining exact survivors are

```math
NoIncomingFlux_{global}.A
```

or

```math
TransportedCylinderNoFlux.A.
```

A stronger alternative is a rigid subclass of `B_ASAC` with a residue Liouville theorem.

The class `B_ASAC` alone gives equality-class structure.  It supplies no super-L1 temporal residence estimate:

```math
TerminalSourceReverseHolder.A
```

or

```math
UniformTemporalSourceIntegrability_p.A.
```

Thus the ASAC/equality route reduces the target to a no-incoming/no-flux theorem for the `B_ASAC` tangent class.

## Pressure/eigenframe test

The pressure/eigenframe route contributes conditional near-band signed-current support through

```math
TerminalPressureHessianNoSustain.A
```

and

```math
OneSidedNearBandMaterialStrainBV.A.
```

These target persistence of signed near-band source-current structure.  They do not pay the full source-weighted positive carrier on the selected terminal packet family.

## Sharpened survivor

The branch now has two exact survivor formulations:

```math
\boxed{NoIncomingFlux_{global}.A\ \text{or}\ TransportedCylinderNoFlux.A\ \text{for }B_{ASAC}}
```

or

```math
\boxed{TerminalSourceReverseHolder.A\ \text{for }B_{ASAC}.}
```

Either would feed

```math
SourceWeightedTerminalAngularDepletion.A
\Longrightarrow
PositiveRemainderDepletion.A
\Longrightarrow
SourcePulseExclusion.A.
```

## Verdict

The ASAC/equality route sharpens the source-weighted angular depletion branch.  It does not discharge it.  The next useful theorem target is a no-incoming/no-flux theorem for the `B_ASAC` tangent class, or a terminal source reverse-Hlder theorem inside that class.
