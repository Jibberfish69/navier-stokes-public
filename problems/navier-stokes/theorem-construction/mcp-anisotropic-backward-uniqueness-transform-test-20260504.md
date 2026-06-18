# Anisotropic backward-uniqueness transform test for TPNI.A

## Status

Failed direct discharge; conditional reserve route isolated.

The frozen-strain change of variables correctly converts the tangent equation into an anisotropic parabolic Stokes system on each finite backward time slab. It does not by itself prove `TPNI.A`, because the available terminal selection gives only a source-tree no-parent condition, and the transformed ancient problem needs a stronger global no-incoming boundary condition.

## Frozen tangent equation

The tangent equation from a failed positive-alignment Carleson sequence is

```math
\partial_s v+(Sy)\cdot\nabla_y v+Sv+\nabla_y\pi=\nu\Delta_y v,
\qquad
\nabla_y\cdot v=0,
\qquad \operatorname{tr}S=0.
```

Assume for the transform test that `S=S^T` is constant on the frozen tangent tile.

## Transform

Set

```math
E(s)=e^{sS},
\qquad
z=E(s)^{-1}y,
\qquad
w(z,s)=E(s)v(E(s)z,s).
```

Then

```math
\partial_s w
=\nu\nabla_z\cdot(A(s)\nabla_z w)-\nabla_z q,
```

where

```math
A(s)=E(s)^{-1}E(s)^{-T}=e^{-sS}e^{-sS^T}.
```

For symmetric `S`, the pressure gradient is standard in these variables, but the divergence constraint becomes anisotropic:

```math
\nabla_z\cdot(A(s)w)=0,
```

not the standard Euclidean condition `\nabla_z\cdot w=0`.

Thus the exact reserve theorem is not scalar heat backward uniqueness. It is backward uniqueness for the anisotropic Stokes system

```math
\partial_s w+\nabla_z q=\nu\nabla_z\cdot(A(s)\nabla_z w),
\qquad
\nabla_z\cdot(A(s)w)=0.
```

## Finite-slab observation

On each finite slab `[-R,0]`, `A(s)` is smooth and uniformly elliptic. Standard finite-slab parabolic unique-continuation tools are the natural candidate here, provided the pressure/divergence system is handled in the anisotropic form above.

This finite-slab fact is insufficient for `TPNI.A`, because `TPNI.A` concerns an ancient interval `(-\infty,0]` and requires a boundary condition at `s=-\infty` or an equivalent no-incoming flux condition.

## Half-line obstruction

As `s\to-\infty`, `A(s)` is generally anisotropically singular or unbounded along the eigendirections of `S`. Moreover, contracting directions for the original strain flow can move mass from spatial infinity into a fixed compact region at later times.

Therefore the weak condition

```math
\lim_{s\to-\infty}\int_{B_R}|v(y,s)|^2dy=0
\qquad(R<\infty)
```

is not enough to rule out incoming mass through the full backward parabolic boundary. A Carleman or backward-uniqueness proof must assume or prove a stronger condition, such as global weighted `L^2` decay or no flux through transported backward cylinders.

## Conditional reserve theorem

The valid reserve theorem is:

```math
\boxed{
NoIncomingFlux_{global}.A
+AnisotropicStokesCarleman.A
\Longrightarrow TPNI.A.
}
```

Here `NoIncomingFlux_global.A` must rule out mass entering from spatial infinity in the transformed anisotropic coordinates, and `AnisotropicStokesCarleman.A` must apply to

```math
\partial_s w+\nabla_z q=\nu\nabla_z\cdot(A(s)\nabla_z w),
\qquad
\nabla_z\cdot(A(s)w)=0.
```

## Comparison with the primary drain route

The primary route should be the principal-flow adjoint drain path rather than the direct backward-uniqueness path:

```math
PrincipalFlowAdjoint.A
\Longrightarrow ParentOrCharge.A
\Longrightarrow NoFreeCreate.A
\Longrightarrow SourceDrain.B
\Longrightarrow TPNI.A.
```

Reason: the source-tree no-parent license obtained from first-pulse selection is exactly the input to `ParentOrCharge.A`; it is not yet an input to a global ancient backward-uniqueness theorem.

## Claimed status

`AnisotropicBackwardUniqueness.A` is not discharged. The finite-slab transform is valid, but the ancient no-incoming boundary and exact anisotropic Stokes Carleman theorem remain missing. The direct route stays as a reserve; the principal-flow adjoint drain route is the active path.
