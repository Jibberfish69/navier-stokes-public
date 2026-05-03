# ActiveVorticityCoherence.A direct loop note

## Target

Prove from original smooth data that selected terminal bad active windows carry enough vorticity-direction coherence to deplete positive active source production.

The main stretching carrier is

```math
\omega\cdot S\omega.
```

## Attempt

A Constantin-Fefferman type mechanism depletes vortex stretching when a suitable vorticity-direction modulus is available.

Original smooth data gives smoothness on every compact preterminal interval. The source-pulse branch selects shrinking terminal active windows near the endpoint. Current route inputs do not supply a uniform terminal vorticity-direction modulus on those windows.

Even after assuming direction coherence, one still needs a bridge to the exact active source packet. That packet includes transverse strain eigenvalue contributions, low-vorticity/high-strain portions, shellwise mixed bilinear dissipation, and weighted lifted remainders after cutoffs and one-sided weights. Direction coherence of `omega/|omega|` alone does not cover all carriers.

## Result

`ActiveVorticityCoherence.A from OriginalSmoothData` remains open.

The two missing pieces are:

```math
OriginalSmoothData\Longrightarrow \text{terminal vorticity-direction modulus},
```

and

```math
\text{direction modulus}\Longrightarrow\text{exact active source-packet depletion}.
```

## Next target

Proceed to `ReverseHolderParentConcentration.A`, `AntiBeltramiCarleson.A`, and `NativeSourceAC.A`.