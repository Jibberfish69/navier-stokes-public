# READ.END Equivalence Theorem

## Statement

On a terminal `READ.COVER`, the averaged endpoint package plus readout recovers exactly the old pointwise endpoint package:

```math
End_{NS,avg}+READ.COVER+Field.Read+DTC.Read
\Longleftrightarrow
End_{NS}
```

at the level of endpoint objects used by the continuation argument.

## Forward direction

Assume `End_NS_avg` and `READ.COVER`. The readout theorem gives

```math
Field_{avg}+READ.COVER+ATD_m^\varepsilon\Longrightarrow Field,
```

and

```math
DTC.A_{avg}+READ.COVER+ATD_m^\varepsilon\Longrightarrow DTC.A.
```

`Pack` and `Part` are shared primitive rows. Therefore the old class witness

```math
CM=Pack\wedge Part\wedge Field
```

is recovered, and the old tower row receives `DTC.A` and the rung readout `K_q`. Hence

```math
END.Exh+END.Cross+END.Pack+END.Field+END.TowerBound\Longrightarrow End_{NS}.
```

## Reverse compatibility

On the same readout cover, old pointwise objects imply the averaged ones by averaging and restriction:

```math
Field\Longrightarrow Field_{avg},
\qquad
DTC.A\Longrightarrow DTC.A_{avg},
```

while `Pack` and `Part` are shared. Thus the old pointwise endpoint package restricts to the averaged endpoint package on the same terminal cover.

## Exactness of recovery

No endpoint row is lost:

```text
Dead: shared Part row
packing-detached: shared Pack row
tower-blown: DTC.Read recovers pointwise tower bound
Jump: Field.Read recovers pointwise Field
```

No extra pointwise endpoint face is created by readout. Therefore `READ.END` is exact at the endpoint-package level.

## Dependency order

The forward use in the final proof is terminal:

```math
End_{NS,avg}\Longrightarrow READ.COVER\Longrightarrow READ.END\Longrightarrow End_{NS}.
```

The equivalence statement does not authorize using `READ.COVER` upstream of `End_NS_avg`.