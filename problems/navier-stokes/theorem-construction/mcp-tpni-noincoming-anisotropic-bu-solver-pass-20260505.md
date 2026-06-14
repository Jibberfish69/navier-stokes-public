# `TPNI.A` no-incoming / anisotropic backward uniqueness solver pass

## Status

Failed as a full discharge. The transform is valid on finite slabs. The ancient half-line theorem needs two further inputs.

## Target

Close

```math
TPNI.A
```

through

```math
NoIncomingLicense_{global}.A
+
AnisotropicBackwardUniqueness.A.
```

This would feed

```math
ASAC.A\Rightarrow NonlinearShellFluxControl.A\Rightarrow ActiveShellSourceNormalize.A.
```

## Target list and solve plan

1. `NoIncomingLicense_global.A`.
   Solve by upgrading first-pulse no-parent into a global no-incoming flux condition through transported backward cylinders or a global weighted `L^2` decay statement.

2. `AnisotropicBackwardUniqueness.A`.
   Solve by proving a Carleman theorem for the exact transformed frozen-strain Stokes system.

3. `TPNI.A`.
   Combine the global no-incoming condition and the anisotropic Carleman theorem.

## Frozen tangent transform

The frozen tangent equation is

```math
\partial_s v+(Sy)\cdot\nabla v+Sv+\nabla\pi=\nu\Delta v,
\qquad \nabla\cdot v=0,
\qquad \operatorname{tr}S=0.
```

Set

```math
E(s)=e^{sS},\qquad z=E(s)^{-1}y,\qquad w(z,s)=E(s)v(E(s)z,s).
```

The transformed equation is

```math
\partial_s w+\nabla_z q=\nu\nabla_z\cdot(A(s)\nabla_z w),
```

with

```math
A(s)=E(s)^{-1}E(s)^{-T}=e^{-sS}e^{-sS^T}.
```

The divergence constraint becomes

```math
\nabla_z\cdot(A(s)w)=0.
```

Thus the exact theorem is an anisotropic Stokes theorem, not a scalar heat theorem.

## Finite-slab result

On every finite slab `[-R,0]`, the matrix `A(s)` is smooth and uniformly elliptic. If one proves a finite-slab Carleman theorem for the displayed anisotropic Stokes system, it yields finite-slab unique continuation under the usual boundary hypotheses.

## Ancient half-line obstruction

As `s\to-\infty`, the matrix `A(s)` becomes highly anisotropic along strain eigendirections. Local decay on fixed balls is insufficient for the ancient theorem, because mass may enter fixed compact regions from spatial infinity along contracting strain directions.

First-pulse selection gives

```math
NoIncomingLicense_{src}.A:
\quad\text{no earlier same-fluid source-parent tile exists.}
```

This is exactly the license used by the adjoint parent-or-charge route. It is weaker than a global no-incoming parabolic boundary condition for the full tangent field.

## Required reserve theorem

The direct backward-uniqueness route therefore has the exact form

```math
\boxed{
NoIncomingFlux_{global}.A
+
AnisotropicStokesCarleman.A
\Longrightarrow TPNI.A.
}
```

where `NoIncomingFlux_global.A` must control incoming mass through transported backward cylinders or an equivalent global weighted boundary condition, and `AnisotropicStokesCarleman.A` must handle

```math
\partial_s w+\nabla_z q=\nu\nabla_z\cdot(A(s)\nabla_z w),
\qquad
\nabla_z\cdot(A(s)w)=0.
```

## Result

`TPNI.A` remains open through this direct route. The transformed equation is correctly identified, and the finite-slab reduction is valid. The missing objects are the global no-incoming flux license and the exact anisotropic Stokes Carleman theorem.

## Next targets

1. `NoIncomingFlux_global.A` through transported-cylinder flux control.
2. `AnisotropicStokesCarleman.A` for the exact pressure/divergence system.
3. The already active adjoint parent-or-charge route, because first-pulse no-parent naturally feeds that route.
