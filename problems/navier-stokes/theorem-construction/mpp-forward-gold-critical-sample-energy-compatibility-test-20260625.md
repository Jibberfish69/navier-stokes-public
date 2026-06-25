---
theorem_id: forward-gold-critical-sample-energy-compatibility-test-20260625
status: exact-critical-sample-test-installed; energy-and-payback-later-do-not-exclude-infinite-critical-material-clock
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Tests the exact remaining physical possibility after the spike-wave ontology
  is enforced. A heat-scale critical sample with width ell, velocity height
  U ~ ell^{-1}, duration ell^2, and strain ell^{-2} has raw energy and raw
  dissipation cost of order ell but material strain clock of order one. Thus
  finite energy, viscous dissipation, thinning, and same-annulus payback do not
  by themselves rule out infinitely many terminal critical samples when
  sum ell_m < infinity. The missing producer must use a same-packet
  pressure-viscosity-incompressibility-velocity structure stronger than raw
  energy: a sign, coercivity, no-waste, or global material-storage principle
  for the positive material record.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-velocity-height-return-vs-strain-record-criticality-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-physical-ontology-to-material-record-clock-exact-reduction-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-data-full-material-clock-producer-direct-attack-20260625.md
---

# Critical Sample Energy Compatibility Test

Date: 2026-06-25

## 0. Object

This note keeps the physical object fixed: one original smooth material
Navier--Stokes history, with center spike, transported annular layers, pressure
response, viscous strain, incompressibility, and later stress/strain return all
inside the same packet.

The test is whether finite energy, viscosity, thinning, and payback-later
already exclude infinitely many critical heat-scale material-record samples
before \(T_*\).

## 1. One critical sample

Let \(\ell\) be the spatial width of one active material sample.  At the
Navier--Stokes critical scaling,

```math
U_\ell\sim \ell^{-1},
\qquad
\tau_\ell\sim \ell^2,
\qquad
|\nabla u|_\ell\sim \ell^{-2}.
\tag{CS.1}
```

The raw kinetic energy in that active region is

```math
E_\ell
\sim
U_\ell^2\,\ell^3
\sim
\ell^{-2}\ell^3
\sim
\ell.
\tag{CS.2}
```

The raw viscous dissipation over the heat-scale time window is

```math
D_\ell
\sim
\int_{\tau_\ell}\int_{\ell^3}|\nabla u|^2\,dx\,dt
\sim
\ell^{-4}\ell^3\ell^2
\sim
\ell.
\tag{CS.3}
```

The material strain clock over the same window is

```math
K_\ell
\sim
|\nabla u|_\ell\,\tau_\ell
\sim
\ell^{-2}\ell^2
\sim
1.
\tag{CS.4}
```

So the same physical event has small raw energy cost, small raw dissipation
cost, and order-one material-record cost.

## 2. Infinite critical samples are not excluded by energy

Take a terminal sequence of scales \(\ell_m\downarrow0\).  The total raw energy
or raw dissipation price of the sequence has the model size

```math
\sum_m E_{\ell_m}
+
\sum_m D_{\ell_m}
\sim
\sum_m \ell_m.
\tag{CS.5}
```

The total material-record clock has the model size

```math
\sum_m K_{\ell_m}
\sim
\sum_m 1.
\tag{CS.6}
```

Thus, for example, \(\ell_m=2^{-m}\) gives

```math
\sum_m \ell_m<\infty,
\qquad
\sum_m 1=\infty.
\tag{CS.7}
```

The basic energy and dissipation ledger can therefore be finite while the
material-record clock is infinite.

This is not a detached packet model.  It is the scale arithmetic of the
same-material critical samples of the original history.

## 3. Payback-later does not change the scale count

The transported annular stress identity is exact:

```math
{d\over dt}M_\phi(t)
+
2\nu\int\phi |S|^2\,dx
=
-\int u\cdot(-pI+2\nu S)\nabla\phi\,dx.
\tag{CS.8}
```

It proves attachment: the center storage change is carried by the surrounding
annular stress/strain return.

At the critical scaling, however, the return time is also heat-scale:

```math
\tau_{\mathrm{return},\ell}\sim\ell^2.
\tag{CS.9}
```

Therefore the payback-later mechanism keeps the event in the same material
history, but it does not automatically turn the order-one material clock into
an \(\ell\)-weighted energy cost.  The annular return is real; the remaining
problem is total positive material-record variation.

## 4. What this proves and what it forbids us to claim

This calculation proves that the following implication is false as a matter of
scale arithmetic:

```math
\text{finite energy + thinning + attached annular return}
\Longrightarrow
\text{finite material-record clock}.
\tag{CS.10}
```

The implication that remains possible must use more of the equation:

```math
\text{full pressure-viscosity-incompressibility-velocity law}
\Longrightarrow
\text{finite positive material-record variation}.
\tag{CS.11}
```

That extra ingredient cannot be raw energy alone.  It has to be a same-packet
sign, coercivity, no-waste, or global storage principle for the positive
material record.

## 5. Consequence for the gold route

The physical ontology still does real work:

```math
\text{detached endpoint pulse}
\quad\text{is gone,}
\tag{CS.12}
```

and

```math
\text{bounded-record infinite annular cycling}
\quad\text{is gone.}
\tag{CS.13}
```

The exact remaining case is narrower:

```math
\boxed{
\text{infinitely many same-history critical samples with finite raw energy
price and infinite material-record clock.}
}
\tag{CS.14}
```

Closing the MPP on the current gold route means proving that this last
same-material critical-sample sequence is impossible by the full coupled
Navier--Stokes participation law.
