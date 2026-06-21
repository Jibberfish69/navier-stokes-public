# MPP TerminalLerayParaproductCoefficientIdentification.A Direct Attempt

Date: 2026-05-22

## Status

Direct attempt on the sharpened hard subburden left after the algebraic
positive-part sign lemma.

The theorem is not proved from installed inputs. It reduces to the L3-local
version of the terminal Leray gate package:

```math
TerminalLerayOrientation_{L3}.A
+
TerminalLerayCommutatorLegal_{L3}.A
+
TerminalLeraySaturation_{L3}.A.
```

## Target

```math
\boxed{
TerminalLerayParaproductCoefficientIdentification.A:
\quad
\text{same-ledger Leray-adjoint nonlinear source work}
\Longrightarrow
G_N\ge c
\vee
\neg_{sel}ScaleCriticalTreeCarleson.A
\vee
\text{paid Part/legal exit,}
}
```

where

```math
G_N
=
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\langle S_{<j_P}^{loc}w_{j_P},w_{j_P}\rangle\,dxdt.
```

Once this gives `G_N>=c`, the proof
`mpp-terminal-paraproduct-sign-localization-proof-20260522.md` produces the
same-ledger native source witness.

## Algebraic Core

If the localized Leray-adjoint work has already been reduced to the unprojected
high-low term, the coefficient identity is:

```math
-\int (w_j\otimes w_j):\nabla S_{<j}^{loc}u
=
-\int (w_j\otimes w_j):S_{<j}^{loc}
=
\int \langle S_{<j}^{loc}w_j,w_j\rangle
```

with the sign convention chosen to match the Duhamel source-work orientation.
The antisymmetric part of `\nabla S_{<j}^{loc}u` drops because
`w_j\otimes w_j` is symmetric.

So the coefficient problem is entirely before the algebraic core: the retained
Leray-adjoint packet must be shown to arrive at this unprojected high-low term
on the same selected ledger.

## Direct Attempt From Installed Inputs

Start with

```math
-\int (u\otimes u):\nabla P\Phi.
```

Localize the test to the selected terminal family and apply Bony splitting. The
strict low-mode commutator estimates and ordinary cutoff/collar ledgers pay the
finite-band errors with `|q-j|\le C_{\mathrm{band}}`; the finite number of
neighboring bands contributes the explicit multiplier
`N_band=2C_{\mathrm{band}}+1` to the displayed strict-low/cutoff constants.
High-high or donor-square work is the selected scale-critical source-wall
channel.

The obstruction is the projected one-sided terminal packet:

```math
\nabla P\Phi
```

selects the same high packet, sign, and source edge as the native contraction
only after a same-packet orientation theorem. The installed terminal Leray notes
already isolate the three independent requirements needed after one-sided
terminal selection.

### Gate 1: L3 Terminal Leray Orientation

```math
TerminalLerayOrientation_{L3}.A
```

The projected adjoint pair must determine the same-fluid native source edge at
the selected L3 terminal packet weights. A purely signed spatial Leray identity
does not preserve this orientation after positive terminal selection.

### Gate 2: L3 Terminal Commutator Legality

```math
TerminalLerayCommutatorLegal_{L3}.A
```

The localized commutator

```math
[\chi,P_{Leray}]\nabla(u\cdot\nabla u)
```

must be paid by the pressure/cutoff/collar/projection ledgers at the same
one-sided terminal weights. The installed unweighted cutoff, collar, and
projection ledgers control only commutators measured in their native packet
norms; they do not imply

```math
\int_{Q(P)}
|[\chi,P_{Leray}]\nabla(u\cdot\nabla u)|\,|w_{j_P}|\,dxdt
\le
C\,\mathrm{Legal}_{L3}(P)
```

with the same selected `L^3` terminal weights.  That weighted bound is exactly
`TerminalLerayCommutatorLegal_{L3}.A`.

### Gate 3: L3 Terminal Saturation

```math
TerminalLeraySaturation_{L3}.A
```

The signed partner needed for the native high-low contraction must remain
retained after terminal one-sided selection. Partner loss is already meaningful:
it is legal/Part exit, donor-square/source-wall return, or source-current
failure.

## Conditional Closure

The valid theorem-grade reduction is:

```math
\boxed{
TerminalLerayOrientation_{L3}.A
+
TerminalLerayCommutatorLegal_{L3}.A
+
TerminalLeraySaturation_{L3}.A
\Longrightarrow
TerminalLerayParaproductCoefficientIdentification.A.
}
```

Then:

```math
TerminalLerayParaproductCoefficientIdentification.A
\Longrightarrow
TerminalParaproductSignLocalization.A
\Longrightarrow
ParaproductNativeSourceCapture.A.
```

## Verdict

The current installed inputs give the algebraic Leray identity before
selection and the strict low-mode/collar bookkeeping. They do not yet give the
three L3 terminal Leray gates above. Therefore the hard subburden has been
sharpened to this exact gate package, still inside the same CM witness-capture
program and with the closed `B_ASAC^closed` terminal target left closed.
