# MPP Pressure-Strain No-Pulse Attempt Note

## Status

Bounded theorem attempt on `SOURCE.NO-PULSE.A`.

This note tests whether the missing no-pulse theorem is already supplied by
the incompressible pressure law.

The answer is no.  Pressure gives elliptic recovery and local response bounds,
but the active source pulse is a vorticity/strain production channel with no
installed pressure-sign cancellation.

## Target

The target remains

```math
SOURCE.NO\text{-}PULSE.A
```

or any equivalent form:

```math
AWG.A,\qquad
MSC.Spill.NoPulse,\qquad
QDrain.A.
```

The exact pressure-route target is a theorem stating that the nonlocal pressure
response prevents heat-scale source-balanced active pulses.

## Vorticity/Strain Identity

Let

```math
\omega=\nabla\times u,
\qquad
S=\frac12(\nabla u+\nabla u^T).
```

The vorticity equation is

```math
\partial_t\omega+u\cdot\nabla\omega-\nu\Delta\omega
=
S\omega.
```

Therefore

```math
\frac12\frac{d}{dt}\|\omega\|_2^2
+\nu\|\nabla\omega\|_2^2
=
\int \omega\cdot S\omega\,dx.
\tag{1}
```

The pressure gradient is absent from `(1)` after curl.  Thus pressure cannot
produce a direct sign in the enstrophy production identity.

## Pressure Poisson Law

The pressure is recovered from

```math
-\Delta p=\partial_i\partial_j(u_i u_j)
=\mathrm{tr}(\nabla u\,\nabla u).
```

Equivalently, `\nabla^2p` is a matrix of singular integrals of quadratic
velocity-gradient expressions.  This supplies Calderon-Zygmund bounds such as

```math
\|\nabla^2p\|_{L^q}\le C_q\|\nabla u\|_{L^{2q}}^2,
```

and the pressure source estimates used in the local receiver/source packets.
It does not impose a pointwise sign on

```math
\omega\cdot S\omega.
```

## Local Sign Test

At a point, choose a trace-free symmetric strain with one expanding direction,
for example

```math
S=\mathrm{diag}(2,-1,-1).
```

Let vorticity align with the expanding eigendirection:

```math
\omega=(1,0,0).
```

Then

```math
\omega\cdot S\omega=2>0.
```

So the vortex-stretching density can be strictly positive in an incompressible
local configuration.  The pressure Hessian may be chosen by the elliptic
constraint to enforce incompressibility of the local jet, but the vorticity
production sign is not thereby reversed.

After localization into a shell packet, this is exactly the active pulse
geometry: vorticity aligned with an expanding strain direction produces
positive source at the active scale.

## Why Pressure Estimates Still Matter But Do Not Close

The installed pressure estimates remain necessary.  They supply:

```math
FPCR.C,\qquad
FFPB.A0,\qquad
ACT.X\text{-}Press,
```

and local pressure-response terms in the receiver route.

Those are integrability and recovery statements.  They control pressure as a
supplier to already-defined packets.  They are not depletion-of-stretching
theorems.

To close `SOURCE.NO-PULSE.A` by pressure, one would need a new theorem of the
form

```math
\int_{I_j}
\omega_j\cdot S_{<j}\omega_j
\le
\varepsilon\nu\int_{I_j}|\nabla\omega_j|^2
+C_\varepsilon 2^{-2\delta j},
```

or the corresponding mixed-shell/active-window packet version, derived from
the pressure Poisson law and the terminal same-fluid geometry.

No installed pressure bridge proves this.

## Verdict

The pressure-strain route does not discharge the no-pulse atom.

It sharpens the target:

```math
\boxed{
\text{pressure would have to prove a nonlocal depletion-of-stretching theorem.}
}
```

Absent that new depletion theorem, the pressure channel remains a source
supplier and receiver-response ledger, not a proof of
`SOURCE.NO-PULSE.A`.
