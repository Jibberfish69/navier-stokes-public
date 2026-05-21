# ActiveShellAmplitudeGain.ZeroThicknessPulseAttempt

## Status

Failed direct discharge.  This note tests active-shell amplitude gain against the zero-thickness terminal source layer.

## Target

The desired estimate is

```math
ActiveShellAmplitudeGain.A:
\quad
2^{-j}D_j(t)^2\le \varepsilon\nu D_j(t)+r_j(t)
```

with summable reserve `r_j` on the selected terminal family.

## Test

The shell balance is

```math
E_j' + c\nu D_j \le F_j.
```

Over a terminal layer with positive heat-time thickness, persistent stretching would force amplitude gain or drain expenditure.

The hard case is a source-balanced pulse on a shrinking terminal layer.  The nonlinear source `F_j` may balance viscous damping over a time interval whose heat-time length tends to zero.  Then the source can leave terminal mass while the shellwise square reserve remains unavailable.

`B_ASAC` supplies equality/tangent organization.  It does not normalize the trilinear source amplitude.  Same-fluid packet accounting supplies lineage and legal routing, but no shellwise square reserve.

## Result

The route reduces to one of two equivalent missing inputs:

```math
\boxed{ActiveShellSourceNormalize.A}
```

or

```math
\boxed{SquareSourceEstimate.A.}
```

## Verdict

Active-shell amplitude gain remains open.  The zero-thickness source-balanced terminal pulse is the blocking model.