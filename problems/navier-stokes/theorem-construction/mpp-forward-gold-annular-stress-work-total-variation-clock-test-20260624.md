---
theorem_id: forward-gold-annular-stress-work-total-variation-clock-test-20260624
status: direct-test-separates-same-material-attachment-from-total-clock-finiteness
logical_landing_node: signed_smooth_same_packet_commutator_coercivity
edge_effect: >-
  Tests the pay-it-back-later annular stress/strain mechanism at the exact
  point where the route was drifting. The transported annular identity proves
  that a center storage pulse is attached to the same-fluid outer annulus
  before any terminal limit. It does not by itself prove that the total
  normalized annular stress-work clock is finite on a shrinking heat-scale
  family. The identity controls signed net exchange; the terminal clock needs
  total variation of the pressure/strain stress-work plus material geometry
  service. Thus the remaining producer is not another detached reserve. It is
  the same-packet total-variation/coercivity theorem for annular stress-work
  cycles inside the full pressure-viscosity-incompressibility-velocity packet.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-material-annular-return-identity-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-later-payback-preterminal-causality-clock-producer-test-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-strain-local-normal-form-full-participation-sign-test-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-smooth-same-packet-commutator-direct-calculation-20260623.md
---

# Annular Stress-Work Total-Variation Clock Test

Date: 2026-06-24

## 0. Result

The same-fluid annulus is the right object.  The exact transported cutoff
identity proves attachment of the center pulse to the outer annular
stress/strain history.

The remaining issue is not attachment.  It is whether the same material annulus
has a finite total normalized stress-work clock across a shrinking terminal
heat-scale family.

The local energy identity is signed.  It controls net exchange.  The terminal
clock needs total exchange.  Those are different quantities.

## 1. Exact same-material identity

Let \(\phi\) be transported by the smooth preterminal flow:

```math
(\partial_t+u\cdot\nabla)\phi=0.
\tag{ATV.1}
```

Let

```math
M_\phi(t)=\int \frac12 |u(t,x)|^2\phi(t,x)\,dx,
\qquad
S=\frac{\nabla u+\nabla u^\top}{2},
\qquad
T=-pI+2\nu S .
\tag{ATV.2}
```

Then

```math
\frac{d}{dt}M_\phi(t)
+
2\nu\int \phi |S|^2\,dx
=
-\int u\cdot T\nabla\phi\,dx.
\tag{ATV.3}
```

Define the annular stress-work flux

```math
F_\phi(t)=\int u\cdot T\nabla\phi\,dx
\tag{ATV.4}
```

and the interior strain loss

```math
D_\phi(t)=2\nu\int \phi |S|^2\,dx.
\tag{ATV.5}
```

The identity is

```math
\frac{d}{dt}M_\phi(t)+D_\phi(t)=-F_\phi(t).
\tag{ATV.6}
```

This is exact same-fluid participation.  No post-limit packet and no detached
readout is being introduced.

## 2. What the identity immediately proves

For any preterminal interval \(I\),

```math
\int_I \left[-\frac{d}{dt}M_\phi(t)\right]_+dt
\le
\int_I D_\phi(t)\,dt+\int_I |F_\phi(t)|\,dt.
\tag{ATV.7}
```

Also

```math
\operatorname{Var}_I M_\phi
\le
\int_I D_\phi(t)\,dt+\int_I |F_\phi(t)|\,dt.
\tag{ATV.8}
```

Thus a center storage pulse cannot detach from the same transported annulus.
The outer annulus carries the physical stress/strain transaction.

This is exactly the pay-it-back-later mechanism at the smooth preterminal
level.

## 3. What the identity does not prove

Integrating `(ATV.6)` gives

```math
\int_I F_\phi(t)\,dt
=
M_\phi(a)-M_\phi(b)-\int_I D_\phi(t)\,dt,
\qquad I=[a,b].
\tag{ATV.9}
```

This controls signed net flux.  It does not control

```math
\int_I |F_\phi(t)|\,dt.
\tag{ATV.10}
```

The total annular clock is made from \(D_\phi+|F_\phi|\), not from the signed
quantity \(D_\phi+F_\phi\).  Back-and-forth stress-work through the same
material annulus can have small net storage change while carrying large total
stress-work variation.

