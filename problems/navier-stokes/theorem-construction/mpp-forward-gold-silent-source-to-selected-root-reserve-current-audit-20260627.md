---
theorem_id: forward-gold-silent-source-to-selected-root-reserve-current-audit-20260627
status: silent-source-idea-installed-as-support-current-producer-remains-selected-root-reserve
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / critical fresh source tent Carleson
audits_user_idea:
  - silent interior source direct attack
  - source-origin normal form
  - invisible child / no silent selected pressure-Hodge carrier
uses:
  - SilentKernelSourceOriginNormalForm.A
  - AugmentedParentDropAfterSilentSource.A
  - SelectedCompressionRootReserve.A
  - RepeatedCoreRecordReturnStorageBound.A
  - ShrinkingCoreEscapeCapacityLowerBound.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-interior-source-origin-normal-form-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-augmented-parent-drop-silent-source-relay-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-source-origin-current-hinge-inclusion-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-compression-root-reserve-synthesis-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-nozeno-record-return-branch-routing-20260627.md
effect: >-
  Records that the silent interior source idea is already the correct local
  source-origin normal form and is included in the current Gold hinge. It should
  not be reopened as Schur observability or promoted to the global producer. The
  remaining producer is the selected root reserve / no-Zeno reuse-escape fork.
---

# Silent source to selected root reserve current audit

The useful silent-source question is:

```math
\ker(\text{parent Schur trace})
\cap
\{\text{retained selected pressure-Hodge carriers}\}
=\{0\}
```

only after quotienting out gauge / hidden-potential material and charging
genuinely selected silent material to same-material strain/exchange.

That is installed.  The zero-cost version is:

```math
\mathsf S_\infty U_\infty=0,
\qquad
\Omega_\infty^{strain/ex}=0,
\qquad
D_\infty^{vis/rad}=0
\quad\Longrightarrow\quad
A_\infty=0.
\tag{1}
```

So a boundary-flat pressure-Hodge source can exist, but it cannot be both
selected and free.  It is either projected constraint material,

```math
\mathbb P_A(A^\top\nabla_aw)=0,
\tag{2}
```

or it enters the material strain equation through the pressure Hessian and
pays top-strain / complete-frame / viscous / legal service:

```math
dA_{\rm sel}^{silent}
\le
C\,d\Omega^{top\text{-}strain/ex}
+C\,dD^{vis/rad}
+dR^{legal}.
\tag{3}
```

## Parent-drop consequence

The correct parent-drop law after the silent-source audit is:

```math
\sum_{Q'\in ch(Q)}A(Q')
\le
C\langle U_Q,\mathsf S_QU_Q\rangle
+C\,\Omega_Q^{strain/ex}
+C\,D_Q^{vis/rad}
+C\,R_{\rm legal}(Q).
\tag{4}
```

The visible part is paid by the parent Schur defect.  The Schur-silent selected
part is paid by the same-material exchange coordinate.  This removes the
invisible-child escape from the parent-drop argument.

## What remains

After pressure-visible/null routing, the selected action has branch-local
control:

```math
A(Q)
\le
C\left(
\langle U_Q,\mathsf S_QU_Q\rangle
+\mathcal S_{\rm normal}(Q)
+\mathcal S_{\rm covector}(Q)
+\mathcal B_{\rm select}(Q)
+R_{\rm legal}(Q)
\right).
\tag{5}
```

Thus a unit selected child has a scale-invariant local payment.  The missing
line is the original-history upper/root reserve:

```math
\sum_{Q\in\mathcal T_{\rm sel}}
\left(
\langle U_Q,\mathsf S_QU_Q\rangle
+\mathcal S_{\rm normal}(Q)
+\mathcal S_{\rm covector}(Q)
+\mathcal B_{\rm select}(Q)
\right)
\le
C_N(u_0)+R_{\rm legal}.
\tag{6}
```

This is `SelectedCompressionRootReserve.A`.

The currently routed branch form is:

```text
RepeatedCoreRecordReturnStorageBound.A
+
ShrinkingCoreEscapeCapacityLowerBound.A.
```

Record/return BV descent belongs to the repeated-core branch.  Shrinking-core
escape still needs selected pressure-Hodge / collar-turnstile capacity or
parent-child reset charge.  Neither branch should reopen Schur-only
invisible-child observability, raw Bessel freshness, endpoint atom exclusion,
pressure/collar lobe clocks, or future selected-tail definitions as producers.

## Result

The silent interior source idea is included and useful, but it is not the
global closure producer.  It closes the local escape hatch that boundary
invisibility created, then returns the proof to the selected root reserve:

```math
\text{silent source origin normal form}
\Longrightarrow
\text{augmented parent-drop}
\Longrightarrow
\text{selected root reserve / no-Zeno reuse-escape fork}.
\tag{7}
```

