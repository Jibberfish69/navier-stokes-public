# NU_SCF.Carleson upper-control split

## Target

Prove the scale-normalized upper estimate for the final `Jump_avg` charge:

```math
\sum_{Q\in\mathcal F} SCF_{norm}^{\nu}(Q)
\le C
```

for every separated or bounded-overlap terminal window family `F`, where the charge is

```math
\nu_{SCF}=\mu_D+\sum_\chi\mu_{P,\chi}.
```

## Installed bridge

The canonical surfaces already prove the conditional implication:

```math
\text{active-shell amplitude gain}
\Longrightarrow
\text{scale-normalized }\nu_{SCF}\text{ Carleson control.}
```

The proof uses shell-to-window comparison, bounded terminal atlas overlap, heat-scale dissipation tail control, and summable reserves. On active shells the gain has the form

```math
2^{-j}D_j(t)^2\le \varepsilon\nu D_j(t)+r_j(t),
```

with `r_j` summable. Summing this inequality over active dyadic tails and terminal windows gives the required Carleson estimate.

## Remaining analytic kernel

The unresolved theorem is

```math
OriginalSmoothData\Longrightarrow\text{active-shell amplitude gain},
```

or equivalently a direct heat-scale square-source estimate / direct active-square Carleson theorem. Current surfaces supply finite raw energy, finite dissipation, and smoothness on compact pre-terminal intervals. Those controls permit terminal transfer of activity into higher shells. They do not supply the active-shell amplitude decay required by the gain.

## Verdict

Upper control is closed as a conditional bridge:

```math
\text{active-shell amplitude gain}\Rightarrow \nu_{SCF}\text{ Carleson}.
```

The unconditional upper-control target is reduced to the source theorem:

```math
OriginalSmoothData\Rightarrow\text{active-shell amplitude gain}.
```

Claimed status: conditional.
