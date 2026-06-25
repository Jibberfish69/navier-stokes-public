---
theorem_id: forward-gold-localized-affine-collar-enstrophy-balance-scaling-test-20260625
status: exact-scaling-test-installed; collar-higher-tower-bill-is-not-one-way-loss-without-nonlinear-work-control
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Tests whether the localized affine-core matching bill becomes a one-way
  viscous loss through the enstrophy identity.  It does not.  On the same
  critical localized core, the viscous higher-tower term and the nonlinear
  enstrophy-transfer term have the same natural scale on the heat-time slab.
  Therefore the collar bill is real, but it is not automatically summable from
  viscosity alone.  Summing it requires control of the positive nonlinear
  pressure/strain work, equivalently the same high-tower/material-record full
  clock.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-localized-affine-core-matching-cost-vs-summability-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-enstrophy-ode-no-hidden-full-clock-producer-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-betchov-strain-vorticity-net-vs-rectified-clock-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-all-scale-pressure-stress-transfer-pump-split-20260625.md
---

# Localized Affine Collar Enstrophy-Balance Scaling Test

Date: 2026-06-25

## 0. Object

The localized affine-looking core has already been priced: matching it to the
surrounding periodic same fluid forces a collar or parent-region higher-tower
bill.

This note tests the next possible closure:

Does that higher-tower bill become a one-way viscous loss that can be summed by
the Navier--Stokes enstrophy balance?

The answer is no.  The nonlinear transfer term has the same critical size.

## 1. Enstrophy balance

For the original smooth solution,

```math
{1\over2}{d\over dt}\|\nabla u(t)\|_2^2
+
\nu\|\Delta u(t)\|_2^2
=
-\int (u\cdot\nabla)u\cdot\Delta u\,dx .
\tag{EBS.1}
```

The higher-tower collar bill appears in the positive term

```math
\nu\|\Delta u(t)\|_2^2.
\tag{EBS.2}
```

It is a loss only after the right-hand nonlinear work is controlled.

## 2. Critical localized affine scaling

At a critical localized affine-looking scale \(r\),

```math
|u|\sim{\nu\over r},
\qquad
|\nabla u|\sim{\nu\over r^2}.
\tag{EBS.3}
```

The matching collar changes this affine core across distance \(r\), so

```math
|\Delta u|\sim{\nu\over r^3}
\tag{EBS.4}
```

on a collar of volume \(\sim r^3\).  On the heat-time slab

```math
|I_r|\sim {r^2\over\nu}.
\tag{EBS.5}
```

The viscous higher-tower bill has scale

```math
\nu\int_{I_r}\int_{\text{collar}}|\Delta u|^2\,dx\,dt
\sim
\nu\left({\nu^2\over r^6}\right)r^3{r^2\over\nu}
\sim
{\nu^2\over r}.
\tag{EBS.6}
```

This may be larger than the lower bound supplied by the parent-energy
interpolation argument; it is the direct cutoff-collar scaling.

## 3. Nonlinear enstrophy work has the same scale

The nonlinear term in `(EBS.1)` has local size

```math
|(u\cdot\nabla)u\cdot\Delta u|
\sim
{|u|\,|\nabla u|\,|\Delta u|}
\sim
{\nu\over r}{\nu\over r^2}{\nu\over r^3}
=
{\nu^3\over r^6}.
\tag{EBS.7}
```

Integrated over the same collar and heat-time slab,

```math
\int_{I_r}\int_{\text{collar}}
|(u\cdot\nabla)u\cdot\Delta u|\,dx\,dt
\sim
{\nu^3\over r^6}r^3{r^2\over\nu}
\sim
{\nu^2\over r}.
\tag{EBS.8}
```

So the nonlinear work can be the same size as the viscous higher-tower bill.
The enstrophy identity records a transfer balance, not a free summable loss.

## 4. Same-packet meaning

This is not a detached nonlinear source.  The term

```math
-\int (u\cdot\nabla)u\cdot\Delta u
\tag{EBS.9}
```

is the Eulerian reading of the same pressure-viscosity-incompressibility-
velocity interaction that appears in the material annular clock.  In strain
language it is tied to the Betchov/enstrophy cubic ledger and pressure-stress
partner service.

Thus the exact implication is:

```math
\text{collar higher-tower bill}
\quad\text{is paid by}\quad
\text{viscosity minus nonlinear pressure/strain transfer}.
\tag{EBS.10}
```

The positive nonlinear transfer is precisely part of the missing full material
clock.

## 5. Consequence

The localized affine core is not free, and its same-fluid collar bill is real.
But the bill does not close the proof through viscosity alone:

```math
\sum_m
\nu\int_{I_{r_m}}\int_{\text{collar}_m}|\Delta u|^2
<\infty
\tag{EBS.11}
```

does not follow from the energy inequality.  Enstrophy contains the left side,
but the nonlinear right side has the same critical scale.

Therefore the exact summability theorem remains:

```math
\int_0^{T_*}
\left[
\text{positive nonlinear pressure/strain high-tower work}
\right]\,dt
<\infty,
\tag{EBS.12}
```

read on the original transported material history.  This is the high-tower /
material-record full clock, not a new side problem.
