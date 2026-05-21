# WeightedLiftedSkewDefectLegal.A assembly

## Status

Failed as an unconditional theorem.  The exact obstruction is now localized.

## Target

Prove that the weighted, lifted, projected, cutoff-localized terminal source can be written as an antisymmetric source current plus legal loss:

```math
Source_P^{loc}
=
\sum_{P'}J(P'\to P)+L_P^{w/lift},
\qquad
J(P\to P')=-J(P'\to P),
```

with

```math
\sum_P\int |L_P^{w/lift}|dt
\le o_N(1)+Loss_{legal}.
```

## Subgate results

### 1. `PairWeightFlattening.A`

Status: failed.

The weighted pair defect is

```math
(W_P-W_{P'})J_e.
```

On the live lifted shell surface the one-sided terminal weights have order-size mismatch across legal source-current edges.  Absolute-value control loops to

```math
ScaleCriticalTreeCarleson.A.
```

### 2. `LiftedSkewCommutator.A`

Status: failed.

The true lifted commutator is

```math
\mathcal R_{j,k,\ell}^{lift}
=
2^{2j}\langle[\Delta_j,a_k\cdot\nabla]\Delta_\ell u,\Delta_ju\rangle.
```

Its principal packet expansion contains

```math
2^{2j}\sum_P\langle S_k(x_P,t)e_P,e_P\rangle |c_P(t)|^2,
```

which is the active strain-alignment source carrier.  This requires active-strain cost or terminal signed saturation.

### 3. `ProjectedCutoffLedger.A`

Status: locally discharged under the projected affine packet convention.

Projected divergence-free adjoint packets eliminate pressure pairings, projection commutators are legal residuals, and packet cutoff commutators are absorbed into dissipation plus the transported packet-factor derivative ledger.

## Assembly

The legal projection/cutoff components close, but the two principal components remain open:

```math
PairWeightFlattening.A,
\qquad
LiftedSkewCommutator.A.
```

Therefore

```math
\boxed{WeightedLiftedSkewDefectLegal.A\text{ remains open.}}
```

The strongest valid reduction is

```math
\boxed{
TerminalWeightCoherence.A
+ActiveStrainAlignmentCost.A
+TerminalSignedSaturation.A
+ProjectedCutoffLedger.A
\Longrightarrow
WeightedLiftedSkewDefectLegal.A.
}
```

A more structural route is

```math
TangentWeightRigidity.A+TPNI.A+SourceTether.A
\Longrightarrow ActiveStrainAlignmentCost.A
\Longrightarrow LiftedSkewCommutator.A.
```

and

```math
TerminalSignedSaturation.A
\Longrightarrow
PairWeightFlattening.A\text{ / partner recovery on the usable ledger.}
```

## Consequence for source wall

The signed-current route still begins with an unresolved terminal localization gate.  The active source-wall root remains:

```math
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
```

Within the signed-current route, the next meaningful theorem target is either

```math
ActiveStrainAlignmentCost.A
```

or

```math
TerminalSignedSaturation.A.
```

## Claimed status

Failed unconditional assembly.  The exact successful local piece is `ProjectedCutoffLedger.A`; the live principal obstructions are terminal weight mismatch and lifted active strain alignment.