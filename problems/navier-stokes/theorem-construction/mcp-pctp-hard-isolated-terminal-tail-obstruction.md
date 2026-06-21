# PCTP.hard Isolated Terminal-Tail Obstruction

## Status

Failed discharge; current hard theorem edge.

## Target

`PCTP.hard` asks for

```math
OriginalSmoothData
\Longrightarrow
\text{uniform terminal-tail retained class-membership readout}.
```

Equivalently, for a first finite classical endpoint, it asks for direct exclusion of every endpoint face:

```math
Dead,
\qquad
packing\text{-}detached,
\qquad
tower\text{-}blown,
\qquad
Jump.
```

## What Is Already Conditional

The endpoint grammar is conditional and ready:

```math
END.Exh+END.Cross+END.Pack+END.Field+END.TowerBound
\Longrightarrow
End_{NS}.
```

The averaged readout chain is conditional and typed:

```math
End_{NS,avg}
\Longrightarrow
READ.COVER
\Longrightarrow
Field.Read+DTC.Read
\Longrightarrow
READ.END
\Longrightarrow
End_{NS}.
```

Compact classical intervals supply retained local data:

```math
I\Subset[0,T_*)
\Longrightarrow
RSCB.NKF,
\quad
ACT.X\text{-}Scale,
\quad
RWS.C_{scale},
\quad
\Gamma_{pack}\in L^\infty(I).
```

## Failure Point

The missing theorem is uniform terminal-tail production from original smooth data:

```math
OriginalSmoothData
\Longrightarrow
\text{uniform positive-scale retained/readout cover on }[t_0,T_*).
```

The current surfaces provide compact-interval retained data and downstream readout after averaged endpoint closure. They do not supply a direct terminal-tail cover from original data.

The circular shortcut is

```math
End_{NS,avg}
\Longrightarrow
READ.COVER
\Longrightarrow
End_{NS}.
```

This is valid only after the averaged endpoint package exists. It cannot supply the upstream terminal-tail cover required to prove the averaged endpoint package itself.

## Facewise Form Of The Same Obstruction

A direct proof of `PCTP.hard` would need one of these equivalent outputs:

```math
OriginalSmoothData
\Longrightarrow
\neg Dead
\wedge
\neg packing\text{-}detached
\wedge
\neg tower\text{-}blown
\wedge
\neg Jump,
```

or

```math
OriginalSmoothData
\Longrightarrow
\text{uniform terminal-tail Part/Field/tower readout}.
```

The hardest analytic pieces are:

```math
\int_0^{T_*}\|\nabla u(t)\|_{L^\infty}\,dt<\infty
```

or a pack-native substitute,

```math
\mathfrak A_{N,Q}\in L^\infty(0,T_*),
```

and a positive terminal one-field coherence scale.

Each of these is continuation-grade information.

## Next Theorem Target

Name the exact target:

```math
TTU.A:
OriginalSmoothData
\Longrightarrow
\text{uniform terminal-tail positive-scale SCF-good finite cover}
```

with enough depth and compatibility to feed

```math
ATD_m^\varepsilon,
\qquad
DTC.Read,
\qquad
Field.Read,
\qquad
DTC\text{-}to\text{-}TowerBound.
```

A facewise equivalent target is

```math
TTU.Face:
OriginalSmoothData
\Longrightarrow
\neg Dead\wedge\neg packing\text{-}detached\wedge\neg tower\text{-}blown\wedge\neg Jump.
```

## Verdict

`PCTP.hard` remains open. The terminal-tail uniformization theorem `TTU.A` is the next live mathematical target.