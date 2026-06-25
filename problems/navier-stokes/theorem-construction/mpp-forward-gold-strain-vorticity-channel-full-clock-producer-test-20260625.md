---
theorem_id: forward-gold-strain-vorticity-channel-full-clock-producer-test-20260625
status: vorticity-stretching-is-a-coordinate-not-the-full-material-clock-producer
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Tests the most native candidate for the missing positive material-action
  producer: the strain-vorticity stretching ledger. The local enstrophy identity
  is exact and same-packet, but it controls signed vorticity stretching plus
  viscous/collar terms. It does not control total positive material deformation
  action. A pure incompressible affine strain normal form has positive material
  metric clock and annular pressure/strain stress-work with zero vorticity, so
  vorticity stretching can miss part of the full pressure-viscosity-
  incompressibility-velocity clock. The strain-vorticity channel remains a
  coordinate/readout inside the full clock, not the producer of the whole clock.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-total-strain-vorticity-exchange-retention-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-strain-local-normal-form-full-participation-sign-test-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-data-full-material-clock-producer-direct-attack-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-payback-positive-clock-nonimplication-20260625.md
---

# Strain-Vorticity Channel Full Clock Producer Test

Date: 2026-06-25

## 0. Target

The remaining producer is the finite positive material clock on one original
smooth material history:

```math
\int d\Omega_N^{full}<\infty .
```

The natural physical candidate is the strain-vorticity exchange, because
vorticity stretching is where Navier-Stokes records positive amplification of
rotational gradients.

This note tests whether that channel can produce the whole full clock.

## 1. Exact same-material enstrophy identity

Let

```math
\omega=\nabla\times u,
\qquad
S={\nabla u+\nabla u^T\over2},
```

and let `phi` be a transported material cutoff:

```math
(\partial_t+u\cdot\nabla)\phi=0.
```

The vorticity equation is

```math
D_t\omega=S\omega+\nu\Delta\omega,
\qquad D_t=\partial_t+u\cdot\nabla .
```

Using incompressibility and integrating by parts gives

```math
{1\over2}{d\over dt}\int\phi|\omega|^2\,dx
+
\nu\int\phi|\nabla\omega|^2\,dx
=
\int\phi\,\omega\cdot S\omega\,dx
+
{\nu\over2}\int(\Delta\phi)|\omega|^2\,dx .
```

This is an exact same-material identity. It belongs to the pressure-viscosity-
incompressibility-velocity packet.

## 2. What it controls

The identity controls signed stretching:

```math
\int_I\int\phi\,\omega\cdot S\omega
=
{1\over2}\left[\int\phi|\omega|^2\right]_{t=a}^{t=b}
+
\nu\int_I\int\phi|\nabla\omega|^2
-
{\nu\over2}\int_I\int(\Delta\phi)|\omega|^2 .
```

This is useful. It puts signed rotational amplification inside the same
material ledger.

The positive material clock needs more:

```math
\int_I\int\phi|\omega\cdot S\omega|
```

or, more generally, the positive deformation/pressure-service/tower record
that dominates

```math
d[\log(1+\mathcal P_N^{mat})]_+ .
```

The signed enstrophy identity does not control this total positive quantity.
Positive and negative stretching can cancel in the signed ledger while the
positive material action remains large.

## 3. Pure strain normal form shows vorticity is not the whole clock

There is a sharper same-packet reason. Take the exact local incompressible
Navier-Stokes normal form

```math
u(x)=Ax,
\qquad
p(x)=-{1\over2}x\cdot A^2x,
\qquad
A=A^T,
\qquad
\operatorname{tr}A=0 .
```

Then

```math
(u\cdot\nabla)u+\nabla p=0,
\qquad
\Delta u=0,
\qquad
\nabla\cdot u=0.
```

So this is an exact local pressure-balanced Navier-Stokes packet.

Its vorticity is zero:

```math
\omega=0.
```

Therefore the vorticity stretching channel is zero:

```math
\omega\cdot S\omega=0.
```

But the material metric clock is positive in a stretching direction. If
`F=D_aX`, then

```math
{d\over dt}\log|F(t)e|=e\cdot Ae
```

for a unit eigenvector `e`. For a positive eigenvalue `lambda`,

```math
\int_0^T d[\log|F(t)e|]_+=\lambda T>0.
```

The annular stress-work is also not absent; it is carried by pressure/strain
through

```math
T=-pI+2\nu S.
```

Thus a material annulus can have positive strain/metric action while the
vorticity stretching channel sees nothing.

## 4. Verdict

The strain-vorticity ledger is native and exact, but it is not the whole
producer of the full material clock.

It proves a same-packet coordinate:

```math
\text{signed vorticity stretching is paid by enstrophy, viscosity, and collar terms.}
```

It does not prove:

```math
\text{finite positive pressure-strain material action for the whole annular stack.}
```

Therefore `GlobalSamePacketFullClockFromOriginalData.A` cannot be reduced to
vorticity stretching alone. The remaining producer must include pure strain,
pressure-balanced annular stress-work, material metric growth, and tower service
as one pressure-viscosity-incompressibility-velocity clock.