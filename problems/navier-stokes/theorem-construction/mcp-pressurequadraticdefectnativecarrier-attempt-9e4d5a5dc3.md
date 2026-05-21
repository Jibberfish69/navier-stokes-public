# PressureQuadraticDefectNativeCarrier.Attempt

## Status

Failed direct discharge.  This note tests the pressure-to-native-source tether route exposed by `PositiveAdjointDefectDepletion.A`.

## Target

The desired theorem is

```math
PressureQuadraticDefectNativeCarrier.A:
\quad
\text{pressure/eigenframe defect lives on the native source-current carrier and is depleted there.}
```

Equivalent supplier names:

```math
PressureSourceAC.A,
\qquad
LocalizedLeraySourceTether.A.
```

The target would prevent pressure/eigenframe sustain from acting as a separate residual channel and would feed

```math
SourceWeightedTerminalAngularDepletion.A.
```

## Direct test

The pressure/eigenframe route contributes conditional near-band signed-current support:

```math
TerminalPressureHessianNoSustain.A,
\qquad
OneSidedNearBandMaterialStrainBV.A.
```

These controls are useful for signed near-band structure.  The positive supplier requires the full native carrier

```math
|w_j|^2\left[e_j\cdot S_{<j}^{loc}e_j\right]_+.
```

Pressure Poisson recovery and Leray projection identities give elliptic and gradient-cancellation structure, but they act before positive-part extraction and before selected terminal source weighting.

Thus the pressure/eigenframe tools do not presently imply one-sided depletion of the source-weighted positive carrier.

## Exact new target

The required missing theorem is

```math
\boxed{OneSidedPressureSourceTether.A}
```

stating that selected terminal pressure/eigenframe sustain must either pay the native positive source carrier by legal drain/loss or vanish in the terminal limit.

## Verdict

The pressure-to-native-source route remains open.  It gives a useful alternate theorem target, but no installed proof of source-weighted angular depletion.