# MPP SourcePulse Viscous-Duhamel No-Pulse Audit Note

## Status

Bounded mechanism audit for the live source-pulse theorem:

```math
\boxed{
OriginalSmoothData \Longrightarrow SourcePulseExclusion.A.
}
```

This note tests whether viscous heat-scale damping or the Stokes semigroup
already forbids terminal source-balanced active pulses.

## Candidate Mechanism

At dyadic shell `j`, the shell energy inequality under test is

```math
\frac{d}{dt}E_j(t)+c\nu 2^{2j}E_j(t)\le F_j(t),
```

where `F_j` is the nonlinear flux/source contribution.  Duhamel gives

```math
E_j(t)
\le
e^{-c\nu2^{2j}(t-s)}E_j(s)
+
\int_s^t e^{-c\nu2^{2j}(t-\tau)}F_j(\tau)\,d\tau.
```

Thus viscosity kills inherited shell energy on heat-scale intervals unless the
nonlinear source refills the shell.

The desired theorem would be:

```math
\boxed{
ViscousNoRefill.A:
\quad
\text{on terminal bad active windows, the Duhamel source term is too small to
maintain the active pulse.}
}
```

## Audit

The semigroup estimate alone only separates two channels:

```math
\text{old shell energy damped by }e^{-c\nu2^{2j}(t-s)}
```

and

```math
\text{new shell energy supplied by }F_j.
```

The source-balanced pulse obstruction is precisely the second channel.  The
scalar active-shell model in `monotone-flux-law-active-shell-pulse-attempt.md`
shows that a short pulse is compatible with the damped shell identity whenever
`F_j` supplies the matching input.

For Navier-Stokes, `F_j` is not an arbitrary external force; it is the nonlinear
cascade/readout source.  But the current route has not installed a theorem
showing that this nonlinear source obeys a Carleson, square-source, sign, or
monotone-dominance bound on the terminal bad windows.

Therefore heat damping proves:

```math
\text{no source}\Longrightarrow\text{no persistent active pulse},
```

but the live theorem needs:

```math
\text{Navier-Stokes nonlinear source}\Longrightarrow\text{no source-balanced
active pulse}.
```

Those are different statements.

## Conclusion

The viscous-Duhamel route is not an independent discharge.  It reduces to the
same nonlinear source-control theorem:

```math
\boxed{
ViscousNoRefill.A
\ \Longleftrightarrow_{\mathrm{route}}\
SourcePulseExclusion.A.
}
```

No promotion is licensed from heat semigroup damping alone.
