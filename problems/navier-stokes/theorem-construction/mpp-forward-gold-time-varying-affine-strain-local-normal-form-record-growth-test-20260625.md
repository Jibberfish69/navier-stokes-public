---
theorem_id: forward-gold-time-varying-affine-strain-local-normal-form-record-growth-test-20260625
status: local-normal-form-installed-time-varying-tracefree-strain-history-is-coupled-ns-lawful-locally; global-storage-route-remains
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Tests the remaining material-record clock against the exact local
  pressure-viscosity-incompressibility-velocity law.  A smooth time-dependent
  trace-free affine strain, with its quadratic pressure, is an exact local
  Navier--Stokes normal form.  The pressure Hessian supplies the normal
  incompressibility force, viscosity is present but has zero affine Laplacian,
  and the material deformation record grows according to the prescribed strain
  history.  Therefore the missing finite positive material-record variation
  cannot be produced by a purely local pressure sign, viscosity sign, shape law,
  or finite-dimensional affine symmetrizer.  The remaining gold producer must
  use the global same-material history: periodic matching, collars, finite
  energy, and annular pressure/strain return.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-strain-local-normal-form-full-participation-sign-test-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-strain-eigenvalue-shape-law-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-periodic-low-mode-exclusion-high-frequency-material-return-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-record-growth-is-remaining-clock-producer-20260625.md
---

# Time-Varying Affine Strain Local Normal Form Record-Growth Test

Date: 2026-06-25

## 0. Object

The live object is still the original smooth material spike-wave history.
This note only tests one local question:

Can the local coupled Navier--Stokes law itself forbid rapid positive growth of
the material strain record?

The answer is no.  The local law permits arbitrary smooth trace-free affine
strain histories, serviced by the pressure Hessian.  This does not create a
global periodic finite-energy counterexample.  It says the proof cannot close
by a local sign argument.

## 1. Exact time-dependent affine normal form

Let \(B(t)\) be any smooth symmetric trace-free \(3\times3\) matrix.  Define on
a coordinate patch

```math
u(t,x)=B(t)x.
\tag{TVA.1}
```

Then

```math
\nabla\cdot u=\operatorname{tr}B(t)=0,
\qquad
\Delta u=0.
\tag{TVA.2}
```

The time and transport terms are

```math
\partial_tu=B'(t)x,
\qquad
(u\cdot\nabla)u=B(t)^2x.
\tag{TVA.3}
```

Since \(B(t)\) and \(B'(t)\) are symmetric, \(B'(t)+B(t)^2\) is symmetric.
Set

```math
p(t,x)=-{1\over2}x\cdot\bigl(B'(t)+B(t)^2\bigr)x.
\tag{TVA.4}
```

Then

```math
\nabla p=-(B'(t)+B(t)^2)x.
\tag{TVA.5}
```

Therefore

```math
\partial_tu+(u\cdot\nabla)u+\nabla p
=
B'(t)x+B(t)^2x-(B'(t)+B(t)^2)x
=0
=\nu\Delta u.
\tag{TVA.6}
```

Thus `(TVA.1)`--`(TVA.4)` solve the incompressible Navier--Stokes equation
locally for every fixed viscosity \(\nu>0\).

The pressure Poisson equation is also exactly compatible:

```math
-\Delta p
=
\operatorname{tr}\bigl(B'(t)+B(t)^2\bigr)
=
\operatorname{tr}B(t)^2
=
\partial_i u_j\,\partial_j u_i,
\tag{TVA.7}
```

because \(\operatorname{tr}B(t)=0\) implies \(\operatorname{tr}B'(t)=0\).

## 2. Material record growth

The material deformation satisfies

```math
{d\over dt}F(t)=B(t)F(t),
\qquad
F(0)=I.
\tag{TVA.8}
```

For a material line element \(\ell(t)=F(t)\ell_0\),

```math
{d\over dt}\log|\ell(t)|
=
{\ell(t)\cdot B(t)\ell(t)\over|\ell(t)|^2}.
\tag{TVA.9}
```

Take, for instance,

```math
B(t)=\lambda(t)
\begin{pmatrix}
1&0&0\\
0&-1/2&0\\
0&0&-1/2
\end{pmatrix}.
\tag{TVA.10}
```

Then the stretching direction has

```math
{d\over dt}\log|F(t)e_1|=\lambda(t),
\qquad
\log|F(t)e_1|
=
\int_0^t\lambda(s)\,ds.
\tag{TVA.11}
```

So the positive material record can follow any smooth positive strain history
chosen through \(\lambda(t)\), at the local model level.

## 3. What the pressure is doing

The pressure is not detached from participation.  It is the exact normal
constraint force required by incompressibility:

```math
\nabla^2p=-(B'(t)+B(t)^2).
\tag{TVA.12}
```

The \(B'(t)\) part is the pressure service for changing the strain rate in
time.  The \(B(t)^2\) part cancels the affine transport acceleration.

Viscosity is still part of the equation, but the affine Laplacian vanishes:

```math
\nu\Delta u=0.
\tag{TVA.13}
```

Thus there is no local viscosity-only drain that can force a one-way bound on
the positive material-record variation.

## 4. What this rules out

This exact normal form rules out any proof that tries to produce

```math
\int_0^{T_*}d[\log(1+\mathcal P_N^{mat}(t))]_+<\infty
\tag{TVA.14}
```

from one of the following local mechanisms alone:

- a scalar pressure sign;
- an interior viscosity sign;
- the incompressibility trace condition;
- a local shape law for the spike;
- a bounded finite-dimensional affine symmetrizer.

Those mechanisms are all compatible with `(TVA.1)`--`(TVA.13)`, where positive
material-record growth can be prescribed smoothly in the local patch.

## 5. What it does not rule out

This is not a global periodic finite-energy construction.  A nonzero affine
field and its quadratic pressure do not live globally on the active periodic
surface.  When the affine-looking core is inserted into the original solution,
it must be matched to the surrounding same fluid through collars, pressure
memory, finite energy, and the transported annular stress/strain return.

Those matching costs are exactly the remaining gold route.  The local model
says only where the proof cannot come from.

## 6. Corrected live edge

The remaining producer is therefore global and same-material:

```math
\text{periodic matching}
+\text{collar stress/strain return}
+\text{finite energy}
+\text{pressure-incompressibility service}
\Longrightarrow
\int_0^{T_*}d[\log(1+\mathcal P_N^{mat})]_+<\infty.
\tag{TVA.15}
```

Equivalently, the proof needs a bounded-below global same-material storage
whose drop pays the positive material-record growth.  The pressure law is part
of that storage; it is not an independent local sign producer.
