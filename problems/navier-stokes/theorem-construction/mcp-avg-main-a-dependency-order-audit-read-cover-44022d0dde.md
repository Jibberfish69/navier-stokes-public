# AVG.MAIN.A Dependency-Order Audit

Status: conditional dependency-order audit passed for the averaged route.

## Statement

```math
AVG.MAIN.A:
SCF_{base}+ATD_m^\varepsilon+CAVG.J+AVG.RCV.A+AVG.END.A+\operatorname{Hyp}(FFSRC.A)
\Longrightarrow
\text{no averaged finite-time class exit}.
```

## Ordered dependencies

The averaged upstream chain has this order:

```math
SCF_{base}+SGC.A_{a.e.}+ATD_m^\varepsilon
\Longrightarrow
SCF_{avg}^m
\Longrightarrow
AACT.KX\text{ off }\mathcal B_{\varepsilon_m}^{\Phi}
\Longrightarrow
DTC.A_{avg}.
```

Then the averaged receiver chain runs:

```math
DTC.A_{avg}
\Longrightarrow
AVG.RCV.A
\Longrightarrow
LCI.A_{avg}.
```

The source supplier enters as

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f.
```

Then averaged consumers run:

```math
LCI.A_{avg}+FCI.5f
\Longrightarrow
CSP.A_{avg}
\Longrightarrow
OFP.A_{avg}
\Longrightarrow
CFI.A_{avg}.
```

The averaged endpoint package runs after `CFI.A_avg`:

```math
CFI.A_{avg}+AVG.END.Cert
\Longrightarrow
End_{NS,avg}.
```

The bad material branch is handled by

```math
CAVG.J:
\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing
\Longrightarrow
Jump_{avg}.
```

So a terminal approach tail either lies in the averaged-good route and is propagated through `CFI.A_avg`, or it meets the bad material set and enters `Jump_avg`, which is an averaged endpoint face removed by `End_NS_avg`.

## Audit result

The dependency order is coherent:

1. `SCF_base + ATD_m^epsilon` supplies local averaged tower packets.
2. `AACT.KX` consumes only averaged SCF/tower data and the bad-set exclusion on the good branch.
3. `AVG.RCV.A` produces `LCI.A_avg` after `DTC.A_avg`.
4. `Hyp(FFSRC.A)` supplies the source input needed by averaged collar consumers,
   including `FCC.C1a`.
5. `AVG.END.A` consumes `CFI.A_avg` and the averaged endpoint certificates.
6. `CAVG.J` handles the complement as `Jump_avg`.

Thus `AVG.MAIN.A` is conditionally available as an averaged finite-time class-exit exclusion.

## Boundary

`AVG.MAIN.A` ends at averaged endpoint closure:

```math
End_{NS,avg}.
```

It does not itself recover the old pointwise endpoint. The old endpoint requires the downstream readout layer:

```math
READ.END:
End_{NS,avg}+READ.COVER+Field.Read+DTC.Read
\Longrightarrow
End_{NS}.
```

The next loop item is `READ.COVER.noncirc`, downstream of `End_NS_avg`.
