# BASACAtomEscapeDichotomy.NewClosureRoute

## Status

Conditional new closure route.  This note records a fresh way to attack the `B_ASAC` terminal atom obstruction.

The route does not close from installed inputs.  It isolates a single useful dichotomy theorem that would close the current branch if proved.

## Setup

Let a terminal `B_ASAC` source atom survive:

```math
\mu_*^{src}(B_R\times\{0\})>0.
```

Choose a backward transported adjoint packet `\psi_m` centered on the terminal atom, normalized so that

```math
\langle \mu_m^{src},\psi_m\rangle \to c_0>0.
```

The desired adjoint identity has the form

```math
\langle \mu_m^{src},\psi_m\rangle
=
Flux_{tr,cyl,m}
+
Residence_{m}
+
PressureEigenframeSustain_m
+
LegalLoss_m+o_m(1).
```

## Proposed dichotomy

The terminal atom must force at least one of three outputs:

```math
\boxed{Flux_{tr,cyl}>0}
```

meaning transported-cylinder source-drain / incoming boundary flux;

```math
\boxed{Residence>0}
```

meaning temporal thickness / reverse Holder source residence;

```math
\boxed{PressureEigenframeSustain>0}
```

meaning pressure-Hessian/eigenframe sustain in the near-band signed-current channel.

So the new theorem target is

```math
\boxed{
BASACAtomEscapeDichotomy.A:
\quad
\mu_*^{src}(B_R\times\{0\})>0
\Longrightarrow
BASACNoIncomingSourceDrain.A^{fail}
\vee
TerminalSourceReverseHolder_{B_ASAC}.A^{gain}
\vee
PressureEigenframeSustain.A.
}
```

## Closure if the dichotomy is installed

If the following three theorem inputs are installed:

```math
BASACNoIncomingSourceDrain.A,
```

```math
TerminalSourceReverseHolder_{B_ASAC}.A,
```

and

```math
TerminalPressureHessianNoSustain.A+OneSidedNearBandMaterialStrainBV.A,
```

then the terminal atom is impossible.  Hence

```math
BASACAtomEscapeDichotomy.A
\Longrightarrow
SourceWeightedTerminalAngularDepletion.A
\Longrightarrow
PositiveRemainderDepletion.A
\Longrightarrow
SourcePulseExclusion.A.
```

## Direct proof test

The terminal pairing is valid as a diagnostic.  The obstruction is promotion from diagnostic pairing to a theorem-grade split in the source-weighted positive topology.

Current ASAC and pressure/eigenframe inputs work in signed-current or near-band presentations.  The forward supplier needs the positive source-weighted carrier

```math
|w_j|^2\left[e_j\cdot S_{<j}^{loc}e_j\right]_+.
```

A proof must keep this carrier through the adjoint identity without converting the estimate into the active-square reserve.

## Verdict

The new way to close the branch is the atom-escape dichotomy above.  It is not installed yet.  It is sharper than the previous split because it gives one theorem statement that coordinates the three remaining exits: no-incoming source-drain, temporal residence, and pressure/eigenframe sustain.
