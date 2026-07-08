---
theorem_id: forward-gold-c0-retained-pressure-row-adjoint-range-test-20260708
created: 2026-07-08
problem: navier-stokes
route: forward-gold / c_0 / VPI pressure row / retained-sphere adjoint range
status: strict-reduction; finite-row-test; not-c0-proof
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-vpi-pressure-non-separability-reading-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-fixed-sphere-odd-pressure-current-nullspace-test-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-cubic-radial-strain-moment-turnoff-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-nonseparable-pressure-row-correction-20260708.md
completion_truth: >-
  This note derives the finite retained-sphere pressure-row test after the VPI
  non-separability correction. For a retained homogeneous sphere with base
  gradient A, the linear own-pressure-row operator on tangential residual
  current j is L_A j=(PAP):nabla_{S^2}j+P(A theta-A^T theta).j. The cubic
  flux is controlled by the pressure row exactly when 6w nabla_{S^2}w lies in
  the adjoint range of L_A. At the affine Vieillefosse sphere this holds by
  the explicit certificate Psi=(4/5)(3q-2). For general retained w=q+eta this
  is an overdetermined row-range condition; if it fails, a linearized silent
  row-current exists, but that current is only an instantaneous obstruction
  until material-time retention or route-out is checked. This is a strict
  finite reduction, not c0 closure.
---

# Retained Pressure-Row Adjoint Range Test

Physical sentence. Non-separability says a retained VPI record cannot drop its
pressure row. It does not say every tangential current on a sphere is already
seen by that row. The finite question is sharper: does the same-field pressure
row see exactly the current that carries the positive cubic record flux?

## 1. Same-field row operator

Work at one retained sphere. Let

```math
u_0(x)=rU(\theta),\qquad r=|x|,\quad \theta=x/r,
\tag{ART.1}
```

be the homogeneous degree-one local record carrier at that sphere, with

```math
A(\theta)=\nabla_x(rU(\theta)).
\tag{ART.2}
```

Let \(j(\theta)\) be a tangential residual current and perturb the same velocity
field by

```math
\delta u(x)=rj(\theta),\qquad j\cdot\theta=0.
\tag{ART.3}
```

The pressure source is

```math
Q(u)=\partial_i u_j\,\partial_j u_i=\operatorname{tr}(\nabla u)^2.
\tag{ART.4}
```

Linearizing \(Q\) at \(u_0\) gives \(2L_Aj\), where

```math
L_Aj=A:\nabla_x(rj).
\tag{ART.5}
```

Let \(P_\theta=I-\theta\otimes\theta\). If \(\{e_a\}_{a=1}^2\) is an
orthonormal tangent frame, then

```math
\nabla_x(rj)\theta=j,\qquad
\nabla_x(rj)e_a=\nabla^S_{e_a}j-(j\cdot e_a)\theta.
\tag{ART.6}
```

Therefore

```math
L_Aj
=
(P_\theta A P_\theta):\nabla_{S^2}j
+P_\theta(A\theta-A^T\theta)\cdot j.
\tag{ART.7}
```

This is the own pressure-row operator for the retained sphere. The second term
is the vorticity/antisymmetric part of the carried record; it vanishes for a
symmetric affine strain.

## 2. The adjoint certificate

The formal adjoint is the tangential vector field

```math
L_A^*\psi
=
-\operatorname{div}_{S^2}\!\left(\psi\,P_\theta A P_\theta\right)
+\psi\,P_\theta(A\theta-A^T\theta).
\tag{ART.8}
```

The residual cubic flux from the same current is

```math
M'(j)=6\int_{S^2}w\,j\cdot\nabla_{S^2}w\,d\theta,
\qquad
w=U\cdot\theta.
\tag{ART.9}
```

Thus the pressure row controls the cubic flux with a finite constant exactly
when there is a scalar certificate \(\psi\) solving

```math
L_A^*\psi=6w\nabla_{S^2}w.
\tag{ART.10}
```

Then

```math
M'(j)=\int_{S^2}\psi\,L_Aj\,d\theta,
\qquad
|M'(j)|\le \|\psi\|_{L^2}\|L_Aj\|_{L^2}.
\tag{ART.11}
```

This is the finite non-separable pressure-row test. It is not a bill/service
ratio. It asks whether the retained record's own pressure row sees the exact
same-field current that carries the cubic record flux.

## 3. Affine Vieillefosse sphere

For the affine Vieillefosse sphere,

```math
A=S=S^T,\qquad q(\theta)=\theta\cdot S\theta,\qquad
S=\operatorname{diag}(1,1,-2),
\tag{ART.12}
```

the antisymmetric term in (ART.7) vanishes and

```math
L_Sj=(P_\theta S P_\theta):\nabla_{S^2}j.
\tag{ART.13}
```

The explicit certificate is

```math
\Psi(\theta)={4\over5}(3q(\theta)-2),
\tag{ART.14}
```

and it satisfies

```math
L_S^*\Psi=6q\nabla_{S^2}q.
\tag{ART.15}
```

So at the affine fixed sphere,

```math
M'(j)=\int_{S^2}\Psi\,L_Sj\,d\theta,
\tag{ART.16}
```

which is the row-visibility result recorded in the fixed-sphere note.

## 4. What happens beyond the affine sphere

For a retained perturbation \(w=q+\eta\), (ART.10) becomes an overdetermined
adjoint-range condition:

```math
\text{find scalar }\psi
\quad\text{such that}\quad
L_A^*\psi=6w\nabla_{S^2}w.
\tag{ART.17}
```

This condition is not automatic from non-separability. Non-separability forbids
retaining a record while deleting its pressure row; it does not by itself prove
that every residual cubic-flux current lies in the row seen by \(L_A\).

If (ART.17) fails, functional duality gives a tangential current \(j\) with

```math
L_Aj=0,\qquad
\int_{S^2}6w\,j\cdot\nabla_{S^2}w\,d\theta\neq0.
\tag{ART.18}
```

Changing the sign of \(j\) makes the cubic flux positive. This is an
instantaneous silent pressure-row direction at the linearized retained sphere.
It is not yet a Navier-Stokes counterexample: it still has to be checked for
same-field material-time reachability, viscosity, collar ownership, nonlinear
source terms, and the parent-row relay.

So the proof route now has a precise finite fork:

```math
\texttt{RetainedPressureRowAdjointRangePersistence.A}
\tag{ART.19}
```

The retained VPI history forces (ART.17), uniformly enough for the row
certificate, or else the failure of (ART.17) is visible in another VPI row or
routes to parent/pass/Field/nonparticipation.

## 5. Status for \(c_0\)

This note strengthens the fixed-sphere calculation and prevents a false
closure. The affine sphere is row-coercive by an explicit certificate. The
general retained sphere is reduced to the adjoint-range persistence theorem
(ART.19), followed by no silent row-dropping through the tower and the
relay-endpoint material-time Liouville.

No \(c_0>0\) theorem is proved here.
