---
theorem_id: forward-gold-selected-action-trace-observability-boundary-20260626
status: direct-test-refines-pure-schur-coercivity-to-material-parabolic-observability
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
audits_hinge:
  - SelectedActionTraceCoercivity.A
  - CapacitySchurComplementSelectedAction.A
  - SelectedCriticalStrainCapacityParentDrop.A
refined_hinge: MaterialParabolicSelectedTraceObservability.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-capacity-schur-complement-coercivity-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-critical-strain-capacity-parent-drop-direct-attack-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-critical-strain-capacity-installed-boundary-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-capacity-inheritance-critical-strain-equivalence-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-installed-support-axioms-half-tail-model-no-go-20260626.md
---

# Selected action trace observability boundary

The current relay hinge is:

```text
SelectedActionTraceCoercivity.A / CapacitySchurComplementSelectedAction.A
```

This note tests whether that hinge is a pure elliptic Schur-complement theorem.
It is not.  The Schur complement is the correct parent-collar coordinate, but
selected action is an interior material-time event.  A lower bound on that
action requires material parabolic observability, not only Dirichlet-to-Neumann
capacity monotonicity.

## 1. Starting point

For a retained laminar parent \(Q\), let

```math
\mathsf S_Q
:=
\Lambda_Q-\bigoplus_{Q'\in ch(Q)}\Lambda_{Q'}
```

be the parent-child pressure-Hodge Dirichlet-to-Neumann Schur complement.
The desired parent-drop is:

```math
\sum_{Q'\in ch(Q)} A(Q')
\le
\langle U_Q,\mathsf S_Q U_Q\rangle
+R_{\rm legal}(Q).
\tag{STA.1}
```

Here \(A(Q')\) is the selected child action and \(U_Q\) is the retained
pressure-Hodge trace on the transported parent collar.

Capacity monotonicity proves only:

```math
\mathsf S_Q\ge0.
\tag{STA.2}
```

That gives child capacity inheritance.  It does not insert the selected action.

## 2. Why the pure elliptic theorem is too weak

The Schur form \(\langle U_Q,\mathsf S_Q U_Q\rangle\) is a boundary/collar
quadratic trace quantity.  The selected child action includes the critical
strain/pressure-Hessian part isolated in the capacity notes:

```math
\int_{\mathcal F_{\rm lam}}|\Sigma|^{5/2}\,d\mathcal R_{\rm cap}.
\tag{STA.3}
```

The already installed half-tail model shows the gap:

```math
\nu_\ell={2^{-\ell}\over \ell+1},
\qquad
\sum_\ell\nu_\ell<\infty,
\qquad
\sum_\ell2^\ell\nu_\ell=\infty.
\tag{STA.4}
```

In that model the raw Schur/capacity scale can stay summable while the selected
first-ratio action diverges.  Thus `(STA.1)` cannot follow from the installed
elliptic/capacity inheritance axioms alone.

This is not a defect in the Schur coordinate.  It says the Schur coordinate is
only the boundary readout.  To pay \(A(Q')\), the proof must also show that a
retained child with positive selected material action cannot be invisible to
the parent pressure-Hodge collar through the material Navier-Stokes evolution.

## 3. Correct theorem shape

The noncircular theorem is:

```text
MaterialParabolicSelectedTraceObservability.A
```

Statement:

For every retained laminar parent \(Q\) and selected child family \(ch(Q)\),
the same material Navier-Stokes history gives

```math
\sum_{Q'\in ch(Q)}A(Q')
\le
C_N
\langle U_Q,\mathsf S_QU_Q\rangle
+C_N\,\mathcal E_{\rm par}(Q)
+R_{\rm legal}(Q),
\tag{STA.5}
```

where \(\mathcal E_{\rm par}(Q)\) is already-left-side parabolic material
service: viscous/radius loss, coefficient-frame service, transported-collar
service, and legal lower-order terms that are already part of the full
same-material clock.

Equivalently, the compactness form is:

```math
A(Q'_n)\ge a_0>0,
\qquad
\langle U_{Q_n},\mathsf S_{Q_n}U_{Q_n}\rangle
+\mathcal E_{\rm par}(Q_n)
+R_{\rm legal}(Q_n)
\to0
\tag{STA.6}
```

is impossible for retained same-material children.  A normalized limit of
`(STA.6)` would be a non-gauge material packet with selected action and zero
parent trace, zero parabolic service, and zero legal exit.  The required proof
is a parabolic unique-continuation / zero-loss rigidity theorem for the full
pressure-viscosity-incompressibility-velocity packet.

## 4. Coefficient dependence is the remaining danger

Standard parabolic observability or Carleman constants depend on the material
coefficient geometry.  In this route that dependence is safe only if it is paid
inside \(\mathcal E_{\rm par}\) or bounded by an already finite original-data
reserve.

So the allowed proof cannot say:

```math
A(Q')\le C(\mathfrak P_N^{mat})\,
\langle U_Q,\mathsf S_QU_Q\rangle .
\tag{STA.7}
```

unless the dependence on \(\mathfrak P_N^{mat}\) is itself controlled before
using the estimate.  Otherwise `(STA.7)` is just the continuation-depth record
hidden inside the observability constant.

The valid theorem must have constants depending only on fixed \(N\), initial
smooth data reserves, and legal finite-overlap bounds, with any moving
coefficient cost explicitly placed on the left as material service.

## 5. Result

The current Gold hinge is sharpened as follows.

The parent-collar pressure-Hodge Schur complement remains the right boundary
coordinate.  The missing theorem is not pure elliptic coercivity.  It is the
same-material parabolic observability statement `(STA.5)`.

Thus:

```text
SelectedActionTraceCoercivity.A
```

should be read as:

```text
MaterialParabolicSelectedTraceObservability.A
```

plus the Schur parent-collar coordinate.

Without `(STA.5)`, the one-child half-tail remains compatible with the installed
support axioms.  With `(STA.5)`, the selected action is inserted into the
parent-drop, the pressure-Hodge capacity Bellman sum telescopes, and the Gold
full-clock continuation route receives the needed selected action Carleson
reserve.
