# SourceWallDichotomyToCMRetainedClosure.A

## Status

Conditional retained-branch bridge theorem.  This note assembles the source-wall dichotomy into the CM route.

## Objects

The synchronized retained carrier is

```math
CM_{N,r,Q}:=Part_{N,Q}+Field_{N,r,Q}.
```

The source residue branch is

```math
\mu_*^{src}=0
\quad\vee\quad
\mu_*^{src}>0.
```

## Statement

On a synchronized same-fluid terminal carrier, the source wall has the retained-branch closure

```math
\boxed{
\mu_*^{src}=0
\quad\vee\quad
\bigl(\mu_*^{src}>0\Longrightarrow Field\text{-facing CM diagnostic}\bigr).
}
```

Equivalently, a surviving source residue cannot remain as an internal retained CM counterexample:

```math
Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}
\wedge
\bigl(\mu_*^{src}>0\text{ used as terminal source-pulse occurrence}\bigr)
\Longrightarrow \bot_{CM-retained}.
```

## Proof

Case 1:

```math
\mu_*^{src}=0.
```

The source bill has no surviving residue.  A forward supplier door then pays the selected native source carrier and gives the forward source branch.

Case 2:

```math
\mu_*^{src}>0.
```

By `FieldSourceResidueJump.A`, the nonzero Field-side source residue lands in the endpoint-visible Field/Jump cell.

By `SourcePulseCMExit.A`, a terminal source-pulse used as a genuine nonsmooth occurrence forces failure of at least one CM Part/Field:

```math
\neg Pack_Q\vee\neg Part_{N,Q}\vee\neg Field_{N,r,Q}.
```

This conflicts with retained status on the same synchronized carrier:

```math
Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}.
```

Thus a positive source residue exits through the Field-facing diagnostic route.

## Supplier boundary

Forward source depletion is governed by the four supplier doors:

```math
TerminalSourceReverseHolder.A,
```

```math
ActiveShellSourceNormalize.A,
```

```math
SquareSourceEstimate.A,
```

```math
ScaleNormalizedBranchEntropyReserve.A.
```

Any one of these gives

```math
SourceWeightedTerminalAngularDepletion.A
\Longrightarrow
PositiveRemainderDepletion.A
\Longrightarrow
SourcePulseExclusion.A.
```

## Final retained-branch closure

The source-wall retained branch is assembled as

```math
\boxed{
\text{source residue zero: source bill paid by supplier door}
}
```

or

```math
\boxed{
\text{source residue positive: Field-facing CM diagnostic exit}
}
```

This theorem is a retained-CM bridge and diagnostic closure artifact.