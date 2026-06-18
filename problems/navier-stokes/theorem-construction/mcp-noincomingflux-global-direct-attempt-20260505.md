# `NoIncomingFlux_global.A` direct attempt

## Status

Failed from the current first-pulse inputs.

## Target

Upgrade first-pulse no-parent information to a global no-incoming flux condition
for the frozen-strain tangent field. A usable form is a transported-cylinder or
weighted condition such as

```math
\lim_{R\to\infty}\limsup_{s_0\to-\infty}
\int_{\partial\mathcal C_R(s_0,0)} |w|^2\,d\Phi_{A,S}=0,
```

or equivalently a global weighted decay statement adapted to the transformed anisotropic coordinates.

## Available input

First-pulse selection gives

```math
FirstPulse.NoParent:
\quad
\text{there is no earlier legal same-fluid source-parent tile for the selected pulse.}
```

This is an ancestry statement for the selected positive source-residue graph.

## Attempt

The frozen-strain tangent transform uses

```math
z=e^{-sS}y,
\qquad
w(z,s)=e^{sS}v(e^{sS}z,s).
```

When `S` has mixed signs, some directions are contracting in the original variables as time advances. Field energy initially located far from the origin at large negative times can enter a fixed compact observation region at later times through those contracting directions.

Local compact decay on each fixed ball therefore controls only mass already inside that ball at early times. It gives no boundary-flux control through the transported parabolic boundary from spatial infinity.

First-pulse no-parent excludes earlier selected same-fluid source-residue parents. It gives no estimate for full-field kinetic energy, pressure energy, or nonselected packets entering through the global transformed boundary. Thus it supplies the correct input for the adjoint parent-or-charge route, while falling short of the global incoming-flux condition needed for direct backward uniqueness.

## Result

`NoIncomingFlux_global.A` remains open. The exact replacement target is

```math
TransportedCylinderNoFlux.A:
\quad
\text{global weighted or transported-cylinder flux through the backward boundary vanishes for terminal tangent limits.}
```

A second sufficient form is

```math
GlobalWeightedAncientDecay.A:
\quad
\lim_{s\to-\infty}\int |w(z,s)|^2\Omega_S(z,s)dz=0
```

for a weight `\Omega_S` coercive along the incoming directions of the strain flow.

## Consequence

The direct route

```math
NoIncomingFlux_global.A+AnisotropicStokesCarleman.A\Rightarrow TPNI.A
```

still requires the global no-incoming flux theorem. The first-pulse license continues to match the adjoint parent-or-charge route rather than the full-field backward-uniqueness route.
