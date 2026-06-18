# AVG.END.A Hardened Averaged Endpoint Rows

## Status

Theorem-facing endpoint-row audit and hardened statement for the averaged endpoint package.

## Statement

```math
AVG.END.A:
CFI.A_{avg}+AVG.END.Cert\Longrightarrow End_{NS,avg}.
```

The averaged endpoint package is

```math
End_{NS,avg}:=END.Exh_{avg}\wedge END.Cross_{avg}\wedge END.Pack\wedge END.Field_{avg}\wedge END.TowerBound_{avg}.
```

## Endpoint Rows

The averaged exhaustion row is

```math
END.Exh_{avg}:\quad
\neg CM_{avg}\Longrightarrow Dead\vee response\text{-}margin\text{-}collapse
\vee packing\text{-}detached\vee tower\text{-}blown_{avg}\vee Jump_{avg}.
```

The averaged field row is

```math
END.Field_{avg}:\quad
Field_{avg}+OFP.A_{avg}\Longrightarrow \neg Jump_{avg}.
```

The averaged tower row is

```math
END.TowerBound_{avg}:\quad
\mathfrak A_{N,Q}^{avg}\in L^\infty(I)\Longrightarrow \neg tower\text{-}blown_{avg}.
```

The pack row is

```math
END.Pack:\quad
Pack\Longrightarrow \neg packing\text{-}detached.
```

The participation row is

```math
Part\Longrightarrow \neg Dead.
```

The cross row is

```math
END.Cross_{avg}:\quad
\text{every mixed averaged endpoint face reduces to }END.Pack,END.Field_{avg},END.TowerBound_{avg},\text{ or }(Part,Dead).
```

## Proof

`CFI.A_avg` gives persistence of the averaged class witness

```math
CM_{avg}=Pack\wedge Part\wedge Field_{avg}.
```

`OFP.A_avg` is part of the averaged consumer chain feeding `CFI.A_avg`, so `Field_avg+OFP.A_avg` removes `Jump_avg` by `END.Field_avg`.

`DTC.A_avg` supplies the averaged tower bound through the averaged receiver and endpoint certificate package, so `END.TowerBound_avg` removes `tower-blown_avg`.

`Pack` removes `packing-detached`, and `Part` removes `Dead`. Mixed faces reduce by `END.Cross_avg` to the primitive rows already removed.

Therefore every face in `END.Exh_avg` is excluded, and

```math
CFI.A_{avg}+AVG.END.Cert\Longrightarrow End_{NS,avg}.
```

## Legal Order

`Jump_avg` is removed here, downstream of averaged production:

```math
DTC.A_{avg}\Longrightarrow AVG.RCV.A\Longrightarrow LCI.A_{avg}\Longrightarrow CSP.A_{avg}\Longrightarrow OFP.A_{avg}\Longrightarrow CFI.A_{avg}\Longrightarrow AVG.END.A.
```

`READ.COVER`, `Field.Read`, `DTC.Read`, and `READ.END` enter after `End_NS_avg`.

## Boundary

This note hardens endpoint-face consumption. Averaged production is supplied by `TGC.A` and `AACT.Global.noJump`; pointwise readout remains downstream.