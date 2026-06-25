---
theorem_id: forward-gold-localized-affine-core-matching-cost-vs-summability-test-20260625
status: exact-matching-cost-installed; summability-reduces-to-high-tower-material-clock-budget
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Tests the global matching version of the local affine-strain normal form on
  the original periodic material history.  A localized affine-looking critical
  core cannot extend as a nonzero periodic affine field.  Matching it to the
  surrounding same fluid forces a collar or parent-region higher-derivative
  bill on the natural heat-time slab.  This proves that the affine-looking
  core is not free and that the annular return is attached.  It does not by
  itself close the MPP: summing infinitely many such critical core bills
  requires exactly the high-tower/material-record budget that is the remaining
  full-clock producer.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-time-varying-affine-strain-local-normal-form-record-growth-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-periodic-affine-strain-mismatch-return-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-affine-core-finite-energy-collar-cost-direct-test-20260611.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-sample-energy-compatibility-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-global-full-clock-continuation-strength-audit-20260625.md
---

# Localized Affine Core Matching Cost Versus Summability Test

Date: 2026-06-25

## 0. Object

The object is the original smooth periodic material history.  A local
affine-looking spike core is not a separate model; it is a tangent description
of a region of the same fluid.

The exact question here is:

Does the forced collar/matching cost of a localized affine-looking critical
core already give a summable global budget?

The answer is no.  It gives a real per-core cost, but the summability currency
is the higher-tower/material-record clock.

## 1. Critical localized affine scale

Let a core have spatial width \(r\) and critical affine gradient size

```math
|A_r|\sim{\nu\over r^2}.
\tag{LAM.1}
```

The velocity size inside the core is

```math
|u|\sim |A_r|r\sim{\nu\over r}.
\tag{LAM.2}
```

So the raw kinetic energy in the core is

```math
E_r
\sim
|u|^2r^3
\sim
{\nu^2\over r^2}r^3
\sim
\nu^2 r.
\tag{LAM.3}
```

The raw first-gradient energy at one time is

```math
\int_{B_r}|\nabla u|^2\,dx
\sim
|A_r|^2r^3
\sim
{\nu^2\over r}.
\tag{LAM.4}
```

On the natural heat-time slab

```math
I_r=(t_r-c r^2/\nu,t_r),
\tag{LAM.5}
```

the raw viscous dissipation has size

```math
\nu\int_{I_r}\int_{B_r}|\nabla u|^2\,dx\,dt
\sim
\nu\left({\nu^2\over r}\right){r^2\over\nu}
\sim
\nu^2 r.
\tag{LAM.6}
```

Thus energy and raw dissipation see the critical core with an \(r\)-weight.

## 2. Material strain clock on the same core

The material strain rate on the same slab has size

```math
\|\nabla u\|_{L^\infty(B_r)}
\sim
{\nu\over r^2}.
\tag{LAM.7}
```

Therefore the material deformation clock across the heat-time slab is

```math
\int_{I_r}\|\nabla u(t)\|_{L^\infty(B_r)}\,dt
\sim
{\nu\over r^2}{r^2\over\nu}
\sim
1.
\tag{LAM.8}
```

This is the exact scaling split:

```math
\text{raw energy/dissipation cost}\sim r,
\qquad
\text{material-record cost}\sim1.
\tag{LAM.9}
```

So an infinite critical sequence with \(\sum_m r_m<\infty\) is not excluded by
raw energy accounting.

## 3. Periodic matching forces a higher-derivative collar bill

A nonzero affine field cannot be global periodic.  Therefore a local core
with gradient \(A_r\) must be matched to the surrounding same fluid.

Let \(B_r\subset B_R\) and assume a parent energy bound

```math
\int_{B_R}|u(t)|^2\,dx\le E_R.
\tag{LAM.10}
```

If the first-gradient lower bound holds,

```math
\int_{B_r}|\nabla u(t)|^2\,dx\ge c{\nu^2\over r},
\tag{LAM.11}
```

then the interpolation inequality on \(B_R\) gives

```math
\|\nabla u\|_{L^2(B_R)}^2
\le
C\|u\|_{L^2(B_R)}\|\nabla^2u\|_{L^2(B_R)}
+CR^{-2}\|u\|_{L^2(B_R)}^2.
\tag{LAM.12}
```

At sufficiently small \(r\), the lower bound `(LAM.11)` dominates the
lower-order parent-energy term in `(LAM.12)`, and hence

```math
\|\nabla^2u(t)\|_{L^2(B_R)}
\ge
c{\nu^2\over rE_R^{1/2}}.
\tag{LAM.13}
```

If `(LAM.11)` persists on a subset \(G_r\subset I_r\) with

```math
|G_r|\ge\theta {r^2\over\nu},
\tag{LAM.14}
```

then

```math
\nu\int_{G_r}\int_{B_R}|\nabla^2u|^2\,dx\,dt
\ge
c_\theta{\nu^4\over E_R}.
\tag{LAM.15}
```

This is independent of \(r\).  The affine-looking core is not free.  Its
periodic/same-fluid matching pays a fixed higher-derivative collar or
parent-region bill on its natural slab.

## 4. Why this still does not close the clock

The bill `(LAM.15)` is in higher-tower currency.  To rule out infinitely many
critical cores by summing `(LAM.15)`, one needs

```math
\int_0^{T_*}\int|\nabla^2u|^2\,dx\,dt<\infty
\tag{LAM.16}
```

or a localized same-material replacement dominating the selected parent-region
bills.

The global energy inequality supplies only

```math
\int_0^{T_*}\int|\nabla u|^2\,dx\,dt<\infty.
\tag{LAM.17}
```

It does not supply `(LAM.16)`.  The enstrophy identity contains
\(\int|\nabla^2u|^2\), but its right side is the nonlinear strain/pressure
transfer.  Controlling that right side is the same high-tower/material-clock
problem.

So the collar estimate proves attachment and per-core pricing, while the
remaining summability problem is exactly the full material clock:

```math
\int_0^{T_*}d[\log(1+\mathcal P_N^{mat})]_+<\infty.
\tag{LAM.18}
```

## 5. Exact consequence

The physical picture removes the fake detached pulse:

```math
\text{localized affine-looking core}
\Longrightarrow
\text{same-fluid collar/matching bill}.
\tag{LAM.19}
```

It also removes global affine escape on the torus:

```math
\text{nonzero affine field}
\not\subset
\text{periodic material history}.
\tag{LAM.20}
```

The exact remaining claim needed for smoothness is the summability upgrade:

```math
\text{all same-fluid collar/matching bills over terminal critical samples}
\in L^1_t.
\tag{LAM.21}
```

That upgrade is equivalent, at this edge, to a finite high-tower/material-record
clock.  It is not a consequence of raw energy, thinning, or attachment alone.
