---
theorem_id: forward-gold-stopped-stress-test-frame-qr-realization-20260627
status: parent-subtracted-fresh-qr-realized-reset-variation-recorded
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - StoppedDivergenceFreeStressTestBessel.A
  - ParentSubtractedInheritedActionSquarePacking.A
  - ResetAngleSelectorVariationPayment.A
  - SelectedActionParentSubtractedCurrentAdmission.A
  - StoppedSelectorBoundedProjectionOfOriginalParticipationLaw.A
  - OriginalHistoryRoutedCurrentEnergyFinite.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-traction-current-participation-law-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-subtracted-inherited-action-square-packing-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-readout-parent-subtracted-current-admission-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-lifted-transition-bessel-consumer-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-common-parent-hilbert-geometry-angle-drift-block-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-hodge-projection-commutator-pressure-operator-reduction-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-bounded-projection-original-participation-law-20260627.md
effect: >-
  Refines the corrected Gold dual-stress mechanism into a constructive
  parent-subtracted Bessel realization.  The physical traction current is not
  differentiated.  The selected readout is lifted before selection to
  divergence-free material test fields, pressure is killed in the stress
  pairing, and counted child action is the parent-subtracted QR residual in the
  material stress Hilbert space.  Exact inherited same-direction reuse is parent
  current and contributes zero new child action.  Projection-change reuse is
  reset/angle/selector/frame/collar/stop/legal variation in the same full-action
  ledger.
---

# Stopped stress-test frame QR realization

The corrected Gold estimate puts the derivative burden on the readout/test
side.  The current increment is read by pairing the original stress with
stopped divergence-free material tests, not by differentiating
\(J=u\cdot Tn\).

For a fixed stopped parent \(P\), work in the parent material stress Hilbert
space

```math
\mathfrak H_P
=
L^2_{\rm sym,tr}
\bigl(\operatorname{Hist}(P);d\sigma_P\bigr),
\qquad
\langle G,H\rangle_P
=
\int_{\operatorname{Hist}(P)}G:H\,d\sigma_P .
\tag{1}
```

The trace-free symmetric stress space is the right one because the pressure
term is removed before the Bessel estimate is applied.  Chart, collar, stopped
overlap, and route-change errors are kept outside `(1)` and charged only to
\(R_{\rm legal}\) and \(Stop\).

## 1. Raw lifted readouts

For each retained stopped child \(Q\subset P\), start from the parent-known
selected readout functional and lift it before scalar selection to a material
test field \(v_Q\) satisfying

```math
D_A\cdot v_Q=0 .
\tag{2}
```

The routed current readout is

```math
\ell_Q(G)
:=
\sqrt{\mathcal R(Q)}
\int_{\operatorname{Hist}(Q)}
G:\nabla_Av_Q .
\tag{3}
```

With \(G=T=-pI+2\nu S_A\), `(2)` gives

```math
\int_{\operatorname{Hist}(Q)}pI:\nabla_Av_Q
=
\int_{\operatorname{Hist}(Q)}p\,D_A\cdot v_Q
=0,
\tag{4}
```

so

```math
\sqrt{\mathcal R(Q)}\,\Delta_QJ^S
=
\ell_Q(2\nu S_A)
+dR_Q^{legal}+dStop_Q .
\tag{5}
```

This is still before selected positive readout.  The objects \(\ell_Q\) are
parent-known functionals of the original stress field.

Let \(a_Q\in\mathfrak H_P\) be the Riesz representative of \(\ell_Q\):

```math
\ell_Q(G)=\langle G,a_Q\rangle_P .
\tag{6}
```

The representative \(a_Q\) is the lifted gradient \(\sqrt{\mathcal R(Q)}
\,\nabla_Av_Q\), projected into the parent stress Hilbert space with the
material metric and stopped support.

## 2. Parent-subtracted QR frame

Order the children by the stopped parent filtration.  Let \(E_{i-1}\) be the
parent-known span of inherited directions and earlier admitted fresh
directions, and split

```math
a_i=b_i+d_i,
\qquad
b_i=\Pi_{E_{i-1}}a_i,
\qquad
d_i=(I-\Pi_{E_{i-1}})a_i .
\tag{7}
```

