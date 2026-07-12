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
  is an overdetermined row-range condition. The first concrete obstruction is a
  solid rotation added to the affine strain: w=q is unchanged, but the skew
  part creates an azimuthal adjoint component that no smooth scalar pressure
  certificate can remove. That obstruction is frame/material-time drift, not a
  pressure-row counterexample. In the solid-rotation model it is repaired
  exactly by adjoining the same-record frame row F_Omega j=Omega theta.j; the
  obstruction term lies in F_Omega^*. This proves the finite quotient repair for
  axial rigid rotation. A general skew affine part has an additional transported
  strain-frame component, and in the affine model that component splits into two
  explicit material-frame rows: rigid spin and strain-pattern turnover. Thus the
  full affine skew obstruction is repaired after adjoining those rows. The
  general retained-row persistence theorem remains open. This is a strict finite
  reduction, not c0 closure.
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
same-time silent pressure-row direction at the linearized retained sphere.
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

## 5. The first obstruction: solid rotation is frame drift

The range equation is not stable under adding an unquotiented skew affine part.
Let

```math
A=S+\Omega,\qquad
S=\operatorname{diag}(1,1,-2),\qquad
\Omega\theta=\gamma e_3\times\theta .
\tag{ART.20}
```

The radial readout is still

```math
w=q=1-3\mu^2,
\tag{ART.21}
```

because the skew part has zero radial component. The target
\(6q\nabla_{S^2}q\) is axisymmetric and poloidal. The operator \(L_A^*\)
commutes with rotations around the \(e_3\) axis, so a scalar certificate for
this \(m=0\) target must be axisymmetric.

For an axisymmetric scalar \(\psi(\mu)\), the skew part of the adjoint is the
azimuthal field

```math
\gamma\sqrt{1-\mu^2}\left((\mu\psi)' +2\psi\right)e_\phi .
\tag{ART.22}
```

To match the poloidal target, this component must vanish. Thus

```math
(\mu\psi)'+2\psi=0
\quad\Longleftrightarrow\quad
\mu\psi'+3\psi=0,
\tag{ART.23}
```

whose smooth solutions on the sphere are only \(\psi\equiv0\). That cannot
also solve the nonzero poloidal equation \(L_A^*\psi=6q\nabla q\). Therefore

```math
A=S+\Omega,\qquad \gamma\ne0
\quad\Longrightarrow\quad
6q\nabla q\notin\operatorname{Range}L_A^*
\tag{ART.24}
```

before quotienting the rotation/frame row.

This is not a \(c_0\) counterexample. A solid rotation of the affine core is a
material-frame/current row of the same velocity field; it carries vorticity and
frame drift while leaving the radial cubic readout unchanged. The corrected
classification is:

```math
\text{static pressure-row certificate fails}
\quad\Longrightarrow\quad
\text{frame/material-time row must own the skew part,}
\tag{ART.25}
```

or the record routes to parent/pass/Field/nonparticipation. This is exactly why
`RetainedPressureRowAdjointRangePersistence.A` must be stated after the lawful
frame quotient and with the material-time row included.

## 6. The quotient repair for rigid frame rotation

The obstruction in Section 5 is exactly the missing frame row. Define the
same-record frame functional

```math
F_\Omega j=\Omega\theta\cdot j .
\tag{ART.26}
```

Its adjoint is

```math
F_\Omega^*\chi=\chi\,\Omega\theta .
\tag{ART.27}
```

For the axisymmetric rotation in (ART.20),

```math
\Omega\theta=\gamma\sqrt{1-\mu^2}\,e_\phi .
\tag{ART.28}
```

The skew obstruction (ART.22) is therefore not an unowned pressure-row
failure. It is exactly

```math
\gamma\sqrt{1-\mu^2}\left((\mu\psi)' +2\psi\right)e_\phi
=
F_\Omega^*\!\left((\mu\psi)' +2\psi\right).
\tag{ART.29}
```

Consequently the combined pressure-plus-frame row has the adjoint

```math
\mathcal L_{S+\Omega}^*(\psi,\chi)
=
L_{S+\Omega}^*\psi-F_\Omega^*\chi .
\tag{ART.30}
```

Taking the affine pressure certificate

```math
\psi=\Psi={4\over5}(3q-2),
\qquad
\chi=(\mu\Psi)' +2\Psi ,
\tag{ART.31}
```

gives

```math
\mathcal L_{S+\Omega}^*(\Psi,\chi)
=
6q\nabla_{S^2}q .
\tag{ART.32}
```

Thus, for every tangential current \(j\),

```math
M'(j)
=
\int_{S^2}\Psi\,L_{S+\Omega}j\,d\theta
-
\int_{S^2}\chi\,F_\Omega j\,d\theta .
\tag{ART.33}
```

This is the finite rigid-frame quotient result:

```math
|M'(j)|
\le
C_{S,\Omega}\left(
\|L_{S+\Omega}j\|_{L^2(S^2)}
+\|F_\Omega j\|_{L^2(S^2)}
\right).
\tag{ART.34}
```

