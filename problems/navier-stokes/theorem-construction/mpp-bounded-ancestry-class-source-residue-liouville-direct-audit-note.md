# MPP BoundedAncestryClass.A / SourceResidueLiouville.A Direct Audit Note

## Status

Direct split audit of the compact-Liouville replacement theorem isolated by
`mpp-ancestrycompactbound-liouville-direct-attempt-note.md`:

```math
\boxed{
BoundedAncestryClass.A+SourceResidueLiouville.A.
}
```

This is the compactness-side closure needed after
`ParentConcentrationOrDiffuseCharge.A` supplies an infinite legal same-fluid
ancestry chain.

## Target

The compact-Liouville closure has two distinct jobs.

First:

```math
\boxed{
BoundedAncestryClass.A:
\text{every infinite legal source ancestry chain extracts an ancient limit in
a rigid class }\mathcal B.
}
\tag{BAL.1}
```

Second:

```math
\boxed{
SourceResidueLiouville.A:
\mathcal B
\Longrightarrow
\gamma_\ast\,d\mu_\ast^\sigma=0.
}
\tag{BAL.2}
```

The inherited source residue from the ancestry chain is nonzero, so `(BAL.1)`
and `(BAL.2)` would contradict failure of `SourcePulseExclusion.A`.

## Attempt 1: Produce The Bounded Ancient Class

The installed compactness machinery can extract local suitable ancient limits
after localized packets and uniform local energy bounds are supplied.  It does
not force any of the rigid hypotheses normally used by Liouville theorems:

```math
\text{bounded ancient},
\quad
\text{Type I},
\quad
\text{finite global ancient energy},
\quad
\text{critical norm smallness},
\quad
\text{self-similarity},
\quad
\text{two-dimensional / axisymmetric reduction}.
```

Same-fluid ancestry preserves the legal carrier and endpoint fibre, but it does
not produce global boundedness, Type I scaling, critical smallness, or symmetry
of the rescaled ancient limit.

Thus `BoundedAncestryClass.A` is not installed.

## Attempt 2: Prove Source-Residue Liouville Without A Rigid Class

The broad statement

```math
\text{every ancient local suitable source-residue limit has zero active
residue}
```

is not available.  Smooth nonzero ancient cancellation profiles and coherent
ancient packets can carry nonzero local energy.  The current route only
extracts a terminal-generated local suitable object with inherited active
source residue; it does not prove that the residue vanishes.

Thus `SourceResidueLiouville.A` is not installed without an additional rigid
class `\mathcal B`.

## Attempt 3: Use Classical Criteria As The Rigid Class

BKM, Prodi-Serrin, critical regularity, Type I, and smallness criteria are
valid consumers.  They exclude the source-pulse branch only after the corresponding bound is
proved on the terminal ancestry limit.  The installed original-data package
does not supply those bounds on the selected active bad windows or on the
rescaled ancient limit.

Thus classical continuation criteria do not supply `(BAL.1)`.

## Verdict

Neither half of the compact-Liouville package is installed:

```math
\boxed{
BoundedAncestryClass.A\ \text{open}
\qquad
SourceResidueLiouville.A\ \text{open}.
}
```

The exact obstruction is:

```math
\boxed{
\text{local suitable compactness gives an ancient source-residue object, but
not a rigid ancient class, and no source-residue Liouville theorem applies
without that class.}
}
```

Therefore the compact-Liouville closure package remains open:

```math
\boxed{
ParentConcentrationOrDiffuseCharge.A
+
BoundedAncestryClass.A
+
SourceResidueLiouville.A.
}
```
