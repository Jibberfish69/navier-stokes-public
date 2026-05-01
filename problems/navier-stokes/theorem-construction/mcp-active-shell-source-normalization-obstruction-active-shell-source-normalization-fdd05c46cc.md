# Active-shell source normalization — failed discharge

## Target
Prove active-shell source normalization strong enough to prevent nonlinear shell flux from maintaining source-balanced active pulses.

A sufficient local form is

`|F_j(t)|^2 <= c eps nu^3 2^{3j} + C nu^2 2^j 2^{-2 delta j}|I|^{-1}`

on active heat-scale intervals.

## Attempt
The shell flux `F_j` is a trilinear expression in the Littlewood-Paley components of `u`. The fixed-shell amplitude test applies to any universal normalization derived only from smooth divergence-free original data: scaling a smooth finite-mode divergence-free profile by amplitude `A` makes `F_j` scale like `A^3`, so `|F_j|^2` scales like `A^6` on short intervals.

Finite energy and preterminal smoothness bound the amplitude only by data-dependent quantities. They do not produce the scale-normalized smallness required by the active interval theorem. The active interval itself may occur near a terminal time and may drift to higher shells.

## Result
Active-shell source normalization is not discharged from current inputs. It is equivalent to a new nonlinear source-control theorem, such as:

1. signed weighted lifted-remainder cancellation plus residual-tail control;
2. monotone/source-dominance theorem for shell flux;
3. direct active-square Carleson theorem.

## Consequence
The square-source and amplitude-gain routes remain conditional on this source normalization or an equivalent source-control replacement.