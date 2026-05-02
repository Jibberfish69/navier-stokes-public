# MPP SourcePulseExclusion.A Active Target Note

## Status

Target consolidation after the `SignedLocalSource.A` subtarget pass.

The route has now closed the following aliases as non-independent:

```math
PositiveResidualReserve.A,
\qquad
ActiveSquareResidualTail.A,
\qquad
SquareSource.A,
\qquad
ActiveShellAmplitudeGain.A,
\qquad
LocalSource.NoPulse.A,
\qquad
SignedLocalSource.A,
\qquad
SOURCE.NO\text{-}PULSE.A.
```

They all express the same missing structural PDE coupling: terminal
source-balanced active pulses must be excluded from original smooth data.

## Definition

Define `SourcePulseExclusion.A` as the same theorem called
`ActiveShellSourceNormalize.A` in the terminal-reserve collapse packet:

```math
\boxed{
SourcePulseExclusion.A
\equiv_{\mathrm{route}}
ActiveShellSourceNormalize.A
}
```

to mean that for every terminal active-window family selected by the
`Jump_avg` branch, the same-fluid nonlinear source packet cannot both:

1. keep the active coefficient above threshold on heat-scale windows;
2. carry order-one mixed bilinear dissipation / active-square mass on those
   same windows;
3. evade the signed lifted-remainder reserve and the active-window Carleson
   bound.

Equivalently:

```math
OriginalSmoothData
\Longrightarrow
\left[
\int_{Bad_N(\eta)}\mathfrak S_{N,loc}^{active}(t)\,dt=o_N(1)
\right],
```

or any of the route-equivalent formulations:

```math
MSC.BadAC,
\qquad
SignedLocalSource.A,
\qquad
PositiveResidualReserve.A,
\qquad
ActiveSquareResidualTail.A,
\qquad
LocalActiveCarleson.A.
```

## Installed Negative Reductions

The compactness route cannot start from the global product alone:

```math
D_jD_\ell
```

is an all-pairs double-space carrier, not a near-diagonal same-fluid carrier.
This is recorded in `mpp-msc-diagtether-direct-attempt-note.md` and
`mpp-diagdom-direct-attempt-note.md`.

The signed route cannot use bare exchange antisymmetry alone, because the
post-weight lifted remainder has a positive part aligned with expanding strain.
This is recorded in `signed-weighted-lifted-remainder-theorem-attempt.md`,
`mpp-localstrain-depletion-audit-note.md`, and
`mpp-positive-residual-reserve-direct-attempt-note.md`.

The positive route cannot use first-moment dissipation or cumulative
tail-square reserve alone, because the target is shellwise square-dissipation
on shrinking active windows.  This is recorded in
`mpp-activesquare-residualtail-final-collapse-note.md` and the active-square /
square-source obstruction notes.

The direct original-data route splits into
`SignedRemainderReserve.A`, `ActiveSquareCarleson.A`, `SquareSource.A`, and
`ActiveShellAmplitudeGain.A`, but
`mpp-signedlocalsource-originalsmoothdata-direct-attempt-note.md` shows that
original smoothness, finite energy, pressure Poisson structure, preterminal
regularity, and the downstream `FFSRC.A=>FCI.5f` ledger do not install any of
those inputs.

## The Exact Remaining Theorem

The active problem is therefore:

```math
\boxed{
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
}
```

This is equivalent, at the current route resolution, to:

```math
\boxed{
OriginalSmoothData\Longrightarrow SignedLocalSource.A.
}
```

and it is the exact branch-native theorem needed for:

```math
Jump_{avg}\Rightarrow\bot
\Longrightarrow
PCTP.hard/TTU.A\ \text{terminal-tail discharge}.
```

## Boundary

This note does not claim `SourcePulseExclusion.A` is proved.  It closes the
subtarget churn by identifying the single theorem that must be proved next.  A
successful proof must introduce one genuinely new mechanism:

```math
\text{positive-part strain depletion}
\quad\text{or}\quad
\text{active-window Carleson/square-source control}
\quad\text{or}\quad
\text{monotone source-dominance forbidding source-balanced pulses}.
```
