---
theorem_id: forward-gold-c0-fixed-sphere-odd-pressure-current-nullspace-test-20260708
created: 2026-07-08
problem: navier-stokes
route: forward-gold / c_0 / cubic radial moment / fixed-sphere retained pressure-row nullspace
status: fixed-sphere-linear-pressure-row-adjoint-certificate; support-only; not-c0-proof
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-attempt-census-20260707-undeveloped-frontier-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-cubic-radial-strain-moment-turnoff-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-zero-payment-forces-zero-participation-direct-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-cubic-turnoff-physical-reduction-claude-20260708.md
completion_truth: >-
  This note executes the first fixed-sphere nullspace test for the
  conversation-only object OddPressureCurrentCoercivity.A. In the linearized
  affine Vieillefosse register, a pure m != 0 off-frame tangential current
  cannot carry the cubic radial moment drop at all, because the drop functional
  is axisymmetric. Any positive drop has an m = 0 divergence component. The
  full linear pressure-current source operator commutes with the axial
  symmetry, so m != 0 modes cannot cancel the m = 0 source. In the m = 0
  poloidal drop-bearing channel, the drop functional factors explicitly through
  the linear pressure row: for j=F(mu) grad_S mu, M'(j) = -72 pi int phi(mu)
  L_Sj dmu with phi=mu^2/5-1/45. The invariant form is
  L_Sj=(P_theta S P_theta):nabla_{S^2}j and
  L_S^*Psi=6q nabla_{S^2}q with Psi=(4/5)(3q-2). Thus the fixed-sphere
  linear pressure row controls the positive drop in this register by an
  explicit adjoint certificate. This is support for retained pressure-row
  nondegeneracy, not the theorem: it does not yet prove nonlinear row
  persistence through scale passage, compactness, or the relay-endpoint
  material-time Liouville.
---

# Fixed-Sphere Retained Pressure-Row Nullspace Test

This note takes up the fixed-sphere part of the pressure-row nondegeneracy
problem, but only in the first bounded register: the fixed unit sphere around
the affine Vieillefosse core.

The same-fluid object is the retained spherical record at one scale. The affine
core is

```math
S=\operatorname{diag}(1,1,-2),
\qquad
q(\theta)=\theta\cdot S\theta=1-3\mu^2,
\qquad
\mu=\theta_3.
```

The residual tangential current \(j\) is the same current appearing in the
parent cubic moment note:

```math
e^{-\rho}u(e^\rho\theta)
=
w(\rho,\theta)\theta+v(\rho,\theta),
\qquad
v=v_\circ[w]+j,
\qquad
\partial_\rho w+\operatorname{div}_{S^2}j=0 .
```

At the affine sphere \(w=q\), the linear cubic drop is

```math
M'
=
-3\int_{S^2}q^2\operatorname{div}_{S^2}j\,d\theta
=
6\int_{S^2}q\,j\cdot\nabla_{S^2}q\,d\theta .
\tag{FSN.1}
```

## 1. Pure off-frame modes do not carry the drop

Decompose \(j\) into azimuthal modes around the Vieillefosse axis:

```math
j=\sum_{m\in\mathbb Z}j_m .
```

The weight \(q^2\) is axisymmetric. Therefore

```math
\int_{S^2}q^2\operatorname{div}_{S^2}j_m\,d\theta=0
\qquad (m\ne0).
\tag{FSN.2}
```

