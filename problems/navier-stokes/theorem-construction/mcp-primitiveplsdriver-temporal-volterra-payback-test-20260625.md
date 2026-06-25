---
theorem_id: primitiveplsdriver-temporal-volterra-payback-test-20260625
status: direct-pressure-test-installed; temporal-payback-attaches-history-but-does-not-produce-superheat-pls-residence
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Tests the remaining possible shortcut after the primitive PLS driver pointwise
  contraction failure: a temporal Volterra or later-payback contraction along
  the same material history. The result is negative in the exact useful sense.
  The heat kernel absorbs subheat service, and transported annular payback
  attaches center motion to the outer annular stress/strain history. On the
  superheat branch the Volterra exponent is the same material clock being
  sought, while rectifying the signed payback requires the material-service
  variation density already identified as continuation-strength. Thus temporal
  causality is real attachment, not a noncircular producer of finite full PLS
  clock.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mcp-primitiveplsdriver-pointwise-contraction-ancestry-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-later-payback-preterminal-causality-clock-producer-test-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-service-variation-direct-calculation-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-pump-subheat-absorption-superheat-record-dichotomy-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-residence-fixed-hs-equivalence-20260625.md
---

# Primitive PLS Driver Temporal Volterra / Payback Test

Date: 2026-06-25

## 0. Object

The live object is the same transported material spike-wave history, not a
detached active shell.  The primitive full participation-law--strain driver is

```math
d\Omega_N^{PLS,primitive}
\simeq
\sum_j w_j
\left[
\left\langle H_{j,N},
\mathcal M_{<j-C,N}H_{j,N}
\right\rangle
\right]_+dt
+dR_N^{paid}.
\tag{TVP.1}
```

The pointwise test already shows that incompressibility, trace-free strain,
pressure ellipticity, and shell gap do not give a pointwise contraction for the
positive low-high quadratic form.  This note tests whether the missing strict
factor can come from temporal causality: Duhamel/Volterra propagation or the
later annular payback mechanism.

## 1. Volterra form of the active shell

The same-shell material energy satisfies the schematic top-rank inequality

```math
{d\over dt}e_j(t)
+c\nu2^{2j}e_j(t)
\le
C\Theta_j^{mat}(t)e_j(t)
+r_j(t),
\tag{TVP.2}
```

where

```math
\Theta_j^{mat}
=
\Theta_j^{strain}
+\Theta_j^{press}
+\Theta_j^{coef}
+\Theta_j^{collar}
\tag{TVP.3}
```

is the full material rate of the same pressure-viscosity-incompressibility-
velocity packet.  Integrating `(TVP.2)` gives

```math
\begin{aligned}
e_j(t)
\le{}&
e^{-c\nu2^{2j}(t-s)}e_j(s)\\
&+
\int_s^t
e^{-c\nu2^{2j}(t-\tau)}
\left(C\Theta_j^{mat}(\tau)e_j(\tau)+r_j(\tau)\right)d\tau .
\end{aligned}
\tag{TVP.4}
```

On the subheat set

```math
\Theta_j^{mat}\le\delta2^{2j},
\tag{TVP.5}
```

the heat exponent gives the already installed absorption.

The only live branch is the superheat set

```math
\Theta_j^{mat}>\delta2^{2j}.
\tag{TVP.6}
```

On `(TVP.6)`, the exponent in the natural Gronwall form is

```math
\int_s^t
\left(C\Theta_j^{mat}(\tau)-c\nu2^{2j}\right)d\tau .
\tag{TVP.7}
```

That exponent is controlled exactly by the material clock.  Therefore the
Volterra formula does not yield

```math
d\Omega_N^{PLS,primitive,self}
\le
\theta\,d\Omega_N^{PLS,primitive,self}
+dR_N^{paid},
\qquad \theta<1,
\tag{TVP.8}
```

on the superheat branch.  It restates the same requirement: finite superheat
material residence.

## 2. Later payback gives signed attachment, not rectified production

For a transported annular cutoff, the preterminal payback identity is

```math
{d\over dt}M_\phi(t)
+2\nu\int\phi |S|^2dx
=
-\int u\cdot T\nabla\phi\,dx,
\qquad
T=-pI+2\nu S .
\tag{TVP.9}
```

This proves that center storage change is carried by the same-fluid annular
stress/strain history.  It is the correct physical attachment statement.

The primitive clock is a rectified positive action.  A signed service density
does not control its rectified action by net payback alone.  For the pulled-back
annular service \(a_\psi(t)=F_\psi'(t)\), the installed variation calculation
gives

```math
\int_I [a_\psi(t)]_+\,dt
\le
\left[\int_I a_\psi(t)\,dt\right]_+
+ |I|\int_I\mathcal V_\psi(t)\,dt.
\tag{TVP.10}
```

The first term is the signed later payback.  The second term is the time
variation of the same annular stress/strain service.  The direct material
calculation identifies \(\mathcal V_\psi\) as a finite expression in

```math
v,\ q,\ A,\ G,\ \partial_tv,\ \partial_tq,\ \partial_{tt}v,\ \partial_{tt}q,
\partial_tA,\ \partial_{tt}A,
\tag{TVP.11}
```

with pressure time derivatives closed by the same material elliptic equation.
That is the full material pressure/strain/coefficient/collar clock.  Thus
later payback supplies attachment and signed return, while rectification still
requires finite full PLS variation.

## 3. Exact conclusion

The temporal route proves two useful facts:

```math
\text{subheat service is absorbed by same-shell viscosity,}
\tag{TVP.12}
```

and

```math
\text{center motion is attached to the same outer-annulus history.}
\tag{TVP.13}
```

It does not produce the MPP-strength estimate

```math
\int_0^{T_*}
\sum_j
\Theta_j^{mat}(t)e_j(t)
\mathbf 1_{\{\Theta_j^{mat}(t)>\delta2^{2j}\}}
\,dt
<\infty .
\tag{TVP.14}
```

The remaining nonconditional theorem is still the same full object, not a
pressure-only or viscosity-only proxy:

```math
\exists\,\mathscr A_N(t)\ge -C_N(u_0)
\quad\text{such that}\quad
d\mathscr A_N
+c_N\,d\Omega_N^{PLS,primitive}
\le dR_N^{legal},
\tag{TVP.15}
```

or an equivalent strict temporal no-self-birth estimate for the superheat
primitive driver.  Any proof of `(TVP.15)` must create a bounded-below
same-material entropy for the full PLS driver; the standard Volterra and
later-payback identities are consumers/attachment identities unless they are
upgraded by exactly that entropy.
