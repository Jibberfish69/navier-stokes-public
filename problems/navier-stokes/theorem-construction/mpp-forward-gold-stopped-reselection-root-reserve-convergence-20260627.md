---
theorem_id: forward-gold-stopped-reselection-root-reserve-convergence-20260627
status: stopped-reselection-branch-converges-to-selected-compression-root-reserve
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped production
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
uses:
  - AugmentedStoppedParentDrop.A
  - RetainedSelectionBoundaryTax.A
  - TerminalSelectedDensityAtomExclusion.A
  - SelectedCompressionRootReserve.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-parent-drop-silent-source-reconciliation-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-compression-or-reselection-tax-dichotomy-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-selection-tax-density-atom-boundary-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-selected-density-atom-exclusion-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-compression-root-reserve-synthesis-20260626.md
---

# Stopped reselection convergence to the root reserve

The stopped source-carrier route no longer leaves two independent Gold
burdens.  After the silent-source correction and the reselection boundary
audit, both stopped production branches converge to the same root reserve.

## 1. Stopped parent-drop side

For a stopped parent \(S\), the correct trace estimate is the augmented stopped
parent-drop:

```math
\sum_{S'\in ch_{\rm stop}(S)}A(S')
\le
C\langle U_S,\mathsf S_S^{\rm stop}U_S\rangle
+C\,\Omega_S^{strain/ex}
+C\,D_S^{vis/rad}
+R_{\rm stop}(S)
+R_{\rm legal}(S).
\tag{1}
```

The pure stopped Schur estimate is superseded.  The visible part is paid by the
parent-child pressure-Hodge Schur form.  The silent selected part is paid by
same-material strain/exchange and viscous/radius service.

Adding capacity monotonicity gives the stopped Bellman inequality:

```math
\sum_{S'}A(S')+\sum_{S'}B_{\rm cap}(S')
\le
B_{\rm cap}(S)
+C\,\Omega_S^{strain/ex}
+C\,D_S^{vis/rad}
+R_{\rm stop}(S)
+R_{\rm legal}(S).
\tag{2}
```

So the stopped parent-drop side is already a coordinate of the same selected
compression/root service.

## 2. Stopped reselection side

Visible stops are paid by selector/collar variation, order-lock gap,
Body-II/III defects, or legal synchronization.  The only remaining stopped
reselection case is strict subset reselection with no material compression and
no visible stop payment:

```math
S_{k+1}\subsetneq S_k,\qquad
A(S_{k+1})\simeq1.
\tag{3}
```

The compression-or-reselection dichotomy gives material compression cost for
true collar compression.  The strict subset case would require a selection
boundary tax:

```math
A(S_{k+1})\lesssim
\mathcal S_{\rm normal}(S_k)
+\mathcal S_{\rm covector}(S_k)
+\mathcal B_{\rm select}(S_k,S_{k+1})
+R_{\rm legal}(S_k).
\tag{4}
```

But the retained-selection tax audit proves that a pure boundary tax is not
automatic.  A nested selector can simply follow a terminal critical density
concentration:

```math
\mu_{\rm sel}(S_k)\simeq r_k^\alpha,\qquad
A(S_k)=r_k^{-\alpha}\mu_{\rm sel}(S_k)\simeq1.
\tag{5}
```

Thus unpaid strict reselection does not create a new theorem.  It becomes the
terminal selected-density atom branch.

## 3. Terminal density atom branch

The terminal selected-density atom direct test shows that `(5)` is not excluded
by nesting, laminarity, finite raw mass, or selection alone.  Excluding it
requires a strict selected-density gain:

```math
\sum_{Q\subseteq Q_0}A(Q)
\le
C_N\mathcal R_{\rm root}(Q_0)+R_{\rm legal}(Q_0),
\tag{6}
```

or an equivalent reverse-Holder / strict good-lambda / original-history root
reserve.

Therefore

```math
\text{unpaid stopped reselection no-escape}
\quad\Longleftrightarrow\quad
\text{selected compression root reserve}.
\tag{7}
```

## 4. Final nonduplicate Gold theorem

The stopped-carrier production side is now exactly:

```text
SelectedCompressionRootReserve.A
```

Statement:

```math
\sum_{Q\in\mathcal T_{\rm sel}}
\left(
\langle U_Q,\mathsf S_QU_Q\rangle
+\mathcal S_{\rm normal}(Q)
+\mathcal S_{\rm covector}(Q)
+\mathcal B_{\rm select}(Q)
+\Omega_Q^{strain/ex}
+D_Q^{vis/rad}
\right)
\le
C_N(u_0)+R_{\rm legal}.
\tag{8}
```

Equivalently:

```math
\sum_{Q\in\mathcal T_{\rm sel}}A(Q)
\le
C_N(u_0)+R_{\rm legal},
\tag{9}
```

or, in the ratio-tail form,

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty.
\tag{10}
```

This is the strict good-lambda / weight-beating tail theorem for the original
same-material selected history.

## 5. Status

The stopped source-carrier consumer remains valid.  The visible/silent local
parent-drop is corrected.  The unpaid reselection branch is not independent.
It is the selected compression root-reserve theorem in stopped coordinates.

No future relay should present pure stopped Schur coercivity, pure selection
boundary tax, terminal density atom exclusion, or stopped reselection
no-escape as separate proof burdens unless it proves `(8)`--`(10)`.
