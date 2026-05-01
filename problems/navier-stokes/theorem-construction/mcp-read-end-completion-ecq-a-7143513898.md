# READ.END Completion

Status: conditional endpoint readout theorem.

## Statement

```math
READ.END:
End_{NS,avg}+READ.COVER+Field.Read+DTC.Read
\Longrightarrow
End_{NS}.
```

## Proof

`End_NS_avg` supplies the averaged endpoint package. `READ.COVER` supplies the finite positive-scale SCF-good cover used by the readout layer.

`Field.Read` supplies the old pointwise field predicate:

```math
Field_{avg}\Longrightarrow Field.
```

This feeds the old endpoint row

```math
END.Field.
```

`DTC.Read` supplies the old pointwise transported-center packet:

```math
DTC.A_{avg}\Longrightarrow DTC.A.
```

This includes pointwise velocity tower readout, viscous `U_{q+2}` readout, and pressure Poisson readout for

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q.
```

Thus

```math
DTC.Read\Longrightarrow END.TowerAmp\Longrightarrow END.TowerBound.
```

The `Pack` and `Part` rows are shared between the averaged and pointwise grammars. With old pointwise `Field` and `DTC.A` available, the old endpoint exhaustion and cross-entry reductions apply:

```math
END.Exh,
\qquad
END.Cross.
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

The old pointwise endpoint package is available for `ECQ.A/PCTP.cond`.