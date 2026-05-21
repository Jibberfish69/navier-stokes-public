# Jump_avg no-escape unconditional promotion check after conditional closure

## Status

Superseded as the CM-retained source-pulse gate; still valid as the stronger
no-pulse/PCTP supplier check.

The branch-combination theorem is installed:

```math
Jump_{avg}+SourcePulseExclusion.A\Longrightarrow\bot.
```

The older no-pulse promotion requires the source-pulse theorem:

```math
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
```

The CM-retained branch split has since been promoted by
`mcp-jumpavg-noescape-unconditional-promotion-via-sourcepulse-cmexit.md`:

```math
SourcePulseCMExit.A
\Longrightarrow
\text{no CM-retained }Jump_{avg}\text{ escape}.
```

Thus the dependency below is not needed for the retained CM source-pulse
exit. It is only the stronger route that wants the literal
no-pulse/source-control contradiction from original data without spending the
class-exit witness.

## Promotion criterion

The conditional `Jump_avg` no-escape theorem promotes to unconditional exactly under the following dependency discharge:

```math
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
```

With that theorem, the chain is

```math
OriginalSmoothData+Jump_{avg}
\Longrightarrow
SourcePulseExclusion.A+Jump_{avg}
\Longrightarrow
\bot.
```

## Check

The current repo surfaces consolidate the source-control stack into one active atom:

```math
\text{exclude heat-scale, scale-critical nonlinear source pulses carrying mixed bilinear dissipation on active terminal windows.}
```

The installed surfaces provide reductions and conditional bridges. They do not provide an unconditional proof of that atom from `OriginalSmoothData`.

## Result

The stronger no-pulse promotion is pending on `SourcePulseExclusion.A` from
original data. The CM-retained no-escape route is already promoted by
`SourcePulseCMExit.A`; the conditional branch contradiction below remains valid
only as the stronger supplier path.

## Next target for the stronger supplier route only

```math
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
```
