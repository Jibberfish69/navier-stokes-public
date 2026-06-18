# `TPNI.A` assembly after no-incoming attempt

## Status

Conditional assembly only.

## Target

Prove terminal pulse no-incoming rigidity:

```math
TPNI.A:
\quad
\text{a normalized terminal frozen-strain tangent packet with global no-incoming data vanishes.}
```

The intended consequence is

```math
TPNI.A\Rightarrow PATC.A\Rightarrow ASAC.A.
```

## Assembly

Assume `PATC.A` fails. The parabolic rescaling gives a nonzero frozen-strain tangent packet solving

```math
\partial_s v+(Sy)\cdot\nabla v+Sv+\nabla\pi=\nu\Delta v,
\qquad \nabla\cdot v=0.
```

The transform

```math
z=e^{-sS}y,
\qquad w=e^{sS}v(e^{sS}z,s)
```

gives the anisotropic Stokes system

```math
\partial_s w+\nabla_zq=\nu\nabla_z\cdot(A(s)\nabla_zw),
\qquad
\nabla_z\cdot(A(s)w)=0.
```

If `NoIncomingFlux_global.A` holds, the transformed field has zero incoming boundary flux on the ancient half-line. If `AnisotropicStokesCarleman.A` holds for the displayed system, the transformed field vanishes. Therefore the original tangent packet vanishes.

The construction of the tangent packet also gives normalized positive active mass. This contradicts the zero solution. Hence `PATC.A` follows, and then `ASAC.A` follows from the packet normal form.

## Conditional theorem

```math
\boxed{
NoIncomingFlux_global.A+AnisotropicStokesCarleman.A
\Longrightarrow TPNI.A
\Longrightarrow PATC.A
\Longrightarrow ASAC.A.
}
```

## Current status of inputs

`NoIncomingFlux_global.A` was directly attempted and remains open. First-pulse no-parent controls the selected source-parent graph and supplies less than global incoming-boundary control for the full tangent field.

`AnisotropicStokesCarleman.A` remains open for the exact transformed pressure/divergence system on the ancient half-line. The finite-slab transform is valid.

## Consequence

The direct `TPNI.A` route is a conditional reserve route. The active source-wall route should continue through adjoint parent-or-charge reconciliation, where first-pulse no-parent is the natural input.

## Parent-Drain Replacement

The parent-or-charge reconciliation is now written in
`mpp-native-tpni-adjoint-parent-drain-20260506.md`.

It proves the parent-form route:

```text
TerminalTangentParentDrain.A
+ TerminalTangentNoParent.A
=> TPNI.A.
```

This supersedes the need for `NoIncomingFlux_global.A` and
`AnisotropicStokesCarleman.A` on the terminal first-pulse ASAC path, provided
the tangent parent graph, packet normal form, source tether, and limit pass are
pinned.
