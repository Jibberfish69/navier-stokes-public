---
theorem_id: forward-gold-affine-quotient-transition-square-packing-two-branch-payment-20260627
status: affine-quotient-umbrella-refined-to-stopped-square-packing-and-two-open-branch-payments
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / fresh frequency flux
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - AffineQuotientTransitionPayment.A
  - StoppedAffineQuotientTransitionSquarePacking.A
  - SignedStoppedPLSEvolutionIdentity.A
  - StoppedReturnBVFiniteFromOriginalData.A
  - CriticalWeightedResetBVFromOriginalHistory.A
  - LogScaleResetDerivativeCarrierBound.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-threaded-cascade-to-affine-quotient-transition-payment-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-quotient-transition-square-packing-branch-synthesis-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-source-affine-quotient-transition-payment-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-negative-scale-return-bv-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-pls-balance-law-block-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-reset-overrun-carleson-boundary-20260627.md
effect: >-
  Stops treating ThreadedFreshCascadePacking.A as the live wall after the
  finite-band/reset reduction, and also stops treating AffineQuotientTransitionPayment.A
  as a one-step closure theorem. The better route is a stopped affine-quotient
  transition square-packing theorem, followed by two visible original-history
  payments: signed stopped primitive return/BV for inherited repeated cores, and
  critical weighted reset BV for genuine fresh parent-child resets.
---

# Affine quotient square-packing with two branch payments

The route is slow because each broad name has been hiding a more precise unpaid
mechanism.  Threaded transit is already reduced to return/BV and reset/escape.
The affine quotient is the shared survivor of those two branches, but it is not
itself a proof.

The sharpened live target is:

```text
StoppedAffineQuotientTransitionSquarePacking.A
  + SignedStoppedPLSEvolutionIdentity.A / StoppedReturnBVFiniteFromOriginalData.A
  + CriticalWeightedResetBVFromOriginalHistory.A / LogScaleResetDerivativeCarrierBound.A
  -> AffineQuotientTransitionPayment.A.
```

Partial, not Gold closed.

## 1. Immediate parent subhinge

The next theorem below the affine quotient is:

```text
StoppedAffineQuotientTransitionSquarePacking.A.
```

For stopped transition edges \(e=Q\to Q'\), decompose each localized affine
piece into a fresh difference and a predictable inherited part:

```math
\mathcal C_\theta[Z_e]=D_e+B_e.
\tag{1}
```

The `D_e` part must satisfy stopped martingale/Bessel square packing:

```math
\int H_w
\left\|\sum_eD_e\right\|_{L_x^2}^2dt
\le
C\sum_e\int H_w\|D_e\|_{L_x^2}^2dt
+R_{legal}(P).
\tag{2}
```

The `B_e` part is not paid by laminar overlap.  It is the predictable inherited
component and must be routed to the repeated-core record/return payment.

This is the better structural idea: split the affine quotient into a stopped
martingale difference plus predictable return, instead of trying to bound the
whole quotient as one positive source.

## 2. Inherited repeated-core payment

On an inherited stopped core, the first unproved estimate is the no-free
negative return/BV estimate:

```math
\sum_k [P(Q_k)-P(Q_{k+1})]_+
\le
C\mathcal R_{return}(Q_0)+CR_{legal}(Q_0).
\tag{3}
```

This cannot come from bounded record oscillation.  It needs a real material
balance identity:

```text
SignedStoppedPLSEvolutionIdentity.A / StoppedReturnBVFiniteFromOriginalData.A.
```

The desired identity is:

```math
D_tP_{\mathfrak R}
=
\mathcal P_{fresh}^{+}
-\mathcal R_{return}
+Err_{legal},
\tag{4}
```

with

```math
\int [D_tP_{\mathfrak R}]_-\,dt
\le
C\int\mathcal R_{return}\,dt+CR_{legal}
\le
C_N(u_0)+CR_{legal}.
\tag{5}
```

Method: minimal bad stopped chain plus a signed material balance law.  The
monovariant is the stopped primitive record after negative motion has been
identified with finite original-history return/service currency.

## 3. Fresh reset payment

On a genuine fresh parent-child reset, the first unproved root estimate is:

```math
\sum_{Q\subseteq P}\sum_{Q'\in ch_{stop}(Q)}
J_{crit}(Q\to Q')
\le
C_N(u_0)+R_{legal}(P).
\tag{6}
```

This is:

```text
CriticalWeightedResetBVFromOriginalHistory.A / LogScaleResetDerivativeCarrierBound.A.
```

The lower-level input is a parent-announced first-crossing representation of
strict resets by original-history log-scale derivative, collar-turnstile,
exchange, and covector/frame motion.  Raw reset existence, raw Bessel packing,
or local coefficient overrun does not prove `(6)`.

Method: stopped first-exit Carleson embedding after log-scale derivative
representation, with harmonic active-weight Cauchy cancellation only after the
parent-announced reset derivative has been installed.

## 4. Demotions

These labels should not steer the live target as closure:

```text
ThreadedFreshCascadePacking.A as the Gold wall after finite-band/reset routing;
AffineQuotientTransitionPayment.A as a one-step proof theorem;
FreshSelectedCoefficientOverrunPayment.A as global reset closure;
raw reset, raw Bessel, raw capacity, raw pressure-Hodge, or endpoint-atom closure;
silent-source local increment as global square-function Carleson packing.
```

The parent theorem is still useful, but only with the subhinges visible:

```text
AffineQuotientTransitionPayment.A
  <= StoppedAffineQuotientTransitionSquarePacking.A
     + inherited repeated-core return/BV
     + critical weighted fresh-reset BV.
```

## 5. Result

The live Gold route is now sharper than the old threaded-cascade target:

```text
ThreadedFreshCascadePacking.A
  <= AffineQuotientTransitionPayment.A
  <= StoppedAffineQuotientTransitionSquarePacking.A
     + SignedStoppedPLSEvolutionIdentity.A / StoppedReturnBVFiniteFromOriginalData.A
     + CriticalWeightedResetBVFromOriginalHistory.A / LogScaleResetDerivativeCarrierBound.A.
```

This is progress in target quality, not a closure claim.  The proof is still
open at the square-packing theorem and the two original-history branch payments.
