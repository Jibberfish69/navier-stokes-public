# ZenoSquareCancellationClassProduction.A Direct Attempt

## Status

Claimed status: failed direct proof; exact obstruction localized.

The target is

```math
ZenoSquareCancellationClassProduction.A:
\quad
\text{every square-dominant same-fluid Zeno pulse limit belongs to }\mathcal B_{sq},
```

where `\mathcal B_{sq}` is the cancellation class defined by vanishing of every licensed weighted lifted source-current test.

Equivalently, for the ancient limit extracted from the square-dominant pulse forest,

```math
(u_*,p_*,\mu_*^{sq},\mu_*^{skew}),
```

one must prove

```math
\langle\mu_*^{sq},\varphi\rangle+\langle\mu_*^{skew},\varphi\rangle=0
```

for every admissible same-fluid terminal source test `\varphi`.

## Inputs from the extraction

The Zeno extraction supplies:

```math
\mathcal R_{N_m}(I_m)\ge\eta,
\qquad
\int_{I_m}\sum_{\ell>N_m}D_\ell(t)dt\to0.
```

After active atom selection and parabolic rescaling, local compactness gives an ancient local suitable source-residue object with nonzero inherited residue:

```math
\mu_*^{sq}(Q_1^-)+\mu_*^{skew}(Q_1^-)\ge c_0>0.
```

Same-fluid ancestry gives coherent packet carriers, coherent test families, and stable source-current bookkeeping in the limit.

## Direct cancellation test

The weighted lifted skew residue has the form

```math
L_P^{w/lift}
=
(W_P-W_{P'})J(P'\to P)+\mathcal C_P^{lift}+Loss_P^{proj/cutoff}.
```

The projected cutoff loss is legal and vanishes in the residue limit under the installed projected-cutoff ledger. The two principal parts remain:

```math
(W_P-W_{P'})J(P'\to P),
```

and

```math
\mathcal C_P^{lift}
:=
2^{2j}\langle S_k(x_P,t)e_P,e_P\rangle |c_P(t)|^2.
```

Same-fluid ancestry preserves the identity of the carrier and the allowed source-current edges. It does not force

```math
W_P-W_{P'}\to0
```

on the terminal weighted edge set, and it does not force

```math
\langle S_k e_P,e_P\rangle |c_P|^2\to0
```

on the active strain-aligned packets.

Therefore the licensed source tests can detect a nonzero limiting residue:

```math
\lim_m\langle L_m^{w/lift},\varphi_m\rangle
=
\langle\mu_*^{sq}+\mu_*^{skew},\varphi\rangle
```

with positive value for a test adapted to the active edge/packet family.

## Result

The attempted proof reaches this exact obstruction:

```math
\boxed{
\text{same-fluid ancestry plus square dominance gives compactness and residue inheritance, while cancellation-class membership requires an extra signed saturation or weight-coherence theorem.}
}
```

The missing theorem can be stated in either of two equivalent ways.

### Option A: terminal weight coherence

```math
TerminalWeightCoherence.A:
\quad
(W_P-W_{P'})J(P'\to P)\to0
```

in all licensed Zeno square-pulse source tests.

### Option B: active strain-alignment cancellation

```math
ActiveStrainAlignmentCost.A:
\quad
\int2^{2j}\langle S_k e_P,e_P\rangle |c_P|^2
```

is either signed-cancelling or paid by legal dissipation/remainder on the Zeno pulse forest.

Together these imply

```math
TerminalWeightCoherence.A+ActiveStrainAlignmentCost.A
\Longrightarrow
ZenoSquareCancellationClassProduction.A.
```

## Consequence

The Zeno route has a sharp conditional chain:

```math
ZenoSquareCompactnessExtraction.A
+TerminalWeightCoherence.A
+ActiveStrainAlignmentCost.A
+RigidSquareResidueVanish.A
\Longrightarrow
ScaleCriticalTreeCarleson.A.
```

The first and last pieces are conditionally available from the prior note. The middle pair is the live residue-production obstruction.

## Boundary

This note records a hard mathematical obstruction for the current installed inputs. Compactness, same-fluid ancestry, and square dominance do not themselves imply source-test cancellation. A new signed theorem must eliminate terminal weight mismatch or active strain-aligned residue.
