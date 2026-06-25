---
theorem_id: forward-gold-periodic-low-mode-exclusion-high-frequency-material-return-20260625
status: proof-installed-low-mode-and-affine-escape-excluded; remaining-growth-is-high-frequency-same-material-transfer
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Sharpens the physical-frame filter on the active periodic T^3 surface.  The
  terminal spike-wave cannot be produced by a free annular signal, by a global
  affine strain, or by finitely many low Fourier modes.  After Galilean gauge,
  every fixed low-frequency band is bounded by the conserved L^2 energy, while
  a nonzero constant gradient is incompatible with periodicity.  Therefore any
  unbounded continuation-depth material-record growth must pass through
  arbitrarily high Fourier modes.  Smooth initial data gives a summable
  high-frequency entrance tail at every fixed depth, and the linear heat flow
  damps that tail.  The only remaining way to sustain the spike is nonlinear
  high-frequency pressure-stress transfer inside the same transported annular
  material history.  This is exactly the full material clock, not a new
  detached obstruction.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-frequency-controlled-annular-return-direct-attempt-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-periodic-affine-strain-mismatch-return-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-frequency-full-annular-stress-transfer-absorption-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-physical-frame-fake-subproblem-filter-20260625.md
---

# Periodic Low-Mode Exclusion / High-Frequency Material Return

Date: 2026-06-25

## 0. Object

The object is the original smooth periodic Navier--Stokes solution

```math
\partial_tu+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0
\tag{PLH.1}
```

and its transported material history around the candidate terminal
concentration.  The spike, the annular layers under it, pressure,
incompressibility, viscosity, and later stress/strain return are one history.

This note tests which part of that history can still create unbounded
continuation-depth material-record growth.

## 1. Global affine strain is not a periodic producer

The local affine normal form

```math
u(x)=Ax,
\qquad
p(x)=-{1\over2}x\cdot A^2x,
\qquad
A=A^\top,\quad \operatorname{tr}A=0
\tag{PLH.2}
```

is a useful local sign test because

```math
(u\cdot\nabla)u+\nabla p=0,
\qquad
\Delta u=0,
\qquad
\nabla\cdot u=0.
\tag{PLH.3}
```

It proves that pressure-balanced strain is real participation and cannot be
replaced by viscosity-only or vorticity-only bookkeeping.

On the active periodic surface, however, it is not a global terminal mechanism.
If a periodic velocity has constant gradient \(A\), then for every period vector
\(\gamma\),

```math
0=u(x+\gamma)-u(x)=A\gamma .
\tag{PLH.4}
```

The period vectors span \(\mathbb R^3\), hence

```math
A=0.
\tag{PLH.5}
```

The matching quadratic pressure is also periodic only in the zero case.  Thus
nonzero affine-looking strain can occur only as a local approximation.  Its
mismatch with the surrounding periodic material layers is part of the same
annular pressure/strain return.

## 2. Fixed low-frequency bands are bounded by the original energy

Let \(P_{\le J}\) be a smooth Fourier projection on \(T^3\).  After subtracting
the conserved mean velocity, Bernstein gives

```math
\|\nabla P_{\le J}u(t)\|_{L^\infty}
\le
C_J\|u(t)\|_{L^2}.
\tag{PLH.6}
```

The energy inequality gives

```math
\|u(t)\|_{L^2}\le\|u_0\|_{L^2}.
\tag{PLH.7}
```

Therefore, for every fixed \(J\),

```math
\sup_{t<T_*}\|\nabla P_{\le J}u(t)\|_{L^\infty}
\le
C_J\|u_0\|_{L^2}<\infty .
\tag{PLH.8}
```

The same statement holds for any finite number of fixed low-frequency
derivatives: the constant depends on \(J\) and the derivative depth, but not on
terminal time.

So a finite set of low modes cannot make the continuation-depth material record
blow up.  Any unbounded material-record growth must use arbitrarily large
frequencies.

## 3. Smooth initial data and linear viscosity do not create the tail

For each fixed depth \(N\), smooth initial data gives

```math
\sum_{j\ge0}2^{2Nj}\|\Delta_j u_0\|_{L^2}^2<\infty .
\tag{PLH.9}
```

For the linear heat part,

```math
\Delta_j u^{lin}(t)=e^{\nu t\Delta}\Delta_j u_0,
\tag{PLH.10}
```

and

```math
\|\nabla^m\Delta_j u^{lin}(t)\|_{L^2}
\lesssim
2^{mj}e^{-c\nu2^{2j}t}\|\Delta_j u_0\|_{L^2}.
\tag{PLH.11}
```

Integrating in time yields

```math
\int_0^{T_*}
\|\nabla^m\Delta_j u^{lin}(t)\|_{L^2}\,dt
\lesssim
\nu^{-1}2^{(m-2)j}\|\Delta_j u_0\|_{L^2}.
\tag{PLH.12}
```

Thus the entrance tail is finite at every fixed depth and the linear viscous
part damps high frequencies.  Persistent high-frequency material-record growth
cannot be blamed on an initial infinite-amplitude frequency stack or on the
linear heat flow.

## 4. The remaining mechanism is nonlinear same-material transfer

The Duhamel formula gives the Eulerian coordinate reading

```math
\Delta_j u(t)
=
e^{\nu t\Delta}\Delta_j u_0
-
\int_0^t
e^{\nu(t-s)\Delta}
\Delta_j\mathbb P\nabla\cdot(u\otimes u)(s)\,ds .
\tag{PLH.13}
```

The projection notation is only a coordinate shorthand.  In the material
packet this term includes the incompressible pressure complement, viscous
stress, velocity transport, transported collars, and material coefficient
commutators.

Combining the previous sections gives the exact implication:

```math
\text{unbounded continuation-depth material record}
\Longrightarrow
\text{unbounded high-frequency nonlinear pressure-stress transfer}
\tag{PLH.14}
```

on the same transported material history.

The physical meaning is simple: if the spike keeps rising while its base thins
near a finite terminal time, the necessary annular force-action cannot come
from a finite low-mode shape or from a free endpoint pulse.  It has to be
continually rebuilt by nonlinear transfer through the full pressure-viscosity-
incompressibility-velocity relation.

## 5. Relation to the live full clock

The full annular stress-transfer density already isolated in the route is

```math
\mathcal S_\phi^\sharp
=
\text{stress-divergence}
+\text{pressure-time service}
+\text{cubic collar strain}
+\text{transported collar stress}.
\tag{PLH.15}
```

The desired finite clock is still

```math
\int_0^{T_*}d\Omega_N^{full}<\infty,
\tag{PLH.16}
```

with

```math
d\Omega_N^{full}
\supset
d[\log(1+\mathcal P_N^{mat})]_+
+
\sum_j2^{\gamma j}
\|\Delta_j\mathcal S_\phi^\sharp(t)\|_{L^1}\,dt .
\tag{PLH.17}
```

This note proves that the remaining branch is not low-mode, affine, initial
tail, or linear heat.  It is exactly the same high-frequency nonlinear
pressure-stress transfer already contained in \(d\Omega_N^{full}\).

Therefore the physical-frame conclusion is:

```math
\boxed{
\text{finite rectified annular force-action variation is equivalent, at the
remaining edge, to finite high-frequency same-material pressure-stress transfer
inside the full material clock.}
}
\tag{PLH.18}
```

The MPP closure still requires proving `(PLH.16)` from the full coupled
Navier--Stokes law without assuming bounded \(H^s\), bounded material record,
or the finite full clock itself.
