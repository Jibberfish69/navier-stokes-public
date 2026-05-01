# Active-square residual-tail theorem — failed discharge

## Target
Prove active-square residual-tail control strong enough to close the positive-carrier fallback and the nonlinear shell-flux route.

The required strength is shellwise square-dissipation control on active upper tails:

`int_I sum_{j >= max(N,k+C1)} 2^{-j}D_j(t)^2 dt <= eps nu 2^{2k}|I| + C2^{-2 delta max(N,k)}`.

## Available reserve
The existing full tail-square reserve controls cumulative tail energy:

`2^{-2N}E_N(t)^2 <= eps nu D_N(t)`.

This is useful for threshold-collar products and cumulative tail estimates. It is not the same as shellwise active-square control.

## Strength mismatch
The active-square residual asks for square dissipation density on each active shell. First-moment dissipation and cumulative tail-square reserve permit short high-amplitude active-shell pulses. The residual-tail theorem must exclude those pulses, which requires source normalization, monotone source domination, active-shell amplitude gain, or direct active-square control.

## Verdict
The active-square residual-tail theorem is not discharged by current surfaces. It remains equivalent to the same active-square source frontier:

`OriginalSmoothData -> nonlinear shell-flux/source control ruling out source-balanced active pulses`.

## Consequence
All current frontier branches reduce to one source-control problem:

1. monotone source-dominance for `F_j`;
2. strain-sign cancellation for the weighted lifted remainder;
3. active-square residual-tail control strong enough to replace the positive-carrier fallback.

None is installed from `OriginalSmoothData` in the current repo state.