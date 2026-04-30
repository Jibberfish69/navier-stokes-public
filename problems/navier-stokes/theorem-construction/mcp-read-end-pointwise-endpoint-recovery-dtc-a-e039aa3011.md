# READ.END Pointwise Endpoint Recovery

Status: conditional endpoint recovery theorem.

## Statement

```math
READ.END:
End_{NS,avg}+READ.COVER+Field.Read+DTC.Read
\Longrightarrow
End_{NS}.
```

## Inputs

The averaged endpoint theorem supplies

```math
End_{NS,avg}.
```

The readout layer supplies

```math
READ.COVER,
\qquad
Field.Read,
\qquad
DTC.Read.
```

## Proof

`Field.Read` converts averaged field coherence into the old pointwise field predicate:

```math
Field_{avg}\Longrightarrow Field.
```

This feeds the old endpoint row

```math
END.Field.
```

`DTC.Read` converts the averaged transported-center packet into the old pointwise transported-center packet:

```math
DTC.A_{avg}\Longrightarrow DTC.A.
```

It supplies the velocity tower, the viscous `U_{q+2}` readout, and the pressure local Poisson readout for

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q.
```

Thus

```math
DTC.Read\Longrightarrow END.TowerAmp\Longrightarrow END.TowerBound.
```

The pack and participation rows carry across the averaged and pointwise grammars. With `Field` and `DTC.A` now pointwise, `END.Exh` and `END.Cross` apply to the old class witness

```math
CM=Pack\wedge Part\wedge Field.
```

All old endpoint faces are removed:

```math
Dead,
\quad packing\text{-}detached,
\quad tower\text{-}blown,
\quad Jump.
```

Therefore

```math
End_{NS}
```

is recovered.

## Output

The old pointwise endpoint package is available for the continuation bridge:

```math
End_{NS}.
```