# Heat-Scale Square-Source Loop Audit

Status: failed primitive discharge; loop continues.

## Target

```math
OriginalSmoothData\Longrightarrow\text{heat-scale square-source control}.
```

A sufficient shell form for the active-square upper-tail Carleson theorem is

```math
\int_I2^{-j}D_j(t)^2dt
\le
\varepsilon\nu2^{2j}|I|+C2^{-2\delta j}.
```

Summing this estimate over active terminal shells gives the scale-normalized
upper control needed for the final `Jump_avg` charge.

## Scalar obstruction

The active shell inequality has the form

```math
E_j'(t)+c\nu2^{2j}E_j(t)\le F_j(t),
\qquad
D_j(t)=2^{2j}E_j(t).
```

The active-square density is

```math
2^{-j}D_j(t)^2=2^{3j}E_j(t)^2.
```

`OriginalSmoothData` supplies smoothness on compact preterminal intervals plus finite raw energy and finite dissipation. These facts control fixed shells before the endpoint. The theorem target controls moving active shells whose frequency can drift upward as the terminal time is approached.

A nonlinear source may balance damping on short active windows. Such source-balanced pulses can keep raw energy and raw dissipation finite while defeating the scale-normalized square estimate.

## Decision

The theorem

```math
OriginalSmoothData\Longrightarrow\text{heat-scale square-source control}
```

is not installed on current surfaces.

The installed conditional bridge remains:

```math
\text{active-shell amplitude gain}\Longrightarrow \nu_{SCF}\text{ scale-normalized Carleson control}.
```

Equivalent live atoms are direct active-square Carleson control, terminal amplitude decay, nonlinear shell-flux/source control ruling out source-balanced active pulses, or a monotone-dominance law whose dissipation controls normalized `nu_SCF` density.
