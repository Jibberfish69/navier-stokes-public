# MPP SourcePulse Q-Dissipation Dominance Source-Recovery Audit Note

## Status

Source-recovery audit for the live source-pulse theorem:

```math
\boxed{
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
}
```

This note tests whether the original corpus `Q(t)` / scale-barrier language
already supplies the missing terminal nonlinear source-control estimate.

## Recovered Source Claim

The source-forensics note
`source-forensics/sourcepulse-q-dissipation-source-recovery-note.md` records the
recovered corpus claim.  The proposed monotone functional is

```math
Q(t)=\|u(t)\|_{L^2}^2+\|\nabla u(t)\|_{L^2}^2.
```

The corpus first writes a dissipative formula that omits the nonlinear
enstrophy-production term, and later writes the more honest inequality

```math
\frac{dQ}{dt}
\le
-2\nu\|\nabla u\|_{L^2}^2
+C\|\nabla u\|_{L^2}^3
+2\int f\cdot u,
```

then invokes Gronwall and dissipation dominance.

## Audit

On the unforced periodic branch, the live issue is not external forcing.  It is
the internal nonlinear source in the enstrophy/shell balance:

```math
E_j'(t)+c\nu D_j(t)\le F_j(t),
```

or, in vorticity language, the stretching source

```math
\int \omega\cdot S\omega.
```

The statement that dissipation dominates this term on every terminal active
heat-scale window is exactly the missing no-pulse theorem.  In the source-pulse
notation, it would have to rule out a family with

```math
\sup_{t\in I_n}\gamma_{j_n}(t)\ge\eta
```

and

```math
\liminf_{n\to\infty}
\int_{I_n}\mathfrak S_{j_n,loc}^{active}(t)\,dt>0.
```

The scale-barrier language has the same status.  A uniform spectral decay
estimate strong enough to prevent terminal active pulses removes active mass
once proved, but deriving that decay from the energy/enstrophy layer is
precisely the source-control problem.

## Conclusion

The source-recovered `Q(t)` / dissipation-dominance route is not an independent
discharge.  It reduces to the live source-pulse primitive:

```math
\boxed{
OriginalSmoothData\Longrightarrow QDrain.A
\quad\Longleftrightarrow_{\mathrm{route}}\quad
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
}
```

The recovered corpus is therefore useful as provenance for the desired proof
shape, but it does not install the missing terminal nonlinear source-control
estimate.
