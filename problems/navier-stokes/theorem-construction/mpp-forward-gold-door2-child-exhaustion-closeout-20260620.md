# Door 2 Child Exhaustion Closeout

Date: 2026-06-20

Status: branch-closeout for the Door 2 child labels, not a proof of
`ZenoCriticalProfileProduction.A`.  The loose production labels have been
tested down to their actual mathematical suppliers.  Door 2 now reduces to
three non-aliased burdens: canonical gauge uniqueness, same-shadow native
source readout, and unweighted terminal action/no-waste control.

## 1. Parent target

Door 2 starts from the zero stress-flux branch:

```math
\Phi_0=0.
\tag{DC.1}
```

The desired production theorem is

```math
\text{ZenoCriticalProfileProduction.A},
\tag{DC.2}
```

meaning the terminal Zeno branch must produce an exact stationary,
\((-1)\)-homogeneous, smooth-sphere Navier--Stokes profile with zero point
force.  Only after that production does the conditional
`ZeroFluxLandauClassLiouville.A` consumer apply.

The parent Door 2 note reduced this to

```math
\text{SingleBubbleCanonicalGauge.A}
+
\text{ZeroFluxDriftVisibility.A}
+
\text{RenormalizedActionFinite.A}
+
\text{AnnularDefectEvacuation.A}.
\tag{DC.3}
```

## 2. Drift side after direct tests

The zero-flux drift note reduced

```math
\text{ZeroFluxDriftVisibility.A}
\tag{DC.4}
```

to

```math
\text{CanonicalGaugeCoercivity.A}
+
\text{ModulationForcingNativeProjection.A}
+
\text{NoNeutralModulationLoop.A}.
\tag{DC.5}
```

The 2026-06-20 direct child tests sharpen these three labels as follows.

### 2.1 Modulation forcing projection

`ModulationForcingNativeProjection.A` is not proved by zero flux or
compactness.  It reduces to

```math
\text{NondegenerateModulationJacobian.A}
+
\text{SourceResolvedNativeModeReadout.A}
+
\text{NoNeutralModulationLoop.A}.
\tag{DC.6}
```

The source-readout clause is the mode-resolved version of the Door 1
same-shadow selected-source trace identity.

### 2.2 Canonical gauge coercivity

`CanonicalGaugeCoercivity.A` is not supplied by measurable selection or a
canonical atlas.  It reduces to

```math
\text{GaugeFunctionalSpectralGap.A}
+
\text{SelectorStability.A}
+
\text{SingleBubbleSeparation.A}.
\tag{DC.7}
```

This is the precise sufficient content behind `SingleBubbleCanonicalGauge.A`
at the current resolution.

### 2.3 No neutral modulation loop

`NoNeutralModulationLoop.A` is not proved by ordinary physical energy
monotonicity.  It reduces to

```math
\text{GaugeMetricActionCoercivity.A}
+
\text{UnweightedModulationActionFinite.A}
+
\text{ZeroReadoutFlatFamilyExclusion.A},
\tag{DC.8}
```

or equivalently to strict rescaled no-waste plus gauge-action coercivity and
zero-readout rigidity.

## 3. Stationarity side after direct test

The stationarity-side test proves the consumer implication

```math
\text{RenormalizedActionFinite.A}
+
\text{AnnularDefectEvacuation.A}
\Longrightarrow
\text{stationary annular subsequential limit}.
\tag{DC.9}
```

The production input is not installed.  Physical energy gives only

```math
\int e^{-s/2}\mathcal A(s)\,ds<\infty,
\tag{DC.10}
```

while the quiet-window argument needs unweighted terminal action.  Defect
compactness exposes source/defect measures; it does not evacuate them.

So this side reduces to

```math
\text{StrictRescaledNoWasteLyapunov.A}
\quad\text{or an equivalent unweighted terminal action/source reserve}
\tag{DC.11}
```

plus source-defect routing:

```math
\text{TerminalMovingPacketTraceModulus.A}
\quad\text{or}\quad
\text{PositiveRemainderDepletion.A}
\quad\text{or}\quad
\text{NoFreeTerminalZenoDonorChain.A}
\quad\text{or}\quad
\text{MinimalZenoProfileProduction.A}.
\tag{DC.12}
```

## 4. Consolidated Door 2 frontier

After removing aliases, Door 2 is no longer four loose labels.  It is the
following package:

```math
\boxed{
\text{canonical gauge uniqueness}
}
\tag{DC.13}
```

```math
\text{GaugeFunctionalSpectralGap.A}
+
\text{SelectorStability.A}
+
\text{SingleBubbleSeparation.A};
\tag{DC.14}
```

```math
\boxed{
\text{same-shadow native source/mode readout}
}
\tag{DC.15}
```

```math
\text{SourceResolvedNativeModeReadout.A}
\quad
\text{or the Door 1 selected-source trace identity};
\tag{DC.16}
```

```math
\boxed{
\text{unweighted terminal action/no-waste control}
}
\tag{DC.17}
```

```math
\text{StrictRescaledNoWasteLyapunov.A}
\quad\text{or}\quad
\text{UnweightedActionFinite.A / normalized CKN / source-square /
selected critical-strain reserve}.
\tag{DC.18}
```

Zero-readout flat-family exclusion is the rigidity side of the same package:

```math
\text{ZeroReadoutFlatFamilyExclusion.A}.
\tag{DC.19}
```

## 5. Meaning for the gold route

Door 2 has been exhausted as an independent label chase.  The surviving
mathematical content is:

1. a true canonical single-bubble gauge with a spectral gap;
2. a source-resolved native readout that does not lose the signed shadow under
   selected positive-part extraction;
3. an unweighted terminal action/no-waste theorem that removes the exponential
   discount in terminal log time.

The second item merges with Door 1.  The third item is the same heat-scale
time-face pulse wall already exposed by the participation/recurrent-action
tests.  The first item is the remaining genuinely Door 2-specific gauge
rigidity burden.

## Verdict

The Door 2 child branch is closed as a map.  It is not closed as a theorem.
The exact current reduced frontier is

```math
\boxed{
\text{GaugeFunctionalSpectralGap.A}
+
\text{SelectorStability.A}
+
\text{SingleBubbleSeparation.A}
}
\tag{DC.20}
```

plus

```math
\boxed{
\text{SourceResolvedNativeModeReadout.A / same-shadow selected-source trace}
}
\tag{DC.21}
```

plus

```math
\boxed{
\text{StrictRescaledNoWasteLyapunov.A / unweighted terminal action reserve}
}
\tag{DC.22}
```

with `ZeroReadoutFlatFamilyExclusion.A` as the compact-profile rigidity clause
needed to prevent zero-readout recurrent families.
