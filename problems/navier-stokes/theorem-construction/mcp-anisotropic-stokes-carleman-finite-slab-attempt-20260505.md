# `AnisotropicStokesCarleman.A` finite-slab reduction

## Status

Finite-slab reduction discharged conditionally on the existing fixed-metric parabolic Carleman packet. The ancient half-line theorem remains a separate global-uniform problem.

## Transformed system

The frozen-strain tangent transform gives

```math
\partial_s w+\nabla_zq=\nu\nabla_z\cdot(A(s)\nabla_zw),
\qquad
\nabla_z\cdot(A(s)w)=0,
```

where

```math
A(s)=e^{-sS}e^{-sS^T}.
```

On each finite slab `[-R,0]`, the matrix `A(s)` is smooth, spatially constant, and uniformly elliptic.

## Finite-slab projected form

For each `s`, define the anisotropic constraint space

```math
\mathcal H_A(s)=\{w:\nabla_z\cdot(A(s)w)=0\}.
```

Since `A(s)` is spatially constant and uniformly elliptic on `[-R,0]`, the associated anisotropic Leray projection is an order-zero Fourier multiplier with bounded symbol constants depending only on the slab ellipticity ratio and finitely many time derivatives of `A`.

Applying this projection eliminates the pressure and gives a projected equation of the form

```math
\partial_s w-
u\nabla_z\cdot(A(s)\nabla_z w)+B_R(s,D)w=0,
```

where `B_R(s,D)` is a bounded time-dependent order-zero multiplier on the finite slab. The term `B_R` accounts for the time variation of the anisotropic constraint bundle and the projected pressure response.

## Carleman reduction

The principal operator

```math
P_{R,0}w=
\partial_s w-
u\nabla_z\cdot(A(s)\nabla_z w)
```

belongs to the fixed-metric parabolic Carleman class on the finite slab. The existing `PDO-Carleman` / fixed-metric packet applies componentwise to this principal operator.

The order-zero multiplier `B_R` is lower order relative to the Carleman bulk. The lower-order absorption theorem applies exactly as in the bounded-chart packet: for Carleman parameter large enough depending on the finite-slab bounds,

```math
\mathcal I_{R,\tau}[w]
\le C_R\|e^{\tau\phi}(
\partial_s-
u\nabla\cdot(A\nabla)+B_R)w\|_2^2
+Obs_{R,\tau}[w].
```

Thus finite-slab backward uniqueness holds for the exact transformed anisotropic Stokes system.

## Ancient half-line obstruction

The finite-slab constants depend on the ellipticity ratio of `A(s)` on `[-R,0]`. For mixed-sign trace-free strain, this ratio may grow exponentially as `R\to\infty`. Therefore the finite-slab theorem does not automatically pass to `(-\infty,0]`.

The ancient theorem still needs a global boundary condition and a compatible global weight. The direct route remains

```math
NoIncomingFlux_{global}.A
+
GlobalUniformAnisotropicStokesCarleman.A
\Longrightarrow TPNI.A.
```

## Result

The exact transformed Stokes structure is handled on finite slabs. The live blocker is the global half-line upgrade: control of incoming flux plus Carleman weights whose constants remain usable under the strain anisotropy as the backward slab length tends to infinity.