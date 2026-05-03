# SourcePulseExclusion.A propagation check after supplier ladder

## Target

Propagate a supplier closure to

```math
SourcePulseExclusion.A
\Longrightarrow
Jump_{avg}\Rightarrow\bot
\Longrightarrow
PCTP.hard/TTU.A.
```

## Supplier checks

The coherence branch has the valid conditional chain

```math
TerminalSourceCoherence.A
\Longrightarrow
PositiveSourceDepletion.A
\Longrightarrow
ScaleCriticalTreeCarleson.A
\Longrightarrow
SourcePulseExclusion.A.
```

The source theorem

```math
OriginalSmoothData\Longrightarrow TerminalSourceCoherence.A
```

remains open.

The Carleson branch has the valid conditional chain

```math
ScaleCriticalTreeCarleson.A
\Longrightarrow
TwoTowerDonorDepletion.A
\Longrightarrow
SourcePulseExclusion.A.
```

The source theorem

```math
OriginalSmoothData\Longrightarrow ScaleCriticalTreeCarleson.A
```

remains open.

The Zeno compact-rigidity branch has the installed extraction half

```math
ZenoCompactnessExtraction.A.
```

It still needs a rigid class `\mathcal B` and a native positive-residue Liouville theorem:

```math
ZenoBoundedClass_{\mathcal B}.A+ZenoResidueLiouville_{\mathcal B}.A.
```

Weak signed cancellation does not kill the native positive source-residue measure. Strong native cancellation is already the contradiction and requires another supplier.

## Propagation result

No supplier closure is available from the current ladder, so the downstream implication cannot fire.

The current terminal live targets are exactly:

```math
OriginalSmoothData\Longrightarrow TerminalSourceCoherence.A,
```

```math
OriginalSmoothData\Longrightarrow ScaleCriticalTreeCarleson.A,
```

or

```math
OriginalSmoothData\Longrightarrow ZenoBoundedClass_{\mathcal B}.A+ZenoResidueLiouville_{\mathcal B}.A.
```

## Verdict

`SourcePulseExclusion.A`, `Jump_avg=>false`, and `PCTP.hard/TTU.A` remain open at this loop boundary.  The supplier ladder is exhausted into the three displayed source-control theorems.