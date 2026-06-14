# Active-window amplitude gain / heat-scale square-source control — loop continuation

## Target

Install scale-normalized upper control for the final `Jump_avg` charge

```math
\nu_{SCF}=\mu_D+\sum_\chi \mu_{P,\chi}.
```

The desired estimate is

```math
\sum_{Q\in\mathcal F} SCF^{\nu}_{norm}(Q)\le C
```

for every separated or bounded-overlap terminal window family.

## Installed theorem bridge

The repo already has the valid conditional theorem:

```math
\text{active-shell amplitude gain}
\Longrightarrow
\text{scale-normalized }\nu_{SCF}\text{ Carleson control.}
```

A sufficient shell form is

```math
2^{-j}D_j(t)^2\le \varepsilon\nu D_j(t)+r_j(t),
```

where the reserves `r_j` are summable over active terminal tails. Shell-to-window comparison, heat-scale dissipation tail control, bounded atlas overlap, and terminal packing then imply the required Carleson estimate.

## Direct attempt from OriginalSmoothData

`OriginalSmoothData` supplies smoothness on compact preterminal intervals, finite raw energy, and finite dissipation. These facts control fixed shells before the endpoint. The target controls moving active shells whose frequencies can drift upward toward the endpoint.

The scalar shell inequality is

```math
E_j'(t)+c\nu2^{2j}E_j(t)\le F_j(t),
\qquad
D_j(t)=2^{2j}E_j(t).
```

The active-square density is

```math
2^{-j}D_j(t)^2=2^{3j}E_j(t)^2.
```

Finite raw energy and finite raw dissipation allow source-balanced active pulses at shrinking scales. Source-mass control balances damping at the same scale; it does not force the amplitude decay

```math
E_j^2\le C_E\nu2^{-j}
```

on active terminal windows.

## Verdict

The upper-control target is closed conditionally:

```math
\boxed{\text{active-shell amplitude gain}\Rightarrow\nu_{SCF}\text{ scale-normalized Carleson}.}
```

The remaining source-side atom is

```math
\boxed{OriginalSmoothData\Rightarrow
\text{nonlinear shell-flux/source control ruling out source-balanced active pulses}.}
```

Equivalent closure atoms are a heat-scale square-source theorem, direct active-square Carleson control, terminal amplitude decay tied to viscosity and same-fluid pack geometry, or a monotone-dominance law whose dissipation controls normalized `nu_SCF` density.

Claimed status: conditional. This persists the installed bridge and the exact unsolved kernel for the next loop step.
