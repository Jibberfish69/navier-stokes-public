# Curvature-To-Scale Feedback Bridge

## Purpose

This note makes the loop-closing arrow in the original source family exact enough
for the live lane.

The source stack does not treat curvature-based regularity as a dead-end terminal
node. It treats it as a fourth bridge that feeds back into the scale barrier.

## Source Loci

- `Millennium Prize Problems/Navier-Stokes/TeX/Section_5-_Curvature-Based_Regularity.tex`
- `Millennium Prize Problems/Navier-Stokes/TeX/Gradient_Control_Through_Geometric_Arguments.tex`
- `Millennium Prize Problems/Navier-Stokes/TeX/Section_6-_Interdependencies_Among_Principles.tex`
- `problems/navier-stokes/curvature-based-regularity-discharge-source-pack.md`

## Source-Faithful Local Claim

On the curvature branch, the source-family gradient quantity satisfies

```math
\partial_t |\nabla u|^2
=
- \mathrm{Ric}(g)(\nabla u,\nabla u)
+ \nu \Delta_g |\nabla u|^2
+ C |\nabla u|^3.
```

Under the positive-curvature hypothesis `Ric(g) >= kappa > 0`, the source family
uses this evolution law to bound the gradient quantity.

Section 6 then makes the loop arrow explicit:

- bounded gradient control damps the nonlinear growth channel,
- that damping aligns with high-frequency suppression,
- and this strengthens the scale-barrier side of the cycle.

## Exact Lane Meaning

The live lane should read the feedback arrow as the following local bridge content:

1. the curvature branch controls the gradient-growth channel that would otherwise
   reopen the cascade;
2. once that gradient channel is damped, the nonlinear transport feeding dangerous
   high frequencies is correspondingly stabilized;
3. that stabilization is the source-grounded reason curvature-based regularity
   reinforces the scale-barrier principle rather than merely sitting downstream of it.

## Honest Boundary

This note does not claim a new standalone Euclidean theorem.
It records the exact source-grounded feedback role of the curvature branch inside
the original four-way loop.

## Status

`source-grounded loop feedback explicit`
