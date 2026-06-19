# TTU Branch Selection And Averaged Terminal-Tail Target

Status: conditional branch selection. Direct pointwise `TTU` remains open; the next live target is the averaged coverage route.

## Direct pointwise TTU check

The target was

```math
TTU:
OriginalSmoothData
\Longrightarrow
\text{uniform terminal-tail retained Pack/Part/Field/tower data}.
```

The prior failure note records the direct pointwise terminal package:

```math
RSCB.NKF,
\qquad
\Gamma_{pack,Q}\in L^\infty([t_0,T_*)),
\qquad
ACT.X\text{-}Scale,
\qquad
RWS.C_{scale},
```

and

```math
Pack_Q+Part_{N,Q}+Field_{N,r,Q},
\qquad
\mathfrak A_{N,Q}\in L^\infty([t_0,T_*)).
```

Compact classical intervals supply this package locally below `T_*`. The terminal tail requires continuation-grade data. For instance, the pack gauge follows from

```math
\int_{t_0}^{T_*}\|\nabla u(t)\|_{L^\infty}\,dt<\infty,
```

or a pack-native substitute of the same strength. Similarly, terminal `RSCB.NKF` requires terminal smooth center-ball integrability. Thus direct pointwise `TTU` is the hard terminal regularity production step.

## Valid branch change

The averaged terminal-tail surface replaces pointwise production by an averaged finite-energy-native route:

```math
SCF_{base}+SGC.A_{a.e.}+ATD_m^\varepsilon
\Longrightarrow
SCF_{avg}^m
\Longrightarrow
AACT.KX\text{ off }\mathcal B_{\varepsilon_m}^{\Phi}
\Longrightarrow
DTC.A_{avg}
\Longrightarrow
AVG.RCV.A
\Longrightarrow
LCI.A_{avg}
\Longrightarrow
CSP.A_{avg}
\Longrightarrow
OFP.A_{avg}
\Longrightarrow
CFI.A_{avg}.
```

The bad material set is typed by

```math
CAVG.J:
\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing
\Longrightarrow
Jump_{avg}.
```

The coverage bridge becomes

```math
AVG.COVER.A:
SGC.A_{a.e.}+ATD_m^\varepsilon+CAVG.J
\Longrightarrow
\text{each same-fluid terminal approach tail is averaged-good covered or enters }Jump_{avg}.
```

This avoids asking `OriginalSmoothData` to produce pointwise `RSCB.NKF` on the terminal tail.

## Averaged endpoint and pointwise recovery

The averaged endpoint route is

```math
CFI.A_{avg}+AVG.END.Cert
\Longrightarrow
End_{NS,avg}.
```

The old pointwise endpoint is recovered only through

```math
READ.END:
End_{NS,avg}+READ.COVER+Field.Read+DTC.Read
\Longrightarrow
End_{NS}.
```

`READ.COVER` is downstream of `End_NS_avg`. `Field.Read` recovers pointwise `Field` from averaged field data on a finite SCF-good cover. `DTC.Read` recovers the old tower readout on the same fixed finite cover.

## New solve order

The solve list now becomes:

1. Prove or audit `AVG.COVER.A` on terminal approach tails.
2. Prove `AVG.MAIN.A` from `SCF_base + ATD_m^epsilon + CAVG.J + AVG.RCV.A + AVG.END.A + FFSRC.A`.
3. Invoke `READ.COVER.noncirc` downstream of `End_NS_avg`.
4. Invoke `Field.Read` and `DTC.Read` on the fixed finite same-fluid cover.
5. Apply `READ.END` to recover old `End_NS`.
6. Feed `End_NS` into the terminal class-membership chain.
7. Apply `PCTP.cond` for continuation.

## Current next target

The next theorem item is

```math
AVG.COVER.A:
SGC.A_{a.e.}+ATD_m^\varepsilon+CAVG.J
\Longrightarrow
\text{same-fluid terminal approach tails are either averaged-good covered or }Jump_{avg}.
```

This is the first terminal production step compatible with finite-energy data and the existing readout architecture.

## Boundary

The route remains averaged until `READ.COVER`, `Field.Read`, `DTC.Read`, and `READ.END` are explicitly invoked. `DTC.A_avg` is not `DTC.A`, and `CFI.A_avg` is not old `CFI.A` until the readout bridge supplies the corresponding pointwise objects.
