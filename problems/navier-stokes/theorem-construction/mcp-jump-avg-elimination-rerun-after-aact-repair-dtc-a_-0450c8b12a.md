# Jump_avg elimination rerun after AACT repair

## Target

Rerun the branch elimination after recording the no-Jump averaged globalization closure.

## Current state

The complement branch has a closed good-side theorem:

```math
\neg Jump_{avg}+TGC.A.cover+ATD_m^\varepsilon+AACT.KX.local
\Longrightarrow DTC.A_{avg}.
```

The selected analytic carrier for the Jump branch is

```math
\nu_{SCF}=\mu_D+\sum_\chi\mu_{P,\chi}.
```

The raw upper estimate for this carrier holds on bounded-overlap terminal windows. The scale-normalized upper estimate is available under active-shell amplitude gain.

## Rerun result

The Jump branch still needs the lower theorem

```math
Jump_{avg}\Longrightarrow
\text{positive terminal lower accumulation for }\nu_{SCF}.
```

The current surfaces give terminal `SCF_base` threshold concentration from `Jump_avg`. They do not yet prove that this concentration is carried by the selected analytic carrier `\nu_{SCF}`.

## Verdict

Claimed status: failed rerun with exact blocker isolated.

The next exact theorem is component selection from `SCF_base` radius collapse to positive `\nu_{SCF}` terminal mass.