# MPP SignedLocalSource.A Terminal Reserve Collapse Note

## Status

Bounded continuation after `mpp-signedlocalsource-final-collapse-note.md`.

The active frontier is:

```math
\boxed{
OriginalSmoothData\Longrightarrow SignedLocalSource.A.
}
```

The advertised proof shapes were:

```math
\text{signed weighted lifted-remainder cancellation with positive/residual reserve}
```

and

```math
\text{active-square residual-tail / square-source / active-window Carleson control}.
```

The follow-up notes
`mpp-positive-residual-reserve-direct-attempt-note.md` and
`mpp-activesquare-residualtail-final-collapse-note.md` execute those shapes as
separate targets.  They are not independent exits from the source no-pulse atom.

## Positive/Residual Reserve

The signed route begins with the true weighted lifted remainder

```math
G_N^{lift,\sigma}
=
\sum W_{j,k,\ell}^{\sigma}\mathcal R_{j,k,\ell}^{lift}.
```

A direct signed theorem would control the signed integral.  The branch needs
more: positive production must be depleted on the selected bad windows.  The
principal commutatorized strain form can align with expanding strain
directions, so signed cancellation alone does not provide a positive/residual
reserve.

Thus this route reduces to positive-part strain depletion or an active-square
replacement.

## Active-Square Residual Tail

The positive replacement asks for shellwise square-dissipation control:

```math
\int_I2^{-j}D_j(t)^2\,dt
\le
\varepsilon\nu2^{2j}|I|+C2^{-2\delta j}.
```

First-moment dissipation and the cumulative tail-square reserve do not imply
this estimate on shrinking active windows.  The square-source route supplies it
only under active-shell amplitude/source normalization; the universal
square-source theorem fails by fixed-shell cubic amplitude scaling.

## Collapse

The four advertised direct targets

```math
SignedRemainderReserve.A,
\qquad
ActiveSquareCarleson.A,
\qquad
SquareSource.A,
\qquad
ActiveShellAmplitudeGain.A
```

reduce to one structural theorem:

```math
\boxed{
ActiveShellSourceNormalize.A:
\text{terminal active shell windows cannot be source-balanced at
scale-critical strength from }OriginalSmoothData.
}
```

In route language,

```math
ActiveShellSourceNormalize.A
\Longleftrightarrow_{\mathrm{route}}
SourcePulseExclusion.A
\Longleftrightarrow_{\mathrm{route}}
SignedLocalSource.A
\Longleftrightarrow_{\mathrm{route}}
SOURCE.NO\text{-}PULSE.A.
```

## Verdict

There is no remaining deterministic subtarget behind `SignedLocalSource.A` that
is currently softer than the source-normalization theorem above.  The active
terminal theorem is:

```math
\boxed{
OriginalSmoothData\Longrightarrow ActiveShellSourceNormalize.A.
}
```

This is the exact source no-pulse primitive still needed to eliminate
`Jump_avg` without assuming `Field_avg`.
