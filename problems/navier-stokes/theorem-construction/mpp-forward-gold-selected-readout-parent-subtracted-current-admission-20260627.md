---
theorem_id: forward-gold-selected-readout-parent-subtracted-current-admission-20260627
status: selected-readout-decomposition-proved-reset-variation-reduced-to-routed-energy
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
decomposes_hinge:
  - ParentSubtractedInheritedActionSquarePacking.A
  - ResetAngleSelectorVariationPayment.A
  - StoppedStressTestParentSubtractedInnovationAdmission.A
  - SelectedActionParentSubtractedCurrentAdmission.A
leaves_open:
  - OriginalHistoryRoutedCurrentEnergyFinite.A
  - StoppedSelectorBoundedProjectionOriginalParticipationLaw.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-announced-reset-variation-to-routed-energy-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-subtracted-inherited-action-square-packing-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-subtracted-stress-test-innovation-bessel-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-current-coboundary-square-function-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-bounded-projection-original-participation-law-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-routed-current-energy-original-history-producer-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parentdrop-full-clock-relay-from-square-packing-20260627.md
effect: >-
  Installs the exact decomposition needed by the parent-subtracted QR theorem.
  The selected child action is defined from the innovation current
  Delta J^{new}=Delta J-Delta J^{parent}; raw inherited reuse is parent current
  and cannot be recounted as child action.  The inherited part contributes only
  through changes of inherited direction, measured by
  sum_i ||b_i-b_{i-1}||_{H_P}^2, equivalently reset/angle/selector/frame/collar/
  stop/legal variation. Parent-announced first-exit slabs charge that variation
  to E_route. The remaining Gold input is original-history finiteness of E_route
  as a bounded projection of the Navier-Stokes participation law.
---

# Selected readout decomposition for parent-subtracted current

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

## 2. Inherited variation term

The inherited part is

```math
\sqrt{\mathcal R(Q_i)}\,\Delta J_i^{inh}
=
\langle G,b_i\rangle .
\tag{5}
```

Thus

```math
\sqrt{\mathcal R(Q_i)}\Delta J_i^{inh}
-
\sqrt{\mathcal R(Q_{i-1})}\Delta J_{i-1}^{inh}
=
\langle G,b_i-b_{i-1}\rangle .
\tag{6}
```

By Cauchy--Schwarz,

```math
\sum_i
\left|
\sqrt{\mathcal R(Q_i)}\Delta J_i^{inh}
-
\sqrt{\mathcal R(Q_{i-1})}\Delta J_{i-1}^{inh}
\right|^2
\le
\|G\|_{\mathfrak H_P}^2
\sum_i\|b_i-b_{i-1}\|_{\mathfrak H_P}^2 .
\tag{7}
```

The same-direction inherited reuse itself contributes nothing new.  Only change
of inherited direction contributes.  In projection notation,
\(\sum_i\|b_i-b_{i-1}\|_{\mathfrak H_P}^2\) is the stopped reset/angle/selector/
frame/collar variation ledger, with stop/legal pieces recorded separately.

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

Together with `(7)`, the original transported action decomposes as

```math
\Omega_P^{orig}
\le
C
\sum_i|\sqrt{\mathcal R(Q_i)}\,\Delta J_i^{new}|^2
+
C(u_0)\sum_i\|b_i-b_{i-1}\|_{\mathfrak H_P}^2
+
R_{\rm legal}(P)+Stop(P).
\tag{9}
```

The first term is finite from `(8)`. The second term is paid when the projection
changes are represented as parent-announced first exits.

For those reset edges, the harmonic-weight Cauchy estimate and bounded stopped
overlap give

```math
\sum_i\|b_i-b_{i-1}\|_{\mathfrak H_P}^2
\lesssim
\operatorname{Var}^{stop}_P
\le
C_N\mathcal E_{\mathrm{route}}(P)
+R_{\rm legal}(P)+Stop(P).
\tag{10}
```

Thus the parent-drop/full-clock relay consumes this decomposition only after the
remaining routed-current energy line is supplied:

```math
\mathcal E_{\mathrm{route}}(P)
\le
C(u_0)+R_{\rm legal}(P)+Stop(P).
\tag{11}
```

## 4. Consequence

Once the original-history bound for \(\mathcal E_{\mathrm{route}}\) is proved, the
previously installed relay applies:

```math
\sum_Q A_{\rm sel}(Q)<\infty
\Longrightarrow
\mathcal T_{\rm full}(u;[0,T))<\infty
\Longrightarrow
\sup_{t<T}\|u(t)\|_{H^s}<\infty .
\tag{12}
```

Thus this note proves the parent-subtracted selected-readout decomposition.
The reset-variation claim is not a raw inherited-value theorem; it is a
parent-announced first-exit charge in routed-current energy currency. The
unpaid Gold theorem is original-history finiteness of that currency.
