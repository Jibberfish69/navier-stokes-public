# Direct active-square upper-tail Carleson — failed discharge

## Target
Prove the active-square upper-tail Carleson estimate directly:

`int_I sum_{j >= max(N,k+C1)} 2^{-j}D_j(t)^2 dt <= eps nu 2^{2k}|I| + C 2^{-2 delta max(N,k)}`.

## Direct route attempt
The direct proof target is control of the shellwise square dissipation density
`2^{-j}D_j^2` on active intervals without passing through square-source or
amplitude-gain hypotheses.

The available energy layer controls `int D_j` and cumulative tail quantities. The installed full tail-square reserve controls `2^{-2N}E_N^2` by `D_N`. These estimates are first-moment or cumulative-tail controls.

The target is shellwise square control. It forbids short high-amplitude active-shell pulses and terminal concentration of dissipation density.

## Obstruction
The shell identity

`E_j' + c nu D_j <= F_j`

allows short active pulses whenever the nonlinear flux `F_j` supplies matching input. Direct active-square control therefore requires a theorem controlling nonlinear shell flux or active amplitude. Existing source surfaces reduce this to one of:

1. square-source estimate with amplitude normalization;
2. active-shell amplitude gain;
3. signed weighted commutator-defect plus residual-tail theorem;
4. nonlinear source domination forbidding source-balanced pulses.

None of these source mechanisms is installed from `OriginalSmoothData`.

## Verdict
Direct active-square upper-tail Carleson remains open. It is the same active-square frontier reached by the single-shell, square-source, and amplitude-gain routes.

## Current reduced frontier
The remaining source theorem is:

`OriginalSmoothData -> nonlinear shell-flux/source control strong enough to rule out source-balanced active pulses`.

Equivalently, prove one of:

- active-shell amplitude/source normalization;
- signed weighted lifted-remainder cancellation plus residual-tail control;
- direct active-square Carleson by a new monotone/source-dominance mechanism.
