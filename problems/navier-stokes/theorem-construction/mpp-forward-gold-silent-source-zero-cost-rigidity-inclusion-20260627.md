---
theorem_id: forward-gold-silent-source-zero-cost-rigidity-inclusion-20260627
status: source-origin-zero-cost-rigidity-installed-parent-drop-augmented
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / parent-drop relay
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
includes:
  - SilentKernelSourceOriginNormalForm.A
  - BoundaryFlatSelectedCarrierExchangeCharge.A
  - InvisibleChildBlowupRigidity.A
  - SelectedActionTraceCoercivity.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-kernel-source-origin-normal-form-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-interior-source-origin-normal-form-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-augmented-parent-drop-silent-source-relay-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-hodge-selected-source-faithfulness-symbol-boundary-20260626.md
---

# Silent-source zero-cost rigidity inclusion

This note installs the corrected version of the invisible-child theorem.

The pure statement

```math
\ker(\text{parent Schur trace})
\cap
\{\text{retained selected pressure-Hodge carriers}\}
=
\{0\}
```

is too strong.  Boundary-flat interior pressure potentials exist.  The correct
Gold statement is the zero-cost version:

```math
\ker(\text{parent Schur trace})
\cap
\{\text{retained selected pressure-Hodge carriers}\}
\cap
\{\text{zero same-material strain/exchange charge}\}
=
\{0\}.
\tag{1}
```

Equivalently:

```math
\text{invisible child}
\quad\Longrightarrow\quad
\text{unselected pressure potential}
\quad\text{or}\quad
\text{selected source with same-material strain/exchange charge}.
\tag{2}
```

This is exactly the source-origin normal form.  It accepts that the boundary
cannot detect every interior elliptic source, then classifies what such a source
can be inside the retained same-material packet.

## 1. Silent interior source class

On the material collar let

```math
L_A=-\operatorname{div}_a(G\nabla_a),
\qquad
G=AA^\top .
```

The Schur-silent pressure-potential class is

```math
\mathcal K_{\rm sil}
=
\{f:\ f=L_Aw,\ w|_{\partial Q}=0,\ \partial_{\nu_A}w|_{\partial Q}=0\}.
\tag{3}
```

Such sources can have no parent boundary trace while remaining nonzero inside
the child.  So Schur invisibility alone cannot imply \(f=0\).

## 2. Projected-force branch is unselected

The material gradient force is

```math
\mathcal G_Aw=A^\top\nabla_aw,
```

and the material Hodge projector is

```math
\mathbb P_A=I-\mathcal G_A L_A^{-1}D_A.
```

Therefore

```math
\mathbb P_A\mathcal G_Aw=0.
\tag{4}
```

As a projected velocity-force component, the boundary-flat source is constraint
material.  This branch has no selected action:

```math
A_{\rm sel}^{\rm projected}(L_Aw)=0.
\tag{5}
```

## 3. Selected branch is strain-Hessian service

If the same silent potential is genuinely selected, it is not selected as a
projected pressure force.  It is selected through the pressure Hessian in the
material strain equation:

```math
D_tS+S^2+\Omega^2+\nabla_A^2q
=
\nu\Delta_AS+\mathcal C_A^{legal}.
\tag{6}
```

For the silent component \(q=w\) and selected unit direction \(e\),

```math
-e\cdot\nabla_A^2w\,e
=
D_t(e\cdot Se)
+e\cdot S^2e
+e\cdot\Omega^2e
-\nu e\cdot\Delta_ASe
+\mathcal C_A^{legal}.
\tag{7}
```

Since \(\Omega\) is skew-symmetric,

```math
e\cdot\Omega^2e=-|\Omega e|^2.
```

Thus the positive selected reading obeys

```math
\left[-e\cdot\nabla_A^2w\,e\right]_+
\le
\left[D_t(e\cdot Se)\right]_+
+|S|^2
+|\Omega e|^2
+\nu|\Delta_AS|
+|\mathcal C_A^{legal}|.
\tag{8}
```

The terms on the right are same-material exchange terms: top-strain log
service, complete-frame strain/vorticity service, viscous/tower service, and
legal coefficient/collar error in the established residual normal form.

Therefore

```math
dA_{\rm sel}^{\rm silent}
\le
C\,d\Omega^{top\text{-}strain/ex}
+C\,dD^{vis/rad}
+dR^{legal}.
\tag{9}
```

This proves the zero-cost rigidity statement `(1)`.

## 4. Transverse symbol-kernel mode

The earlier raw symbol counterexample is only a one-direction pressure probe.
For \(\xi=e_1\),

```math
Z=
\begin{pmatrix}
0&0&0\\
0&1&0\\
0&0&-1
\end{pmatrix}
```

can be invisible to that single pressure-Hodge symbol.  The complete-frame
trace-free packet removes that escape.  In the frame \((\hat\xi,p,n)\),

```math
\operatorname{tr}S=0
\quad\Longrightarrow\quad
p\cdot Sp+n\cdot Sn=-\hat\xi\cdot S\hat\xi .
\tag{10}
```

So a transverse positive selected component forces a companion compression
reading inside the same complete-frame strain/exchange packet.

## 5. Augmented parent-drop law

The parent-drop law is therefore not pure Schur coercivity.  It is:

```math
\sum_{Q'\in ch(Q)}A(Q')
\le
C\langle U_Q,\mathsf S_QU_Q\rangle
+C\,\Omega_Q^{strain/ex}
+C\,D_Q^{vis/rad}
+C\,R_{\rm legal}(Q).
\tag{11}
```

The visible part is paid by the parent Schur defect.  The silent selected part
is paid by same-material strain/exchange.  In the zero-Schur, zero-exchange,
zero-loss limit, selected activity vanishes:

```math
\mathsf S_\infty U_\infty=0,
\qquad
\Omega_\infty^{strain/ex}=0,
\qquad
D_\infty^{vis/rad}=0
\quad\Longrightarrow\quad
A_\infty=0.
\tag{12}
```

## 6. Relay consequence

This installs the invisible-child theorem in the correct form.  It does not ask
the boundary to detect boundary-flat sources.  It classifies their origin:

```math
\text{boundary-flat source}
\quad\Rightarrow\quad
\text{unselected pressure potential}
\quad\text{or}\quad
\text{selected strain/exchange service}.
```

The parent-drop relay may now use `(11)`.  The remaining global Gold burden is
the selected-density first-ratio gain / selected square-function theorem, with
the silent selected branch included in the full same-material exchange action.
