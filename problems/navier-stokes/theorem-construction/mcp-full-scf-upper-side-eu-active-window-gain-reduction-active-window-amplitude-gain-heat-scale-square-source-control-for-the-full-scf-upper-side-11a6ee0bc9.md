# Full-SCF upper side — E_u active-window gain reduction

## Target

Close the upper side for the shared full-SCF charge used by the `Jump_avg` lower-side theorem:

```math
\nu_{fullSCF}:=\mu_E+\mu_D+\sum_\chi\mu_{P,\chi}+\mu_G.
```

The lower side is installed:

```math
Jump_{avg}\Longrightarrow
\text{positive terminal lower accumulation for }\nu_{fullSCF}.
```

## Available upper control

The narrow analytic charge

```math
\nu_{SCF}=\mu_D+\sum_\chi\mu_{P,\chi}
```

has raw bounded-overlap upper control. Under active-shell amplitude gain, it also has the needed scale-normalized Carleson control.

## E_u component test

The enlarged charge adds `E_u` to represent every threshold component of
`SCF_base` in `\nu_{fullSCF}`.  This proves lower-side coverage as a
set-theoretic packet inclusion only.

The upper side changes. `E_u` is a scale-critical local energy packet. Global energy controls time-slice size, while the branch contradiction needs summability across shrinking terminal windows:

```math
\sum_k r_k^{-\alpha}E_u(Q_k)\le C.
```

The current global energy ledger gives raw size control. It does not give the missing scale factor for terminal active windows.

## Reduction

A valid upper-side theorem must prove one of:

```math
E_u\text{ terminal threshold}\Longrightarrow D_u/P\text{ terminal mass},
```

or

```math
\sum_k r_k^{-\alpha}E_u(Q_k)\le C(E_0)
```

for the same separated or bounded-overlap terminal windows used by the lower accumulation route.

The canonical surfaces reduce both to the same exposed source theorem:

```math
\boxed{\text{active-window amplitude gain}}
```

or an equivalent heat-scale square-source estimate / direct active-square Carleson theorem.

## Verdict

The full-SCF upper side is closed conditionally:

```math
\text{active-window amplitude gain}
\Longrightarrow
\text{scale-normalized upper control for the full-SCF charge.}
```

The unconditional source theorem from `OriginalSmoothData` remains open through the source-pulse wall persisted separately.

Claimed status: conditional. Loop proceeds to the `Jump_avg` contradiction rerun.
