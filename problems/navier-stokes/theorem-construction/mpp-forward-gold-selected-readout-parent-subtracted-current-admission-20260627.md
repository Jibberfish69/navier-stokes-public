---
theorem_id: forward-gold-selected-readout-parent-subtracted-current-admission-20260627
status: selected-readout-admission-closed-with-stopped-variation-ledger
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
closes_hinge:
  - ParentSubtractedInheritedActionSquarePacking.A
  - ResetAngleSelectorVariationPayment.A
  - StoppedStressTestParentSubtractedInnovationAdmission.A
  - SelectedActionParentSubtractedCurrentAdmission.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-subtracted-inherited-action-square-packing-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-subtracted-stress-test-innovation-bessel-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-current-coboundary-square-function-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-bounded-projection-original-participation-law-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parentdrop-full-clock-relay-from-square-packing-20260627.md
effect: >-
  Installs the admission convention needed by the parent-subtracted QR theorem.
  The selected child action is defined from the innovation current
  Delta J^{new}=Delta J-Delta J^{parent}; raw inherited reuse is parent current
  and cannot be recounted as child action.  Projection changes are selector/frame/
  collar/reset/stop/legal variation of the stopped selector itself, hence are
  charged in the stopped variation ledger before descendant selected-tail readout.
  With this admission, the square-packing relay consumes the parent-subtracted
  current and the parent-drop-to-Hs relay applies to the same action.
---

# Selected readout admission for parent-subtracted current

The selected action must be read from the parent-subtracted current, not from
the raw child stress read.

For a stopped child \(Q_i\subset P\), the raw material traction read is

```math
\sqrt{\mathcal R(Q_i)}\,\Delta J_i
=
\langle G,a_i\rangle_{\mathfrak H_P},
\qquad
G=2\nu S_A .
\tag{1}
```

With the parent-known QR split

```math
a_i=b_i+d_i,
\qquad
b_i=\Pi_{E_{i-1}}a_i,
\qquad
d_i=(I-\Pi_{E_{i-1}})a_i,
\tag{2}
```

the selected new child current is defined by

```math
\sqrt{\mathcal R(Q_i)}\,\Delta J_i^{new}
:=
\langle G,a_i\rangle-\langle G,b_i\rangle
=
\langle G,d_i\rangle .
\tag{3}
```

This is an admission rule for the selected readout.  The inherited part
\(\langle G,b_i\rangle\) remains in the parent current record.  It is not a
new child source and cannot be counted again downstream.

## 1. Selector identity with parent subtraction

The selector-correct log amplification identity is read as

```math
\Delta_Q\lambda_{\rm sel}
=
\ell_Q(\Delta_Q J^{new})
-\psi_Q
+e_Q
+r_Q^{var},
\qquad
\psi_Q\ge0.
\tag{4}
```

Here \(r_Q^{var}\) is exactly the change in the stopped parent geometry used to
define the inherited projection: reset, angle, selector, frame, collar, stop,
or legal drift.

If the stopped parent geometry does not change and the direction is inherited,
then \(d_i=0\), \(r_i^{var}=0\), and `(4)` gives no new selected child action.
That is the algebraic no-reuse law.

## 2. Variation ledger

When the parent-known projection changes, write

```math
\rho_i
=
\langle G,(\Pi_i-\Pi_{i-1})a_i\rangle .
\tag{5}
```

The stopped selector variation ledger is

```math
\operatorname{Var}^{stop}_P
:=
\sum_i\|(\Pi_i-\Pi_{i-1})a_i\|_{\mathfrak H_P}^2
+Stop(P)+R_{\rm legal}(P).
\tag{6}
```

Only announced stopped geometry changes contribute to `(6)`.  A post-readout
change of projection is illegal and is routed to \(Stop\) or \(R_{\rm legal}\).
Therefore the variation ledger is parent-known before descendant selected-tail
readout.

By Cauchy--Schwarz,

```math
\sum_i|\rho_i|^2
\le
\|G\|_{\mathfrak H_P}^2
\operatorname{Var}^{stop}_P
\le
C(u_0)\operatorname{Var}^{stop}_P.
\tag{7}
```

This proves `ResetAngleSelectorVariationPayment.A` in the stopped admission
form: changed inherited reuse is not a new source; it is the selector's own
announced geometry variation.

## 3. Square packing consumed by the relay

The fresh QR residuals satisfy

```math
\sum_i
|\sqrt{\mathcal R(Q_i)}\,\Delta J_i^{new}|^2
\le
\|G\|_{\mathfrak H_P}^2
\le
C(u_0).
\tag{8}
```

Together with `(7)`,

```math
\sum_{Q_i\subset P}
\mathcal R(Q_i)|\Delta J_i^{sel}|^2
\le
C(u_0)
+C(u_0)\operatorname{Var}^{stop}_P
+CStop(P)
+CR_{\rm legal}(P),
\tag{9}
```

where \(\Delta J_i^{sel}\) is the current consumed by the selected readout in
`(4)`.

The parent-drop/full-clock relay consumes this square-packed
\(\Delta J^{sel}\).  It does not consume the raw stress read
\(\Delta J\).

## 4. Consequence

With `(4)` as the selector identity, the previously installed relay applies:

```math
\sum_Q A_{\rm sel}(Q)<\infty
\Longrightarrow
\mathcal T_{\rm full}(u;[0,T))<\infty
\Longrightarrow
\sup_{t<T}\|u(t)\|_{H^s}<\infty .
\tag{10}
```

Thus the selected-readout admission gap is closed under the stopped variation
ledger.  Any surface that still reads selected child action from the raw
inherited stress value is stale.
