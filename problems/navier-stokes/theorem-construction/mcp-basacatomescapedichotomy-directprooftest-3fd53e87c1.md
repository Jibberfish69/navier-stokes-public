# BASACAtomEscapeDichotomy.DirectProofTest

## Status

Failed direct discharge.  This note tests whether the proposed atom-escape dichotomy is already a theorem from installed inputs.

## Target

Assume a terminal `B_ASAC` source atom survives:

```math
\mu_*^{src}(B_R\times\{0\})>0.
```

Choose a backward transported adjoint packet `\psi_m` centered on the atom with

```math
\langle \mu_m^{src},\psi_m\rangle\to c_0>0.
```

The desired theorem is the dichotomy

```math
\mu_*^{src}(B_R\times\{0\})>0
\Longrightarrow
Flux_{tr,cyl}>0
\vee
Residence>0
\vee
PressureEigenframeSustain>0.
```

Equivalently:

```math
BASACAtomEscapeDichotomy.A.
```

## Adjoint identity test

A localized backward-adjoint identity should read

```math
\langle \mu_m^{src},\psi_m\rangle
=
Flux_{tr,cyl,m}
+Residence_m
+PressureEigenframeSustain_m
+LegalLoss_m
+AdjDefect_m
+o_m(1).
```

Since the left side tends to `c_0>0`, the theorem would follow if

```math
LegalLoss_m+AdjDefect_m=o_m(1)
```

and the three displayed nonlegal channels were the only remaining outputs.

## Blocker

The identity is not installed at the required topology.  Current adjoint/pressure/eigenframe tools control signed-current or near-band presentations.  The forward source supplier needs the positive source-weighted carrier

```math
|w_j|^2\left[e_j\cdot S_{<j}^{loc}e_j\right]_+.
```

After positive-part extraction, signed cancellation and near-band pressure/eigenframe support no longer pay the full carrier.

Boundary source flux can also concentrate on terminal transported-cylinder faces, so `Flux_{tr,cyl}` cannot be declared legal without a separate no-incoming/source-drain theorem.

## Exact new target

The dichotomy reduces to a sharper identity theorem:

```math
\boxed{PositiveSourceAdjointEscapeIdentity.A}
```

stating that the terminal positive source pairing is exhausted by exactly three controlled exits:

```math
BASACNoIncomingSourceDrain.A^{fail},
\quad
TerminalSourceReverseHolder_{B_ASAC}.A^{gain},
\quad
PressureEigenframeSustain.A.
```

## Consequence

If `PositiveSourceAdjointEscapeIdentity.A` is proved, then closing the three exits gives

```math
SourceWeightedTerminalAngularDepletion.A
\Longrightarrow
PositiveRemainderDepletion.A
\Longrightarrow
SourcePulseExclusion.A.
```

## Verdict

`BASACAtomEscapeDichotomy.A` is the right new route, but it is not installed.  The next theorem is the positive-source adjoint escape identity in the source-weighted positive topology.
