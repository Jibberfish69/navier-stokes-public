---
theorem_id: forward-gold-stopped-stress-test-frame-bound-from-inherited-direction-carleson-20260627
status: conditional-frame-bound-proved-inherited-direction-carleson-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
refines:
  - StoppedStressTestBesselFrameBound.A
  - ParentSubtractedQRNoFreeReset.A
attacks_hinge:
  - InheritedDirectionMultiplicityCarleson.A
  - StoppedStressTestParentSubtractedInnovationAdmission.A
  - OriginalHistoryWeightedFreshCurrentCapacity.A
  - NativeBirthChargePacking.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-stress-test-bessel-frame-no-free-reset-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-subtracted-stress-test-innovation-bessel-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-stress-test-frame-qr-realization-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-child-reset-critical-weight-countertest-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-reserve-weighted-fresh-current-capacity-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-announceable-active-weight-reset-carleson-cauchy-reduction-20260627.md
effect: >-
  Proves the formal implication from parent-subtracted fresh Bessel plus an
  inherited-direction no-free-reset Carleson admission to the stopped stress-test
  frame bound.  The remaining nonformal theorem is the original-history
  inherited-direction multiplicity/active-weight reserve bound, not pressure
  cancellation or raw viscous Bessel packing.  Partial, not Gold closed.
---

# Stopped stress-test frame bound from inherited-direction Carleson

The load-bearing estimate is an operator estimate on the stopped stress-test
vectors

```math
a_Q
=
\sqrt{\mathcal R(Q)}\,1_{\operatorname{Hist}(Q)}
P_{\rm sym,tr}\nabla_Av_Q
\in
\mathfrak H_P .
\tag{1}
```

Pressure cancellation only puts the vectors in the correct Hilbert space.  It
does not make the family Bessel.  The remaining failure is repeated use of the
same parent-known stress direction.  This note isolates the exact nonduplicate
admission theorem that removes that failure.

## 1. Parent-subtracted split

Order the retained stopped children by the parent filtration.  Let
\(\mathcal P_{Q^-}\) be the parent-known span of earlier fresh directions and
inherited current/score directions.  Split

```math
b_Q=\Pi_{\mathcal P_{Q^-}}a_Q,
\qquad
d_Q=(I-\Pi_{\mathcal P_{Q^-}})a_Q,
\qquad
a_Q=b_Q+d_Q.
\tag{2}
```

The fresh pieces are already Bessel by the parent-subtracted innovation note:

```math
\sum_Q |\langle G,d_Q\rangle_{\mathfrak H_P}|^2
\le
C_N\|G\|_{\mathfrak H_P}^2
+R_{\rm legal}(P)+Stop(P).
\tag{3}
```

So the only possible Bessel failure is the inherited part \(b_Q\).

## 2. Inherited direction blocks

Let \(\{e_\alpha\}_{\alpha\in A_P}\) be a parent-known orthonormal frame for the
inherited stress/current directions used by the fixed stopped core.  On the
unpaid inherited subfamily write

```math
b_Q
=
\sum_{\alpha\in A(Q)}
c_{Q\alpha}e_\alpha,
\qquad
|A(Q)|\le C_N .
\tag{4}
```

The exact no-free-reset Carleson admission is:

```text
InheritedDirectionMultiplicityCarleson.A.
```

For every inherited direction \(e_\alpha\), after removing the paid
reset/reselection/selector/order-lock/stop/legal edges,

```math
\sum_{Q:\,\alpha\in A(Q)} |c_{Q\alpha}|^2
\le
C_N .
\tag{5}
```

The removed edges carry a separate original-history charge

```math
\Omega_{\rm nfr}(P)
=
\Omega_{\rm return/BV}(P)
+\Omega_{\rm reset/reselect}(P)
+\Omega_{\rm selector/lock}(P)
+R_{\rm legal}(P)+Stop(P),
\tag{6}
```

