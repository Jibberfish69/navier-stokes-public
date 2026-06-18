# AVG.MAIN.A + READ.END Gives Old Pointwise Endpoint Closure

## Status

Conditional terminal continuation theorem.

## Statement

```math
AVG.MAIN.A+READ.COVER+READ.END
\Longrightarrow
End_{NS}.
```

Equivalently, once the averaged route has produced the averaged endpoint package, terminal readout recovers the old pointwise endpoint package.

## Proof

`AVG.MAIN.A` supplies the averaged route conclusion. In particular it gives the averaged endpoint package

```math
End_{NS,avg}.
```

By `READ.COVER.From.EndNSAvg`,

```math
End_{NS,avg}\Longrightarrow READ.COVER.
```

The readout cover is a finite same-fluid cover with positive lower scale and `SCF_base` below the `\varepsilon_m` threshold on each cover element. Therefore `ATD_m^\varepsilon` applies on the shrunken cover elements.

On this cover, the two readout suppliers apply:

```math
Field.Read:
Field_{avg}+READ.COVER+ATD_m^\varepsilon\Longrightarrow Field,
```

and

```math
DTC.Read:
DTC.A_{avg}+READ.COVER+ATD_m^\varepsilon\Longrightarrow DTC.A.
```

`Field.Read` supplies the old pointwise field row for the endpoint matrix. `DTC.Read` supplies the old pointwise transported-center packet, including the tower forcing readout required for

```math
DTC\text{-}to\text{-}TowerBound\Longrightarrow END.TowerAmp\Longrightarrow END.TowerBound.
```

The pack row and the repaired Part row are shared between the averaged and
pointwise endpoint grammars. With pointwise `Field`, pointwise `DTC.A`, and the
Part response-margin input recovered, the old endpoint matrix applies:

```math
END.Exh+END.Cross+END.Pack+END.Field+END.TowerBound\Longrightarrow End_{NS}.
```

This is exactly the content of

```math
READ.END:
End_{NS,avg}+READ.COVER+Field.Read+DTC.Read\Longrightarrow End_{NS}.
```

Thus

```math
AVG.MAIN.A+READ.COVER+READ.END\Longrightarrow End_{NS}.
```

## Dependency Order

The valid order is

```math
AVG.MAIN.A\Longrightarrow End_{NS,avg}\Longrightarrow READ.COVER\Longrightarrow Field.Read+DTC.Read\Longrightarrow READ.END\Longrightarrow End_{NS}.
```

## Boundary

`CFI.A_avg` remains the averaged class-membership object until the readout layer supplies pointwise `Field` or `CM.Read`. This note proves old pointwise endpoint closure from the averaged endpoint package through terminal readout. It keeps endpoint readout terminal and typed.
