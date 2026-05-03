# Active-window amplitude gain / heat-scale square-source control — continuation note

## Target

Install scale-normalized upper control for the final `Jump_avg` charge

```math
\nu_{SCF}=\mu_D+\sum_\chi\mu_{P,\chi}.
```

The desired estimate is

```math
\sum_{Q\in\mathcal F} SCF^{\nu}_{norm}(Q)\le C
```

for every separated or bounded-overlap terminal window family.

## Installed conditional bridge

The canonical bridge is theorem-grade under its stated hypotheses:

```math
\text{active-shell amplitude gain}
\Longrightarrow
\text{scale-normalized }\nu_{SCF}\text{ Carleson control.}
```

The bridge uses shell-to-window comparison, bounded terminal atlas overlap, heat-scale dissipation tail control, and summable reserves. In shell form, the sufficient gain is

```math
2^{-j}D_j(t)^2\le \varepsilon\nu D_j(t)+r_j(t),
```

with the reserve `r_j` summable on active terminal tails. Summing over active shells and terminal windows gives the Carleson bound.

## Attempt to remove the conditional hypothesis

From `OriginalSmoothData`, the solution is smooth on every compact preterminal interval and has finite raw energy and finite dissipation. These facts control fixed shells before the endpoint. The required theorem controls moving active shells whose frequency can drift upward as the terminal time is approached.

The scalar shell model

```math
E_j' + c\nu D_j \le F_j
```

shows the exposed obstruction. A nonlinear source `F_j` may balance damping on short active terminal windows. Finite raw energy and finite raw dissipation still permit source-balanced pulses at shrinking scales, while the Carleson target needs a scale-normalized square estimate.

## Reduction

The unconditional upper-control theorem is equivalent, for the current route, to one of these source-side theorems:

```math
OriginalSmoothData\Longrightarrow\text{active-shell source normalization},
```

```math
OriginalSmoothData\Longrightarrow\text{heat-scale square-source estimate},
```

```math
OriginalSmoothData\Longrightarrow\text{direct active-square Carleson control},
```

or

```math
OriginalSmoothData\Longrightarrow\text{nonlinear shell-flux/source control ruling out source-balanced active pulses}.
```

The current surfaces do not install any of these source-side theorems. Weighted dyadic exchange cancellation alone is insufficient after one-sided shell weights are inserted; the remaining weighted defect lacks an installed strain-sign cancellation theorem.

## Verdict

Upper control is closed conditionally:

```math
\boxed{\text{active-shell amplitude gain}\Rightarrow\nu_{SCF}\text{ scale-normalized Carleson}.}
```

The next exact unsolved theorem is:

```math
\boxed{OriginalSmoothData\Rightarrow\text{nonlinear shell-flux/source control ruling out source-balanced active pulses}.}
```

Claimed status: conditional.