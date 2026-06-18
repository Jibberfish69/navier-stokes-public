# MPP SourcePulse Vorticity-Direction Coherence Audit Note

## Status

Bounded mechanism audit for the live source-pulse theorem:

```math
\boxed{
OriginalSmoothData \Longrightarrow SourcePulseExclusion.A.
}
```

This note tests whether Constantin-Fefferman style vorticity-direction
coherence already excludes terminal source-balanced active pulses.

## Candidate Mechanism

The relevant stretching term is

```math
\omega\cdot S\omega.
```

If the vorticity direction is coherent on an active packet, singular-integral
representations of strain can yield depletion of vortex stretching.  The
theorem-facing form would be:

```math
\boxed{
ActiveVorticityCoherence.A:
\quad
\text{terminal bad active windows carry enough vorticity-direction coherence
to deplete their positive active source.}
}
```

If true, this could imply the positive-part source bound needed by
`SourcePulseExclusion.A`.

## Audit

The current route does not derive terminal vorticity-direction coherence from
`OriginalSmoothData`.  Smoothness on compact preterminal intervals gives
classical coherence before the endpoint, but not a uniform terminal coherence
modulus on the shrinking active windows selected by `Jump_avg`.

Even with direction coherence, the bridge must match the active source packet
actually used by the averaged route.  Direction coherence controls the
vorticity-stretching component seen by `\omega/|\omega|`; it does not by
itself control:

1. transverse strain eigenvalues in regions where the active source is not
   captured by the vorticity direction;
2. low-vorticity/high-strain portions of the same packet;
3. shellwise mixed bilinear dissipation on the exact heat-scale windows where
   `\gamma_j` is large;
4. the positive part of the lifted signed remainder after weights and cutoffs.

The already-installed packet
`mcp-pack-ttu-vorticity-direction-depletion-test.md` records the same
boundary: direction coherence can be a depletion hypothesis, but it is not yet
a theorem supplying the full pack/source control needed by the terminal route.

## Conclusion

Vorticity-direction coherence remains a candidate analytic mechanism, but the
current repo has not proved the required terminal coherence or the bridge from
that coherence to the active source packet.

At current route resolution,

```math
\boxed{
ActiveVorticityCoherence.A
\ \Longleftrightarrow_{\mathrm{route}}\
SourcePulseExclusion.A.
}
```

No promotion is licensed from this mechanism alone.