Physically this says exactly what the non-separable ontology demanded. A
solidly rotating affine core did not create a silent pressure-row direction; it
asked the pressure row to carry a piece that belongs to the same record's
material frame current. Once that row is included, the apparent null is gone in
this model.

This discharges the axial rigid-rotation example. It does not prove the general
retained quotient theorem, because a real retained \(w=q+\eta\) can have
non-axial frame transport, nonrigid frame drift, nonlinear source terms, collar
coupling, and parent-row relay. The general theorem is therefore sharpened to:

```math
\texttt{RetainedCombinedRowAdjointRangePersistence.A:}
\tag{ART.35}
```

after all lawful same-record frame/material-time rows are included, the
positive cubic current lies in the combined row adjoint range, or the failure is
visible as parent/pass/Field/nonparticipation.

## 7. What changes for a general skew affine part

The previous repair must not be overstated. Let a general skew affine part be

```math
\Omega x=b\times x,\qquad a(\theta)=b\cdot\theta .
\tag{ART.36}
```

Use the sphere rotation \(J\) with the convention

```math
J\nabla_{S^2}a=\Omega\theta .
\tag{ART.37}
```

A direct tensor calculation gives the skew contribution to the pressure-row
adjoint:

```math
L_\Omega^*\psi
=
J\nabla_{S^2}(a\psi)+2\psi J\nabla_{S^2}a
=
aJ\nabla_{S^2}\psi+3\psi J\nabla_{S^2}a .
\tag{ART.38}
```

For \(b=\gamma e_3\) and \(\psi=\psi(\mu)\), this reduces to (ART.22):

```math
L_\Omega^*\psi
=
\gamma\sqrt{1-\mu^2}\left((\mu\psi)' +2\psi\right)e_\phi .
\tag{ART.39}
```

The scalar spin row \(F_\Omega j=\Omega\theta\cdot j\) owns only vector fields
parallel to \(J\nabla a=\Omega\theta\). Thus (ART.29) is exact for the axial
spin sector. For a non-axial \(b\), the term

```math
aJ\nabla_{S^2}\Psi
\tag{ART.40}
```

is not generally parallel to \(J\nabla a\). That residual is not a pressure-row
counterexample. It is the transported strain-frame component: the skew part is
rotating the Vieillefosse frame itself, not merely spinning around the already
chosen symmetry axis.

So the lawful quotient row cannot be the scalar \(F_\Omega\) alone. The next
finite statement is to include the full material-frame row. In the affine
model this is still explicit, not a black box. Since

```math
\nabla_{S^2}\Psi=\Psi'(q)\nabla_{S^2}q,\qquad \Psi'(q)={12\over5},
\tag{ART.41}
```

define two scalar material-frame rows:

```math
F_b^{\rm spin}j=(J\nabla_{S^2}a)\cdot j,
\qquad
F_b^{\rm turn}j=(aJ\nabla_{S^2}q)\cdot j .
\tag{ART.42}
```

Their adjoints are multiplication by the corresponding tangent vector fields.
Therefore

```math
L_\Omega^*\Psi
=
(F_b^{\rm spin})^*(3\Psi)
+
(F_b^{\rm turn})^*(\Psi'(q)).
\tag{ART.43}
```

Consequently the full affine skew certificate is the combined-adjoint identity

```math
\mathcal L_{S+\Omega,b}^*
\big(\Psi,3\Psi,\Psi'(q)\big)
:=
L_{S+\Omega}^*\Psi
-
(F_b^{\rm spin})^*(3\Psi)
-
(F_b^{\rm turn})^*(\Psi'(q))
=
6q\nabla_{S^2}q ,
\tag{ART.44}
```

Equivalently,

```math
M'(j)
=
\int_{S^2}\Psi\,L_{S+\Omega}j\,d\theta
-
\int_{S^2}3\Psi\,F_b^{\rm spin}j\,d\theta
-
\int_{S^2}\Psi'(q)\,F_b^{\rm turn}j\,d\theta .
\tag{ART.45}
```

This proves:

```math
\texttt{AffineFullMaterialFrameRowCertificate.A}
\tag{ART.46}
```

At the affine Vieillefosse sphere, every skew affine frame motion is seen by
the pressure row plus the two same-record material-frame rows (spin and
strain-pattern turnover).

The retained theorem beyond the affine model is still:

```math
\texttt{RetainedFullMaterialFrameRowAdmission.A:}
\tag{ART.47}
```

the retained record includes the material transport of its strain frame for
\(w=q+\eta\), including the analogues of the spin and turnover rows in
(ART.42). After this admission, the combined-row persistence theorem (ART.35)
is the correct finite target.

## 8. Status for \(c_0\)

This note strengthens the fixed-sphere calculation and prevents a false
closure. The affine sphere is row-coercive by an explicit certificate. The
axial rigid-rotation obstruction to the static pressure-only test is repaired
by the combined pressure-plus-frame certificate (ART.32). General skew affine
motion at the affine sphere is repaired by the full material-frame certificate
(ART.44). The general retained sphere is then reduced to retained full
material-frame row admission (ART.47), combined-row adjoint-range persistence
(ART.35), no silent row-dropping through the tower, and the relay-endpoint
material-time Liouville.

No \(c_0>0\) theorem is proved here.
