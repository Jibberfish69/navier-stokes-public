---
theorem_id: forward-gold-pressure-time-cubic-strain-service-clock-test-20260625
status: exact-service-test-reduces-to-signed-cancellation-or-continuation-strength-gradient-clock
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Attacks the two active terms left by the frequency-controlled annular return
  calculation: pressure-time elliptic service and cubic strain service. The
  calculation stays on the original smooth material history and keeps pressure,
  viscosity, incompressibility, and velocity coupled. The local-energy surface
  controls the entrance spectrum, linear viscous tail, and fixed-threshold
  finite-collar pieces, but it does not control the rectified cubic annular
  density |U||grad U|^2 or the pressure-time service produced by D_tP. Absolute
  control of these terms requires gradient-clock strength equivalent to the
  remaining full material clock. The only noncircular closure from this surface
  is a signed same-packet cancellation before rectification, or an independent
  proof of the full material clock.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-frequency-controlled-annular-return-direct-attempt-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-annular-density-bridge-direct-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-strain-eigenvalue-shape-law-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-terminal-pressure-hessian-no-sustain-attempt-20260517.md
  - problems/navier-stokes/theorem-construction/mpp-pressure-hessian-partner-graph-normal-form-20260517.md
---

# Pressure-Time / Cubic-Strain Service Clock Test

Date: 2026-06-25

## 0. Target

The physical object remains one original smooth material spike-wave history.
The transported annular stress-work derivative has already been reduced to the
same-packet spatial density

```math
\begin{aligned}
\mathcal S_\phi^\sharp
:={}&
|\nabla\cdot T^\sharp|\,|T^\sharp|\,|\nabla\phi|
+
|U|\,|\nabla(-\Delta)^{-1}\mathcal E_P|\,|\nabla\phi|\\
&+
|\nabla\cdot T^\sharp|\,|U|\,|\nabla^2\phi|
+
|\nabla\cdot T^\sharp|\,|\nabla U|\,|\nabla\phi|\\
&+
|U|\,|\nabla U|^2|\nabla\phi|
+
|U|\,|T^\sharp|\,|\nabla U|\,|\nabla\phi|,
\end{aligned}
\tag{PCS.1}
```

where

```math
D_tU=\nabla\cdot T^\sharp,
\qquad
T^\sharp=-PI+2\nu S(U),
\qquad
\nabla\cdot U=0.
\tag{PCS.2}
```

The live estimate is

```math
\int_0^{T_*}
\sum_j2^{\gamma j}
\|\Delta_j\mathcal S_\phi^\sharp(t)\|_{L_x^1}\,dt<\infty.
\tag{PCS.3}
```

The already-installed frequency calculation pays the initial spectrum and the
linear viscous high-frequency tail.  The active terms left in `(PCS.1)` are the
pressure-time elliptic service and the cubic strain service.

## 1. Cubic strain service

The cubic term is

```math
S_5(t)=\int_{\operatorname{collar}\phi}|U|\,|\nabla U|^2|\nabla\phi|\,dx.
\tag{PCS.4}
```

Ignoring the fixed collar coefficient, the best local-energy Hölder route is

```math
\int |U|\,|\nabla U|^2
\le
\|U\|_{L^6}\,\|\nabla U\|_{L^2}\,\|\nabla U\|_{L^3}.
\tag{PCS.5}
```

Sobolev gives

```math
\|U\|_{L^6}\lesssim \|\nabla U\|_{L^2}.
\tag{PCS.6}
```

Thus

```math
\int |U|\,|\nabla U|^2
\lesssim
\|\nabla U\|_{L^2}^2\,\|\nabla U\|_{L^3}.
\tag{PCS.7}
```

The energy inequality supplies

```math
\nabla U\in L_t^2L_x^2.
\tag{PCS.8}
```

It does not supply

```math
\nabla U\in L_t^1L_x^3
\quad\text{or}\quad
\int\|\nabla U\|_{L^3}\,dt<\infty.
\tag{PCS.9}
```

