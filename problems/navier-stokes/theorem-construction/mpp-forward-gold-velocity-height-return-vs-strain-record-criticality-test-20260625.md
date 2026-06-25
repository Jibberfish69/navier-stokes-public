---
theorem_id: forward-gold-velocity-height-return-vs-strain-record-criticality-test-20260625
status: exact-physical-scaling-test-installed; velocity-amplitude-thinning-alone-does-not-close-material-record-clock
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Tests the user's spike-wave ontology in native physical variables: velocity
  height, packet width, advection time, viscous return time, energy, and strain.
  The calculation shows exactly why the physical framing removes fake detached
  pulse problems while still leaving the material-record clock. A velocity spike
  at the Navier-Stokes critical relation U ~ ell^{-1} has vanishing raw energy
  U^2 ell^3 ~ ell, heat-scale return time ell^2, and order-one strain clock
  (U/ell) ell^2. Thus finite energy and thinning do not by themselves forbid
  infinitely many terminal heat-scale samples. The remaining theorem is the
  same-material positive strain/pressure/annular action clock, not attachment.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-physical-ontology-to-material-record-clock-exact-reduction-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-initial-amplitude-thinning-to-material-record-variation-direct-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-strain-eigenvalue-shape-law-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-data-full-material-clock-producer-direct-attack-20260625.md
---

# Velocity Height Return Vs Strain Record Criticality Test

Date: 2026-06-25

## 0. Object

The object is one original smooth Navier--Stokes material history.  The center
spike, the annular layers under it, and the later stress/strain return are not
separate packet events.

This note tests the physical spike picture in scale variables:

```math
U=\text{velocity height above the local gauge},
\qquad
\ell=\text{spatial width of the active material packet}.
\tag{VH.1}
```

The purpose is to separate the branch killed by finite energy from the branch
that still carries the continuation-depth material clock.

## 1. Native scale ledger

For a packet of velocity size \(U\) on spatial width \(\ell\), the raw kinetic
energy scale is

```math
E_{\ell}\sim U^2\ell^3.
\tag{VH.2}
```

The advective time scale is

```math
t_{adv}\sim {\ell\over U}.
\tag{VH.3}
```

The viscous diffusion or return time scale is

```math
t_{\nu}\sim {\ell^2\over\nu}.
\tag{VH.4}
```

The strain scale is

```math
S_{\ell}\sim {U\over\ell}.
\tag{VH.5}
```

Therefore the material strain clock spent over one heat-scale window is

```math
S_{\ell}t_{\nu}
\sim
{U\over\ell}\,\ell^2
=
U\ell
\tag{VH.6}
```

up to the fixed viscosity normalization.

## 2. What finite energy rules out

Finite total energy gives only

```math
U^2\ell^3\lesssim E_0.
\tag{VH.7}
```

So a spike cannot become both arbitrarily tall and remain fat.  If \(U\to
\infty\), then any positive-energy spike core must thin:

```math
\ell\lesssim E_0^{1/3}U^{-2/3}.
\tag{VH.8}
```

This is the correct height-width consequence of finite energy.  It eliminates
the fake picture where infinite velocity height carries a fixed positive
volume.

It does not eliminate a thinner Navier--Stokes critical spike.

## 3. The critical spike that energy does not kill

The Navier--Stokes scaling relation is

```math
U\sim \ell^{-1}.
\tag{VH.9}
```

On that relation,

```math
E_{\ell}\sim U^2\ell^3\sim \ell,
\tag{VH.10}
```

so the raw energy in the packet goes to zero as the width goes to zero.

The two native times are then both heat-scale:

```math
t_{adv}\sim {\ell\over U}\sim \ell^2,
\qquad
t_{\nu}\sim \ell^2.
\tag{VH.11}
```

The strain is

```math
S_{\ell}\sim {U\over\ell}\sim \ell^{-2}.
\tag{VH.12}
```

Thus the strain clock spent over the heat-scale window is order one:

```math
S_{\ell}t_{\nu}
\sim
\ell^{-2}\ell^2
\sim 1.
\tag{VH.13}
```

This is the exact physical reason the shrinking heat-scale sample remains
visible to the material record while its raw kinetic energy vanishes.

## 4. Meaning for the pay-back-later picture

The later annular return is real and same-material.  It is measured by the
transported stress identity

```math
{d\over dt}\int {1\over2}|u|^2\phi\,dx
+
2\nu\int\phi|S|^2\,dx
=
-\int u\cdot(-pI+2\nu S)\nabla\phi\,dx.
\tag{VH.14}
```

The important point is that the return time also shrinks with the active width:

```math
\text{return time}\sim \ell^2.
\tag{VH.15}
```

So the payback is not detached and it is not absent.  It is compressed into the
same heat-scale window as the spike.  Repeated thinner spikes can therefore
produce repeated order-one material-record samples while each individual raw
energy packet tends to zero.

This is not an arbitrary external oscillation model.  It is the native
Navier--Stokes critical scaling of the original material history.

## 5. Consequence for the remaining theorem

The velocity-height picture proves:

```math
\text{infinite-height fat spike}
\quad\text{is impossible by finite energy.}
\tag{VH.16}
```

The continuation problem is the critical strain/material-record picture:

```math
U\sim\ell^{-1},
\qquad
S\sim\ell^{-2},
\qquad
t\sim\ell^2,
\qquad
St\sim1.
\tag{VH.17}
```

So the gold route cannot close by finite energy plus thinning alone.  It must
prove that the original material history cannot contain infinitely many
positive heat-scale material-record samples before a finite terminal time:

```math
\int_0^{T_*}
d[\log(1+\mathcal P_N^{mat})]_+
<\infty.
\tag{VH.18}
```

Equivalently, it must prove the finite full pressure-viscosity-
incompressibility-velocity clock:

```math
\int_0^{T_*}d\Omega_N^{full}<\infty.
\tag{VH.19}
```

## 6. Verdict

The physical ontology removes the fake detached-pulse problem.  It also shows
why the problem does not reduce to raw energy or velocity amplitude.

The true remaining object is the same-material strain/pressure annular return
at the Navier--Stokes critical scale, where energy vanishes but material-record
clock remains order one.  Proving finite total variation of that record is
exactly `GlobalSamePacketFullClockFromOriginalData.A`.
