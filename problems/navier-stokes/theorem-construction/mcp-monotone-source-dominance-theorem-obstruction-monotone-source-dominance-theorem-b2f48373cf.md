# Monotone source-dominance theorem — failed discharge

## Target
Prove a monotone source-dominance theorem for the nonlinear shell flux in

`E_j' + c nu D_j <= F_j`.

A sufficient exact form is

`F_j <= a_j(t) E_j + b_j(t)`,

with `a_j` integrable at active scale and `b_j` controlled by a Carleson or square-source reserve. Gronwall then turns the inequality into direct active-square Carleson control and rules out source-balanced active pulses at that normalization.

## Attempt
The shell identity alone cannot supply monotone dominance: a scalar source can create any short active pulse by choosing

`F_j = E_j' + c nu D_j`.

Therefore the proof must use Navier-Stokes structure in `F_j`.

The available structure is dyadic exchange cancellation. It cancels unweighted exchange pairs, but the active-square route uses one-sided weights and lifted/cutoff reductions. After weights are inserted, the surviving defect has no installed sign. The principal contribution is a strain interaction that can align with expanding directions and become positive on active packets.

## Verdict
The monotone source-dominance theorem is not discharged. The route requires one of:

1. strain-sign cancellation for the true weighted lifted remainder;
2. active-square residual-tail control strong enough for the positive fallback;
3. a new structural inequality bounding `F_j` by integrable active-scale coefficients plus Carleson reserve.

## Consequence
Direct active-square Carleson remains open at nonlinear shell-flux/source control.
