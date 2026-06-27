---
theorem_id: forward-gold-parent-current-coboundary-square-function-20260627
status: parent-current-coboundary-square-function-formalized-admission-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
refines:
  - DivergenceFreeAnnularWaveletTractionCurrentPayment.A
  - ParentCurrentRecordVariationPaysInheritedStressReuse.A
  - ParentSubtractedQRNoFreeReset.A
  - OriginalHistoryEndpointCurrentQuadraticVariation.A
attacks_hinge:
  - ParentCurrentCoboundarySquareFunction.A
  - StoppedParentCurrentProjectionMartingale.A
  - InheritedStressReadoutCoboundaryAdmission.A
  - ParentCurrentRecordVariationPaysInheritedStressReuse.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-whole-transported-packet-parabolic-rescaling-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-traction-current-participation-law-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-subtracted-stress-test-innovation-bessel-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-stress-test-bessel-frame-no-free-reset-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-inherited-stress-direction-bv-quotient-compression-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-repeated-core-projection-record-return-payment-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-subtracted-endpoint-innovation-packing-boundary-20260627.md
effect: >-
  Sharpens the inherited b_Q payment.  The parent record should not be treated
  as a scalar BV object sampled repeatedly.  It should be the parent-known
  Hilbert projection/conditional-expectation process of the original material
  stress-current against the stopped annular wavelet filtration.  An inherited
  read is admissible only as a coboundary of that parent current record plus
  frame/selector/collar/reset/stop/legal drift.  The coboundary part has a
  square-function bound by Pythagoras/Doob in the original stress Hilbert space.
  Partial, not Gold closed: the remaining PDE-admission clause is to prove the
  selected inherited current increment really has this coboundary form before
  selected readout.
---

# Parent current coboundary square function

The constructive payment for inherited annular wavelet reads is not scalar BV.
It is a Hilbert-space coboundary.  A retained inherited child is allowed to read
only the change of the parent material traction-current record, not the same
level of that record again.

## 1. Parent stress-current record

On a stopped parent material history \(P\), keep the divergence-free annular
wavelet setting:

```math
\partial_s V=\operatorname{Div}_A T_A,
\qquad
T_A=-Q A+2\nu S_A A,
\qquad
D_A\cdot w_Q=0.
\tag{1}
```

Pressure cancels in the stress pairing, so with

```math
G_P:=2\nu S_A\,1_{\operatorname{Hist}(P)}
\in
\mathfrak H_P:=L^2_{\mathrm{sym,tr}}(\operatorname{Hist}(P)),
\tag{2}
```

the normalized stopped current readout is

```math
\sqrt{\mathcal R(Q)}\,\Delta J_Q
=
\langle G_P,a_Q\rangle_{\mathfrak H_P},
\qquad
a_Q=\sqrt{\mathcal R(Q)}1_{\operatorname{Hist}(Q)}
P_{\mathrm{sym,tr}}\nabla_Aw_Q.
\tag{3}
```

Let \(\mathcal F_Q\) be the stopped parent-known annular wavelet filtration
before \(Q\)'s positive selected readout, and let \(\mathcal P_Q\subset
\mathfrak H_P\) be the closed span of parent-known admitted stress-test
directions at that time.  Define the parent current record by orthogonal
projection:

```math
M_Q:=\Pi_{\mathcal P_Q}G_P.
\tag{4}
```

This is the concrete record.  It is not selected after seeing the child tail.
It is the parent-known conditional expectation/projection of the original
stress-current onto the stopped test history.

## 2. Pythagoras is the record payment

Along a laminar stopped ancestry, the spaces \(\mathcal P_Q\) are increasing up
to stop/legal overlap.  Therefore the projection differences

```math
\Delta M_Q:=M_Q-M_{Q^-}
\tag{5}
```

are Hilbert martingale differences:

```math
\Delta M_Q\perp \mathcal P_{Q^-}.
\tag{6}
```

Pythagoras gives the square-function bound

```math
\sum_{Q\subset P}\|\Delta M_Q\|_{\mathfrak H_P}^2
\le
\|G_P\|_{\mathfrak H_P}^2
+R_{\rm legal}(P)+Stop(P).
\tag{7}
```

With \(G_P=2\nu S_A\), the material energy law gives

```math
\|G_P\|_{\mathfrak H_P}^2
\le
C(u_0)
\tag{8}
```

at the raw stress-current level.  Thus changes of the parent current record
are square-paid from original history.

## 3. Inherited readout must be a coboundary

