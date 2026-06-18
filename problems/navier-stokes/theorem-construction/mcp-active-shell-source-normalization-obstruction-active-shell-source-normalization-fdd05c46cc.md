# Active-shell source normalization — failed discharge

## Target
Prove active-shell source normalization strong enough to prevent nonlinear shell flux from maintaining source-balanced active pulses.

A sufficient local form is

`|F_j(t)|^2 <= c eps nu^3 2^{3j} + C nu^2 2^j 2^{-2 delta j}|I|^{-1}`

on active heat-scale intervals.

## Attempt
The shell flux `F_j` is a trilinear expression in the Littlewood-Paley components
of `u`. The fixed-shell amplitude obstruction is an exact test family: take a
smooth finite-mode divergence-free field `phi` with `F_j(phi) != 0` and set
`u_A=A phi`. Then

```text
F_j(u_A)=A^3 F_j(phi),
|F_j(u_A)|^2=A^6 |F_j(phi)|^2.
```

Therefore a universal normalization derived only from smooth divergence-free
original data cannot give the scale-normalized smallness required on active
heat-scale intervals.

Finite energy and preterminal smoothness bound the amplitude only by data-dependent quantities. They do not produce the scale-normalized smallness required by the active interval theorem. The active interval itself may occur near a terminal time and may drift to higher shells.

## Result
Active-shell source normalization is not discharged from current inputs. It is equivalent to a new nonlinear source-control theorem, such as:

1. signed weighted lifted-remainder cancellation plus residual-tail control;
2. monotone/source-dominance theorem for shell flux;
3. direct active-square Carleson theorem.

## Consequence
The square-source and amplitude-gain routes remain conditional on this source normalization or an equivalent source-control replacement.
