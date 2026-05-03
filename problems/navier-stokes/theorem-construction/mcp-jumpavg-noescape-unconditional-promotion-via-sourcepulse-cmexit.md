# Jump_avg no-escape unconditional promotion via `SourcePulseCMExit.A`

## Status

Discharged in the route-governing CM-exit sense.

The earlier conditional branch theorem used the stronger supplier

```math
SourcePulseExclusion.A.
```

The lane has now installed the route-governing primitive

```math
SourcePulseCMExit.A:
\quad
\text{terminal source-pulse used as a genuine non-smooth occurrence}
\Longrightarrow
\neg Pack_Q\vee\neg Part_{N,Q}\vee\neg Field_{N,r,Q}.
```

## Theorem

On a retained same-fluid terminal route whose target class is

```math
CM=Pack\wedge Part\wedge Field,
```

the `Jump_avg` terminal witness has no CM-retained escape. Equivalently,

```math
Jump_{avg}\text{ as genuine terminal non-smooth witness}
\Longrightarrow
\neg CM.
```

Thus the `Jump_avg` branch is eliminated from the CM-retained terminal-tail production route.

## Proof

Assume a terminal branch carries a `Jump_avg` source-pulse witness and that this witness is used as the genuine PDE non-smooth occurrence.

By `SourcePulseCMExit.A`, the witness gives

```math
\neg Pack_Q\vee\neg Part_{N,Q}\vee\neg Field_{N,r,Q}.
```

If the retained terminal-tail route assumes

```math
Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q},
```

this disjunction is impossible inside the retained CM class.

The tower residue has already been removed on the same family by

```math
DTC\text{-}to\text{-}TowerBound
\Longrightarrow
END.TowerAmp
\Longrightarrow
END.TowerBound.
```

Therefore a terminal `Jump_avg` source-pulse can only serve as a class-exit witness. It cannot remain as a CM-retained terminal counterexample in the active route.

## Consequence

The branch split for terminal-tail production is now unconditional in the route sense:

```math
\text{CM-retained terminal branch}
\Longrightarrow
\neg Jump_{avg}.
```

The no-`Jump_avg` side then uses `TGC.A.cover` and the repaired `AACT.Global.noJump` scheduler.

## Boundary

`OriginalSmoothData=>SourcePulseExclusion.A` remains a stronger sufficient supplier. The active proof route now uses `SourcePulseCMExit.A`, so the stronger no-pulse theorem is no longer a blocking dependency for the CM-retained branch split.