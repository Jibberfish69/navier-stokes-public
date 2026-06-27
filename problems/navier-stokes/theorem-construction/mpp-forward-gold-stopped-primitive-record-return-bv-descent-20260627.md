---
theorem_id: forward-gold-stopped-primitive-record-return-bv-descent-20260627
status: record-return-descent-reduces-strict-half-barrier-to-signed-lift-and-return-charge
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped primitive PLS strict half-barrier
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - StoppedPrimitivePLSStrictHalfBarrierBreak.A
  - FreshNegativeScaleReturnChargeOrPotentialAverageKill.A
  - PositiveFreshAffineQuotientBVReturnKill.A
  - StoppedSourceCarrierAndPaidReselection.A
new_hinge:
  - StoppedPrimitivePLSRecordReturnDescent.A
  - StoppedPrimitivePLSSignedScalePotentialLift.A
  - StoppedNegativeScaleReturnChargeOrPotentialRecordBound.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-affine-bv-return-to-stopped-strict-half-barrier-live-edge-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-pls-strict-half-barrier-break-relay-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-free-material-graph-driver-direct-attack-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-positive-fresh-affine-quotient-bv-return-kill-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-installed-support-axioms-half-tail-model-no-go-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-stopped-source-carrier-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-source-carrier-production-direct-test-20260627.md
effect: >-
  Converts the current strict half-barrier problem from another local detector
  search into a one-dimensional stopped scale-potential record/return descent.
  The stopped primitive graph-driver assumptions alone still admit the critical
  half-tail.  After a polar-compatible signed scale-potential lift, the same
  half-tail forces either unbounded potential records/average or infinite paid
  negative scale return.  Therefore BMO/reverse Holder remains a consumer after
  stopped carrier production; the producer burden is the signed lift plus
  same-material return charge.
---

# Stopped primitive record/return BV descent

The live Gold edge is the strict half-barrier for the stopped primitive
free-material graph driver:

```math
N_{L+1}\le \theta N_L+B_L,
\qquad
\theta<{1\over2},
\qquad
\sum_L2^LB_L<\infty.
\tag{RR.1}
```

Equivalently, in scale-memory variables, it is

```text
FreshNegativeScaleReturnChargeOrPotentialAverageKill.A.
```

The stopped-carrier BMO theorem is useful but downstream.  Once the stopped
source carrier and reselection errors are produced from original history,
martingale reverse Holder gives the strict first-ratio gain.  That does not
produce the carrier.  The producer problem is still the stopped primitive
half-tail itself.

## 1. The stopped assumptions alone still admit the half-tail

The installed support package allows the abstract one-child laminar half-tail:

```math
\nu_\ell={2^{-\ell}\over \ell+1},
\qquad
a_\ell:=2^\ell\nu_\ell={1\over \ell+1}.
\tag{RR.2}
```

Then

```math
\sum_\ell\nu_\ell<\infty,
\qquad
\sum_\ell a_\ell=\infty.
\tag{RR.3}
```

This profile can satisfy the stopped primitive local tests: the visits are
laminar on one material ancestry line, each positive pump has a complete-frame
compression partner, subheat/return/recirculation/nonlaminar exits are removed,
and the low coefficient sits in the escape or concentration branch.  Thus the
stopped graph-driver reductions alone do not beat `(RR.1)`.

So the next proof cannot be another local orientation, laminarity, or BMO
consumer statement.  It needs a new producer mechanism that the half-tail
cannot satisfy.

## 2. Record/return descent

Assume the strict half-barrier fails after all stopped removals.  Choose a
minimal bad stopped one-material graph.  Its selected positive primitive visits
can be read along the stopped scale-potential coordinate after a signed lift:

```math
Y=\partial_\sigma\Psi+S^{spill}+E,
\qquad
Y_+=Y+Y_-.
\tag{RR.4}
```

Here \(Y_+\) is the selected positive fresh/stopped primitive source, \(Y\) is
the signed source before positive projection, and \(Y_-\) is the negative return
needed to reset the scale potential.

On one ordered stopped ancestry line, the scalar BV identity is:

```math
V_+(\Psi;I_M)
=
\Psi(t_M)-\Psi(t_0)+V_-(\Psi;I_M).
\tag{RR.5}
```

