---
theorem_id: forward-gold-inherited-stress-direction-bv-quotient-compression-20260627
status: bv-quotient-compression-reduction-stress-direction-score-lift-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
refines:
  - InheritedDirectionMultiplicityCarleson.A
  - ParentSubtractedQRNoFreeReset.A
  - RepeatedCoreRecordReturnStorageBound.A
attacks_hinge:
  - InheritedStressDirectionBVQuotientCompression.A
  - StressTestInheritedDirectionSignedScoreLift.A
  - OriginalParticipationStorageCoercivity.A
  - OriginalHistoryWeightedFreshCurrentCapacity.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-stress-test-frame-bound-from-inherited-direction-carleson-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-repeated-core-projection-record-return-payment-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fixed-stopped-score-return-bv-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-finite-score-or-paid-drift-proof-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-reset-witness-interval-bounded-overlap-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-gram-schur-participation-storage-20260627.md
effect: >-
  Sharpens the inherited-direction part of the stopped stress-test frame problem:
  repeated same-direction reads should not be counted as separate Bessel vectors.
  They are quotient-compressed to one parent-known stopped score whose positive
  visits are paid by record growth or negative return BV.  The remaining open
  theorem is the signed score lift/storage for inherited stress-test directions
  in the original participation metric.  Partial, not Gold closed.
---

# Inherited stress-direction BV quotient compression

The repeated-direction obstruction should not be attacked by trying to make
infinitely many copies of the same inherited vector into a Bessel family.  Once
the direction is inherited, the same-direction reads are one stopped scalar
channel.  The Bessel square sum belongs to the fresh orthogonal innovations;
the inherited part belongs to record/return BV of the same parent-known score.

## 1. The corrected split

For a retained stopped child \(Q\subset P\), keep the parent-subtracted split

```math
a_Q=b_Q+d_Q,
\qquad
d_Q=(I-\Pi_{\mathcal P_{Q^-}})a_Q.
\tag{1}
```

The fresh family \(d_Q\) already satisfies the Hilbert Bessel bound.  Write the
inherited part in a parent-known orthonormal frame:

```math
b_Q=\sum_{\alpha\in A(Q)}c_{Q\alpha}e_\alpha.
\tag{2}
```

The dangerous case is a chain with the same \(\alpha\) repeated many times.  If
one insists on estimating

```math
\sum_Q |\langle G,c_{Q\alpha}e_\alpha\rangle|^2,
\tag{3}
```

then repeated copies of \(e_\alpha\) recreate the old failure.  That is the
wrong ledger for inherited reads.  A repeat of \(e_\alpha\) is not a new test
direction.  It is another visit of the same stopped scalar score.

## 2. Quotient-compressed inherited channel

For each inherited stress direction \(e_\alpha\), define the parent-known scalar
coefficient of the stopped routed carrier/current:

```math
P_\alpha(\sigma)
=
\langle Z^S(\sigma),e_\alpha(\sigma)\rangle_{\mathfrak H_P}.
\tag{4}
```

Here \(e_\alpha\) is fixed on a stopped selector/order-lock chamber.  When the
direction or chamber changes, the event is a selector/frame/connection drift,
reset, reselection, stop, or legal loss.

For every retained unpaid inherited transaction in this chamber, the selected
readout must be visible to the same scalar score:

```math
A_{\rm inh}(Q_k\to Q_{k+1};\alpha)
\lesssim
[P_\alpha(\sigma_{k+1})-P_\alpha(\sigma_k)]_+
+R_{\rm legal}(Q_k).
\tag{5}
```

This is the stress-test version of the fixed stopped score law.  It is the
actual mathematical meaning of "inherited": the readout is already a parent
coordinate before the child positive selection.

## 3. Record/return payment

Along one stopped chamber and one inherited direction, positive visits obey the
one-dimensional BV identity:

```math
\sum_{k<M}[P_\alpha(\sigma_{k+1})-P_\alpha(\sigma_k)]_+
\le
\operatorname{Rec}_M(P_\alpha)
+V_M^-(P_\alpha).
\tag{6}
```

