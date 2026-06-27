---
theorem_id: forward-gold-stopped-parent-drop-silent-source-reconciliation-20260627
status: pure-stopped-schur-target-superseded-by-augmented-stopped-parent-drop
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped parent-drop
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
supersedes_stale_target:
  - StoppedSelectedActionTraceCoercivity.A
uses:
  - SilentKernelSourceOriginNormalForm.A
  - BoundaryFlatSelectedCarrierExchangeCharge.A
  - AugmentedParentDropSilentSourceRelay.A
  - StoppedSourceCarrierAndPaidReselection.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-source-carrier-direct-production-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-source-zero-cost-rigidity-inclusion-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-augmented-parent-drop-silent-source-relay-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-stopped-source-carrier-reduction-20260627.md
---

# Stopped parent-drop / silent-source reconciliation

The stopped source-carrier direct production test named the trace side as

```text
StoppedSelectedActionTraceCoercivity.A.
```

Read as a pure Schur estimate, that is now stale.  The silent-source normal
form already proves that a boundary-flat pressure-Hodge source can be invisible
to the parent Schur trace.  The valid stopped estimate is the augmented
parent-drop estimate on each stopped parent.

## 1. Stopped parent-child split

Let \(S\) be a stopped parent and let \(S'\in ch_{\rm stop}(S)\) be its stopped
children.  The stopped capacity drop is

```math
\mathsf S_S^{\rm stop}
=
\Lambda_S-\bigoplus_{S'\in ch_{\rm stop}(S)}\Lambda_{S'}.
\tag{1}
```

The pure stopped Schur target would be

```math
\sum_{S'\in ch_{\rm stop}(S)}A(S')
\le
C\langle U_S,\mathsf S_S^{\rm stop}U_S\rangle
+R_{\rm stop}(S)+R_{\rm legal}(S).
\tag{2}
```

This is false in the same way the unstopped pure Schur estimate is false:
boundary-flat interior pressure potentials may satisfy

```math
f=L_Aw,\qquad
w|_{\partial S'}=0,\qquad
\partial_{\nu_A}w|_{\partial S'}=0,
\tag{3}
```

while producing no parent Schur trace.

## 2. Correct stopped trace estimate

Decompose selected stopped child action into the pressure-visible quotient and
the Schur-silent source-origin part:

```math
A(S')=A_{\rm vis}(S')+A_{\rm sil}(S').
\tag{4}
```

On the quotient by the silent kernel, compactness gives the stopped visible
coercivity:

```math
\sum_{S'}A_{\rm vis}(S')
\le
C\langle U_S,\mathsf S_S^{\rm stop}U_S\rangle
+R_{\rm stop}^{vis}(S)+R_{\rm legal}(S).
\tag{5}
```

Indeed, failure of `(5)` produces a retained limit with unit quotient-visible
selected action and zero stopped Schur defect.  Zero stopped Schur defect puts
the limit in the silent kernel, contradicting nonzero quotient-visible action.

The silent part is handled by source-origin normal form.  A silent pressure
potential is unselected as projected pressure force.  If it is genuinely
selected, it appears through the pressure Hessian in the material strain
equation and is paid by top-strain / complete-frame exchange and viscous/radius
loss:

```math
\sum_{S'}A_{\rm sil}(S')
\le
C\,\Omega_S^{strain/ex}
+C\,D_S^{vis/rad}
+R_{\rm stop}^{sil}(S)+R_{\rm legal}(S).
\tag{6}
```

Adding `(5)` and `(6)` gives the valid stopped parent-drop estimate:

```math
\boxed{
\sum_{S'\in ch_{\rm stop}(S)}A(S')
\le
C\langle U_S,\mathsf S_S^{\rm stop}U_S\rangle
+C\,\Omega_S^{strain/ex}
+C\,D_S^{vis/rad}
+R_{\rm stop}(S)
+R_{\rm legal}(S).
}
\tag{7}
```

Thus `StoppedSelectedActionTraceCoercivity.A` is closed only in this augmented
form.  The pure Schur target should not remain a live Gold burden.

## 3. Stopped Bellman consequence

Capacity monotonicity still gives

```math
\sum_{S'\in ch_{\rm stop}(S)}B_{\rm cap}(S')
\le
B_{\rm cap}(S)+R_{\rm legal}(S).
\tag{8}
```

Combining `(7)` and `(8)` yields

```math
\sum_{S'}A(S')+\sum_{S'}B_{\rm cap}(S')
\le
B_{\rm cap}(S)
+C\,\Omega_S^{strain/ex}
+C\,D_S^{vis/rad}
+R_{\rm stop}(S)
+R_{\rm legal}(S).
\tag{9}
```

Summing over a stopped laminar tree rooted at \(P\),

```math
\sum_{S\subseteq P}A(S)
\le
C B_{\rm cap}(P)
+C\sum_{S\subseteq P}\Omega_S^{strain/ex}
+C\sum_{S\subseteq P}D_S^{vis/rad}
+R_{\rm stop}(P)
+R_{\rm legal}(P).
\tag{10}
```

The stopped trace side is therefore no longer a pure pressure-Hodge
observability problem.  It is a visible-Schur plus silent-source-exchange
estimate.

## 4. Remaining production burden

After this reconciliation, the remaining stopped-carrier production is:

```text
StoppedAugmentedExchangeSummability.A
PaidReselectionStoppingCarleson.A
```

where the first line means the stopped sum of the same-material strain/exchange
and viscous/radius terms in `(10)` is finite from the full original-history
four-body/tower action, and the second line means the uncharged stopped
reselection measure cannot carry the critical half-tail.

Equivalently, the old pair

```text
StoppedSelectedActionTraceCoercivity.A
StoppedReselectionNoEscape.A
```

must be read as

```text
AugmentedStoppedParentDrop.A
StoppedReselectionNoEscape.A.
```

The first is the installed silent-source correction applied to stopped parents.
The second remains the shrinking/reselecting-core branch.
