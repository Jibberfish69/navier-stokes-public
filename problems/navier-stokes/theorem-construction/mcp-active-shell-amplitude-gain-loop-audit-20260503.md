# Active-Shell Amplitude Gain Loop Audit

Status: failed primitive discharge; loop continues.

## Target

```math
OriginalSmoothData\Longrightarrow\text{active-shell amplitude gain}.
```

A sufficient local form is

```math
2^{-j}D_j(t)^2\le \varepsilon\nu D_j(t)+r_j(t)
```

on active terminal shells, with summable reserve `r_j`.

## Installed bridge

The conditional bridge is valid:

```math
\text{active-shell amplitude gain}\Longrightarrow \nu_{SCF}\text{ scale-normalized Carleson control}.
```

## Attempt from current inputs

`OriginalSmoothData` gives finite energy, finite dissipation, and smoothness on every compact preterminal interval. These facts control fixed shells before the endpoint.

The desired gain controls moving active shells whose frequencies can drift upward as the terminal time is approached. For the scalar shell model

```math
E_j'+c\nu D_j\le F_j,
\qquad D_j=2^{2j}E_j,
```

a nonlinear source `F_j` may balance damping at a chosen active amplitude. Raw energy and raw dissipation do not give the scale decay required by the gain.

## Decision

The theorem

```math
OriginalSmoothData\Longrightarrow\text{active-shell amplitude gain}
```

is not installed on current surfaces.

At route resolution this target is equivalent to one of the following source-control replacements:

```math
\text{active-shell source normalization},
\quad
\text{square-source estimate},
\quad
\text{direct active-square Carleson},
\quad
\text{nonlinear shell-flux theorem ruling out source-balanced active pulses}.
```

The loop continues to parent-inverse / rigid-class propagation.