# CAVG.J Matrix Integration Lemma

Status: conditional endpoint-matrix integration theorem.

## Definitions

The averaged class witness is

```math
CM_{avg}=Pack\wedge Part\wedge Field_{avg}.
```

The bad material set is

```math
\mathcal B_{\varepsilon_m}^{\Phi}
:=
\{(a,t):\forall r>0,
SCF_{base}(Q_r^\Phi(a,t))>\varepsilon_m\}.
```

On a same-fluid terminal approach tail `T`, define

```math
Jump_{avg}(T)
\Longleftrightarrow
T\cap\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing.
```

This is the averaged field-scale fracture face: the tail contains a material point with no positive SCF-good coherence scale.

## Matrix row

The endpoint typing theorem is

```math
CAVG.J:
\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing
\Longrightarrow
Jump_{avg}.
```

This integrates into the averaged endpoint matrix by making the bad material set part of the existing averaged jump face, not a new fifth face.

## Exhaustion row

The averaged endpoint exhaustion row becomes

```math
END.Exh_{avg}:
\neg CM_{avg}
\Longrightarrow
Dead\vee response\text{-}margin\text{-}collapse
\vee packing\text{-}detached\vee tower\text{-}blown_{avg}\vee Jump_{avg}.
```

The good-region failure of averaged field coherence and the bad-material failure of positive SCF-good scale both enter `Jump_avg`.

## Removal row

The averaged field row is

```math
END.Field_{avg}:
Field_{avg}+OFP.A_{avg}
\Longrightarrow
\neg Jump_{avg}.
```

Thus `AVG.END.A` can remove the bad material endpoint face through the ordinary averaged endpoint matrix.

## Type boundary

`Jump_avg` is averaged. It is not the old pointwise `Jump` until the terminal readout bridge has supplied pointwise `Field` and old endpoint compatibility:

```math
Field.Read+READ.END.
```

## Output

`CAVG.J` is now typed as an accepted averaged endpoint matrix row for use in

```math
AVG.COVER.A,
\qquad
AVG.END.A.
```