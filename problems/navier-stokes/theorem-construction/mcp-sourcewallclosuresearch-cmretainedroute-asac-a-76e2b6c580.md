# SourceWallClosureSearch.CMRetainedRoute

## Status

This note records the usable closure found for the current source-wall fork.  There are two different closure demands:

```math
\text{retained CM route closure}
```

and

```math
\text{stronger forward source-payment closure.}
```

The retained CM route has a usable closure through `SourcePulseCMExit.A`.  The stronger forward source-payment route still needs `ScaleCriticalTreeCarleson.A`, `SourcePulseExclusion.A`, or a non-Carleson proof of `TemporalNonAtomicSource.A`.

## Objects

The CM witness envelope is

```math
CM_{N,r,Q}:=Part_{N,Q}+Field_{N,r,Q}.
```

The source-wall residue is

```math
\mu_*^{sing}.
```

A nonzero Field-side source residue gives the endpoint-visible cell

```math
(Field,Jump).
```

## Route I: CM-retained closure

Installed classification:

```math
FieldSourceResidueJump.A:
\quad
\mu_{field}^{src,+}\ne0
\Longrightarrow
(Field,Jump)
```

under retained `Pack` and `Part` on the same carrier.

Installed CM-exit rule:

```math
SourcePulseCMExit.A:
\quad
\text{terminal source-pulse used as a genuine nonsmooth occurrence}
\Longrightarrow
\neg Pack_Q\vee\neg Part_{N,Q}\vee\neg Field_{N,r,Q}.
```

Therefore a retained CM terminal route has the no-escape conclusion

```math
Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}
\Longrightarrow
\text{no retained }Jump_{avg}\text{ source-pulse escape.}
```

Equivalently:

```math
\mu_*^{sing}>0
\quad\Longrightarrow\quad
\text{Field-side class-exit witness, once typed on the retained carrier.}
```

Thus the residue branch can be closed in the CM-retained program by typing the residue as Field-side exit rather than proving literal source depletion.

## Route II: stronger forward source-payment closure

The stronger supplier theorem asks for

```math
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
```

Equivalently it asks for

```math
ScaleCriticalTreeCarleson.A
```

or

```math
TemporalNonAtomicSource.A
```

through a non-Carleson mechanism on the Zeno branch.

Current post-ASAC reduction:

```math
ASAC.A
+PositivePairWeightDefectCharge.A
+LocalDonorBalance.A
+EntranceLeafDecay.A
+ZenoSourceResidueRigidity.A
\Longrightarrow
TerminalWeightedNoFreeSink.A.
```

The Zeno part reduces to

```math
TemporalNonAtomicSource.A
\Longrightarrow
ZenoSourceResidueRigidity.A.
```

Failure of the temporal theorem gives

```math
\neg TemporalNonAtomicSource.A
+NoEarlierSelectedSourceSlice.A
\Longrightarrow
ZeroHeatTimeSourceResidue.A.
```

This is a Field-side / class-exit signature.  It is a retained-route exit witness unless one demands literal source depletion.

## Closure decision

For the CM-retained proof program, the route closure is:

```math
\boxed{
\mu_*^{sing}=0
\quad\vee\quad
\bigl(\mu_*^{sing}>0\Longrightarrow \text{Field-side CM-exit witness}\bigr).
}
```

The first side is the forward-positive supplier path.  The second side is the contrapositive CM-retained path.

For the stronger forward supplier path, the exact remaining target is:

```math
\boxed{
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
TemporalNonAtomicSource.A\text{ by a non-Carleson mechanism.}
}
```

## Verdict

The way to close the current route is to use the CM-retained closure:

```math
SourcePulseCMExit.A + FieldSourceResidueJump.A.
```

This prevents a nonzero source residue from remaining as an internal retained CM counterexample.  The stronger literal no-pulse theorem remains pending and should be tracked as a supplier upgrade rather than as the blocker for the retained CM branch.