---
theorem_id: forward-gold-silent-source-kernel-normal-form-readjustment-20260627
status: source-origin-normal-form-refined-installed-support
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected first-ratio gain
refines:
  - SilentKernelSourceOriginNormalForm.A
  - BoundaryFlatSelectedCarrierExchangeCharge.A
  - PressureActiveSelection.A
supports:
  - SelectedActionTraceCoercivity.A
  - ParentDrop.A
  - FreshSourceWeightedPairedCarrierBound.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-interior-source-origin-normal-form-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-kernel-source-origin-normal-form-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-boundary-flat-selected-carrier-exchange-charge-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-symbol-kernel-exclusion-counterboundary-20260626.md
---

# Silent source kernel normal-form readjustment

## 1. Correction

The useful object is the silent interior source itself, not another boundary
observability theorem.  Boundary invisibility only says that the source can be
represented as

```math
f=L_A w,
\qquad
w|_{\partial A}=0,
\qquad
\partial_{\nu_A}w|_{\partial A}=0.
```

This is a real elliptic kernel.  It cannot be excluded by parent Schur trace
alone.

The valid theorem is therefore not the raw statement

```math
\ker(\text{parent Schur trace})
\cap
\{\text{all selected carriers}\}
=\{0\}.
```

That form is too strong unless the word `selected` has already quotiented out
gauge/hidden-potential material and charged the same-material exchange part.

The correct zero-cost statement is

```math
\ker(\text{parent Schur trace})
\cap
\{\text{retained selected pressure-Hodge carriers}\}
\cap
\{\text{zero top-strain/material-exchange charge}\}
=\{0\}.
```

Equivalently,

```math
\mathsf S_\infty U_\infty=0,
\qquad
d\Omega_\infty^{top\text{-}strain/ex}=0
\quad\Longrightarrow\quad
A_\infty^{silent}=0.
```

## 2. Source-origin normal form

The boundary-flat source has exactly two admissible readings.

First, it is only hidden pressure-potential material.  Then

```math
\mathbb P_A(A^\top\nabla_a w)=0,
```

so it is a constraint/gauge force and carries no selected projected velocity
activity.

Second, it is genuinely selected.  Then it appears through the strain-Hessian
reading.  In the material strain equation,

```math
D_tS+S^2+\Omega^2+\nabla_A^2q
=
\nu\Delta_A S+\text{legal coefficient/collar terms}.
```

For the silent pressure component \(q=w\) and a selected unit direction \(e\),

```math
-e\cdot\nabla_A^2 w\,e
=
D_t(e\cdot Se)
+e\cdot S^2e
-|\Omega e|^2
-\nu e\cdot\Delta_ASe
+\text{legal coefficient/collar terms}.
```

Thus selected silent pressure-Hessian activity is same-material exchange
activity.  It is paid by top-strain/log exchange, complete-frame service,
viscous/tower service, coefficient/collar legal terms, or packet-normal/covector
compression.

## 3. Parent-drop form

With this normal form, the child action estimate has the form

```math
\sum_{Q'\in ch(Q)}A(Q')
\le
C\langle U_Q,\mathsf S_QU_Q\rangle
+C\,\Omega_Q^{top\text{-}strain/ex}
+C\,D_Q^{vis/rad}
+C\,R^{legal}(Q).
```

The visible branch is paid by the Schur defect.  The silent branch is paid by
source-origin exchange charge.  In a zero-defect, zero-exchange blow-up limit,
no selected child action remains.

## 4. Relation to the current live hinge

This closes the silent-source escape as a local support theorem.  It does not by
itself close the current first-ratio half-tail.

The remaining current hinge is still the same-material fresh paired-carrier
estimate:

```math
\int_0^{T^*}\sum_{k>N+M}
2^k a_k^{fresh}(t)\mathcal D_k^{\uparrow,fresh}(t)\,dt
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
```

The silent-source normal form is one paid reduction feeding that hinge.  It
prevents the proof from reopening the false demand that the parent boundary
trace detect every boundary-flat elliptic source.

