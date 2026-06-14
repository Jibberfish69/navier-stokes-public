# MPP PositiveSourceAdjointEscapeIdentity.A Reentry

## Status

Active-completion proof attempt after
`mpp-native-timeface-atom-transfer-active-burst-bridge-reentry-20260609.md`.

This note tests both the adjoint escape identity and the immediate positive
adjoint defect depletion that the identity exposes.  It does not close public
Clay finality.

## Target

Let a terminal `B_ASAC` native positive source atom be detected by backward
transported adjoint packets:

```math
\langle \mu_m^{src},\psi_m\rangle\to c_0>0.
```

The desired identity is:

```math
\langle \mu_m^{src},\psi_m\rangle
=
Flux_{tr,cyl,m}
+Residence_m
+PressureEigenframeSustain_m
+LegalLoss_m
+o_m(1).
```

This must hold in the positive source-weighted topology for:

```math
|w_j|^2
\left[e_j\cdot S_{<j}^{loc}e_j\right]_+.
```

## What The Adjoint Pairing Gives

Backward transported adjoint packets genuinely detect the terminal atom.  The
left-hand side is not fake bookkeeping.

The obstruction is the promotion from detection to an exhaustive positive
source split.  Existing adjoint identities are effective for signed-current
or near-band presentations.  They can route projected pressure cancellation,
cutoff losses, ASAC-style alignment payments, and response-work terms.

They do not preserve the one-sided carrier after:

```text
terminal selection,
same-fluid localization,
weights,
cutoffs/projectors,
and positive-part extraction.
```

The missing comparison is:

```math
\text{signed adjoint source work}
\Longrightarrow
\text{positive native source-weighted carrier}.
```

No installed theorem supplies that comparison.

## Residual Positive Adjoint Defect

The attempted identity leaves the positive adjoint defect:

```math
AdjDefect_m^{+,src}
:=
\sum_P\int_{Q(P)}
|w_{j_P}|^2
\left[e_{j_P}\cdot S_{<j_P}^{loc}e_{j_P}\right]_+\,dxdt.
```

Thus the sharper target is:

```math
PositiveAdjointDefectDepletion.A.
```

It asks for:

```math
AdjDefect_m^{+,src}
\le
BASACNoIncomingSourceDrain_m
+Residence_m
+PressureEigenframeSustain_m
+Loss_{legal,m}
+o_m(1).
```

## Depletion Test

The no-incoming source-drain and temporal residence exits are still open:

```math
BASACNoIncomingSourceDrain.A,
\qquad
TerminalSourceReverseHolder_{B_{ASAC}}.A.
```

They cannot be used as proved payments.

The pressure/eigenframe exit is also only available as signed near-band support.
It does not pay the full positive source-weighted carrier.

Therefore `PositiveAdjointDefectDepletion.A` is not a discharged theorem from
current inputs.  At this resolution it is the same native obstruction:

```math
SourceWeightedTerminalAngularDepletion.A.
```

Using it as a closure claim would only rename the source-wall.

## Verdict

`PositiveSourceAdjointEscapeIdentity.A` is not installed.

`PositiveAdjointDefectDepletion.A` is also not installed.

The direct adjoint route fails at the exact point where signed or near-band
adjoint structure must become a one-sided positive native source carrier after
terminal selection.

## Next Loop Target

The remaining non-alias door inside this split is:

```math
\boxed{
OneSidedPressureSourceTether.A
}
```

equivalently:

```math
PressureQuadraticDefectNativeCarrier.A
```

or:

```math
LocalizedLeraySourceTether.A.
```

This theorem must prove that selected terminal pressure/eigenframe sustain
either pays the native positive source carrier by legal drain/loss or vanishes
in the terminal limit, without losing the carrier to signed-current cancellation
or active-square reserve.

Until that pressure/Leray tether, a temporal residence theorem, or a direct
native-source anti-atom theorem is installed and integrated through
`BASACAtomEscapeDichotomy.A`, `SourcePulseExclusion.A`, and
`OriginalSmoothDataPackSurvival.A`, both PDFs remain non-final.
