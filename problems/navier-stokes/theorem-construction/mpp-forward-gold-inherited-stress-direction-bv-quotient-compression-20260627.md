---
theorem_id: forward-gold-inherited-stress-direction-bv-quotient-compression-20260627
status: reused-channel-charge-reduction-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
refines:
  - InheritedDirectionMultiplicityCarleson.A
  - ReusedSameMaterialStressChannelReturnResetCharge.A
  - ParentSubtractedQRNoFreeReset.A
  - RepeatedCoreRecordReturnStorageBound.A
attacks_hinge:
  - ReusedSameMaterialStressChannelReturnResetCharge.A
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
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fixed-annulus-bounded-record-controls-flux-variation-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-payback-physical-frame-completion-boundary-20260625.md
effect: >-
  Sharpens the inherited-direction part of the stopped stress-test frame problem:
  repeated same-material stress-channel reads should not be counted as separate
  Bessel vectors.  They are quotient-compressed to one parent-known stopped score
  whose positive visits reduce to record growth or negative return/reset BV.
  The single smoothness-closing theorem is the original-history reused-channel
  return/service charge bound for the inherited part; this payment is not proved
  by the installed ingredients.  Partial, not Gold closed.
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

The negative return term is the PDE bill.  Formally, differentiating the same
scalar score gives the candidate identity

```math
\partial_\sigma P_\alpha
=
\langle\partial_\sigma Z^S,e_\alpha\rangle
+\langle Z^S,\partial_\sigma e_\alpha\rangle.
\tag{8}
```

The second term is the route geometry: turnstile, exchange, covector,
connection, selector/order-lock, reset/reselection, stop, and legal motion.  The
desired noncircular payment is

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

Thus repeated same-direction selection is reduced to record/return variation of
one stopped scalar channel, not to many copies of one Bessel vector.  The
identity itself does not prove that the right side of `(9)` is finite from
original data; that finiteness is the remaining service-clock theorem.

## 4. The mixed Bessel/BV estimate

The correct consumer estimate for the stopped stress-test readout is therefore
the conditional mixed bound

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
compressed into a BV scalar ledger.  After this quotient compression, repeated
positive visits have been summed into one \(V^+\) term for \(P_\alpha\); the open
PDE content is the original-data bound for the associated negative return and
same-material service.

This is the operational form of

```text
InheritedDirectionMultiplicityCarleson.A.
```

It should be read as "bounded multiplicity after quotient compression, provided
the negative return/service charge is finite from original history," not as a
demand to make raw repeated copies of the same inherited vector orthogonal.

## 5. Formal conversion theorem

The downstream smoothness conversion now hangs on one precise estimate.  With

```math
a_Q
=
\sqrt{\mathcal R(Q)}\,1_{\operatorname{Hist}(Q)}\nabla_Av_Q
=b_Q+d_Q,
\tag{12}
```

where \(d_Q\) is fresh relative to the parent-known past and \(b_Q\) is inherited,
the fresh half is already Bessel:

```math
\sum_Q |\langle G,d_Q\rangle|^2
\le C\|G\|_2^2.
\tag{13}
```

Applied to \(G=2\nu S_A\), this gives

```math
\sum_Q^{\rm fresh}\mathcal R(Q)|\Delta_QJ^S|^2
\le C(u_0)+R+Stop.
\tag{14}
```

The remaining theorem is exactly the reused-channel charge bound

```math
\sum_Q |\langle 2\nu S_A,b_Q\rangle|^2
\le C(u_0)+R+Stop.
\tag{15}
```

This is the formal no-free-reset statement: a stopped selector cannot count the
same material stress channel as infinitely many new refills unless the original
transported history pays finite deformation, return, reset, reselection,
selector, stop, or legal cost.

On one stopped ancestry line this is equivalently a signed material flux
potential statement.  Define \(\Psi\) so that the inherited positive readings
have a signed density \(Y=\partial_t\Psi\) and

```math
Y_+=Y+Y_-+Err.
\tag{15a}
```

Then on every stopped interval \(I=[t_0,t_1]\),

```math
\int_I Y_+
\le
\operatorname{Rec}(\Psi;I)+V_-(\Psi;I)+Err(I),
\tag{15b}
```

because

```math
V_+(\Psi;I)=\Psi(t_1)-\Psi(t_0)+V_-(\Psi;I).
\tag{15c}
```

The scalar BV identity `(15b)`--`(15c)` is not the Gold payment.  The payment is
the PDE estimate

```math
\operatorname{Rec}(\Psi)+V_-(\Psi)
\le C(u_0)+R_{\rm legal}+Stop.
\tag{15d}
```

The fixed-annulus payback notes prove only the conditional version: rectified
flux variation is finite once the same-material record and service clock are
finite.  They do not prove the record/service clock finite from original data.

Adding `(13)` and `(15)` gives full stopped square-packing:

```math
\sum_Q \mathcal R(Q)|\Delta_QJ^S|^2 < \infty.
\tag{16}
```

The installed consumers then give

```math
\sum_Q A_{\rm sel}(Q)<\infty
\quad\Longrightarrow\quad
\mathcal T_{\rm full}(u;[0,T_*))<\infty
\quad\Longrightarrow\quad
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty,\qquad s>\frac52.
\tag{17}
```

Standard local Navier-Stokes continuation then extends a smooth solution past a
finite maximal time.  Thus Gold smoothness follows once `(15)`, equivalently
`(15d)` for the inherited service channel, is proved from the original
Navier-Stokes law without importing the full material clock.  The note records
that theorem as open.

## 6. What is still open

The formal scalar BV part is elementary once `(5)` and the signed potential
identity are installed.  The remaining PDE theorem is finite negative
return/service from original data, expressed through the signed score lift for
inherited stress-test directions:

```text
StressTestInheritedDirectionSignedScoreLift.A.
```

Statement:

For every retained inherited stress direction \(e_\alpha\), before selected
positive readout, construct the stopped scalar score/potential \(P_\alpha\) or
\(\Psi_\alpha\) so that unpaid inherited selected action satisfies `(5)`, and so
that the negative return/service variation satisfies `(15d)` from the original
transported Navier-Stokes history.  Any failure of this construction is selector
drift, order-lock/frame/connection motion, reset/reselection, stop, legal loss,
or a fresh orthogonal innovation.

The global root part remains:

```text
OriginalParticipationStorageCoercivity.A
+ OriginalHistoryWeightedFreshCurrentCapacity.A.
```

Those must bound \(\mathcal E_{\rm route}(P)\), or equivalently the relevant
\(\operatorname{Rec}(\Psi)+V_-(\Psi)\) service ledger, from the original
Navier-Stokes material law.  Without that original-history storage bound, `(10)`
and `(15)` are still only conditional compression theorems.

## 7. Current status

This note does not close Gold.  It replaces a too-literal inherited-vector
Bessel target by the sharper mixed object:

```text
fresh directions -> Bessel square packing,
inherited directions -> stopped-score record/return BV compression, with finite
  negative return/service still open,
paid changes -> reset/reselection/selector/stop/legal ledgers.
```

The next nonduplicate mathematical target is the finite negative return/service
theorem for inherited stress-test directions, tied to the global participation
storage bound.  This is the same missing regularity content in a more exact
currency, not a consequence of the installed fresh Bessel and scalar BV facts.
