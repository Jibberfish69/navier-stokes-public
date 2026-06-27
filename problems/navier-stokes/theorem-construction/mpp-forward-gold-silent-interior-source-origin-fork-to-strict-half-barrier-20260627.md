---
theorem_id: forward-gold-silent-interior-source-origin-fork-to-strict-half-barrier-20260627
status: source-origin-fork-installed-silent-zero-cost-escape-removed-strict-half-barrier-still-live
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / silent-source fork / stopped primitive PLS half-barrier
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
audits_hinge:
  - InvisibleChildBlowupRigidity.A
  - SilentKernelSourceOriginNormalForm.A
  - BoundaryFlatSelectedCarrierExchangeCharge.A
  - AugmentedStoppedParentDrop.A
  - StoppedPrimitivePLSStrictHalfBarrierBreak.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-source-zero-cost-rigidity-inclusion-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-interior-source-origin-normal-form-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-augmented-parent-drop-silent-source-relay-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-source-to-primitive-half-tail-integration-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-pls-strict-half-barrier-break-relay-20260627.md
---

# Silent interior source origin fork to strict half-barrier

The useful attack is the silent interior source itself.

The failed pressure-Hodge observability route asked the parent boundary to see
every child source.  That is the wrong demand.  A boundary-flat pressure
potential can be invisible:

```math
f=L_Aw,
\qquad
w|_{\partial Q}=0,
\qquad
\partial_{\nu_A}w|_{\partial Q}=0.
\tag{1}
```

So the correct question is:

```math
\ker(\text{parent Schur trace})
\cap
\{\text{retained selected pressure-Hodge carriers}\}
\tag{2}
```

after decomposing the silent kernel by source origin.

## 1. Source-origin fork

There are only two zero-cost possibilities for a boundary-flat source.

First, it is just material constraint/gauge.  In material variables,

```math
\mathcal G_Aw=A^\top\nabla_aw,
\qquad
\mathbb P_A=I-\mathcal G_A L_A^{-1}D_A.
\tag{3}
```

Then

```math
\mathbb P_A\mathcal G_Aw=0.
\tag{4}
```

This branch is not selected pressure-Hodge activity.

Second, the same boundary-flat potential is genuinely selected.  Then it is not
selected as projected pressure force; it is selected through the pressure
Hessian in the material strain equation:

```math
D_tS+S^2+\Omega^2+\nabla_A^2q
=
\nu\Delta_AS+\mathcal C_A^{legal}.
\tag{5}
```

For \(q=w\) and selected direction \(e\),

```math
[-e\cdot\nabla_A^2w\,e]_+
\le
[D_t(e\cdot Se)]_+
+|S|^2
+|\Omega e|^2
+\nu|\Delta_AS|
+|\mathcal C_A^{legal}|.
\tag{6}
```

That branch carries top-strain / complete-frame exchange, viscous-radius loss,
or legal residual in the established normal form.

Thus the zero-cost rigidity statement is:

```math
\ker(\text{parent Schur trace})
\cap
\{\text{retained selected pressure-Hodge carriers}\}
\cap
\{\text{zero same-material strain/exchange charge}\}
=
\{0\}.
\tag{7}
```

This is the correct invisible-child theorem.

## 2. Parent-drop consequence

The pure Schur parent-drop estimate is replaced by the augmented one:

```math
\sum_{Q'\in ch(Q)}A(Q')
\le
C\langle U_Q,\mathsf S_QU_Q\rangle
+C\Omega_Q^{strain/ex}
+CD_Q^{vis/rad}
+CR_{\rm legal}(Q).
\tag{8}
```

The visible branch is paid by the Schur defect.  The silent selected branch is
paid by same-material strain/exchange.  No boundary observability of
boundary-flat sources is assumed.

## 3. Relation to the live half-barrier

This removes the silent-source zero-cost escape from the stopped parent-drop
argument.  It does not by itself prove the global first-ratio tail.

After the source-origin fork, a silent selected visit is a charged visit.  The
remaining Gold wall is whether the charged stopped primitive PLS visits can
still arrange the critical half-tail

```math
\nu_\ell={2^{-\ell}\over \ell+1},
\qquad
\sum_\ell\nu_\ell<\infty,
\qquad
\sum_\ell2^\ell\nu_\ell=\infty.
\tag{9}
```

So the live theorem remains the strict stopped half-barrier:

```math
N_{L+1}\le\theta N_L+B_L,
\qquad
\theta<{1\over2},
\qquad
\sum_L2^LB_L<\infty,
\tag{10}
```

or equivalently a bounded-below same-material Lyapunov law / global weighted
laminar ancestry reserve for the stopped primitive PLS driver.

The source-origin fork is therefore a real closure of the invisible-child escape,
and a real input to the stopped parent-drop relay.  The unclosed part is the
global strict gain for the already-charged primitive PLS half-tail.
