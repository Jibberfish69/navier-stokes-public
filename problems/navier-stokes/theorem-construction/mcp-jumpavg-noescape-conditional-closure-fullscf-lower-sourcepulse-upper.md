# Jump_avg no-escape conditional closure from full-SCF lower and SourcePulseExclusion upper

## Status

Conditional theorem closure for the stronger no-pulse/PCTP supplier route.

The CM-retained source-pulse branch is already handled by `SourcePulseCMExit.A`;
this note proves only the stronger shared-charge contradiction that uses
`SourcePulseExclusion.A`.

The lower side is installed for the equivalent shared full-SCF charge:

```math
Jump_{avg}\Longrightarrow
\exists\{Q_k\}\text{ terminal separated/bounded-overlap with }
\nu_{fullSCF}(Q_k)\ge c_m>0.
```

The upper side is available under `SourcePulseExclusion.A`, equivalently active-window amplitude gain / heat-scale square-source control:

```math
SourcePulseExclusion.A
\Longrightarrow
\sum_k \nu_{fullSCF}(Q_k)\le C(E_0,\nu,\mathrm{atlas},\mathrm{reserves})
```

on every admissible separated terminal schedule.

## Theorem

Assume `Jump_avg` and `SourcePulseExclusion.A` on the same bounded-distortion same-fluid terminal branch. Then contradiction follows:

```math
Jump_{avg}+SourcePulseExclusion.A\Longrightarrow\bot.
```

## Proof

From `Jump_avg`, the full-SCF lower theorem gives a terminal separated family `Q_k` and a fixed constant `c_m>0` with

```math
\nu_{fullSCF}(Q_k)\ge c_m
```

for each selected terminal window.

Therefore, for any `K`,

```math
\sum_{k=1}^{K}\nu_{fullSCF}(Q_k)\ge Kc_m.
```

Letting `K\to\infty` gives divergent lower accumulation along the terminal schedule.

From `SourcePulseExclusion.A`, the active-window amplitude-gain / square-source bridge gives finite upper control for the same full-SCF charge on the same schedule:

```math
\sum_{k=1}^{\infty}\nu_{fullSCF}(Q_k)
\le C(E_0,\nu,\mathrm{atlas},\mathrm{reserves})<\infty.
```

The finite upper bound contradicts the divergent lower bound. Hence

```math
Jump_{avg}+SourcePulseExclusion.A\Longrightarrow\bot.
```

## Consequence

The stronger no-pulse route eliminates `Jump_avg` once the exact source-control
atom is installed:

```math
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
```

## Boundary

This note closes the branch-combination theorem only for the stronger
no-pulse/PCTP route. The CM-retained branch split uses `SourcePulseCMExit.A`;
the literal no-pulse contradiction still needs the original-data proof of
`SourcePulseExclusion.A`.
