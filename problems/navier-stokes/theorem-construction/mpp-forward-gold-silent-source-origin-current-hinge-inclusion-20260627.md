---
theorem_id: forward-gold-silent-source-origin-current-hinge-inclusion-20260627
status: included-as-current-hinge-support-not-global-root-closure
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-scale fresh native root reserve
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
includes_user_idea: silent interior source direct attack / source-origin normal form
updates_hinge:
  - SelectedScaleFreshNativeRootReserve.A
  - SelectedCompressionRootReserve.A
  - StoppedFullExchangeActionCarleson.A
uses:
  - SilentKernelSourceOriginNormalForm.A
  - BoundaryFlatSelectedCarrierExchangeCharge.A
  - AugmentedParentDropAfterSilentSource.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-interior-source-origin-normal-form-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-interior-source-normal-form-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-augmented-parent-drop-silent-source-relay-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-scale-fresh-native-root-reserve-better-idea-20260627.md
---

# Silent source-origin inclusion in the current hinge

The useful direct attack is the source-origin classification of a silent
interior pressure-Hodge source.

Boundary invisibility alone cannot exclude a source

```math
f=L_Aw,
\qquad
w|_{\partial Q}=0,
\qquad
\partial_{\nu_A}w|_{\partial Q}=0.
\tag{1}
```

Such sources exist.  The proof should not ask the parent Schur trace to see
all of them.  It should classify whether such a source can also be a retained
selected critical-strain carrier.

## 1. Installed local classification

The installed source-origin closure gives the zero-cost form

```math
f\in\ker(\text{parent Schur trace}),
\qquad
f\in\mathcal C_{\rm sel},
\qquad
d\Omega^{strain/ex}(f)=0
\quad\Longrightarrow\quad
A_{\rm sel}(f)=0.
\tag{2}
```

Equivalently,

```math
\ker(\text{parent Schur trace})
\cap
\{\text{retained selected pressure-Hodge carriers}\}
\subset
\{\text{projected pressure/gauge}\}
\cup
\{\text{same-material strain/exchange charged}\}.
\tag{3}
```

The projected-pressure branch is harmless because

```math
\mathbb P_A(A^\top\nabla_aw)=0.
\tag{4}
```

It is constraint material, not selected projected-force action.

The genuinely selected branch appears through the strain-Hessian reading in
the material strain equation:

```math
D_tS+S^2+\Omega^2+\nabla_A^2q
=
\nu\Delta_AS+\mathcal C_A^{legal}.
\tag{5}
```

For \(q=w\) and selected unit direction \(e\),

```math
\left[-e\cdot\nabla_A^2w\,e\right]_+
\le
\left[D_t(e\cdot Se)\right]_+
|S|^2
|\Omega e|^2
\nu|\Delta_AS|
|\mathcal C_A^{legal}|.
\tag{6}
```

So selected silent action is paid by top-strain/exchange, complete-frame
strain-vorticity service, viscous/radius service, or legal coefficient/collar
error.

## 2. Current parent-drop form

The parent-drop statement should therefore keep the silent source-origin
classification inside it:

```math
\sum_{Q'\in ch(Q)}A(Q')
\le
C\langle U_Q,\mathsf S_QU_Q\rangle
+C\,\Omega_Q^{strain/ex}
+C\,D_Q^{vis/rad}
+C\,R_{\rm legal}(Q).
\tag{7}
```

The pressure-visible quotient is paid by the Schur defect.  The Schur-silent
selected part is paid by the same-material strain/exchange coordinate.  Thus
the invisible-child source is not a separate observability wall.

## 3. Effect on the selected-scale fresh native root reserve

The current hinge is `SelectedScaleFreshNativeRootReserve.A`.  The source-origin
classification fixes its lower-edge branch structure.

For a stopped parent \(P\), let

```math
Z_P^{orig}=Z_P^{vis}\oplus Z_P^{sil}\oplus Z_P^{ex}
\tag{8}
```

be the original-history visible/silent/exchange carrier.  After projecting away
directions already spent by strict selected ancestors,

```math
F_Q=(I-\Pi_{\mathcal S_{<Q}})\Delta_QZ_P^{orig}.
\tag{9}
```

The silent component is not allowed to be a free selected direction.  On a strict
fresh retained selected birth:

1. the pressure-visible part contributes to \(F_Q^{vis}\);
2. the Schur-silent projected-pressure part is unselected;
3. the Schur-silent genuinely selected part contributes through
   \(F_Q^{ex}\), the strain/exchange coordinate;
4. lower-band carry, selector/reselection jumps, entrance, and legal branches
   have already been removed or paid.

So the lower-edge target becomes

```math
\omega_Q
\le
C_N\|F_Q^{vis}\oplus F_Q^{ex}\|_{\mathcal H_{\rm src}^{sel}}^2
+R_{\rm paid}(Q)+R_{\rm legal}(Q).
\tag{10}
```

This is the selected-scale form of the silent-source fork.  It attacks the exact
escape hatch: a boundary-flat source can be invisible, but it cannot remain a
retained selected child at zero strain/exchange cost.

## 4. What this does not prove

The source-origin classification proves the local lower-edge routing for silent
sources.  It does not by itself prove the global root upper edge

```math
\sum_{Q\subset P}
\|F_Q^{vis}\oplus F_Q^{ex}\|_{\mathcal H_{\rm src}^{sel}}^2
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{11}
```

That root upper edge remains the active Gold burden.  The current live theorem
is still `SelectedScaleFreshNativeRootReserve.A`, with the silent interior
source branch now included as a closed local classification inside the fresh
lower-edge argument.

## 5. Result

The silent interior source attack should be used as follows:

```math
\text{silent interior source}
\Longrightarrow
\text{projected pressure/gauge}
\quad\text{or}\quad
\text{selected strain/exchange coordinate}.
\tag{12}
```

Thus the remaining problem is not Schur observability of boundary-flat bubbles.
It is the original-history selected-scale root packing of the fresh visible and
exchange increments.