Interpolating instead gives

```math
\|\nabla U\|_{L^3}
\lesssim
\|\nabla U\|_{L^2}^{1/2}\,\|\nabla^2U\|_{L^2}^{1/2},
\tag{PCS.10}
```

so the absolute cubic bound requires second-gradient clock strength.  That is a
continuation-level material record, not a consequence of the local energy
surface.

Therefore the direct absolute estimate for `(PCS.4)` would assume the full
material clock rather than derive it.

## 2. Pressure-time elliptic service

The pressure-time term is

```math
S_2(t)=\int_{\operatorname{collar}\phi}
|U|\,|\nabla(-\Delta)^{-1}\mathcal E_P|\,|\nabla\phi|\,dx.
\tag{PCS.11}
```

The exact material pressure source produced by differentiating

```math
-\Delta P=\partial_iU_j\partial_jU_i
\tag{PCS.12}
```

has the form

```math
\begin{aligned}
\mathcal E_P={}&
\left(\partial_i\partial_kT^\sharp_{jk}
-\partial_iU_k\partial_kU_j\right)\partial_jU_i\\
&+
\partial_iU_j
\left(\partial_j\partial_kT^\sharp_{ik}
-\partial_jU_k\partial_kU_i\right)\\
&-2\partial_iU_k\partial_{ik}P
-(\Delta U_k)\partial_kP.
\end{aligned}
\tag{PCS.13}
```

Calderon-Zygmund and Riesz-potential estimates keep `(PCS.11)` inside the
pressure tower, but they do not lower it to energy.  The source contains second
stress derivatives, pressure-Hessian service, and cubic gradient terms.
Consequently, an absolute estimate for `(PCS.11)` again requires either the
same continuation-strength gradient/pressure clock or a signed cancellation
before the absolute value is taken.

## 3. Same-packet interpretation

The failure above is not an ontology failure.  The active terms are not detached
from the annulus.  They are exactly the same-fluid pressure-viscosity-
incompressibility-velocity service that makes the annular payback happen.

The pressure Hessian term is the directional incompressibility force.  In the
strain equation

```math
D_tS+S^2+\Omega^2+\nabla^2P=\nu\Delta S,
\tag{PCS.14}
```

positive top-strain growth is decided by

```math
|\Omega e|^2-\langle e,\nabla^2P\,e\rangle
\tag{PCS.15}
```

beside the damping `-lambda_max^2` and viscosity sign.  The directional
pressure Hessian has Calderon-Zygmund partner cancellation in the full pressure
field, but the one-sided selected positive lobe is controlled only if the
opposite-sign partner remains in the same material annular ledger or is charged
there.

That is the physical meaning of the old pressure partner graph: pressure is the
annulus' internal incompressibility force, and its selected rectified action
must be paid by same-history partner retention, collar/legal stress-work, donor
return, or a signed same-packet cancellation.

## 4. Exact proof-state result

The currently available energy/frequency/cascade inputs prove:

```math
\text{initial high-frequency entrance}+
\text{linear viscous high-frequency tail}+
\text{fixed-threshold finite-collar support}
<\infty.
\tag{PCS.16}
```

They do not prove the active rectified terms

```math
\int_0^{T_*}
\left(
S_2(t)+S_5(t)
\right)dt<\infty.
\tag{PCS.17}
```

without adding a continuation-strength gradient/pressure clock.

So the only noncircular continuation of this surface is:

```math
\boxed{
\text{prove signed same-packet cancellation for the pressure-time/cubic-strain service before rectification,}
}
\tag{PCS.18}
```

or equivalently prove the original live theorem

```math
\boxed{
\int_0^{T_*}d\Omega_N^{full}(t)<\infty.
}
\tag{PCS.19}
```

This note therefore rules out an energy-only or fixed-cascade closure of the
remaining service clock.  It keeps the physical object intact and names the
exact same-packet action still needed: signed pressure-Hessian / strain-vorticity
annular service control on the original material history.