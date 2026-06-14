# PositiveAdjointDefectDepletion.Attempt

## Status

Failed direct discharge.  This note tests the sharper target produced by `PositiveSourceAdjointEscapeIdentity.A`.

## Target

The desired theorem is

```math
PositiveAdjointDefectDepletion.A:
\quad
AdjDefect_m^{+,src}
\le
BASACNoIncomingSourceDrain_m
+Residence_m
+PressureEigenframeSustain_m
+Loss_{legal,m}+o_m(1).
```

Here the positive adjoint defect is the residual positive source-weighted carrier left after localized adjoint testing:

```math
AdjDefect_m^{+,src}
:=
\sum_P\int_{Q(P)}
|w_{j_P}|^2
\left[e_{j_P}\cdot S_{<j_P}^{loc}e_{j_P}\right]_+dxdt.
```

## Direct test

`B_ASAC` gives equality/tangent organization.  It supplies a structure for the terminal ASAC defect class.  It supplies no sign comparison for

```math
|w_j|^2\left[e_j\cdot S_{<j}^{loc}e_j\right]_+.
```

The pressure/eigenframe support controls near-band signed-current sustain.  It does not pay this full positive source-weighted carrier.

The no-incoming source-drain and temporal residence exits are exactly the two open routes already isolated:

```math
BASACNoIncomingSourceDrain.A,
\qquad
TerminalSourceReverseHolder_{B_ASAC}.A.
```

Therefore the target inequality is presently equivalent to the source-weighted terminal angular depletion theorem itself.

## Result

The attempt closes no new estimate.  It identifies the positive adjoint defect as the same native obstruction:

```math
\boxed{SourceWeightedTerminalAngularDepletion.A.}
```

## New alternative search

A genuinely new route must avoid both signed-current loss and active-square reserve.  The remaining unexplored form is a pressure-to-native-source tether:

```math
PressureQuadraticDefectNativeCarrier.A
```

or equivalently

```math
PressureSourceAC.A / LocalizedLeraySourceTether.A
```

at residue level.

## Verdict

`PositiveAdjointDefectDepletion.A` remains open.  The next alternate route is to force the pressure/eigenframe defect to live directly on the native source-current carrier, rather than as separate near-band signed support.
