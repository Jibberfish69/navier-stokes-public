# `TransportedCylinderNoFlux.A` direct attempt

## Status

Failed from current inputs.

## Target

Prove vanishing incoming lateral flux through strain-transported backward
cylinders. One sufficient target form is

```math
\lim_{R\to\infty}\limsup_{s_0\to-\infty}
\int_{\partial_{par}\mathcal C_R^{S}(s_0,0)} |w|^2\,d\Phi_{A,S}=0.
```

Such a theorem would imply `NoIncomingFlux_global.A` and would supply the ancient boundary condition needed by the direct `TPNI.A` route.

## Attempt

The transported cylinders follow the frozen strain map

```math
E(s)=e^{sS}.
```

For mixed-sign trace-free `S`, the flow has contracting and expanding directions. Backward cylinders elongated along one eigendirection can still admit incoming energy through a lateral face associated with another direction. Energy initially far from the origin at large negative time can enter the terminal observation region under the strain flow.

The available first-pulse license is

```math
FirstPulse.NoParent:
\quad
\text{no earlier selected same-fluid source-parent tile exists.}
```

This license controls the selected positive source-residue ancestry graph. It gives no global bound for all kinetic energy crossing transported lateral boundaries.

Local energy compactness controls fixed cylinders. Transported no-flux requires uniform tightness as the transported cylinder radius tends to infinity and the initial time tends to minus infinity. Under the terminal Zeno rescaling `u_m(y,s)=r_m u(x_m+r_m y,t_m+r_m^2s)`,

```math
\|u_m(s)\|_{L^2(\Omega_m)}^2
=
r_m^{-1}\|u(t_m+r_m^2s)\|_{L^2(\Omega)}^2
```

on the corresponding rescaled domain.  Thus local energy control does not supply a uniform global ancient-energy bound for the transported no-flux theorem.

## Result

`TransportedCylinderNoFlux.A` remains open. The exact sufficient replacement is

```math
GlobalWeightedAncientDecay.A:
\quad
\lim_{s\to-\infty}\int |w(z,s)|^2\Omega_S(z,s)dz=0
```

for a weight coercive on every incoming channel of the strain flow.

## Consequence

The direct `TPNI.A` route still requires a global no-incoming boundary theorem. The first-pulse no-parent statement remains naturally suited to the adjoint parent-or-charge route.
