---
theorem_id: forward-gold-c0-fixed-sphere-odd-pressure-current-nullspace-test-20260708
created: 2026-07-08
problem: navier-stokes
route: forward-gold / c_0 / cubic radial moment / fixed-sphere pressure-current nullspace
status: fixed-sphere-linear-nullspace-test; support-only; not-c0-proof
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
  symmetry, so m != 0 modes cannot cancel the m = 0 source. Using the already
  recorded m = 0 poloidal full-source null check, the fixed-sphere full-source
  silent positive-drop nullspace is empty in this register. This is support for
  CubicRadialMomentOddPayment.A, not the theorem: it does not yet prove the
  nonlinear retained-record material-time odd bill or the transverse restoring
  pressure sign.
---

# Fixed-Sphere Odd Pressure-Current Nullspace Test

This note takes up the unfinished census item named
`OddPressureCurrentCoercivity.A`, but only in the first bounded register:
the fixed unit sphere around the affine Vieillefosse core.

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

Let \(L_S\) denote the full linear pressure-current source around the affine
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

Thus an \(m\ne0\) add-on cannot cancel the \(m=0\) pressure-current source as a
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
\texttt{FixedSphereLinearOddPressureCurrentNullspace.A:}
\qquad
\begin{array}{c}
M'(j)>0,\\
L_Sj=0
\end{array}
\quad\text{is impossible at }w=\theta\cdot S\theta,
```

after the pass-owned aligned branch and rotation-gauge swirl have been removed.

## 3. What this proves and what it does not prove

This is a fixed-sphere linear nullspace test. It proves that the first
conversation-level escape is not present at the affine Vieillefosse sphere:
there is no off-frame \(m\ne0\) current that both carries the linear cubic drop
and hides the full linear pressure-current source.

It does not prove `CubicRadialMomentOddPayment.A`. Three burdens remain outside
this note:

1. The theorem needs the legitimate material-time odd bill
   \(\mathsf P_{\rm odd}\), not merely full-source visibility \(L_Sj\).
2. A retained record can become non-axisymmetric after finite same-fluid
   evolution; this note is the affine-sheet linear test, not the nonlinear
   record-chirality theorem.
3. The global strict atom/tower accounting still has to admit the signed
   pressure-current/collar transfer without double-counting Door 1, Door 2a,
   or Door 2b.

The exact remaining fixed-geometry extension is:

```math
\text{from }w=q
\quad\text{to retained }w=q+\eta
\text{ with lawful same-fluid history,}
```

and to show that any positive retained \([M']_+\) either enters the
material-time oriented pressure-current bill or routes to a parent/pass/Field
owner. That is the same open object as
`RetainedPositiveCubicFluxIsPaidOrRoutesOut.A`.
