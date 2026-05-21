# Jump_avg no-escape rerun — shared full-SCF conditional closure

## Target

Rerun the stronger no-pulse/PCTP `Jump_avg` branch elimination with lower and
upper estimates on one shared charge.

The CM-retained source-pulse branch is handled separately by
`SourcePulseCMExit.A`; this note only records the stronger route that wants a
literal no-pulse contradiction from original data.

Use the full-SCF charge

```math
\nu_{fullSCF}=\mu_E+\mu_D+\sum_\chi\mu_{P,\chi}+\mu_G.
```

## Lower side

The lower side is installed:

```math
Jump_{avg}\Longrightarrow
\exists\{Q_k\}\text{ terminal separated/bounded-overlap with }
\nu_{fullSCF}(Q_k)\ge c_m>0.
```

Thus for every `K`,

```math
\sum_{k=1}^{K}\nu_{fullSCF}(Q_k)\ge Kc_m,
```

and the lower accumulation diverges as `K\to\infty`.

## Upper side

The upper side for the same charge is available under `SourcePulseExclusion.A`, equivalently the active-window amplitude gain / heat-scale square-source control package:

```math
SourcePulseExclusion.A
\Longrightarrow
\sum_k \nu_{fullSCF}(Q_k)
\le C(E_0,\nu,\mathrm{atlas},\mathrm{reserves})<\infty.
```

## Conditional contradiction

Combining the two estimates on the same terminal schedule gives

```math
Jump_{avg}+SourcePulseExclusion.A\Longrightarrow\bot.
```

Therefore the `Jump_avg` branch is eliminated under the source-pulse theorem.

## Promotion check for the stronger supplier route

The stronger no-pulse promotion is exactly equivalent to proving

```math
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
```

Then this stronger route gives

```math
OriginalSmoothData+Jump_{avg}
\Longrightarrow
SourcePulseExclusion.A+Jump_{avg}
\Longrightarrow
\bot.
```

## Verdict

The rerun closes the shared-charge branch-combination theorem conditionally. The
remaining open theorem for this stronger supplier route is the source-control
atom from original data:

```math
\boxed{OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.}
```

Claimed status: conditional.