The selected child current is the parent-subtracted read:

```math
\sqrt{\mathcal R(Q_i)}\,\Delta J_i^{new}
:=
\langle 2\nu S_A,a_i\rangle_P
-
\langle 2\nu S_A,b_i\rangle_P
=
\langle 2\nu S_A,d_i\rangle_P .
\tag{8}
```

If \(d_i=0\), the child has reused an already known parent stress direction and
contributes zero new child action.  The inherited read remains parent current;
it is not counted again as a child source.

Linear combinations and orthogonal projections of divergence-free lifted tests
remain divergence-free.  Thus the parent-subtracted QR step does not
reintroduce pressure:

```math
D_A\cdot\Bigl(\sum_i c_i v_i\Bigr)=0 .
\tag{9}
```

## 3. Fresh Bessel estimate

Normalize the stopped lifts so that \(\|a_i\|_{\mathfrak H_P}\le C_N\); hence
\(\|d_i\|_{\mathfrak H_P}\le C_N\).  For \(d_i\ne0\), set
\(e_i=d_i/\|d_i\|\).  Parent-known QR gives an orthonormal family \(e_i\), so
for every \(G\in\mathfrak H_P\),

```math
\sum_i
\left|\langle G,d_i\rangle_P\right|^2
=
\sum_i
\|d_i\|_{\mathfrak H_P}^2
\left|\langle G,e_i\rangle_P\right|^2
\le
C_N^2\|G\|_{\mathfrak H_P}^2 .
\tag{10}
```

This is the Bessel estimate for new child action.  The raw inherited values
\(\langle G,b_i\rangle_P\) do not appear in `(10)` because they have been
subtracted before selected action is counted.

## 4. Reset, angle, selector, and stop variation

Inherited current reappears only when the parent-known projection changes.
Let \(\Pi_i\) denote the active parent projection after a reset, angle change,
selector change, frame/collar change, stop event, or legal event.  The changed
reuse term is

```math
\rho_i
=
\langle G,(\Pi_i-\Pi_{i-1})a_i\rangle_P .
\tag{11}
```

With

```math
\operatorname{Var}^{stop}_P
:=
\sum_i
\|(\Pi_i-\Pi_{i-1})a_i\|_{\mathfrak H_P}^2
+Stop(P)+R_{\rm legal}(P),
\tag{12}
```

Cauchy--Schwarz gives

```math
\sum_i|\rho_i|^2
\le
\|G\|_{\mathfrak H_P}^2\operatorname{Var}^{stop}_P .
\tag{13}
```

The term `(13)` is not a free right-hand side.  It is part of the same
full-action/no-free-reset balance: changed inherited reuse is counted in
\(d\Omega_N^{reset}\), while fresh QR residuals are counted in
\(d\Omega_N^{fresh}\).

## 5. Apply to the viscous stress

Put \(G=2\nu S_A\).  The material energy identity gives

```math
2\nu\int_0^T\int |S|^2
\le
\|u_0\|_2^2 .
\tag{14}
```

Therefore, for the parent-subtracted selected current,

```math
\sum_{Q_i\subset P}
\mathcal R(Q_i)|\Delta J_i^{new}|^2
\le
C_N(u_0)
+C_N(u_0)\operatorname{Var}^{stop}_P .
\tag{15}
```

Equivalently, in the full-action notation,

```math
d\Omega_N
=
d\Omega_N^{fresh}+d\Omega_N^{reset}+d\Omega_N^{stop/legal},
\tag{16}
```

where `(10)` pays \(d\Omega_N^{fresh}\) by viscous strain and `(13)` records
\(d\Omega_N^{reset}\) as the cost of changing the parent-known projection.

## 6. Result

This file no longer asserts a raw Bessel theorem for
\(\{\langle G,a_i\rangle\}\).  The constructive theorem is parent-subtracted:
same-direction reuse is parent current, fresh residuals Bessel-pack, and changed
reuse is reset/angle/selector/frame/collar/stop/legal variation in the same
full-action balance.
