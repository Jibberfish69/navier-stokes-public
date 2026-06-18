# Direct active-square Carleson via monotone/source-dominance — failed discharge

## Target
Prove direct active-square Carleson by a monotone or source-dominance theorem.

The desired output is

`int_I sum_{j >= max(N,k+C1)} 2^{-j}D_j(t)^2 dt <= eps nu 2^{2k}|I| + C2^{-2 delta max(N,k)}`.

## Monotone/source-dominance route
A sufficient theorem dominates the nonlinear shell source in

`E_j' + c nu D_j <= F_j`

by a term that cannot create short active pulses, for example

`F_j <= a_j(t) E_j + b_j(t)`,

with `a_j` integrable at the active scale and `b_j` having Carleson/square-source control.

Once supplied, this dominance theorem turns the shell equation into a no-pulse
law and then implies active-square Carleson.

## Obstruction
The monotone flux law surface shows the scalar obstruction: for any short interval, a source can balance a chosen active pulse. Therefore the shell identity and damping do not imply monotonicity. The proof must use nonlinear Navier-Stokes flux structure.

The available dyadic exchange cancellation is unweighted. Once one-sided shell weights are inserted, the remaining weighted defect has variable sign and lacks a strain-sign cancellation theorem. Taking absolute values produces the positive active-square burden again.

## Verdict
Direct active-square Carleson via monotone/source-dominance is not discharged. It requires a new source theorem of one of the following forms:

1. monotone source-dominance for `F_j` at active scales;
2. strain-sign cancellation for the weighted lifted remainder;
3. active-square residual-tail control strong enough to absorb the positive-carrier fallback.

## Final reduced frontier
All current routes reduce to:

`OriginalSmoothData -> nonlinear shell-flux/source control ruling out source-balanced active pulses`.

More sharply, the next exact theorem is a monotone/source-dominance or strain-sign cancellation theorem for the nonlinear shell flux.
