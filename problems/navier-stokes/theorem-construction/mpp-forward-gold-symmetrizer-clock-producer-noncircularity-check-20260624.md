---
theorem_id: forward-gold-symmetrizer-clock-producer-noncircularity-check-20260624
status: symmetrizer-route-reduces-to-same-finite-material-clock-estimate
logical_landing_node: signed_smooth_same_packet_commutator_coercivity
edge_effect: >-
  Checks whether the missing signed smooth same-packet clock can be produced by
  the four-body symmetrizer/cross-storage route. The result is negative from
  installed inputs. Cumulative exchange primitives are circular because their
  lower boundedness is equivalent to the finite clock. Finite-time Gramians are
  observability statements and leave endpoint readout. Moving symmetrizers are
  usable only after finite operator-log variation is proved. The affine strain
  normal form rules out a purely local algebraic bounded-storage payment for
  arbitrary positive material strain/log growth. Therefore the symmetrizer
  route is not a separate closure of the MPP edge; it is another formulation of
  the signed smooth same-packet commutator/coercivity estimate.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-simultaneous-fourbody-symmetrizer-construction-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-symmetrizer-log-variation-absorption-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-tower-signed-total-exchange-retention-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-exact-material-fourbody-exchange-concomitant-direct-test-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-strain-local-normal-form-full-participation-sign-test-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-smooth-same-packet-commutator-coercivity-audit-20260623.md
---

# Symmetrizer Clock Producer Noncircularity Check

Date: 2026-06-24

## 0. Result

The symmetrizer route does not currently prove the missing clock.  It gives a
different coordinate expression for the same missing estimate.

The live required inequality is still the smooth same-packet estimate

```math
\mathcal I_m
+dX_{comm,m}
+c\,C_{\log}d[\log(1+\mathcal P_{N,m}^{mat})]_+
\le
\varepsilon dD_{Q,m}^{w}
+\varepsilon dD_{S,m}^{rad}
+dR^0_{comm,m},
\tag{SNC.1}
```

or, equivalently, a full packet balance

```math
d\mathfrak L_{4B,N}
+c\,d\Omega_N
+d\mathcal L_{4B,N}
\le
dR_N^0,
\qquad
\int dR_N^0<\infty .
\tag{SNC.2}
```

The checked symmetrizer files do not prove `(SNC.1)` or `(SNC.2)` from the
installed Navier--Stokes inputs.

## 1. Cumulative primitives are circular

The four-body split produces signed interface mismatch currents.  A formal
cross-storage can always be defined by integrating the mismatch:

```math
X_{ij}(\sigma)
:=
-\mu_{ij}((\sigma_0,\sigma]).
\tag{SNC.3}
```

Then \(dX_{ij}=-d\mu_{ij}\).  This cancels the signed current algebraically.
It does not prove a coercive functional, because lower boundedness becomes

```math
\inf_{\sigma\ge\sigma_0}
\left(
L_S+L_Q+L_C+L_G
+\sum_{ij}X_{ij}(\sigma)
\right)>-\infty .
\tag{SNC.4}
```

But `(SNC.4)` is already the desired no-free cumulative exchange theorem.  So
cumulative primitives are only a restatement of the missing finite-clock
property.

## 2. Finite-time Gramian observability is not payment

A finite-time frozen Gramian

```math
G_T=\int_0^T e^{tL^*}We^{tL}\,dt
\tag{SNC.5}
```

satisfies

```math
L^*G_T+G_TL=e^{TL^*}We^{TL}-W.
\tag{SNC.6}
```

The endpoint readout remains.  Thus finite-time observability sees the packet,
but it does not create one-way loss unless a no-return or endpoint absorption
estimate is already proved.

That no-return estimate is another form of the finite full material clock.

## 3. Moving symmetrizer absorption needs finite log variation

For a moving positive symmetrizer \(H_\sigma\), the derivative term is controlled
by the operator logarithmic variation

```math
\Theta_H(\sigma)
=
\left\|
H_\sigma^{-1/2}
(\partial_\sigma H_\sigma)
H_\sigma^{-1/2}
\right\|.
\tag{SNC.7}
```

An integrating factor absorbs the moving-storage term if

```math
\int_{\sigma_0}^{\infty}\Theta_H(\sigma)\,d\sigma<\infty .
\tag{SNC.8}
```

The installed calculation locates \(\partial_\sigma H_\sigma\) inside the
same mixed pressure-viscosity-incompressibility-velocity material tower.  It
does not prove `(SNC.8)` from original smooth data.

So the moving symmetrizer is valid only after the same finite material clock is
available in operator-log form.

## 4. Affine strain rules out a purely local algebraic storage

The exact local incompressible affine strain normal form

```math
u(x)=Ax,
\qquad
p(x)=-{1\over2}x\cdot A^2x,
\qquad
A=A^\top,\quad \operatorname{tr}A=0,
\tag{SNC.9}
```

satisfies

```math
(u\cdot\nabla)u+\nabla p=\nu\Delta u=0.
\tag{SNC.10}
```

For a stretching material line,

```math
{d\over dt}\log |D_aX(t)e|=\lambda>0.
\tag{SNC.11}
```

The primitive that cancels this positive log clock is

```math
X(t)=-c\log |D_aX(t)e|,
\tag{SNC.12}
```

which is unbounded below along a long strain history.  Therefore a bounded
instantaneous cross-storage cannot pay arbitrary positive material log growth
by local algebra alone.

This normal form does not remove the annular stress-work route.  It says the
annular pressure/strain stress-work and full material service clock must enter
as real same-packet coercive quantities; they cannot be hidden in an algebraic
bounded-storage trick.

## 5. Noncircular live edge

The noncircular options left by the symmetrizer check are exactly the original
ones:

```math
\boxed{
\text{prove finite same-material operator/material clock}
}
\tag{SNC.13}
```

or

```math
\boxed{
\text{prove the signed smooth same-packet commutator/coercivity estimate
directly.}
}
\tag{SNC.14}
```

These are the same theorem in two languages.  The symmetrizer route has not
closed the gold edge; it has only renamed the needed estimate as finite
operator-log variation or bounded-below instantaneous cross-storage.

## 6. Route effect

The downstream chain remains valid conditionally:

```math
\text{finite full clock}
\Longrightarrow
\text{uniform terminal-Zeno annular return}
\Longrightarrow
\text{fixed }H^s\text{ continuation}.
\tag{SNC.15}
```

The unresolved step is still the production of that finite full clock from the
smooth transported pressure-viscosity-incompressibility-velocity packet.
