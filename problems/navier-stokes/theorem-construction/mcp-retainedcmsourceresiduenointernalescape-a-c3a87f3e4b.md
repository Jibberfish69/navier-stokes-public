# RetainedCMSourceResidueNoInternalEscape.A

## Status

Conditional retained-route theorem.  This note separates two facts:

```math
\text{source residue cannot remain inside a retained CM branch}
```

and

```math
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
```

The first fact is installed by CM-exit discipline.  The second fact is the stronger supplier theorem and remains pending.

## Statement

Assume a terminal same-fluid branch is retained in the CM witness envelope:

```math
CM_{N,r,Q}:=Part_{N,Q}+Field_{N,r,Q}.
```

Assume a nonzero native positive source residue survives on that same terminal carrier:

```math
\mu_*^{sing}>0.
```

If that residue is used as the genuine terminal nonsmooth occurrence, then it cannot remain as an internal retained CM counterexample.

Formally:

```math
\boxed{
Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}
\wedge
\bigl(\mu_*^{sing}>0\text{ used as terminal source-pulse occurrence}\bigr)
\Longrightarrow \bot_{CM-retained}.
}
\tag{RCM.1}
```

## Proof

By `FieldSourceResidueJump.A`, a nonzero Field-side source residue on the retained Part/Field carrier lands in the endpoint-visible Field/Jump cell:

```math
\mu_{field}^{src,+}\ne0
\Longrightarrow
(Field,Jump).
```

By `SourcePulseCMExit.A`, a terminal source-pulse used as a genuine nonsmooth occurrence forces failure of at least one CM Part/Field:

```math
\text{source-pulse terminal occurrence}
\Longrightarrow
\neg Pack_Q\vee\neg Part_{N,Q}\vee\neg Field_{N,r,Q}.
```

This disjunction is incompatible with retained status

```math
Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}.
```

Thus the positive source residue cannot be carried as an internal retained CM counterexample.  It either is absent on the retained branch, or it is a class-exit witness.  This proves `(RCM.1)`.

## Boundary

The theorem above does not assert literal source depletion.  The stronger supplier route remains:

```math
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
```

That stronger route is still equivalent, at the current source-wall resolution, to proving a source-payment theorem such as `ScaleCriticalTreeCarleson.A` or a non-Carleson temporal anti-atom theorem such as `TemporalNonAtomicSource.A`.

## Consequence

For the retained CM route, the source fork closes as:

```math
\boxed{
\mu_*^{sing}=0
\quad\vee\quad
\bigl(\mu_*^{sing}>0\Longrightarrow \text{CM-face exit witness}\bigr).
}
```

The retained route therefore has no internal source-residue escape.