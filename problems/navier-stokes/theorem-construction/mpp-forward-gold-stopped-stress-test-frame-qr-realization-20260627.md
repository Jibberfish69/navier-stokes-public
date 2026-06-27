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
  Refines the corrected Gold dual-stress mechanism into a constructive Bessel
  realization.  The physical traction current is not differentiated.  The
  selected readout is lifted before selection to divergence-free material test
  fields, pressure is killed in the stress pairing, and the Bessel family is
  produced by a parent-known stopped QR/Gram-Schmidt frame in the material
  stress Hilbert space.  Conditioning failures are stop/legal/reselection
  events.  Partial, not Gold closed.
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

## 2. Stopped QR frame

Order the children by the stopped parent filtration.  Run predictable QR in
\(\mathfrak H_P\):

```math
a_Q
=
\sum_{j<Q}r_{Qj}e_j+r_{QQ}e_Q ,
\qquad
\langle e_i,e_j\rangle_P=\delta_{ij}.
\tag{7}
```

The retained fixed core is the part where the triangular coefficient map is
uniformly conditioned:

```math
r_{QQ}\ge \kappa \|a_Q\|_{\mathfrak H_P},
\qquad
\sum_{j<Q}|r_{Qj}|^2
\le C_\kappa\|a_Q\|_{\mathfrak H_P}^2 .
\tag{8}
```

When `(8)` fails, the packet has not produced a free current.  It has changed
the selector frame, collapsed into an already-used parent direction, crossed a
stopped stratum, or demanded a reselection.  Those outcomes are charged as
\(R_{\rm legal}\), \(Stop\), or the existing selector/order-lock connection
ledger.

Linear combinations of divergence-free lifted tests remain divergence-free.
Thus QR does not reintroduce pressure:

```math
D_A\cdot\Bigl(\sum_Q c_Q v_Q\Bigr)=0 .
\tag{9}
```

That is the point of orthogonalizing the test side rather than the physical
traction current.

## 3. Bessel estimate

For any \(G\in\mathfrak H_P\), `(7)` and `(8)` give

```math
\sum_{Q\subset P}^{ret}
\left|\ell_Q(G)\right|^2
\le
C_\kappa
\sum_j|\langle G,e_j\rangle_P|^2
\le
C_\kappa\|G\|_{\mathfrak H_P}^2 .
\tag{10}
```

Restoring the stopped errors,

```math
\sum_{Q\subset P}
\mathcal R(Q)
\left|
\int_{\operatorname{Hist}(Q)}
G:\nabla_Av_Q
\right|^2
\le
C_\kappa
\int_{\operatorname{Hist}(P)}
|G|^2
+R_{\rm legal}(P)+Stop(P).
\tag{11}
```

This is the needed `StoppedDivergenceFreeStressTestBessel.A` estimate in
constructive form: Bessel is not a later miracle; it is the stopped
parent-known frame condition on the lifted readout tests.

## 4. Apply to the viscous stress

Put \(G=2\nu S_A\) in `(11)`.  Since pressure has already vanished by `(4)`,

```math
\sum_{Q\subset P}
\mathcal R(Q)|\Delta_QJ^S|^2
\le
C_\kappa\nu^2
\int_{\operatorname{Hist}(P)}|S_A|^2
+R_{\rm legal}(P)+Stop(P).
\tag{12}
```

The material energy identity gives

```math
2\nu\int_0^T\int |S|^2
\le
\|u_0\|_2^2 .
\tag{13}
```

After the fixed viscosity normalization used by the Gold route,

```math
\sum_{Q\subset P}
\mathcal R(Q)|\Delta_QJ^S|^2
\le
C_\kappa(u_0)+R_{\rm legal}(P)+Stop(P).
\tag{14}
```

This proves the routed-current square-packing estimate from original material
strain, once the stopped QR realization is admitted.

## 5. Remaining open point

The open theorem is now sharper than a raw Bessel hope:

```text
StoppedStressTestFrameQRConditioning.A.
```

It must prove, in the parent-known stopped material atlas, that:

1. the raw selected readout functionals admit divergence-free Hodge lifts
   \(v_Q\) before scalar selected readout;
2. the Riesz representatives \(a_Q\) are finite-overlap parent-known stress
   vectors in \(\mathfrak H_P\);
3. the stopped QR conditioning failure in `(8)` is exactly a legal,
   stop/reselection, selector-frame, or order-lock event, not a future selected
   tail.

With that theorem, `StoppedDivergenceFreeStressTestBessel.A` becomes a
parent-known Hilbert-space frame statement, the pressure remains absent, and
`StoppedSelectorBoundedProjectionOfOriginalParticipationLaw.A` can consume the
routed-current energy before scalar readout.

Partial, not Gold closed.
