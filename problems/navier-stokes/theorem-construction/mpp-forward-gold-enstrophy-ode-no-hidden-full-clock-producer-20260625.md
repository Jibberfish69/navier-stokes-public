---
theorem_id: forward-gold-enstrophy-ode-no-hidden-full-clock-producer-20260625
status: exact-scalar-envelope-test-installed; enstrophy-ode-plus-finite-dissipation-does-not-produce-full-material-clock
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Tests whether the standard enstrophy differential inequality secretly supplies
  the remaining same-material full clock. It does not. The strain part of the
  super-heat residence already requires an enstrophy-weighted dissipation clock
  \(\int \|\nabla u\|_2^3 dt\). Energy gives only
  \(\int \|\nabla u\|_2^2 dt\), and the standard enstrophy ODE
  \(D'\le C D^3\) is compatible with \(D\in L^1_t\) but
  \(D^{3/2}\notin L^1_t\). Therefore no hidden time-modulus producer is present
  in raw energy plus the classical enstrophy inequality; the remaining producer
  must be a genuine same-material pressure-viscosity-incompressibility-velocity
  coercivity law.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-residence-energy-enstrophy-pressure-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-record-growth-is-remaining-clock-producer-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-global-full-clock-continuation-strength-audit-20260625.md
---

# Enstrophy ODE No Hidden Full-Clock Producer

Date: 2026-06-25

## 0. Object

The object remains the original smooth periodic Navier--Stokes material
history:

```math
\partial_tu+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0.
\tag{EON.1}
```

This note tests one specific possible shortcut for the remaining full material
clock: whether the usual enstrophy inequality, combined with finite energy
dissipation, already gives the super-heat / material-record clock.

## 1. The clock demanded by the strain super-heat test

Let

```math
D(t):=\|\nabla u(t)\|_2^2.
\tag{EON.2}
```

The installed super-heat residence test reduces the strain part to the
sufficient clock

```math
\int_0^{T_*}\|\nabla u(t)\|_2^3\,dt
=
\int_0^{T_*}D(t)^{3/2}\,dt
<\infty.
\tag{EON.3}
```

The energy inequality supplies only

```math
\int_0^{T_*}D(t)\,dt<\infty.
\tag{EON.4}
```

So the question is whether the Navier--Stokes enstrophy differential inequality
upgrades `(EON.4)` into `(EON.3)`.

## 2. Standard enstrophy inequality

Testing the equation against \(-\Delta u\) gives

```math
{1\over2}D'(t)+\nu\|\Delta u(t)\|_2^2
=
-\int (u\cdot\nabla)u\cdot\Delta u\,dx.
\tag{EON.5}
```

Using

```math
\|u\|_6\lesssim\|\nabla u\|_2,
\qquad
\|\nabla u\|_3
\lesssim
\|\nabla u\|_2^{1/2}\|\Delta u\|_2^{1/2},
\tag{EON.6}
```

the nonlinear term satisfies

```math
\left|
\int (u\cdot\nabla)u\cdot\Delta u\,dx
\right|
\lesssim
D(t)^{3/4}\|\Delta u(t)\|_2^{3/2}.
\tag{EON.7}
```

Young's inequality gives the scalar envelope

```math
D'(t)\le C_\nu D(t)^3.
\tag{EON.8}
```

This is the classical continuation envelope. It is still one reading of the
same pressure-viscosity-incompressibility-velocity solution, not a detached
model.

## 3. The scalar envelope does not force the needed clock

The two scalar facts

```math
D\in L^1(0,T_*),
\qquad
D'\le C D^3,
\tag{EON.9}
```

do not imply

```math
D^{3/2}\in L^1(0,T_*).
\tag{EON.10}
```

Indeed, for any

```math
{2\over3}\le \alpha<1,
\tag{EON.11}
```

the model profile

```math
D_\alpha(t)=(T_*-t)^{-\alpha}
\tag{EON.12}
```

satisfies

```math
\int_0^{T_*}D_\alpha(t)\,dt<\infty,
\tag{EON.13}
```

but

```math
\int_0^{T_*}D_\alpha(t)^{3/2}\,dt=\infty.
\tag{EON.14}
```

Also,

```math
D_\alpha'(t)
=
\alpha(T_*-t)^{-\alpha-1},
\qquad
D_\alpha(t)^3=(T_*-t)^{-3\alpha}.
\tag{EON.15}
```

For \(\alpha\ge1/2\), the power inequality

```math
\alpha+1\le3\alpha
\tag{EON.16}
```

holds. Hence near \(T_*\),

```math
D_\alpha'(t)\le C D_\alpha(t)^3.
\tag{EON.17}
```

After smoothing away from the terminal endpoint, this gives an admissible
scalar envelope for `(EON.9)` with finite raw dissipation and infinite
enstrophy-weighted clock.

## 4. Consequence for the gold route

The standard enstrophy inequality gives a propagation law:

```math
D'\le C_\nu D^3.
\tag{EON.18}
```

It does not give the missing integrability:

```math
\int_0^{T_*}D^{3/2}<\infty.
\tag{EON.19}
```

Therefore energy plus the classical enstrophy ODE cannot be the producer for
the same-material full clock. The missing producer must use more than the
scalar height \(D(t)\). It must exploit a signed/global same-material
pressure-viscosity-incompressibility-velocity coercivity law, or an equivalent
direct estimate for high-frequency pressure-stress transfer.

## 5. Result

This closes one tempting shortcut exactly:

```math
\boxed{
\text{finite raw dissipation plus }D'\le C D^3
\text{ does not imply the full material clock.}
}
\tag{EON.20}
```

The live target remains unchanged:

```math
\boxed{
\int_0^{T_*}d[\log(1+\mathcal P_N^{mat})]_+<\infty
}
\tag{EON.21}
```

or the equivalent bounded-below same-material storage inequality for the full
pressure-viscosity-incompressibility-velocity clock.
