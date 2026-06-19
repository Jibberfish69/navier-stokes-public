# Endpoint Matrix Minimality Theorem

## Statement

The averaged endpoint matrix has four historical primitive faces plus the
Part-side response-margin subface exposed by the repaired Part closedness
theorem:

```math
Dead,
\qquad packing\text{-}detached,
\qquad tower\text{-}blown_{avg},
\qquad Jump_{avg},
\qquad response\text{-}margin\text{-}collapse.
```

The old four-face matrix is exhaustive only after the Part row supplies closed
terminal response predicates or retained strict margins
`\mathcal R_\ell(t)\ge\gamma_\ell>0` on the terminal tail.

## Exhaustiveness

The averaged class witness is

```math
CM_{avg}=Pack\wedge Part\wedge Field_{avg}.
```

Failure of `Part` gives the participation endpoint face, and strict
response-margin collapse is the separate Part-side subface unless closed
terminal Part predicates or retained positive response margins have been
supplied:

```math
\neg Part\Longrightarrow
Dead\vee response\text{-}margin\text{-}collapse.
```

Failure of the packing/diffeomorphic gauge enters the packing endpoint face, with the tower-amplitude split kept explicit:

```math
\neg Pack\Longrightarrow packing\text{-}detached\vee tower\text{-}blown_{avg}.
```

Failure of the averaged field/coherence object is exactly

```math
\neg Field_{avg}\Longrightarrow Jump_{avg}.
```

The remaining finite-amplitude escape in the averaged transported-center tower is

```math
\mathfrak A_{N,Q}^{avg}\notin L^\infty\Longrightarrow tower\text{-}blown_{avg}.
```

Thus every failure of the route witness or its tower readout enters one of the
endpoint faces. Mixed failures are unions of these failures and are reduced by
`END.Cross_avg`. On the margin-retained or closed-Part subbranch this reduces to
the historical four rows.

## Irredundancy

Each face removes a distinct primitive obstruction.

1. `Dead` concerns participation. It can occur with pack, field, and tower amplitude still typed as present, so it is not represented by the other three faces.

2. `packing-detached` concerns loss of the shared pack/diffeomorphic gauge. It can occur without participation failure, averaged tower blowup, or field-scale loss, so it is independent.

3. `tower-blown_avg` concerns escape of the averaged endpoint tower amplitude. It is not equivalent to packing-detachment, because pack geometry can remain bounded while the finite tower readout escapes.

4. `Jump_avg` concerns terminal loss of positive-scale averaged field coherence. It can occur with participation, pack, and finite tower amplitude still typed as present, so it is not redundant.

5. `response-margin-collapse` concerns loss of strict neighboring-response
margin under terminal limiting. It can occur while the closed relaxed Part
predicate survives, so it is not represented by pack, tower, or field loss.

Hence no face can be deleted without losing a primitive failure mode.

## Minimal matrix

The minimal matrix is therefore

| Face | Primitive failure | Eliminator |
|---|---|---|
| `Dead` | participation | `Part` |
| `packing-detached` | packing gauge | `Pack` |
| `tower-blown_avg` | averaged tower amplitude | `DTC.A_avg` |
| `Jump_avg` | averaged field/coherence scale | `Field_avg + OFP.A_avg` |

## Conclusion

The four-face matrix is exhaustive, irredundant, and closed under mixed-face reduction by `END.Cross_avg`.
