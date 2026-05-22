# Curvature-Provenance Euler Support Note

## Purpose

Fix the honest Euler meaning of the parent curvature/gradient branch.

This note explains why that branch remains useful as route provenance while not
counting as a live Euler closure road in its installed Navier-Stokes form.

## Parent Aim

The parent curvature branch uses a geometric gradient evolution law to damp the
gradient-growth channel and then feeds that damping back into the scale-barrier
side of the positive-control loop.

Its parent feedback picture is:

```math
\text{curvature-controlled gradient}
\Longrightarrow
\text{damped nonlinear growth}
\Longrightarrow
\text{reinforced dangerous-scale suppression}.
\tag{CP1}
```

## Exact Non-Euler Step

The installed parent law is

```math
\partial_t |\nabla u|^2
=
- \mathrm{Ric}(g)(\nabla u,\nabla u)
+ \nu \Delta_g |\nabla u|^2
+ C |\nabla u|^3.
\tag{CP2}
```

This is already a different theorem surface from the current Euler mirror:

1. it is written on a geometric carrier `(M,g(t))`;
2. it uses the parabolic term `\nu \Delta_g |\nabla u|^2`;
3. it relies on positive-curvature damping in that same geometric package.

So the installed curvature branch is not an on-surface Euler proof road after
viscosity removal.

## Honest Euler Meaning

What survives is the branch's role, not its installed PDE packet:

```math
\boxed{
\text{any Euler geometric control quantity would be an added conditional
interface if it is to matter on this branch.}
}
\tag{CP3}
```

In that sense, the curvature branch remains provenance/support for the route
architecture:

1. it justifies why a geometry-sensitive quantity could act as a fourth-bridge
   supplier;
2. it does **not** supply a live Euler theorem in its parent form.

## Terminal Non-Euler Classification

The terminal classification is:

```math
\boxed{
\text{an Euler deformation/vorticity-to-scale feedback theorem would be a new
external route; the parent Ricci-damped parabolic packet is non-Euler.}
}
\tag{CP4}
```

Until such a theorem exists, this road remains provenance-only.

## Status

The curvature branch is now honestly classified for the Euler mirror:

1. its architectural feedback role is preserved;
2. its installed Navier-Stokes geometric PDE packet is not Euler-clean;
3. the branch is provenance/support, not a live Euler closure route.
