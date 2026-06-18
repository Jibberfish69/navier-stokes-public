# Minimal Dependency Graph For Averaged PCTP.hard Route

Status: conditional dependency graph note.

## Graph

```text
OriginalSmoothData
=> retained same-fluid terminal approach tail
=> TGC.A
=> AACT.Global.noJump
=> DTC.A_avg
=> AVG.RCV.A
=> LCI.A_avg
=> Hyp(FFSRC.A) => FCI.5f
=> CSP.A_avg
=> OFP.A_avg
=> CFI.A_avg
=> AVG.END.A
=> End_NS_avg
=> READ.COVER
=> Field.Read + DTC.Read
=> READ.END
=> End_NS
=> CFI.A + End_NS
=> PCTP.hard / TTU.A
=> ECQ.A / PCTP.cond
=> T_* = infinity
```

## Typed edges

`TGC.A` gives the terminal cover split:

```math
Jump_{avg}\vee\text{finite scheduled SCF-good averaged cover}.
```

On the no-jump branch:

```math
AACT.Global.noJump\Longrightarrow DTC.A_{avg}.
```

The averaged receiver/source/consumer chain is

```math
DTC.A_{avg}
\Longrightarrow AVG.RCV.A
\Longrightarrow LCI.A_{avg},
```

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f,
```

where the source hypothesis includes `FCC.C1a`.

```math
LCI.A_{avg}+FCI.5f
\Longrightarrow CSP.A_{avg}
\Longrightarrow OFP.A_{avg}
\Longrightarrow CFI.A_{avg}.
```

The averaged endpoint closure is

```math
CFI.A_{avg}+AVG.END.Cert
\Longrightarrow End_{NS,avg}.
```

The readout bridge is

```math
End_{NS,avg}
\Longrightarrow READ.COVER
\Longrightarrow Field.Read+DTC.Read
\Longrightarrow READ.END
\Longrightarrow End_{NS}.
```

The pointwise terminal bridge is

```math
CFI.A+End_{NS}
\Longrightarrow PCTP.hard.
```

The continuation bridge is

```math
PCTP.hard+ECQ.A
\Longrightarrow T_* = \infty.
```

## Type ledger

```text
Field_avg  --Field.Read-->  Field
DTC.A_avg  --DTC.Read---->  DTC.A
End_NS_avg --READ.END---->  End_NS
```

## Boundary

This graph records the conditional theorem-program dependency order. It does not change governance, review, or public release status by itself.
