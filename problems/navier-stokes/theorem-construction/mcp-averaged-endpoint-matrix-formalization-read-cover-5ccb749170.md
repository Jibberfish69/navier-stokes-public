# Averaged Endpoint Matrix Formalization

Status: conditional endpoint-matrix theorem.

## Averaged class witness

Define

```math
CM_{avg}:=Pack\wedge Part\wedge Field_{avg}.
```

`Pack` and `Part` are shared with the pointwise matrix. `Field_avg` is the averaged field-coherence predicate produced by the averaged consumer chain.

## Averaged jump face

Let

```math
\mathcal B_{\varepsilon_m}^{\Phi}
=
\{(a,t):\forall r>0,
SCF_{base}(Q_r^\Phi(a,t))>\varepsilon_m\}.
```

Define

```math
Jump_{avg}
```

as the averaged field-scale fracture face. It includes both averaged field-coherence failure and same-fluid terminal tails meeting `mathcal B_{epsilon_m}^Phi`.

The grammar row is

```math
CAVG.J:
\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing
\Longrightarrow
Jump_{avg}.
```

## Averaged endpoint package

Set

```math
End_{NS,avg}:=
END.Pack\wedge END.Field_{avg}\wedge END.TowerBound_{avg}
\wedge END.Exh_{avg}\wedge END.Cross_{avg}.
```

The exhaustion row is

```math
END.Exh_{avg}:
\neg CM_{avg}
\Longrightarrow
Dead\vee response\text{-}margin\text{-}collapse
\vee packing\text{-}detached\vee tower\text{-}blown_{avg}\vee Jump_{avg}.
```

The field row is

```math
END.Field_{avg}:
Field_{avg}+OFP.A_{avg}\Longrightarrow \neg Jump_{avg}.
```

The tower row is

```math
END.TowerBound_{avg}:
\mathfrak A_{N,Q}^{avg}\in L^\infty(I)
\Longrightarrow
\neg tower\text{-}blown_{avg}.
```

`END.Pack` removes `packing-detached`, and the shared participation row removes `Dead`. `END.Cross_avg` sends mixed entries to these rows.

## Theorem

```math
AVG.END.A:
CFI.A_{avg}+AVG.END.Cert
\Longrightarrow
End_{NS,avg}.
```

## Type boundary

`End_NS_avg` enters the pointwise endpoint matrix only through

```math
READ.END:
End_{NS,avg}+READ.COVER+Field.Read+DTC.Read
\Longrightarrow End_{NS}.
```