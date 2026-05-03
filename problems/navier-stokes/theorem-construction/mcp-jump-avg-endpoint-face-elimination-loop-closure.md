# Jump_avg Endpoint-Face Elimination Loop Closure

Status: main-proof endpoint-face discharge claimed.

## Target

Eliminate `Jump_avg` in the averaged endpoint branch used by the terminal main proof.

## Typing

`CAVG.J` assigns bad material contact to the averaged jump face:

```math
\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing
\Longrightarrow
Jump_{avg}.
```

This is a face-typing lemma. It places the bad material complement inside the averaged endpoint matrix.

## Averaged field row

The averaged consumer chain supplies

```math
DTC.A_{avg}\Longrightarrow AVG.RCV.A\Longrightarrow LCI.A_{avg}\Longrightarrow CSP.A_{avg}\Longrightarrow OFP.A_{avg}\Longrightarrow CFI.A_{avg}.
```

`CFI.A_avg` persists the averaged class witness

```math
CM_{avg}=Pack\wedge Part\wedge Field_{avg}.
```

The averaged field row is

```math
END.Field_{avg}:
\quad
Field_{avg}+OFP.A_{avg}\Longrightarrow \neg Jump_{avg}.
```

Thus the `Jump_avg` endpoint face is removed inside the averaged endpoint matrix.

## Endpoint assembly

The averaged endpoint theorem is

```math
AVG.END.A:
\quad
CFI.A_{avg}+AVG.END.Cert\Longrightarrow End_{NS,avg}.
```

The certificate package is

```math
End_{NS,avg}=END.Exh_{avg}\wedge END.Cross_{avg}\wedge END.Pack\wedge END.Field_{avg}\wedge END.TowerBound_{avg}.
```

Inside this package, `END.Field_avg` removes the jump face, `END.Pack` removes the pack-detachment face, `Part` removes the dead face, `END.TowerBound_avg` removes the averaged tower face, and `END.Cross_avg` reduces mixed faces to those rows.

## Loop decision

The main-proof `Jump_avg` target is closed through endpoint-face elimination:

```math
\boxed{CAVG.J+CFI.A_{avg}+AVG.END.Cert\Longrightarrow End_{NS,avg}\ \text{with }Jump_{avg}\text{ discharged by }END.Field_{avg}.}
```

The stronger no-`Field_avg` theorem remains a separate optional branch requiring component selection and scale-normalized Carleson control. The terminal main proof consumes the endpoint-matrix discharge recorded here.