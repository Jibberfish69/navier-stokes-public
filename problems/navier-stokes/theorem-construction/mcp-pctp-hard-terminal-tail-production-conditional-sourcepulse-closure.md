# PCTP.hard terminal-tail production conditional closure downstream of `SourcePulseExclusion.A`

## Status

Supersession status (2026-05-04): historical / branch-local context. The selected
source-pulse/no-`Jump_avg` supplier route is now discharged by `LemmaB.SourceDrain`
and retained as downstream support for `PCTP.hard / TTU.A`; it is no longer the
active math frontier.

Conditional closure of the full terminal-tail production chain.

This historical source-pulse route collapsed the branch to one source-control
primitive:

```math
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
```

## Theorem

Under the installed exactness hypotheses, the conditional theorem also requires the
same-tail Field-admission input.  Assume

```math
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A,
\qquad
SCFBaseLocalModulus_N\text{ on the admitted terminal tail}.
```

Then the installed TGC/AACT/AVG/READ assembly produces

```math
PCTP.hard / TTU.A.
```

## Proof

First, `SourcePulseExclusion.A` promotes the conditional branch contradiction:

```math
Jump_{avg}+SourcePulseExclusion.A\Longrightarrow\bot.
```

Hence the terminal tail lies on the no-`Jump_avg` branch.

On that branch, `TGC.A.cover` gives a finite positive-scale same-fluid SCF-good terminal cover with finite overlap and scheduler-ready ledgers.

The repaired `AACT.KX / AACT.Global.noJump` scheduler gives

```math
DTC.A_{avg}.
```

The averaged receiver chain gives

```math
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

The averaged endpoint package gives

```math
CFI.A_{avg}+AVG.END.Cert
\Longrightarrow
End_{NS,avg}.
```

The readout layer then enters in legal order:

```math
End_{NS,avg}
\Longrightarrow
READ.COVER
\Longrightarrow
Field.Read+DTC.Read
\Longrightarrow
READ.END
\Longrightarrow
End_{NS}.
```

This supplies the terminal-tail retained Pack/Part/Field/tower readout required by `PCTP.hard / TTU.A`.

## Boundary

This is a conditional closure. The exact remaining original-data theorem is not
only the source-control statement; the current route also needs the same-tail
Field-admission input:

```math
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A,
\qquad
OriginalSmoothData\Longrightarrow SCFBaseLocalModulus_N
\text{ on admitted terminal tails}.
```

Only after both inputs are installed does this historical note promote to the
full `PCTP.hard` terminal-tail production closure.
