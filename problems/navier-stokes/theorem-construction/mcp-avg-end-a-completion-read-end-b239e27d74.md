# AVG.END.A Completion

Status: conditional averaged endpoint theorem.

## Statement

```math
AVG.END.A:
CFI.A_{avg}+AVG.END.Cert
\Longrightarrow
End_{NS,avg}.
```

## Proof

The averaged class witness is

```math
CM_{avg}=Pack\wedge Part\wedge Field_{avg}.
```

`CFI.A_avg` gives forward persistence of `CM_avg` on the averaged route. The averaged endpoint exhaustion row is

```math
END.Exh_{avg}:
\neg CM_{avg}
\Longrightarrow
Dead\vee response\text{-}margin\text{-}collapse
\vee packing\text{-}detached\vee tower\text{-}blown_{avg}\vee Jump_{avg}.
```

The averaged field row removes `Jump_avg`:

```math
END.Field_{avg}:
Field_{avg}+OFP.A_{avg}\Longrightarrow\neg Jump_{avg}.
```

The averaged tower row removes the averaged tower face:

```math
END.TowerBound_{avg}:
\mathfrak A_{N,Q}^{avg}\in L^\infty(I)
\Longrightarrow
\neg tower\text{-}blown_{avg}.
```

The pack row removes `packing-detached`, and the participation row removes `Dead`:

```math
END.Pack,
\qquad
(Part,Dead).
```

`END.Cross_avg` reduces mixed averaged endpoint entries to these rows. Hence every averaged endpoint face is removed, and

```math
End_{NS,avg}
```

holds.

## Boundary

`End_NS_avg` is the averaged endpoint package. The old pointwise package enters through

```math
READ.COVER+Field.Read+DTC.Read+READ.END.
```