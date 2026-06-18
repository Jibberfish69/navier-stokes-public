# MPP SourcePulse Pressure-Vortex Depletion Final Audit Note

## Status

Bounded mechanism audit for the live source-pulse theorem:

```math
\boxed{
OriginalSmoothData \Longrightarrow SourcePulseExclusion.A.
}
```

This note tests whether the pressure/vortex-stretching structure of
Navier-Stokes already forbids terminal source-balanced active pulses.

## Target

The desired pressure-vortex mechanism would be a branch-native depletion
statement:

```math
\boxed{
PressureVortexDeplete.A:
\quad
\int_{Bad_N(\eta)}
\bigl(\omega_j\cdot S_{<j}\omega_j\bigr)_+(t)\,dt
\ \text{is absorbed by viscosity / active-square reserve.}
}
```

A proved `PressureVortexDeplete.A` supplies the missing positive-part strain
depletion needed by `SourcePulseExclusion.A`.

## Audit

The vorticity equation is

```math
\partial_t\omega + u\cdot\nabla\omega - \nu\Delta\omega = S\omega,
```

and the enstrophy identity is

```math
\frac12\frac{d}{dt}\|\omega\|_2^2
+\nu\|\nabla\omega\|_2^2
=
\int \omega\cdot S\omega.
```

Pressure has already disappeared after curl.  The pressure Poisson equation
recovers nonlocal Calderon-Zygmund control of the strain/pressure Hessian, but
it does not impose a sign on the local stretching term.

The local sign obstruction is elementary.  For

```math
S=\mathrm{diag}(2,-1,-1),
\qquad
\omega=(1,0,0),
```

one has

```math
\omega\cdot S\omega=2>0.
```

This is compatible with incompressibility because `tr S=0`.  Pressure can
enforce the incompressible constraint, but the current pressure law does not
turn this positive stretching configuration into a negative or canceling
source on a selected active window.

The existing pressure/source supplier,

```math
FFSRC.A\Rightarrow FCI.5f,
```

is an integrability supplier after the source packet is controlled.  It does
not prove that the positive part of the active source is absent on the
terminal `Jump_avg` bad windows.

## Conclusion

The pressure-vortex route is not an independent discharge.  It reduces to the
same missing theorem:

```math
\boxed{
OriginalSmoothData\Longrightarrow PressureVortexDeplete.A
\quad\text{or equivalently}\quad
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
}
```

Thus pressure-vortex depletion remains a possible proof mechanism, but it is
not installed by the current pressure Poisson, energy, vorticity, or
`FFSRC.A=>FCI.5f` ledgers.