For the usual QR split

```math
a_Q=d_Q+b_Q,
\qquad
d_Q\perp \mathcal P_{Q^-},
\qquad
b_Q\in\mathcal P_{Q^-},
\tag{9}
```

the fresh \(d_Q\) part is already Bessel.  The inherited part must not be read
as the level sample \(\langle G_P,b_Q\rangle\).  That is the repeated-copy
failure.

The admissible inherited readout is the edge coboundary:

```math
\sqrt{\mathcal R(Q)}\,\Delta J_Q^{inh}
=
\langle \Delta M_Q,\widehat b_Q\rangle_{\mathfrak H_P}
+
\langle M_{Q^-},
\widehat b_Q-\mathsf T_{Q^-\to Q}\widehat b_{Q^-}
\rangle_{\mathfrak H_P}
+Err_Q.
\tag{10}
```

Here \(\widehat b_Q\) is the normalized inherited direction, and
\(\mathsf T_{Q^-\to Q}\) is the parent-fixed transport of the old inherited
direction into the child chamber.  The second term is exactly frame, selector,
order-lock, collar, turnstile, exchange, reset/reselection, stop, or legal
motion.  If the direction and chamber are unchanged and the parent current
record has not changed, `(10)` gives zero new inherited action.

This is the no-free-reuse sentence in mathematical form.

## 4. Square packing of inherited reads

By Cauchy--Schwarz and `(7)`,

```math
\sum_{Q\subset P}
|\langle \Delta M_Q,\widehat b_Q\rangle|^2
\le
C_N
\sum_{Q\subset P}\|\Delta M_Q\|_{\mathfrak H_P}^2
\le
C_N(u_0)+R_{\rm legal}(P)+Stop(P).
\tag{11}
```

The drift term in `(10)` is paid by the already named original-history ledgers:

```math
\sum_{Q\subset P}
\left|
\langle M_{Q^-},
\widehat b_Q-\mathsf T_{Q^-\to Q}\widehat b_{Q^-}
\rangle
\right|^2
\le
C_N\bigl(
\operatorname{Frame}_P+\operatorname{Selector}_P+\operatorname{Collar}_P
+\operatorname{Reset}_P+\operatorname{Stop}_P+R_{\rm legal}(P)
\bigr).
\tag{12}
```

Combining `(10)`--`(12)` gives the sharpened inherited-current estimate:

```math
\sum_{Q\subset P}
|\sqrt{\mathcal R(Q)}\,\Delta J_Q^{inh}|^2
\le
C_N(u_0)
+C_N\operatorname{Drift}_P
+R_{\rm legal}(P)+Stop(P).
\tag{13}
```

Together with the fresh \(d_Q\) Bessel estimate, this gives

```math
\sum_{Q\subset P}\mathcal R(Q)|\Delta J_Q|^2
\le
C_N(u_0)
+C_N\operatorname{Drift}_P
+R_{\rm legal}(P)+Stop(P).
\tag{14}
```

## 5. What this changes in the Gold route

The previous inherited-channel formulation asked for finite negative
return/service of a scalar flux potential.  That is still a valid one-line
compression on a fixed chamber, but it hides the better structure.  The parent
current record is Hilbert-valued, and the correct finite quantity is its
quadratic variation:

```math
[M]_P
:=
\sum_{Q\subset P}\|\Delta M_Q\|_{\mathfrak H_P}^2.
\tag{15}
```

Repeated same-direction reuse is harmless when it is a level repeat: there is
no coboundary.  It becomes paid only when the parent current record changes, or
when the test frame/selector/collar/reset state changes.  This is stronger than
trying to bound the BV of an arbitrary scalar readout and closer to the original
Navier-Stokes law, because `(4)` is a projection of the original stress field.

## 6. Remaining admission theorem

The formal Hilbert part is closed by projection geometry.  The PDE/stopped
selector admission theorem still has to be proved:

```text
InheritedStressReadoutCoboundaryAdmission.A
```

For every retained unpaid inherited annular wavelet transaction, the selected
current increment must admit `(10)` before selected readout, with \(M_Q\)
defined by `(4)` from original parent history and with all non-coboundary terms
charged to frame, selector, collar, reset/reselection, stop, or legal ledgers.

This is the real positive version of the parent-record attachment lemma.  It
does not ask the original material history to have free scalar BV; it asks the
selector to respect that the inherited current is a martingale/projection
coboundary of one parent material traction-current record.

Gold remains partial, not closed.
