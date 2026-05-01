# Active-shell amplitude gain — equivalence to source normalization

## Target
Prove active-shell amplitude gain sufficient for active-square upper-tail Carleson.

A sufficient local form is

`2^{-j}D_j(t)^2 <= eps nu D_j(t) + r_j(t)`

with summable reserve `r_j` on active terminal intervals.

## Reduction
Since `D_j = 2^{2j}E_j`, this inequality is equivalent to an active-shell amplitude restriction on `E_j`, or equivalently to a source normalization strong enough to prevent nonlinear shell flux from maintaining high active amplitude.

The previously written square-source note proves:

`active-shell source normalization -> square-source estimate -> single-shell active-square`.

The active-shell amplitude gain is thus a source-normalization theorem in another form.

## Attempt from current inputs
Original smooth data gives finite energy, finite dissipation, and smoothness on every compact preterminal interval. It does not give uniform decay on moving active shells approaching `T_*`. A terminal active shell can drift to higher frequencies while preserving finite raw energy/dissipation.

The shell equation

`E_j' + c nu D_j <= F_j`

allows the nonlinear flux `F_j` to balance damping at a chosen active amplitude unless an independent source theorem controls `F_j`.

## Verdict
The active-shell amplitude gain remains open from current surfaces. It is equivalent to proving one of:

1. active-shell source normalization;
2. square-source estimate with a source-normalization theorem;
3. direct active-square Carleson;
4. nonlinear shell-flux theorem ruling out source-balanced active pulses.

## Consequence
The active-square upper-tail Carleson route remains conditional on this gain or one of its equivalent source-control replacements.