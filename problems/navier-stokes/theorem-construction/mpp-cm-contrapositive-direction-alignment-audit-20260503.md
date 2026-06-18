# MPP CM Contrapositive Direction Alignment Audit

## Status

Authority-direction audit after the CM primitive-seat repair.

This note fixes the direction of active route objects relative to the single CM
contrapositive primitive

```math
Exit(Q;\mathfrak O_{\mathrm{NS}}^{work})
:=
\neg Member(Q;\mathfrak O_{\mathrm{NS}}^{work}).
```

At witness level:

```math
CM_{N,r,Q}
=
Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}.
```

## Direction Classes

`D0` constitutive witness:

```math
CM_{N,r,Q}\Longrightarrow Member(Q;\mathfrak O_{\mathrm{NS}}^{work})
```

through `CMW.A`.

`D1` primitive decomposition:

```math
\neg CM_{N,r,Q}
\Longrightarrow
\neg Pack_Q\vee\neg Part_{N,Q}\vee\neg Field_{N,r,Q}.
```

`D2` certificate classification:

```math
\neg Part_{N,Q}\Longrightarrow Dead,
\qquad
\neg Pack_Q\Longrightarrow packing\text{-}detached\vee tower\text{-}blown,
\qquad
\neg Field_{N,r,Q}\Longrightarrow Jump.
```

`D3` endpoint-face exclusion:

```math
END.Pack,\ END.Field,\ END.TowerBound
```

exclude `packing-detached`, `Jump`, and `tower-blown` after their positive
inputs are supplied.

`D4` forward persistence:

```math
CFI.A:
CM+\text{same-fluid still-live family}+\neg Blown+\neg Jump
\Longrightarrow CM.
```

This is a primitive-production theorem only after the same-solution primitive
production bridge is supplied.

`D5` analytic supplier / receiver:

`RSCB.NKF`, `ACT.KX`, `ACT.A`, `RCF.A`, `LCI.A`, `FCI.5f`, `CSP.A`, and `OFP.A`
are positive supplier or receiver directions.  They must bridge into `Pack`,
`Part`, or `Field` before they count as CM witness closure. `Member` is the
downstream class-membership landing.

`D6` branch manifestation:

`SourcePulseCMExit.A` and its face variants classify source-pulse branch
families only after those families are seated under the CM-exit grammar.

`D7` downstream consumer:

`AWG.A`, `SOURCE.NO-PULSE.A`, `PCTP.hard / TTU.A`, `TGC.A`,
`AACT.Global.noJump`, `AVG.END.A`, `READ.END`, and export/readout packets are
consumer or alternate-supplier directions unless explicitly bridged into
`Pack`, `Part`, or `Field`; `Member` follows only after that CM witness
certificate is licensed.

## Rule

No theorem edge may be called upstream, downstream, closed, discharged, or
nonblocking until its direction is typed relative to

```math
Exit(Q):=\neg Member(Q).
```

The route may claim a class-exit contradiction only through

```math
\neg CM
\Longrightarrow
\neg Pack\vee\neg Part\vee\neg Field
\Longrightarrow
Dead\vee packing\text{-}detached\vee tower\text{-}blown\vee Jump
```

plus installed exclusions of those endpoint faces.