This is the exact net-versus-total issue in the physical variables.

## 4. Algebraic obstruction to self-funding

The obstruction is already visible in the scalar balance form

```math
\dot M(t)+D(t)=-F(t),
\qquad D(t)\ge0.
\tag{ATV.11}
```

From this balance alone, bounded \(M\) and integrable \(D\) do not bound
\(\int |F|\).

Indeed, choose a smooth bounded oscillatory \(M\) with arbitrarily large
variation and set \(D=0\), \(F=-\dot M\).  Then `(ATV.11)` holds exactly,
while

```math
\int_I |F(t)|\,dt=\operatorname{Var}_I M
\tag{ATV.12}
```

can be made arbitrarily large with the endpoint change \(M(a)-M(b)\) fixed or
zero.

This is not a Navier-Stokes counterexample.  It is a sign test on what the
annular identity can prove by itself.  The identity alone cannot turn signed
net exchange into finite total exchange.

## 5. Heat-scale clock consequence

In normalized heat-scale variables,

```math
V_m(s,y)=r_m u(T_m+r_m^2s,x_m+r_my),
\qquad
Q_m(s,y)=r_m^2p(T_m+r_m^2s,x_m+r_my),
\tag{ATV.13}
```

the transported annular identity becomes

```math
\frac{d}{ds}M_m(s)
+
D_m(s)
=
-F_m(s),
\tag{ATV.14}
```

where

```math
D_m(s)=2\nu\int \phi_m |S_y(V_m)|^2\,dy,
\qquad
F_m(s)=\int V_m\cdot(-Q_mI+2\nu S_y(V_m))\nabla_y\phi_m\,dy.
\tag{ATV.15}
```

The terminal clock needed by the gold route contains

```math
\int_{-1}^{0}\left(D_m(s)+|F_m(s)|\right)ds
\tag{ATV.16}
```

plus the material tower/coefficient/collar service clock.

The signed identity `(ATV.14)` controls

```math
\int_{-1}^{0}F_m(s)\,ds,
\tag{ATV.17}
```

through endpoints and \(\int D_m\).  It does not control `(ATV.16)`.

Thus the same-fluid later-payback record is attached to the spike at every
scale, but the total normalized return on infinitely many shrinking scales is
not proved finite by local energy bookkeeping alone.

## 6. Correct remaining producer

The remaining producer must control total stress-work cycles on the same
material packet.  A valid clock theorem has to prove a statement of this type:

```math
\sum_j
\int_{J_j}
\left(
D_{m_j}(s)+|F_{m_j}(s)|
+\Theta_{N,m_j}(s)
\right)ds
\le C
\tag{ATV.18}
```

for bounded-overlap terminal heat-scale packets, with every term read on the
same transported pressure-viscosity-incompressibility-velocity packet.

Equivalently, the signed smooth same-packet commutator/coercivity theorem must
convert every positive total annular stress-work cycle into one of:

1. strict same-packet loss;
2. positive material geometry/tower clock already on the left side;
3. summable legal residual.

It cannot replace this with a viscosity-only estimate, a center-only storage
drop, a finite-jet proxy, or a post-limit packet readout.

## 7. Consequence for the installed annular-return note

The statement

```math
\text{center storage pulse}
\le
\text{same-material annular stress/strain return}
\tag{ATV.19}
```

is proved.

The statement

```math
\text{same-material annular stress/strain return}
\le
\text{finite full four-body clock}
\tag{ATV.20}
```

is exactly the open signed-clock producer unless the full four-body clock has
already been proved finite.

So the annular return identity is not wrong.  Its proof role is attachment,
not self-funding.

## 8. Current frontier

The live frontier remains:

```math
\text{SignedSmoothSamePacketCommutatorCoercivity.A}
\tag{ATV.21}
```

with its physical content now sharpened:

```math
\text{same-fluid annular stress-work total variation}
+
\text{material strain/tower service}
\quad
\text{has finite unweighted terminal clock}.
\tag{ATV.22}
```

That is the exact finite-clock theorem needed to turn the pay-it-back-later
mechanism into full terminal-Zeno exclusion and then fixed-\(H^s\)
continuation.
