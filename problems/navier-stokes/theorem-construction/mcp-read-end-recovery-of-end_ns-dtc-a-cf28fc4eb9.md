# READ.END Recovery of `End_NS`

Status: conditional bridge invoked.

## Statement

```math
READ.END:
End_{NS,avg}+READ.COVER+Field.Read+DTC.Read
\Longrightarrow
End_{NS}.
```

## Inputs

The averaged endpoint package supplies

```math
End_{NS,avg}.
```

The downstream cover bridge supplies

```math
READ.COVER:
End_{NS,avg}\Longrightarrow
\text{uniform positive-scale SCF-good finite cover}.
```

The readout suppliers give

```math
Field.Read:
Field_{avg}+READ.COVER+ATD_m^\varepsilon\Longrightarrow Field,
```

and

```math
DTC.Read:
DTC.A_{avg}+READ.COVER+ATD_m^\varepsilon\Longrightarrow DTC.A.
```

## Proof

`Field.Read` supplies the old pointwise `Field` row. Therefore it feeds

```math
END.Field
```

and the old `Field` factor inside

```math
CM=Pack\wedge Part\wedge Field.
```

`DTC.Read` supplies the pointwise transported-center/tower readout. In particular, it supplies the tower-amplitude input through the velocity readout, the viscous `U_{q+2}` readout, and the pressure local Poisson readout for

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q.
```

Thus

```math
DTC.Read\Longrightarrow END.TowerAmp\Longrightarrow END.TowerBound.
```

The `Pack` and `Part` rows are shared between the averaged and old endpoint grammars. `END.Exh` and `END.Cross` then apply to the old pointwise class-membership witness:

```math
CM=Pack\wedge Part\wedge Field.
```

Hence every old pointwise endpoint face is removed:

```math
Dead,
\quad packing\text{-}detached,
\quad tower\text{-}blown,
\quad Jump.
```

Therefore

```math
End_{NS,avg}+READ.COVER+Field.Read+DTC.Read
\Longrightarrow
End_{NS}.
```

## Output

The old endpoint package is now recovered:

```math
End_{NS}.
```

The remaining loop item is to feed `End_NS` into the terminal class-membership chain and then apply `PCTP.cond`.