# MPP Avg Route Dependency And Jump_avg Boundary Audit

## Status

Theorem-facing dependency audit after the CM source-pulse wording repair.

This note answers one question:

```math
\text{Which steps really need averaged production, and where does }Jump_{avg}\text{ still need a separate eliminator?}
```

## Verdict

The averaged route is the correct noncircular production route for the terminal
receiver/endpoint spine. It avoids using pointwise retained endpoint data before
that data has been produced.

The direct pointwise terminal-tail route is not the correct production route at
the current surface. It asks original smooth data for continuation-grade
pointwise endpoint/readout control before the endpoint package has been
produced. That is the circularity the averaged route avoids.

The averaged route is not, by itself, a `Jump_avg` eliminator. It proves the
good averaged branch and then reads the averaged endpoint back to the old
pointwise endpoint. The live split is:

1. CM source-pulse branch: `SourcePulseCMExit.A` already consumes the retained
   source-pulse survivor as a Pack/Part/Field exit.
2. Positive `PCTP.hard` terminal-tail production: the route requires literal
   no-`Jump_avg`, so the branch-killer is the sharper no-pulse/source-control
   supplier `OriginalSmoothData=>SourcePulseExclusion.A` or its equivalent
   `UniformLedgerAC.A` / `NativeTrilinearDefectDomination.A` form.

No installed theorem currently sends bare `Jump_avg` directly into a Pack, Part,
or Field failure without that CM source-pulse consumption.

## Dependency Map

### CM source-pulse branch

```math
\text{retained source-pulse survivor as genuine nonsmooth occurrence}
\Longrightarrow
SourcePulseCMExit.A
\Longrightarrow
\neg Pack_Q\vee\neg Part_{N,Q}\vee\neg Field_{N,r,Q}.
```

This branch does not need `Jump_avg`, `AVG`, `READ.COVER`, `PCTP.hard`, or
`SourcePulseExclusion.A`.

### Averaged good branch

The good averaged production spine is:

```math
\neg Jump_{avg}
+TGC.A.cover
+ATD_m^\varepsilon
+AACT.KX.local
\Longrightarrow
AACT.Global.noJump
\Longrightarrow
DTC.A_{avg}.
```

Then:

```math
DTC.A_{avg}
\Longrightarrow
AVG.RCV.A
\Longrightarrow
LCI.A_{avg},
```

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f,
```

```math
LCI.A_{avg}+FCI.5f
\Longrightarrow
CSP.A_{avg}
\Longrightarrow
OFP.A_{avg}
\Longrightarrow
CFI.A_{avg}.
```

Then the averaged endpoint package is:

```math
CFI.A_{avg}+AVG.END.Cert
\Longrightarrow
End_{NS,avg}.
```

This is legitimate only for a branch where `CFI.A_avg` has actually been
produced.

### Terminal readout

The old pointwise endpoint is recovered only at the end:

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

The type ledger is:

```text
Field_avg  --Field.Read-->  Field
DTC.A_avg  --DTC.Read---->  DTC.A
End_NS_avg --READ.END---->  End_NS
```

`READ.COVER`, `Field.Read`, `DTC.Read`, pointwise `Field`, pointwise `DTC.A`,
and `End_NS` are downstream-only. Using any of them upstream of `End_NS_avg`
is circular.

## The Jump_avg Gap

`TGC.A.noEscape` and `CAVG.J` only classify bad material contact or terminal
SCF-good radius collapse as:

```math
Jump_{avg}.
```

They do not remove it.

`AVG.END.A` removes `Jump_avg` through the averaged endpoint row:

```math
Field_{avg}+OFP.A_{avg}\Longrightarrow\neg Jump_{avg}.
```

But `Field_avg` and `OFP.A_avg` come from the no-`Jump_avg` averaged production
spine through `CFI.A_avg`. Therefore `AVG.END.A` cannot be used as an upstream
eliminator for a branch that has already fallen into `Jump_avg`.

The lawful statement is:

```math
\neg Jump_{avg}
\Longrightarrow
\text{averaged production}
\Longrightarrow
End_{NS,avg}
\Longrightarrow
End_{NS}.
```

The extra branch still needs:

```math
Jump_{avg}\Longrightarrow\text{CM exit}
```

or

```math
Jump_{avg}+SourcePulseExclusion.A\Longrightarrow\bot.
```

## Consequence

For the CM-exit program, use the already-installed `SourcePulseCMExit.A` and do
not demand no-pulse.

For the stronger downstream `PCTP.hard` / terminal-tail production route, the
averaged route is the correct endpoint-production spine and the sharper
no-pulse/AWG supplier is the required `Jump_avg` branch-killer. A more precise
pointwise endpoint-production route is not installed and is not the selected
route.