So, in the linear affine fixed-sphere register, a pure \(m\ne0\) current cannot
produce a positive cubic drop. Any current with \(M'>0\) has a nonzero
\(m=0\) divergence component. The off-frame part may be present, but it is not
the component carrying the cubic drop in (FSN.1).

This already removes the narrowest reading of the proposed null:

```math
m\ne0\ \text{current}
\quad+\quad
M'>0
\quad+\quad
\text{zero pressure-current transfer}.
```

The first two clauses are incompatible at the affine Vieillefosse sphere.

## 2. Mixed modes cannot hide the m = 0 source in the full-source test

Let \(L_S\) denote the full linear own-pressure-row source around the affine
core:

```math
L_S j
:=
S:\nabla_x(rj(\theta)).
\tag{FSN.3}
```

Because \(S=\operatorname{diag}(1,1,-2)\) is axisymmetric, \(L_S\) commutes
with rotations around the \(x_3\)-axis. Hence it is block diagonal in the
azimuthal index:

```math
L_S j=\sum_m L_S j_m,
\qquad
L_S j_m\ \text{has the same }m.
\tag{FSN.4}
```

Thus an \(m\ne0\) add-on cannot cancel the \(m=0\) pressure-row source as a
function on the sphere. If

```math
L_Sj=0
\qquad\text{and}\qquad
M'(j)>0,
\tag{FSN.5}
```

then the \(m=0\) component alone satisfies

```math
L_Sj_0=0,
\qquad
M'(j_0)>0.
\tag{FSN.6}
```

The parent ZPF/CRM notes already ran that aligned axisymmetric full-source
null check. In the smooth poloidal class, \(T_H=0\) forces \(H\equiv0\);
axisymmetric swirl is a rotation gauge/source shortcut and carries no cubic
drop. Therefore the fixed-sphere full-source silent positive-drop nullspace is
empty in this linear affine register.

The support result is:

```math
\texttt{FixedSphereLinearPressureRowNullspace.A:}
\qquad
\begin{array}{c}
M'(j)>0,\\
L_Sj=0
\end{array}
\quad\text{is impossible at }w=\theta\cdot S\theta,
```

after the pass-owned aligned branch and rotation-gauge swirl have been removed.

## 3. What this proves and what it does not prove

The preceding nullspace statement has a quantitative version in the
drop-bearing \(m=0\) poloidal channel. Write

```math
j=F(\mu)\nabla_{S^2}\mu .
\tag{FSN.7}
```

At \(r=1\),

```math
\nabla_{S^2}\mu=e_3-\mu\theta .
\tag{FSN.8}
```

A direct contraction gives

```math
L_Sj
=
S:\nabla_x(rj(\theta))
=
A(\mu)F'(\mu)+B(\mu)F(\mu),
\tag{FSN.9}
```

where

```math
A(\mu)=(1-\mu^2)(-2+3\mu^2),
\qquad
B(\mu)=\mu(1-3\mu^2).
\tag{FSN.10}
```

The cubic drop is

```math
M'(j)
=
6\int_{S^2}q\,j\cdot\nabla_{S^2}q\,d\theta
=
-72\pi\int_{-1}^1
\mu(1-3\mu^2)(1-\mu^2)F(\mu)\,d\mu .
\tag{FSN.11}
```

Set

```math
\phi(\mu)={1\over5}\mu^2-{1\over45}.
\tag{FSN.12}
```

Then the exact adjoint identity is

```math
-{d\over d\mu}\bigl(A(\mu)\phi(\mu)\bigr)
+B(\mu)\phi(\mu)
=
\mu(1-3\mu^2)(1-\mu^2).
\tag{FSN.13}
```

For smooth axisymmetric tangential currents the boundary term vanishes because
\(A(\pm1)=0\). Hence

```math
M'(j)
=
-72\pi\int_{-1}^1
\phi(\mu)\,L_Sj(\mu)\,d\mu .
\tag{FSN.14}
```

Consequently,

```math
|M'(j)|
\le
C_S\,\|L_Sj\|_{L^2(S^2)}
\tag{FSN.15}
```

for a universal fixed-sphere constant \(C_S\).

## 4. Coordinate-free adjoint certificate

The calculation above is not merely an axisymmetric accident. It has an
adjoint certificate on the fixed affine sphere.

Let

```math
P_\theta=I-\theta\otimes\theta,\qquad B_S(\theta)=P_\theta S P_\theta .
\tag{FSN.16}
```

For any smooth tangential current \(j\), viewed as the homogeneous perturbation
\(rj(\theta)\),

```math
L_Sj
=
S:\nabla_x(rj(\theta))
=
B_S:\nabla_{S^2}j ,
\tag{FSN.17}
```

where the derivative on the right is the covariant derivative on the sphere.
Indeed, differentiating \(rj(\theta)\) gives a radial term and a second
fundamental form term; because \(j\cdot\theta=0\), those two terms cancel after
contraction with \(S\), leaving exactly \(P_\theta S P_\theta:\nabla_{S^2}j\).

Thus the formal adjoint is

```math
L_S^*\psi
=
-\operatorname{div}_{S^2}(\psi B_S).
\tag{FSN.18}
```

For the Vieillefosse affine sphere

```math
q=1-3\mu^2,
\tag{FSN.19}
```

the scalar

```math
\Psi(\theta)
=
-36\phi(\mu)
=
{4\over5}(3q(\theta)-2)
\tag{FSN.20}
```

satisfies the exact adjoint identity

```math
L_S^*\Psi=6q\,\nabla_{S^2}q .
\tag{FSN.21}
```

Therefore, for every smooth tangential \(j\),

```math
M'(j)
=
\int_{S^2}6q\,j\cdot\nabla_{S^2}q\,d\theta
=
\int_{S^2}\Psi\,L_Sj\,d\theta .
\tag{FSN.22}
```

Equation (FSN.22) is the finite pressure-row certificate: the cubic-drop
functional lies in the adjoint range of the own pressure-row operator at the
affine Vieillefosse sphere. The constant in (FSN.15) can be taken as
\(\|\Psi\|_{L^2(S^2)}\).

Together with (FSN.2)--(FSN.6), this says: at the affine Vieillefosse sphere,
the full linear pressure row controls the entire linear cubic drop.
Pure \(m\ne0\) modes carry no drop, mixed modes cannot cancel the \(m=0\)
row source, and the \(m=0\) row source has the explicit bound (FSN.15).

This is a fixed-sphere linear source-coercivity test. It proves that the first
conversation-level escape is not present at the affine Vieillefosse sphere:
the linear pressure row controls the linear cubic drop, so there is no current
that carries positive drop while hiding the full linear row.

It does not prove retained pressure-row nondegeneracy for the full tower. Three
burdens remain outside this note:

1. The theorem needs row persistence for retained VPI records, not merely
   fixed-sphere row visibility \(L_Sj\).
2. A retained record can become non-axisymmetric after finite same-fluid
   evolution; this note is the affine-sheet linear test, not the nonlinear
   record-chirality theorem.
3. The global strict atom/tower accounting still has to keep pressure as a
   non-separable row of the retained record while routing borrowed harmonic
   rows to the parent and nonparticipating rows to Pack/Part/Field.

The exact remaining fixed-geometry extension is:

```math
\text{from }w=q
\quad\text{to retained }w=q+\eta
\text{ with lawful same-fluid history,}
```

and to show that the corresponding retained-row adjoint certificate persists,
or else the perturbation \(\eta\) is visible in another VPI row or routes to a
parent/pass/Field owner. In operator terms, the next finite test is whether the
positive cubic flux vector \(6w\nabla_{S^2}w\) remains in the coercive adjoint
range of the same-field pressure-row operator for the retained record, modulo
the parent-row relay. That is the same open object as
`RetainedPositiveCubicFluxHasPressureRowOrRoutesOut.A`.
