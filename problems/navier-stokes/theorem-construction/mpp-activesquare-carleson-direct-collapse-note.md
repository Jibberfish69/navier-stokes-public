# MPP ActiveSquareCarleson.A Direct Collapse Note

## Status

Bounded direct attempt on the split target

```math
\boxed{
OriginalSmoothData\Longrightarrow ActiveSquareCarleson.A.
}
```

This target is not installed from the current original-data, energy, pressure,
or source-ledger surfaces.  It closes back to the source-pulse primitive.

## Target

The needed active-square Carleson estimate has the form

```math
\int_I\sum_{j\ge \max(N,k+C_1)}2^{-j}D_j(t)^2\,dt
\le
\varepsilon\nu 2^{2k}|I|+C2^{-2\delta\max(N,k)}
```

on the terminal active windows selected by the `Jump_avg` branch.

## Direct Energy Test

Original smooth data gives finite energy and first-moment dissipation:

```math
\int_0^{T_\ast}\sum_j D_j(t)\,dt<\infty.
```

The target is a square-strength estimate.  First-moment control does not
exclude short high-amplitude active pulses whose support shrinks while

```math
\int_I D_j(t)\,dt
```

stays finite and

```math
\int_I 2^{-j}D_j(t)^2\,dt
```

has order-one active-window mass.

## Shell-Law Test

For an active shell,

```math
E_j'(t)+c\nu D_j(t)\le F_j(t).
```

Thus a direct Carleson proof must forbid the nonlinear flux `F_j` from
source-balancing the active amplitude on heat-scale windows.  Without that
source theorem, the scalar inequality admits pulses with damping matched by
input.

The existing conditional note
`active-square-carleson-from-shell-amplitude-gain.md` proves only

```math
ActiveShellAmplitudeGain.A\Longrightarrow ActiveSquareCarleson.A.
```

It does not install the amplitude gain from original smooth data.

## Verdict

The direct active-square route is not independent.  It is equivalent, at the
current route resolution, to proving one of:

```math
ActiveShellAmplitudeGain.A,
\qquad
SquareSource.A,
\qquad
SignedLocalSource.A,
\qquad
SourcePulseExclusion.A.
```

Therefore this branch closes as

```math
\boxed{
OriginalSmoothData\Longrightarrow ActiveSquareCarleson.A
\quad\text{reduces to}\quad
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
}
```

