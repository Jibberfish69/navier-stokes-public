---
theorem_id: forward-gold-superheat-scalar-storage-exhaustion-test-20260625
status: direct-test-installed-scalar-superheat-storages-do-not-produce-residence
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Attacks the remaining bounded-below storage line at the superheat shell
  variables themselves. A shell-energy storage has the known wrong sign:
  positive superheat pump is positive weighted-energy growth plus viscous and
  interface service, while the negative storage is bounded below only after the
  continuation-depth energy is already bounded. A cumulative material-record
  storage can pay \(\Theta_j^{mat}e_j\) only by using an unsaturated primitive
  of the material-rate clock, which becomes unbounded below on the hard case;
  saturating it makes the total payable drop finite and no longer pays
  residence. An instantaneous heat-ratio storage introduces \(\dot\Theta_j\)
  and therefore exactly the acceleration/interface-variation clock already
  isolated. Thus the missing producer cannot be a scalar storage of
  shell-energy, cumulative material-rate, or heat-ratio variables. It must be a
  full same-material pressure-viscosity-incompressibility-velocity
  no-free-acceleration law, or a genuinely coupled bounded-below storage whose
  lower bound does not assume the continuation conclusion.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-intrinsic-time-shell-ode-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-weighted-energy-antipump-storage-sign-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-interface-variation-coercivity-direct-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-updown-shell-recirculation-balance-direct-test-20260625.md
---

# Superheat Scalar Storage Exhaustion Test

Date: 2026-06-25

## 0. Object

The object is one original smooth material history.  On an active shell,

```math
{d\over dt}e_j+d_j=m_j,
\qquad
d_j\gtrsim \nu2^{2j}e_j
\tag{SSE.1}
```

up to the same coefficient/collar terms already kept inside the full packet.
The unabsorbed superheat residence is

```math
\mathcal R_{sh,j}
=
\Theta_j^{mat}e_j
\mathbf 1_{\{\Theta_j^{mat}>\delta2^{2j}\}},
\tag{SSE.2}
```

where

```math
\Theta_j^{mat}
=
\Theta_j^{strain}
+\Theta_j^{press}
+\Theta_j^{coef}
+\Theta_j^{collar}.
\tag{SSE.3}
```

The pressure part of `(SSE.3)` is the material pressure elliptic service tied
to incompressibility and the material coefficient \(A\).  It is not separated
from participation.

This note tests whether `(SSE.2)` can be paid by a bounded-below scalar storage
built from the visible one-shell variables.

## 1. Shell energy is not the storage

For the weighted shell energy, the exact sign relation is already

```math
{d\over dt}e_j+d_j=m_j.
\tag{SSE.4}
```

On positive pump times,

```math
[m_j]_+
=
{d\over dt}e_j+d_j
\qquad (m_j>0).
\tag{SSE.5}
```

Thus \(e_j\) has the wrong sign as a one-way storage: pump events are precisely
times when the storage grows, apart from viscous loss.  The storage \(-e_j\)
has the right sign but is bounded below only if \(e_j\) is already bounded
above:

```math
-e_j(t)\ge -C
\quad\Longleftrightarrow\quad
e_j(t)\le C.
\tag{SSE.6}
```

That is the continuation-depth conclusion, so it cannot be used as the
producer.

## 2. Cumulative material-rate primitives become circular

Let

```math
Y_j(t)=\int_0^t\Theta_j^{mat}(s)\,ds .
\tag{SSE.7}
```

A storage that tries to pay residence by the cumulative material-rate clock
has the model form

```math
B_j(t)=-e_j(t)\psi(Y_j(t)).
\tag{SSE.8}
```

Differentiating gives

```math
{d\over dt}B_j
=
-\psi(Y_j){d e_j\over dt}
-e_j\psi'(Y_j)\Theta_j^{mat}.
\tag{SSE.9}
```

The second term can pay \(e_j\Theta_j^{mat}\) only while