and the open native-reserve part is to prove

```math
\Omega_{\rm nfr}(P)
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P)
\tag{7}
```

from the original material history before selected positive readout.

Equation `(5)` is the precise Hilbert meaning of no free reset.  A child may
reuse a parent stress direction only a bounded number of unpaid times.  Further
same-direction use is not a new Bessel vector; it is a fixed-core record/return
read or a charged reset/reselection/selector event.

## 3. Formal frame implication

Using `(4)` and bounded row size,

```math
|\langle G,b_Q\rangle|^2
\le
C_N
\sum_{\alpha\in A(Q)}
|c_{Q\alpha}|^2|\langle G,e_\alpha\rangle|^2 .
\tag{8}
```

Summing over unpaid inherited children and applying `(5)`,

```math
\sum_Q^{unpaid}
|\langle G,b_Q\rangle|^2
\le
C_N
\sum_{\alpha\in A_P}
|\langle G,e_\alpha\rangle|^2
\le
C_N\|G\|_{\mathfrak H_P}^2 .
\tag{9}
```

Together with `(3)`,

```math
\sum_Q^{unpaid}
|\langle G,a_Q\rangle|^2
\le
C_N\|G\|_{\mathfrak H_P}^2 .
\tag{10}
```

Restoring paid and stopped terms gives the physical form

```math
\sum_{Q\subset P}
\mathcal R(Q)
\left|
\int_{\operatorname{Hist}(Q)}G:\nabla_Av_Q
\right|^2
\le
C_N\int_{\operatorname{Hist}(P)}|G|^2
+
\Omega_{\rm nfr}(P).
\tag{11}
```

Thus the stopped stress-test frame bound follows once the inherited-direction
multiplicity estimate and its original-history charge bound are proved.

## 4. Why the repeated-direction countertest is exactly caught

If \(a_Q\approx a\) for \(M\) descendants and no edge is paid, then the inherited
block has one direction \(e=a/\|a\|\) and coefficients \(c_Q\approx\|a\|\).  The
left side of `(5)` is

```math
\sum_{Q=1}^M |c_Q|^2
\approx
M\|a\|^2 .
\tag{12}
```

For unbounded \(M\), `(5)` fails.  Therefore `InheritedDirectionMultiplicityCarleson.A`
forces one of two outcomes:

```text
bounded unpaid reuse of the parent direction,
or a paid return/reset/reselection/selector/stop/legal event.
```

This is the operator form of no free reset.  The same stress direction cannot
be selected down a descendant chain indefinitely as a fresh Gold payment.

## 5. Relation to active selected-critical weight

The inherited-direction theorem above is only the frame half.  Gold also needs
the active selected-critical reserve bound from original history.  In the reset
branch, the existing Cauchy reduction shows the right weighted form:

```math
H_{I_e}(t)\|D_e(t)\|^2
\le
\int_{I_e}
w(\sigma,t)\|\mathcal G_e(\sigma,t)\|^2\,d\sigma
+R_e^{legal}(t),
\tag{13}
```

provided the reset innovation is a parent-announced average of an original
scale derivative/current on \(I_e\).  The open theorem is therefore the
admission package

```text
InheritedDirectionMultiplicityCarleson.A
+ AnnounceableResetDerivativeRepresentation.A
+ OriginalHistoryWeightedFreshCurrentCapacity.A.
```

The first clause prevents unpaid same-direction Bessel failure.  The second and
third clauses supply the critical weight/root reserve for the paid reset/fresh
branch.

## 6. Current status

This note closes the formal Hilbert step:

```text
fresh parent-subtracted Bessel
+ inherited-direction unpaid multiplicity Carleson
  -> stopped stress-test Bessel frame bound.
```

It does not close Gold.  The remaining mathematical content is to prove the
inherited-direction multiplicity and active weighted reserve clauses from the
original Navier-Stokes material participation law and the stopped selector
construction before selected readout.
