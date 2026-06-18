# Endpoint Matrix Final Form

## Status

Closed compact endpoint matrix for the averaged terminal-tail proof.

## Matrix

| Face | Meaning | Eliminator |
|---|---|---|
| `Dead` | participation failure | `Part => not Dead` |
| `response-margin-collapse` | strict Part response margin lost at terminal limit | closed terminal Part predicates or retained margins `\mathcal R_\ell\ge\gamma_\ell` |
| `packing-detached` | pack-gauge/diffeomorphic packing failure | `Pack => not packing-detached` |
| `tower-blown_avg` | averaged tower amplitude escape | `DTC.A_avg => END.TowerBound_avg => not tower-blown_avg` |
| `Jump_avg` | terminal loss of positive-scale averaged field cover | `Field_avg + OFP.A_avg => not Jump_avg` |

## Exhaustion row

The averaged class witness is

```math
CM_{avg}=Pack\wedge Part\wedge Field_{avg}.
```

The endpoint exhaustion row is

```math
\neg CM_{avg}\Longrightarrow
Dead\vee response\text{-}margin\text{-}collapse
\vee packing\text{-}detached\vee tower\text{-}blown_{avg}\vee Jump_{avg}.
```

## Cross row

Every mixed endpoint entry reduces to the primitive rows above. Thus
`END.Cross_avg` introduces no additional endpoint type beyond the repaired
Part-side response-margin subface.

## Closure

`CFI.A_avg` supplies persistence of `CM_avg` together with the repaired Part
response-margin input. The eliminators remove the endpoint faces, and the cross
row reduces mixed cases to those rows. Hence

```math
CFI.A_{avg}+AVG.END.Cert\Longrightarrow End_{NS,avg}.
```

## Boundary

This matrix is averaged. The pointwise endpoint matrix enters after

```math
End_{NS,avg}\Longrightarrow READ.COVER\Longrightarrow READ.END\Longrightarrow End_{NS}.
```