The record term is not a scalar freebie.  A genuine new record either remains
within the same parent scalar range or grows the parent affine/stress span.  The
span-growth part is orthogonal and paid by Pythagoras:

```math
\sum_{\rm records}\|r_k\|_{\mathfrak H_P}^2
\le
\|Z^S\|_{\mathfrak H_P}^2
+R_{\rm legal}(P).
\tag{7}
```

The negative return term is paid by differentiating the same scalar score:

```math
\partial_\sigma P_\alpha
=
\langle\partial_\sigma Z^S,e_\alpha\rangle
+\langle Z^S,\partial_\sigma e_\alpha\rangle.
\tag{8}
```

The second term is exactly the route geometry: turnstile, exchange, covector,
connection, selector/order-lock, reset/reselection, stop, and legal motion.
With the active original-history weight,

```math
V^-(P_\alpha)
\lesssim
\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z^S|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
+|\operatorname{covector}_\sigma|^2
+|\operatorname{conn}_\sigma|^2
\right)
+R_{\rm legal}(P)+Stop(P).
\tag{9}
```

Thus repeated same-direction selection is paid as record/return variation of
one stopped scalar channel, not as many copies of one Bessel vector.

## 4. The mixed Bessel/BV estimate

The correct consumer estimate for the stopped stress-test readout is therefore
the mixed bound

```math
\sum_Q|\langle G,d_Q\rangle_{\mathfrak H_P}|^2
+
\sum_\alpha
\left(
\operatorname{Rec}_\infty(P_\alpha)
+V^-(P_\alpha)
\right)
\le
C_N\mathcal E_{\rm route}(P)
+R_{\rm legal}(P)+Stop(P),
\tag{10}
```

where

```math
\mathcal E_{\rm route}(P)
=
\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z^S|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
+|\operatorname{covector}_\sigma|^2
+|\operatorname{conn}_\sigma|^2
\right).
\tag{11}
```

The fresh term is square-packed by Hilbert orthogonality.  The inherited term is
compressed into a BV scalar ledger.  After this quotient compression, the
unpaid inherited multiplicity is bounded because repeated positive visits have
already been summed into one \(V^+\) term for \(P_\alpha\).

This is the operational form of

```text
InheritedDirectionMultiplicityCarleson.A.
```

It should be read as "bounded multiplicity after quotient compression," not as
a demand to make raw repeated copies of the same inherited vector orthogonal.

## 5. What is still open

The formal scalar BV part is elementary once `(5)` and `(8)` are installed.  The
remaining PDE theorem is the signed score lift for inherited stress-test
directions:

```text
StressTestInheritedDirectionSignedScoreLift.A.
```

Statement:

For every retained inherited stress direction \(e_\alpha\), before selected
positive readout, construct the stopped scalar score \(P_\alpha\) so that
unpaid inherited selected action satisfies `(5)`, and so that
\(\partial_\sigma P_\alpha\) has the original-history derivative decomposition
`(8)`--`(9)`.  Any failure of this construction is selector drift,
order-lock/frame/connection motion, reset/reselection, stop, legal loss, or a
fresh orthogonal innovation.

The global root part remains:

```text
OriginalParticipationStorageCoercivity.A
+ OriginalHistoryWeightedFreshCurrentCapacity.A.
```

Those must bound \(\mathcal E_{\rm route}(P)\) from the original Navier-Stokes
material law.  Without that original-history storage bound, `(10)` is still only
a conditional compression theorem.

## 6. Current status

This note does not close Gold.  It replaces a too-literal inherited-vector
Bessel target by the sharper mixed object:

```text
fresh directions -> Bessel square packing,
inherited directions -> stopped-score record/return BV compression,
paid changes -> reset/reselection/selector/stop/legal ledgers.
```

The next nonduplicate mathematical target is the signed score lift/storage
theorem for inherited stress-test directions, tied to the global participation
storage bound.
