# ZeroThicknessSourceResidueFieldDiagnosticClosure.A

## Status

Conditional CM/Field diagnostic closure.  This theorem closes the retained-branch diagnostic left by `SourceWallFinalClosureOrHardStop.A`.  It does not prove the forward source-depletion supplier.

## Setup

Assume the four forward supplier doors remain uninstalled:

```math
TerminalSourceReverseHolder.A,
\quad
ActiveShellSourceNormalize.A,
\quad
SquareSourceEstimate.A,
\quad
ScaleNormalizedBranchEntropyReserve.A.
```

Assume the surviving obstruction is the zero-thickness source-balanced terminal pulse

```math
\mu_*^{src}(B_R\times\{0\})>0
```

carried by

```math
|w_j|^2\left[e_j\cdot S^{loc}_{<j}e_j\right]_+.
```

Assume the CM carrier is synchronized:

```math
CM_{N,r,Q}:=Part_{N,Q}+Field_{N,r,Q}.
```

## Statement

On a synchronized retained CM carrier, the surviving zero-thickness source residue cannot remain as an internal retained counterexample.  Formally:

```math
Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}
\wedge
\bigl(\mu_*^{src}>0\text{ used as terminal source-pulse occurrence}\bigr)
\Longrightarrow \bot_{CM-retained}.
```

Equivalently:

```math
\boxed{
\mu_*^{src}>0
\Longrightarrow
\text{Field-facing CM diagnostic / source-pulse exit support.}
}
```

## Proof

By `FieldSourceResidueJump.A`, a nonzero Field-side source residue lands in the endpoint-visible Field/Jump cell.

By `SourcePulseCMExit.A`, a terminal source-pulse used as a genuine nonsmooth occurrence forces failure of at least one CM Part/Field:

```math
\neg Pack_Q\vee\neg Part_{N,Q}\vee\neg Field_{N,r,Q}.
```

This contradicts retained status on the same synchronized carrier:

```math
Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}.
```

Therefore the zero-thickness source residue is closed as a Field-facing diagnostic: it is either absent, or it is class-exit support after Field typing.

## Boundary

This theorem does not prove

```math
SourcePulseExclusion.A
```

from original smooth data.  The forward supplier still requires one of the four source-control doors.  This theorem closes only the retained CM diagnostic use of the surviving residue.

## Final local closure

The source-wall branch now has a complete dichotomy:

```math
\boxed{
\text{one of the four supplier doors closes forward source depletion}
}
```

or

```math
\boxed{
\text{surviving zero-thickness source residue lands as Field-facing CM diagnostic.}
}
```