```math
\psi'(Y_j)\ge c>0.
\tag{SSE.10}
```

If `(SSE.10)` holds along an unbounded material-rate history, then

```math
\psi(Y_j)\ge cY_j-C,
\tag{SSE.11}
```

so \(B_j=-e_j\psi(Y_j)\) is unbounded below whenever the active shell retains
a positive energy floor while \(Y_j\to\infty\).  That is exactly the hard
superheat residence case.

If \(\psi\) is saturated to keep \(B_j\) bounded below, then
\(\psi'\) is integrable in \(Y_j\).  The total drop available from the
material-rate primitive is only

```math
\int e_j\psi'(Y_j)\Theta_j^{mat}\,dt
=
\int e_j\,d\psi(Y_j).
\tag{SSE.12}
```

For the hard case where \(e_j\) does not decay enough to make residence finite,
`(SSE.12)` is a bounded-saturation payment, not the residence
\(\int e_j\,dY_j\).

Therefore a cumulative scalar primitive either becomes unbounded below or stops
paying the unsaturated superheat residence.

## 3. Heat-ratio storages are acceleration clocks

Let

```math
\rho_j(t)={\Theta_j^{mat}(t)\over 2^{2j}}.
\tag{SSE.13}
```

The superheat set is \(\rho_j>\delta\).  A storage depending on the
instantaneous heat ratio has model form

```math
B_j(t)=e_j(t)\chi(\rho_j(t)).
\tag{SSE.14}
```

Its derivative is

```math
{d\over dt}B_j
=
\chi(\rho_j){d e_j\over dt}
+e_j\chi'(\rho_j)\dot\rho_j .
\tag{SSE.15}
```

The first term is only the signed shell balance `(SSE.4)`.  The second term is
not the first residence `(SSE.2)`; it is a variation term:

```math
e_j|\chi'(\rho_j)|\,|\dot\rho_j|
\lesssim
2^{-2j}e_j\,|\dot\Theta_j^{mat}|.
\tag{SSE.16}
```

After expanding \(\dot\Theta_j^{mat}\) through the material Navier--Stokes
law, `(SSE.16)` is exactly the pressure-strain/coefficient/collar
acceleration/interface-variation clock already isolated by the full-packet
calculation.

In the constant-ratio superheat case \(\dot\rho_j=0\), this storage contributes
no heat-ratio drop at all, while the residence
\(\Theta_j^{mat}e_j\) may still persist.

Thus heat-ratio storage proves only:

```math
\text{finite heat-ratio/interface variation}
\quad\Longrightarrow\quad
\text{finite controlled recirculation}.
\tag{SSE.17}
```

It does not produce finite first superheat residence.

## 4. Consequence

The scalar candidates are exhausted at the same-shell level:

```math
\text{shell energy}
\quad
\text{cumulative material-rate primitive}
\quad
\text{instantaneous heat-ratio storage}
\tag{SSE.18}
```

all preserve the one-fluid ontology, but none gives a noncircular bounded-below
drop for `(SSE.2)`.

The live producer is therefore not another scalar shell storage.  It is one of:

```math
\int_0^{T_*}
\sum_j
\Theta_j^{mat}e_j
\mathbf 1_{\{\Theta_j^{mat}>\delta2^{2j}\}}\,dt<\infty,
\tag{SSE.19}
```

proved directly as a full pressure-viscosity-incompressibility-velocity
no-free-acceleration law, or

```math
\int_0^{T_*}
\sum_j
\left({\Theta_j^{mat}\over2^{2j}}\right)
\Theta_j^{mat}e_j
\mathbf 1_{\{\Theta_j^{mat}>\delta2^{2j}\}}\,dt<\infty,
\tag{SSE.20}
```

proved as finite same-interface acceleration variation, or a genuinely coupled
bounded-below same-material storage whose lower bound is not equivalent to the
continuation-depth energy bound.