Equivalently, split positive visits into:

1. record visits, where the scale potential reaches a new high value;
2. return visits, where another separated positive visit occurs only after a
   negative movement of the same potential.

Summing `(RR.5)` along the minimal bad graph gives the basic obstruction:

```math
\sum_{m\le M} a_m
\lesssim
\operatorname{Rec}_M(\Psi)
+V_-^{return}(\Psi;I_M)
+R_M^{spill/legal}.
\tag{RR.6}
```

If the record term is bounded by the potential-average/root reserve and the
negative return is charged to same-material paid ledgers, the right side stays
finite.  That contradicts the half-tail divergence
\(\sum_m a_m=\infty\).

Thus an infinite stopped positive PLS half-tail has only two exits:

```math
\text{unbounded scale-potential records/average}
\quad\text{or}\quad
\text{infinite negative scale-return charge}.
\tag{RR.7}
```

This is the new proof mechanism.  It is a monovariant/minimal-counterexample
argument on the stopped scale potential, not a stronger pointwise estimate of
the positive low-high form.

## 3. What must be proved to make it a PDE theorem

The scalar descent `(RR.5)` is elementary.  The PDE work is in the lift and the
charges.

### A. Stopped primitive signed scale-potential lift

Prove that the stopped primitive positive PLS driver admits a polar-compatible
signed lift:

```text
StoppedPrimitivePLSSignedScalePotentialLift.A
```

The selected positive source must be representable as \(Y_+\) for a signed
scale-descent density \(Y\), up to already-paid selector/reselection, polar
frame rotation, collar/spill, donor, and legal defects.  This is a real
hypothesis.  Positive selection can destroy signed exactness unless the lift is
constructed before the positive projection is used.

### B. Potential record / average bound

Prove that record growth of \(\Psi\) is either bounded by original-history
root data or appears exactly as the potential-average obstruction already
isolated in the affine-quotient notes:

```text
StoppedPotentialRecordAverageBound.A
```

In affine quotient form this is the existing potential-average term:

```math
\int_0^T H_w(t)
\left\|
{1\over |J|}\int_J\Psi(\sigma,t)\,d\sigma
\right\|_{L_x^2}^2dt.
\tag{RR.8}
```

### C. Negative scale-return charge

Prove that \(Y_-\), or the corresponding negative variation of \(\Psi\), is not
free.  It must land in one of the same-material paid currencies:

```text
StoppedNegativeScaleReturnCharge.A
```

The allowable charges are same-material strain/exchange reversal,
selector/reselection or polar-frame rotation, collar/spill separation,
donor/order-lock repayment, recirculation already classified as return, or
legal synchronization loss.

## 4. Relation to stopped carrier BMO

The stopped source-carrier theorem has the consumer chain:

```math
\text{root Hilbert carrier}
+\text{paid reselection}
\Longrightarrow
\text{stopped martingale BMO}
\Longrightarrow
f\in RH_{1+\varepsilon}(d\mathcal R)
\Longrightarrow
\text{strict first-ratio gain}.
\tag{RR.9}
```

That chain is valid after production.  The present record/return descent is the
producer-side attack on the production estimates.  It says why an infinite
sequence of stopped roots or reselections is not free once the same scalar
scale-potential lift is available: repeated positive production either makes
records or pays returns.

So `StoppedSourceCarrierAndPaidReselection.A` should not replace the live
producer.  It is the fixed-carrier consumer form of the same burden.  The
producer form is:

```text
StoppedPrimitivePLSRecordReturnDescent.A
```

with exact remaining inputs:

```text
StoppedPrimitivePLSSignedScalePotentialLift.A
+
StoppedPotentialRecordAverageBound.A
+
StoppedNegativeScaleReturnCharge.A.
```

## 5. Result

The better current idea is a record/return descent on the stopped material
scale potential.

It proves a conditional kill of the critical half-tail:

```math
\left[
\text{signed lift}
+\text{bounded potential records}
+\text{finite paid negative return}
\right]
\Longrightarrow
\sum_\ell2^\ell\nu_\ell<\infty.
\tag{RR.10}
```

The stopped primitive assumptions alone still admit the half-tail.  The half-tail
dies only after the BV scale-potential lift is admitted and the negative return
is charged.  That is the sharpened Gold burden.