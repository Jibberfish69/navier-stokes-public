---
theorem_id: forward-gold-affine-strain-local-normal-form-full-participation-sign-test-20260624
status: local-normal-form-shows-signed-clock-must-use-annular-stress-work-not-viscosity-alone
logical_landing_node: signed_smooth_same_packet_commutator_coercivity
edge_effect: >-
  Sharpens the signed smooth same-packet commutator/coercivity frontier with an
  exact local Navier-Stokes normal form. A constant incompressible affine strain
  field, paired with its quadratic pressure, solves the local fixed-viscosity
  Navier-Stokes equations with zero interior viscous Laplacian. It has positive
  material metric growth and nonzero strain clock. Therefore no interior
  viscosity-only, finite-jet, or bounded algebraic symmetrizer can be the
  missing full-clock estimate. The estimate must count the same-fluid annular
  pressure/strain stress-work and material-geometry channel as part of the
  coupled pressure-viscosity-incompressibility-velocity packet.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-smooth-same-packet-commutator-coercivity-audit-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-smooth-same-packet-commutator-direct-calculation-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-exact-material-fourbody-exchange-concomitant-direct-test-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-material-annular-return-identity-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-later-payback-preterminal-causality-clock-producer-test-20260624.md
---

# Affine Strain Local Normal Form Full Participation Sign Test

Date: 2026-06-24

## 0. Purpose

This note tests the signed-clock estimate against the simplest exact local
strain model. The goal is not to replace the full problem by an affine model.
The goal is to prevent the signed commutator theorem from being proved by a
proxy that forgets the outer annular stress-work.

The test preserves the physical object: a local rising/thinning deformation is
held by the same pressure-viscosity-incompressibility-velocity packet, and the
outer annular stress/strain transaction is part of that packet.

## 1. Exact local Navier-Stokes normal form

Let \(A\) be a constant symmetric traceless matrix. Set

```math
u(x)=Ax,
\qquad
p(x)=-\frac12 x\cdot A^2x .
\tag{AF.1}
```

Then

```math
\nabla\cdot u=\operatorname{tr}A=0,
\qquad
\Delta u=0.
\tag{AF.2}
```

Also

```math
(u\cdot\nabla)u=A^2x,
\qquad
\nabla p=-A^2x.
\tag{AF.3}
```

Hence

```math
(u\cdot\nabla)u+\nabla p=\nu\Delta u=0.
\tag{AF.4}
```

So `(AF.1)` is an exact stationary local solution of the incompressible
Navier-Stokes equation on any coordinate patch, with pressure included and
fixed viscosity arbitrary.

For example,

```math
A_\lambda
=
\begin{pmatrix}
\lambda & 0 & 0\\
0 & -\lambda/2 & 0\\
0 & 0 & -\lambda/2
\end{pmatrix}
\tag{AF.5}
```

is incompressible and has strain \(S=A_\lambda\).

## 2. Material metric clock

The material flow is

```math
X(a,t)=e^{tA}a.
\tag{AF.6}
```

For the stretching direction \(e_1\),

```math
|D_aX(t)e_1|=e^{\lambda t}|e_1|.
\tag{AF.7}
```

Thus

```math
\frac{d}{dt}\log |D_aX(t)e_1|=\lambda,
\qquad
\int_0^T\|S\|_{L^\infty}\,dt=\lambda T.
\tag{AF.8}
```

The material annulus stretches in one direction and thins in the others while
preserving volume. This is exactly the base spike-thinning geometry.

## 3. What the normal form rules out

Inside the patch,

```math
\Delta u=0,
\tag{AF.9}
```

so the positive strain/metric clock in `(AF.8)` is not produced by an interior
viscous drain. A proof that tries to control the full material clock by
viscosity alone fails this exact normal-form test.

A bounded instantaneous primitive also fails. To cancel `(AF.8)` algebraically
one would use a storage like

```math
X(t)=-c\log |D_aX(t)e_1|.
\tag{AF.10}
```

But

```math
X(t)=X(0)-c\lambda t,
\tag{AF.11}
```

which is unbounded below as the strain history grows. So a bounded-below
four-body cross-storage cannot pay this clock by algebra alone.

This is the same obstruction found in the concomitant test, now pinned to an
exact local Navier-Stokes pressure/strain model.

## 4. Where the payment lives

The missing participation is not absent. It is in the annular stress-work
channel. For a transported cutoff \(\phi\),

```math
M_\phi(t)=\int \frac12 |u|^2\phi\,dx
\tag{AF.12}
```

satisfies

```math
\frac{d}{dt}M_\phi(t)
+
2\nu\int\phi|S|^2\,dx
=
-\int u\cdot(-pI+2\nu S)\nabla\phi\,dx.
\tag{AF.13}
```

In the affine normal form, the interior equation is pressure-balanced and
locally stationary. Any finite material packet carrying this strain exchanges
energy and deformation with the surrounding same fluid through the transported
annulus. Thus the physical payment is exactly the pressure/strain stress-work
on the collar together with the material metric clock.

So the signed clock estimate must have the form

```math
\Theta_N\,d\sigma
\le
C\,dA_{4B,N}^{ann}
+
C\,d\mathcal L_{4B,N}
+
dR^0_N
-
dX_{comm},
\tag{AF.14}
```

where \(dA_{4B,N}^{ann}\) includes the annular pressure/strain stress-work and
material-geometry channel of the same transported packet.

It cannot have the form

```math
\Theta_N\,d\sigma
\le
C\,dD^{vis}_{interior}
+
dR^0_N
-
dX_{comm}
\tag{AF.15}
```

unless the annular stress-work has already been hidden inside the residual.
That would break full participation.

## 5. Consequence for the live theorem

This normal form does not disprove the gold route. It narrows the live theorem.

The signed smooth same-packet commutator/coercivity theorem must prove that the
annular pressure/strain stress-work, material geometry clock, transported
collar, pressure tower, and viscous loss together produce a finite same-packet
clock.

The exact admissible estimate is:

```math
\boxed{
\text{full coupled annular stress/strain plus material tower coercivity}
}
\tag{AF.16}
```

The inadmissible estimates are:

```math
\boxed{
\text{viscosity-only drain}
}
\qquad
\boxed{
\text{interior finite-jet bound}
}
\qquad
\boxed{
\text{bounded algebraic cross-storage without annular stress-work}.
}
\tag{AF.17}
```

Thus the remaining proof cannot be made by a detached proxy. It must show the
same-material annular stress-work and tower commutators have the signed
orientation needed in the full pressure-viscosity-incompressibility-velocity
packet.
