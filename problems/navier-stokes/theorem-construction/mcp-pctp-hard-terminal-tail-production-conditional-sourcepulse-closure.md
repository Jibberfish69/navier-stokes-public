# PCTP.hard terminal-tail production conditional closure downstream of `SourcePulseExclusion.A`

## Status

Conditional closure of the full terminal-tail production chain.

The active averaged route has collapsed `PCTP.hard / TTU.A` to one remaining source-control primitive:

```math
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
```

## Theorem

Assume

```math
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
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

This is a conditional closure. The exact remaining theorem is still

```math
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
```

Once that source-control theorem is installed, this note promotes to the unconditional full `PCTP.hard` terminal-tail production closure.