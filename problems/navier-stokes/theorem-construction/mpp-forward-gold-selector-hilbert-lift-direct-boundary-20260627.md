---
theorem_id: forward-gold-selector-hilbert-lift-direct-boundary-20260627
status: direct-boundary-installed-selector-lift-requires-nondegenerate-readout-and-independent-root-bound
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / full-tower action
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - VisibleSilentSelectedDensityOrthogonalLift.A
  - SelectedDensityMartingaleSquareFunctionCarleson.A
  - OriginalHistorySelectedReserve.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-visible-silent-selected-density-hilbert-lift-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-visible-silent-hilbert-lift-audit-selected-tail-frontier-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-source-hilbert-bubble-decomposition-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-density-goodlambda-martingale-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-history-selected-reserve-normal-form-20260626.md
---

# Selector-Hilbert lift direct boundary

This note attacks the two unsupported lines in
`VisibleSilentSelectedDensityOrthogonalLift.A`.

The Hilbert lift is the right kind of object only if the scalar selected density
is read before the positive terminal tail has already discarded sign and
orthogonality.  The desired line is

```math
|\Delta_Q\log\rho_{\rm sel}|
\le
C\|\Delta_QZ\|_{\mathcal H_{\rm lift}}+e_Q.
\tag{1}
```

## 1. Readout nondegeneracy is required

A Hilbert increment can control a selected log-density increment only when the
selector is nondegenerate on the selected branch.  In concrete terms, the
selection rule must give a fixed lower comparison between the selected scalar
density and the visible/silent/exchange carrier norm at the parent scale:

```math
\rho_{\rm sel}(Q)
\simeq
\mathcal F(\|Z_Q\|_{\mathcal H_{\rm lift}})
\quad\text{on retained selected nodes},
\tag{2}
```

with \(\mathcal F\) having a uniformly bounded logarithmic derivative on the
retained range.

Without such a nondegeneracy, `(1)` is false as a structural statement.  A
positive-part or threshold selector can jump between two nearly equal Hilbert
states when the selected scalar component crosses zero or changes the retained
winner.  That jump is exactly the strict-reselection / selected-density atom
problem already isolated in the Gold branch.  Therefore `(1)` cannot be
declared from Hilbert geometry alone.

The needed theorem is:

```text
SelectorCarrierNondegeneracy.A
```

For retained selected nodes, the selected scalar increment is a Lipschitz
function of the visible/silent/exchange carrier increment, after legal
reselection errors are removed.

## 2. Root norm cannot be the selected future tail

The root bound required by the Hilbert lift is

```math
\|Z_{Q_0}\|_{\mathcal H_{\rm lift}}^2
\le
C_N(u_0)\mathcal R(Q_0)+R_{\rm legal}(Q_0).
\tag{3}
```

For the silent component, the natural representative is

```math
W=L_A^{-1}f_{\rm sel},
\tag{4}
```

where \(f_{\rm sel}\) is the selected pressure-Hodge source on the retained
tree.  Its energy is

```math
\|W\|_{\mathcal H_A(Q_0)}^2
=
\langle f_{\rm sel},L_A^{-1}f_{\rm sel}\rangle.
\tag{5}
```

If \(f_{\rm sel}\) is the future selected tail, `(5)` is just a Hilbert version
of the descendant-tail Bellman reserve.  Its root finiteness is equivalent to
the selected reserve theorem unless an independent source-origin evolution law
bounds it from original data.

Thus `(3)` requires one of:

```text
IndependentRootHilbertCarrierBound.A
```

or

```text
SourceOriginHilbertEnergyDissipation.A
```

with a bounded-below same-material storage whose derivative pays the selected
Hilbert carrier energy without defining that storage as the future selected
tail.

## 3. Consequence

The Hilbert lift does not close Gold by itself.  It converts the scalar
good-lambda problem into two sharper structural statements:

```text
SelectorCarrierNondegeneracy.A
```

and

```text
IndependentRootHilbertCarrierBound.A
```

or its source-origin dissipation equivalent.

Once those are proved, the rest is standard Hilbert martingale geometry:

```math
\sum_Q\|\Delta_QZ\|_{\mathcal H_{\rm lift}}^2
\le
C\|Z_{Q_0}\|_{\mathcal H_{\rm lift}}^2
+R_{\rm legal},
```

then BMO / \(A_\infty\), reverse Holder, selected-density square-function
Carleson, and finite selected first-ratio action.

Until those two lines are proved, the live Gold theorem remains the selected
root-reserve / weight-beating tail theorem in Hilbert-lift coordinates.
