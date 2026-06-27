---
theorem_id: forward-gold-parent-subtracted-stress-test-innovation-bessel-20260627
status: partial-innovation-bessel-proved-admission-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
refines:
  - StoppedStressTestFrameQRConditioning.A
attacks_hinge:
  - StoppedDivergenceFreeStressTestBessel.A
  - StoppedSelectorBoundedProjectionOfOriginalParticipationLaw.A
  - OriginalHistoryRoutedCurrentEnergyFinite.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-stress-test-frame-qr-realization-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-traction-current-participation-law-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-lifted-transition-bessel-consumer-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-transition-predictable-weight-martingale-lock-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-subtracted-dynamic-silent-fresh-innovation-carleson-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-finite-score-or-paid-drift-proof-20260627.md
  - problems/navier-stokes/theorem-construction/lagrangian-stokes-bridge-program.md
effect: >-
  Replaces the overstrong lower-pivot QR burden by the parent-subtracted
  innovation form.  Lift the selected stress test before scalar readout, project
  its Riesz representative onto the parent-known past stress-test span, and
  pack only the orthogonal innovation.  Low QR pivot is not a failure; it means
  the readout is inherited parent current and routes to record/return or
  selector stop/legal payment.  Partial, not Gold closed.
---

# Parent-subtracted stress-test innovation Bessel

The useful correction to the QR route is that no lower QR pivot is needed.
A small pivot says the child test is mostly inherited parent current.  The
fresh part is the parent-subtracted innovation, and that part is automatically
Bessel once the Hilbert space is fixed before selected readout.

## 1. Parent stress-test space

For a stopped parent \(P\), let

```math
\mathfrak S_P
=
\overline{
\left\{
\sqrt{\mathcal R(Q)}\,1_{\operatorname{Hist}(Q)}
\nabla_A v:
D_A\cdot v=0,\ v\text{ parent-known stopped}
\right\}
}^{\,L^2(\operatorname{Hist}(P))}
\tag{1}
```

inside the parent material stress Hilbert space.  This is the closed subspace
of stress tests that annihilate pressure.  Since it is a linear closed subspace,
orthogonal projections inside \(\mathfrak S_P\) preserve the pressure-killing
property.

The local \(A\)-Bogovskii repair supplies the raw divergence-free lifts after
cutoff:

```math
\widetilde v_\chi
=
\chi v-\mathcal R_{A_*}
\bigl(\operatorname{div}_a(A_*(\chi v))\bigr),
\qquad
\operatorname{div}_a(A_*\widetilde v_\chi)=0,
\tag{2}
```

with same-depth Sobolev bounds on each stopped chart.  Thus every retained
selected readout functional has a raw Riesz representative

```math
a_Q
=
\sqrt{\mathcal R(Q)}\,
1_{\operatorname{Hist}(Q)}
\nabla_A v_Q
\in \mathfrak S_P,
\qquad
\|a_Q\|_{\mathfrak S_P}\le C_N,
\tag{3}
```

up to chart/collar/legal error.  The norm bound is the normalized testing
choice; a packet whose lift violates it is outside the retained fixed core and
is charged to stop/legal/reselection.

## 2. Parent-subtracted split

Order retained children by the stopped parent filtration.  Let

```math
\mathcal P_{Q^-}
=
\overline{\operatorname{span}}
\{d_{Q'}:\ Q'<Q\}
+\mathcal I_{Q^-}
\subset \mathfrak S_P
\tag{4}
```

where \(\mathcal I_{Q^-}\) is the parent-known inherited score/current span
already present before \(Q\)'s scalar selected readout.  Define

```math
b_Q:=\Pi_{\mathcal P_{Q^-}}a_Q,
\qquad
d_Q:=(I-\Pi_{\mathcal P_{Q^-}})a_Q.
\tag{5}
```

Then

```math
a_Q=b_Q+d_Q,
\qquad
d_Q\perp \mathcal P_{Q^-},
\qquad
\|d_Q\|_{\mathfrak S_P}\le C_N.
\tag{6}
```

This is the stress-test analogue of the parent-subtracted transition split
\(q_e=B_e+D_e+R_e\).  It is built before taking the positive selected scalar.

For any stress field \(G\),

```math
\ell_Q(G)
:=
\langle G,a_Q\rangle_{\mathfrak S_P}
=
\langle G,b_Q\rangle_{\mathfrak S_P}
+
\langle G,d_Q\rangle_{\mathfrak S_P}.
\tag{7}
```

The inherited term \(\langle G,b_Q\rangle\) is not fresh production.  It is
already visible in the parent stopped score/current record and routes to the
fixed-core return/BV ledger, selector stratum crossing, order-lock drift, or
legal stop.  The new child source is the innovation term
\(\langle G,d_Q\rangle\).

## 3. Bessel without a lower pivot

The innovation vectors are martingale differences:

```math
d_Q\perp d_{Q'}
\qquad(Q'\!<Q)
\tag{8}
```

after the usual laminar sibling disjointness and legal overlap removal.  Write
\(d_Q=\alpha_Q e_Q\), with \(e_Q\) orthonormal and
\(|\alpha_Q|\le C_N\).  Then, for every \(G\in\mathfrak S_P\),

```math
\sum_{Q\subset P}^{ret}
\left|
\langle G,d_Q\rangle_{\mathfrak S_P}
\right|^2
\le
C_N
\sum_Q |\langle G,e_Q\rangle_{\mathfrak S_P}|^2
\le
C_N\|G\|_{\mathfrak S_P}^2.
\tag{9}
```

Restoring stopped errors,

```math
\sum_{Q\subset P}^{fresh}
\mathcal R(Q)
\left|
\int_{\operatorname{Hist}(Q)}
G:\nabla_A v_Q^{fresh}
\right|^2
\le
C_N
\int_{\operatorname{Hist}(P)}|G|^2
+R_{\rm legal}(P)+Stop(P).
\tag{10}
```

Equation `(10)` is the Bessel part of
`StoppedDivergenceFreeStressTestBessel.A`.  It does not require a uniform lower
bound on \(d_Q\).  Zero or tiny innovation means the child readout was inherited
from the parent span.

## 4. Pressure and viscosity

Projection inside \(\mathfrak S_P\) keeps the tests divergence-free, so pressure
still vanishes:

```math
\int pI:\nabla_A v_Q^{fresh}
=
\int p\,D_A\cdot v_Q^{fresh}
=0.
\tag{11}
```

Taking \(G=2\nu S_A\) in `(10)` gives

```math
\sum_{Q\subset P}^{fresh}
\mathcal R(Q)|\Delta_QJ^{S,fresh}|^2
\le
C_N\nu^2
\int_{\operatorname{Hist}(P)}|S_A|^2
+R_{\rm legal}(P)+Stop(P).
\tag{12}
```

The material energy identity supplies

```math
2\nu\int_0^T\int |S|^2
\le
\|u_0\|_2^2,
\tag{13}
```

hence the fresh stress-test current is original-data finite.

## 5. What remains

This note proves the Bessel mechanism for the parent-subtracted fresh stress
tests.  The remaining theorem is the admission/routing statement:

```text
StoppedStressTestParentSubtractedInnovationAdmission.A.
```

It must prove that every retained selected stress readout admits the split
`(7)` before scalar selected readout, and that the inherited component
\(\langle G,b_Q\rangle\) is fully routed to fixed-core return/BV,
selector/order-lock drift, stop, legal, or reselection loss.  With that
admission theorem, the raw QR lower-pivot condition is no longer a live Gold
wall; low pivot is inherited current, while the parent-subtracted fresh current
packs by `(9)`--`(12)`.

Partial, not Gold closed.
