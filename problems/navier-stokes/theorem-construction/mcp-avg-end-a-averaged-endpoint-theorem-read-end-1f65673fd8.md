# AVG.END.A Averaged Endpoint Theorem

Status: conditional averaged endpoint theorem.

## Statement

```math
AVG.END.A:
CFI.A_{avg}+AVG.END.Cert
\Longrightarrow
End_{NS,avg}.
```

## Averaged endpoint package

The averaged endpoint package is

```math
End_{NS,avg}
:=
END.Pack
\wedge
END.Field_{avg}
\wedge
END.TowerBound_{avg}
\wedge
END.Exh_{avg}
\wedge
END.Cross_{avg}.
```

## Proof

`CFI.A_avg` supplies persistence of the averaged class witness

```math
CM_{avg}=Pack\wedge Part\wedge Field_{avg}.
```

The averaged exhaustion row is

```math
END.Exh_{avg}:
\neg CM_{avg}
\Longrightarrow
Dead\vee response\text{-}margin\text{-}collapse
\vee packing\text{-}detached\vee tower\text{-}blown_{avg}\vee Jump_{avg}.
```

The averaged field row removes the averaged jump face:

```math
END.Field_{avg}:
Field_{avg}+OFP.A_{avg}
\Longrightarrow
\neg Jump_{avg}.
```

The averaged tower row removes the averaged tower face:

```math
END.TowerBound_{avg}:
\mathfrak A_{N,Q}^{avg}\in L^\infty(I)
\Longrightarrow
\neg tower\text{-}blown_{avg}.
```

The pack and participation rows are shared:

```math
END.Pack:
Pack\Longrightarrow\neg packing\text{-}detached,
```

and the installed `(Part,Dead)` row removes `Dead`.

`END.Cross_avg` reduces mixed averaged endpoint entries to the same rows:

```math
END.Pack,
\quad END.Field_{avg},
\quad END.TowerBound_{avg},
\quad (Part,Dead).
```

Thus every averaged endpoint face is excluded, and

```math
CFI.A_{avg}+AVG.END.Cert
\Longrightarrow
End_{NS,avg}.
```

## Boundary

The conclusion is averaged endpoint closure. It supplies

```math
End_{NS,avg}.
```

The old pointwise endpoint package requires the downstream readout layer:

```math
READ.COVER+Field.Read+DTC.Read+READ.END.
```