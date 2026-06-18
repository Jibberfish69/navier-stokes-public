# AVG.END.A Consumption Check

Status: conditional endpoint-consumption check.

## Statement

```math
AVG.END.A:
CFI.A_{avg}+AVG.END.Cert
\Longrightarrow
End_{NS,avg}.
```

## Consumed inputs

`CFI.A_avg` supplies persistence of the averaged class witness

```math
CM_{avg}=Pack\wedge Part\wedge Field_{avg}.
```

`AVG.END.Cert` supplies the averaged endpoint rows:

```math
END.Exh_{avg},
\quad END.Cross_{avg},
\quad END.Field_{avg},
\quad END.TowerBound_{avg},
\quad END.Pack,
\quad (Part,Dead).
```

## Face removal

The exhaustion row is

```math
END.Exh_{avg}:
\neg CM_{avg}
\Longrightarrow
Dead\vee response\text{-}margin\text{-}collapse
\vee packing\text{-}detached\vee tower\text{-}blown_{avg}\vee Jump_{avg}.
```

`END.Field_avg` removes the averaged jump face:

```math
Field_{avg}+OFP.A_{avg}\Longrightarrow\neg Jump_{avg}.
```

`END.TowerBound_avg` removes the averaged tower face:

```math
\mathfrak A_{N,Q}^{avg}\in L^\infty
\Longrightarrow
\neg tower\text{-}blown_{avg}.
```

`END.Pack` removes `packing-detached`, and the participation row removes `Dead`.

`END.Cross_avg` sends mixed cases to the same rows. Therefore every averaged endpoint face is removed, and

```math
End_{NS,avg}
```

is obtained.

## Output

```math
CFI.A_{avg}+AVG.END.Cert
\Longrightarrow
End_{NS,avg}.
```

## Boundary

`End_NS_avg` is the averaged endpoint package. The pointwise package is recovered only by `READ.END`.