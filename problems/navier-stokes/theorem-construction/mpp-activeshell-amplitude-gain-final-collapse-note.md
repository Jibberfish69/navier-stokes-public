# MPP ActiveShellAmplitudeGain.A Final Collapse Note

## Status

Bounded direct attempt on the split target

```math
\boxed{
OriginalSmoothData\Longrightarrow ActiveShellAmplitudeGain.A.
}
```

The target is not installed from the current energy, smoothness, pressure, or
source-supplier surfaces.  It is another spelling of active-shell source
normalization.

## Target

A sufficient active-shell amplitude gain is a reserve estimate of the form

```math
2^{-j}D_j(t)^2
\le
\varepsilon\nu D_j(t)+r_j(t),
```

with

```math
\int_I\sum_{j\in active}r_j(t)\,dt
\le
C2^{-2\delta N}.
```

Equivalently, using `D_j=2^{2j}E_j`, it is an active-window amplitude
normalization strong enough to make the square dissipation absorbable by the
linear viscous term plus a summable reserve.

## Original-Data Test

Original smooth data gives smoothness on every compact preterminal interval.
It does not give a uniform bound on moving active shells along

```math
j\to\infty,
\qquad
t\uparrow T_\ast.
```

Finite energy gives tail smallness in a global first-moment sense, not the
pointwise heat-scale amplitude gain required on selected terminal active
windows.

## Source-Balance Obstruction

The active shell law is

```math
E_j'(t)+c\nu D_j(t)\le F_j(t).
```

Viscous damping gives the desired amplitude gain only if the nonlinear source
cannot keep the shell active at the heat scale.  Therefore the proof must
control the source term, prove a signed cancellation theorem, or supply a
monotone drain that forbids source-balanced pulses.

Those alternatives are exactly the current route-equivalent formulations:

```math
SquareSource.A,
\qquad
ActiveSquareCarleson.A,
\qquad
SignedLocalSource.A,
\qquad
SourcePulseExclusion.A.
```

## Verdict

The amplitude-gain branch closes as

```math
\boxed{
OriginalSmoothData\Longrightarrow ActiveShellAmplitudeGain.A
\quad\text{reduces to}\quad
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
}
```

No downstream source ledger such as `Hyp(FFSRC.A)=>FCI.5f` can be imported here
without circularity, because that ledger controls an accepted frozen-family
source packet after the receiver route has been admitted; it does not prove
bad-window source normalization on the `Jump_avg` branch.

