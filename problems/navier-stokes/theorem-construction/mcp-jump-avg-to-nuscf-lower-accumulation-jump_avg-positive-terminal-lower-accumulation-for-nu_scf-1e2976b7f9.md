# Jump_avg to nu_SCF lower accumulation — failed theorem attempt

## Target

Prove the branch-native lower-production theorem:

```math
Jump_{avg}\Longrightarrow
\exists\{Q_k\}\text{ terminal separated or bounded-overlap},\quad
\nu_{SCF}(Q_k)\ge d_0>0
\text{ for infinitely many }k.
```

Here

```math
\nu_{SCF}=\mu_D+\sum_\chi \mu_{P,\chi}
```

is the final pressure/dissipation charge selected for the `Jump_avg` no-escape route.

## Available progress

The canonical extraction theorem gives:

```math
Jump_{avg}\Longrightarrow
\text{epsilon-threshold }SCF_{base}\text{ concentration sequence.}
```

The final-charge upper theorem gives, for separated or bounded-overlap terminal windows inside the finite transported atlas,

```math
\sum_k \nu_{SCF}(Q_k)
\le C_{atlas}\nu_{SCF}(total)<\infty.
```

The conditional no-escape bridge is valid once the same charge has both lower density and scale-normalized Carleson upper control.

## Attempt

Start from `Jump_avg`. For each terminal subtail choose a same-fluid window with

```math
SCF_{base}(Q_{\rho_n}^{\Phi}(a_n,t_n))>\varepsilon_m,
\qquad \rho_n\downarrow0,
\qquad t_n\uparrow T_*.
```

To obtain the target lower theorem, this SCF threshold failure must force positive mass of the analytic charge `nu_SCF` on a terminal window. This requires a component-selection theorem separating the SCF threshold into geometric pack contribution and analytic pressure/dissipation contribution, with the geometric part controlled by pack stabilization.

## Obstruction

The current surfaces supply the threshold SCF sequence. They also supply finite raw `nu_SCF` mass. They do not supply the missing component-selection implication

```math
SCF_{base}\text{ threshold defect}
\Longrightarrow
\nu_{SCF}\text{ positive lower mass}.
```

Even with a single positive terminal charge, the contradiction needs recurrence on a separated or bounded-overlap terminal schedule. The current surfaces do not supply

```math
\text{positive terminal }\nu_{SCF}\text{ charge}
\Longrightarrow
\text{infinitely many separated positive-charge windows.}
```

A further normalization mismatch remains: raw finite `nu_SCF` mass controls `\sum_k \nu_{SCF}(Q_k)`, while the lower route naturally yields scale-normalized density. A scale-normalized Carleson upper theorem is still required.

## Verdict

The lower-production theorem is not installed. The valid result is a reduction:

```math
Jump_{avg}\Longrightarrow
\text{epsilon-threshold }SCF_{base}\text{ concentration sequence},
```

plus these open requirements:

```math
SCF_{base}\text{ concentration}\Longrightarrow
\nu_{SCF}\text{ component mass},
```

```math
\nu_{SCF}\text{ component mass}\Longrightarrow
\text{separated recurring lower schedule},
```

```math
\text{scale-normalized }\nu_{SCF}\text{ Carleson upper bound}.
```

Claimed status: failed.