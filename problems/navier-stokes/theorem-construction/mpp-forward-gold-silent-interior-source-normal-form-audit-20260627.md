---
theorem_id: forward-gold-silent-interior-source-normal-form-audit-20260627
status: installed-as-local-zero-cost-rigidity-support-not-global-tail-closure
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / parent-drop relay
audits_hinge:
  - SilentKernelSourceOriginNormalForm.A
  - BoundaryFlatSelectedCarrierExchangeCharge.A
  - InvisibleChildBlowupRigidity.A
  - SelectedDensityMartingaleSquareFunctionCarleson.A
  - MovingLowHighInterfaceSelectedAtom.A
  - MovingLowHighInterfaceLowerEdge.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-kernel-source-origin-normal-form-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-boundary-flat-selected-carrier-exchange-charge-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-source-zero-cost-rigidity-inclusion-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-augmented-parent-drop-silent-source-relay-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-visible-silent-hilbert-lift-audit-selected-tail-frontier-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-scale-native-reserve-atom-joint-interface-reduction-20260627.md
---

# Silent interior source normal-form audit

The supplied pressure point is correct:

```math
\text{Can a boundary-flat pressure-Hodge source also be a retained selected
critical-strain carrier?}
```

This is the right way to attack the silent child.  A Schur-only theorem cannot
be true, because elliptic theory allows interior pressure-potential bubbles

```math
f=L_Aw,
\qquad
w|_{\partial Q}=0,
\qquad
\partial_{\nu_A}w|_{\partial Q}=0.
\tag{1}
```

The proof has to classify the source origin before asking what the parent
boundary sees.

## 1. Installed local fork

The installed zero-cost rigidity note proves the local fork in the needed form:

```math
\ker(\text{parent Schur trace})
\cap
\{\text{retained selected pressure-Hodge carriers}\}
\cap
\{\text{zero same-material strain/exchange charge}\}
=\{0\}.
\tag{2}
```

Equivalently, an invisible child is either an unselected pressure potential or
a selected source with same-material exchange charge.

As projected pressure force, the hidden pressure potential is constraint
material:

```math
\mathbb P_A(A^\top\nabla_a w)=0.
\tag{3}
```

So this branch has no selected projected-force action.

If the same silent potential is genuinely selected, it enters through the
strain Hessian.  In the material strain equation,

```math
D_tS+S^2+\Omega^2+\nabla_A^2 q
=
\nu\Delta_A S+\mathcal C_A^{legal}.
\tag{4}
```

For the silent component \(q=w\) and selected direction \(e\),

```math
[-e\cdot\nabla_A^2w\,e]_+
\le
[D_t(e\cdot Se)]_+
|S|^2
|\Omega e|^2
\nu|\Delta_A S|
|\mathcal C_A^{legal}|.
\tag{5}
```

The right side is same-material top-strain/log exchange, complete-frame
strain-vorticity service, viscous/tower service, and legal coefficient/collar
error.  Thus a selected silent source is not zero-cost.

The transverse pressure-Hodge-null symbol counterexample is handled the same
way.  In a complete frame \((\widehat\xi,p,n)\),

```math
\operatorname{tr}S=0
\quad\Longrightarrow\quad
p\cdot Sp+n\cdot Sn=-\widehat\xi\cdot S\widehat\xi.
\tag{6}
```

A transverse positive selected reading forces a companion compression reading
on the same material packet.

## 2. Parent-drop consequence

The parent-drop relay is therefore the augmented one:

```math
\sum_{Q'\in ch(Q)}A(Q')
\le
C\langle U_Q,\mathsf S_QU_Q\rangle
C\,\Omega_Q^{strain/ex}
C\,D_Q^{vis/rad}
C\,R_{\rm legal}(Q).
\tag{7}
```

The pressure-visible part is paid by the Schur defect.  The Schur-silent
selected part is paid by the same-material strain/exchange channel.  This
removes the silent-source escape from `SelectedActionTraceCoercivity.A`.

## 3. What remains

Equation `(7)` is local on the parent.  Summing over a laminar tree gives

```math
\sum_{Q\subseteq Q_0}A(Q)
\le
C B_{\rm cap}(Q_0)
C\sum_{Q\subseteq Q_0}\Omega_Q^{strain/ex}
C\sum_{Q\subseteq Q_0}D_Q^{vis/rad}
C R_{\rm legal}(Q_0).
\tag{8}
```

So the silent-source normal form does not close the global selected tail by
itself.  It moves the remaining work to the same-material selected-density /
exchange action.

The current proof-relay hinge is the later joint-interface form:

```text
MovingLowHighInterfaceSelectedAtom.A
+
MovingLowHighInterfaceLowerEdge.A
```

That hinge says the four apparent local channels collapse to the moving
low-high pressure-stress/cubic-collar interface.  The silent-source fork is
included inside that hinge as the local zero-cost exclusion: it prevents a
Schur-invisible selected child from being free.

The selector-correct Hilbert lift is the compatible global reformulation.  It
uses three carrier pieces:

```math
\mathcal H_{\rm lift}
=
\mathcal H_{\rm vis}
\oplus
\mathcal H_{\rm sil}
\oplus
\mathcal H_{\rm ex}.
\tag{9}
```

The visible part is the Schur quotient, the silent part is the pressure-potential
bubble space, and the exchange part is the same-material strain/compression
carrier.  The unresolved global theorem is the selector-to-Hilbert readout and
original-data root bound:

```math
|\Delta_Q\log\rho_{\rm sel}|
\le
C\|\Delta_QZ\|_{\mathcal H_{\rm lift}}+e_Q,
\tag{10}
```

with

```math
\sum_{Q\subseteq Q_0}\|\Delta_QZ\|_{\mathcal H_{\rm lift}}^2
\le
C_N(u_0)\mathcal R(Q_0)+R_{\rm legal}(Q_0).
\tag{11}
```

## 4. Result

The silent interior source idea is included as a proved local source-origin
normal form:

```math
\text{boundary-flat source}
\Longrightarrow
\text{unselected pressure potential}
\quad\text{or}\quad
\text{selected strain/exchange service}.
```

The current Gold route should not return to Schur-only observability or raw
hidden-bubble detection.  The remaining closure work is the global selected
first-ratio / selected-density square-function gain, presently expressed by the
joint low-high interface lower edge or by the selector-correct
visible/silent/exchange Hilbert lift.
