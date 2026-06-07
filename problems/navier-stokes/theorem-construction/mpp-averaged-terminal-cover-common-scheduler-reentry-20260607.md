# Averaged Terminal Cover / Common Scheduler Reentry

## Status

Narrowed executor follow-through note for the live averaged blocker:

```math
OriginalSmoothData
\Longrightarrow
\text{uniform positive SCF-good terminal finite cover}
+
\text{common AACT scheduler},
```

or else failure of that cover/scheduler must land as `Jump_avg` without using
`READ.COVER`, `DTC.Read`, `Field.Read`, `READ.END`, or any pointwise terminal
readout upstream.

This note does not close the Clay theorem. It moves the blocker from a generic
"prove the cover" demand to the exact averaged branch split.

## Source Read

`mpp-aact-global-finite-cover-scheduler-attempt.md` proves the conditional
handoff:

```math
\text{uniform positive SCF-good terminal finite cover}
+
\text{common scheduler}
\Longrightarrow
AACT.Global.
```

It also records the failure: finite energy plus a.e. good-cylinder production
does not itself give a uniform positive terminal finite cover, because the good
radius may shrink to zero along a terminal sequence.

The later TGC surfaces sharpen this. `mpp-tgc-a-cover-positive-scale-terminal-cover-note.md`
proves:

```math
\neg Jump_{avg}(\mathcal T)
\Longrightarrow
\text{finite positive-scale SCF-good same-fluid terminal cover with scheduler-ready }L^1
\text{ majorants}.
```

`mcp-tgc-a-terminal-good-cover-scheduler-theorem.md` then spends that cover and
the local `AACT.KX` packet to obtain:

```math
SGC.A_{a.e.}+ATD_m^\varepsilon+\neg Jump_{avg}
\Longrightarrow
DTC.A_{avg}.
```

Both notes explicitly keep `READ.COVER`, `DTC.Read`, `Field.Read`, `READ.END`,
and `End_NS` downstream of `End_NS_avg`.

## Reentry Result

The averaged terminal cover/common scheduler primitive is now split as follows.

On the no-`Jump_avg` branch, the cover/scheduler handoff is no longer the live
obstruction. The installed TGC notes supply the positive-scale terminal cover,
finite overlap, scheduler-ready `L^1` majorants, and globalized averaged ACT
handoff to `DTC.A_avg`.

On the bad branch, the obstruction is exactly `Jump_avg`: persistent terminal
loss of positive SCF-good same-fluid scale, or terminal radius degeneration to
zero. That branch may not be erased by pointwise terminal readout. It must be
eliminated or consumed inside the averaged endpoint route.

## Remaining Exact Blocker

The sharp missing theorem is not another generic finite-cover theorem. It is a
branch-native `Jump_avg` discharge/consumption theorem.

The most direct failed attempt is recorded in
`mcp-jump_avg-separated-positive-defect-charge-lower-bound-obstruction-jump_avg-to-separated-positive-defect-charge-lower-bound-dcd5b58afe.md`.
That attempt explains the current hard point: `Jump_avg` classifies loss of
positive SCF-good averaged coherence, but the repo has not proved that this
forces a nonzero terminal `h/F` survivor measure with separated positive
scale-window mass.

So the next exact theorem is:

```math
Jump_{avg}
\Longrightarrow
\text{nonzero terminal }h/F\text{ survivor measure with separated positive scale-window mass},
```

or a different branch-native route proving that `Jump_avg` is consumed by
`CFI.A_avg + AVG.END.Cert` before `READ.COVER` enters.

## CM Face Effect

This narrows the live CM work but does not finish it. The averaged cover problem
now has a clean face law:

1. no `Jump_avg` gives the scheduled averaged cover and may continue to
   `DTC.A_avg`;
2. cover degeneration is `Jump_avg`;
3. `Jump_avg` remains open until the averaged endpoint route eliminates it or
   lands it as a concrete CM face.

Only after that face is proved can this branch support:

```math
Exit(Q):=\neg Member(Q).
```

## Next Executable Task

Attack the branch-native `Jump_avg` lower/nontriviality theorem. Do not spend
readout objects upstream. The first admissible proof object is the terminal
`h/F` survivor measure or an equivalent averaged endpoint witness that can be
shown nonzero on a separated positive scale-window family.
