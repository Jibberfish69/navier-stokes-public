---
theorem_id: forward-gold-original-history-selected-potential-amplification-bv-producer-20260627
status: unifies-two-open-branch-payments-record-producer-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / persistent root affine quotient
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - FreshPotentialAverageKillAndPositiveTransfer.A
  - CriticalWeightedResetBVFromOriginalHistory.A
  - LogScaleResetDerivativeCarrierBound.A
  - PersistentRootAffineQuotientReturnPayment.A
  - OriginalHistorySelectedPotentialAmplificationBV.A
  - OriginalHistoryHilbertBMOProducer.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-persistent-root-affine-quotient-payment-branch-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-paired-carrier-der-aqk-potential-average-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-reset-overrun-carleson-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-history-selected-amplification-bv-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-positive-fresh-affine-quotient-bv-return-kill-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-bmo-producer-testing-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-record-return-bv-descent-20260627.md
effect: >-
  Consolidates the current two open branch payments below the persistent root
  affine quotient.  Fresh potential-average transfer and strict reset/overrun
  Carleson are not independent theorem species: both are projections of one
  parent-known original-history selected potential/amplification record.  This
  note proves the projection implication and leaves the construction/testing of
  that record as the unpaid internal subproducer for
  StoppedPredictableRootGeometryCompensator.A.  Partial, not Gold closed.
---

# Original-history selected potential/amplification BV producer

The current source frontier has split the persistent root affine quotient into
two unpaid original-history payments:

```text
FreshPotentialAverageKillAndPositiveTransfer.A
+
CriticalWeightedResetBVFromOriginalHistory.A / LogScaleResetDerivativeCarrierBound.A.
```

Those two payments should not be attacked as unrelated estimates.  They are two
coordinate projections of the same missing object: a parent-known selected
potential/amplification record on the original same-material history.

Partial, not Gold closed.

## 1. The record that would pay both branches

Let the stopped original-history record be

```math
\mathfrak Z^S
=
(Z^S,\Psi^S,\Lambda^S),
\tag{1}
```

where:

- \(Z^S\) is the stopped signed routed carrier already used in the fixed-score
  return branch;
- \(\Psi^S\) is the signed scale potential from the fresh affine quotient
  identity;
- \(\Lambda^S\) is the selected amplification coordinate, with local readings
  comparable to stopped selected coefficients and affine quotient averages.

The sharpened producer theorem is:

```text
OriginalHistorySelectedPotentialAmplificationBV.A.
```

Statement.  After spent-source projection, silent-source normal form,
selector/reselection payment, exchange, entrance/legal, subheat, recirculation,
and stopped carrier refinement, the record \(\mathfrak Z^S\) is parent-known
before descendant selected readout and satisfies

```math
\begin{aligned}
\mathcal E_{SPA}(P)
:={}&
\int_0^{T^*}
H_w(t)
\left\|
{1\over |J|}\int_J\Psi^S(\sigma,t)\,d\sigma
\right\|_{L_x^2}^2dt
\\
&+
\operatorname{Var}_{crit}^{stop}(\Lambda^S;P)
\\
&+
\sup_{P'\subseteq P}
{1\over \mathcal R(P')}
\sum_{Q\subseteq P'}
\|\Delta_Q Z^S\|_{\mathfrak H_P}^2\mathcal R(Q)
\\
&+
\operatorname{TestDef}_{S}(P)
+
Stop(P)
\le
C_N(u_0)+C R_{legal}(P).
\end{aligned}
\tag{2}
```

Here \(\operatorname{Var}_{crit}^{stop}\) is the critical stopped variation of
the same selected amplification record across fixed-core motion and strict
reset chart changes, and \(\operatorname{TestDef}_S\) is the stopped
cancellation/testing defect needed to build \(Z^S\) from original-history
routed source data.

This theorem is deliberately parent-known.  It is not allowed to use the
selected-critical root norm, the future selected tail, \(dA^{wt}+dA^{conn}\),
`FullMaterialClockLedger.A`, downstream full-clock finiteness, routed-current
self-payment, or root-clock self-payment.

## 2. Projection to fresh potential-average transfer

The fresh affine quotient identity gives

```math
Y_+=Y+Y_-,
\qquad
Y=\partial_\sigma\Psi^S+S^{spill}+E.
\tag{3}
```

Pairing against the affine quotient weight leaves

```math
\mathcal C_\theta[Y_+]
=
-\theta_\kappa(s_0)\Psi^S(s_0,t)
+
{1\over |J|}\int_J\Psi^S(\sigma,t)\,d\sigma
+
\mathcal C_\theta[Y_-]
+
\mathcal C_\theta[S^{spill}]
+
\mathcal C_\theta[E].
\tag{4}
```

The spill and soft-error terms are already routed support.  The fixed stopped
score has paid inherited return variation.  Therefore the only fresh affine
average term left in `(4)` is the first line of `(2)`.

Thus `(2)` implies

```math
\int_0^{T^*}
H_w(t)
\|\mathcal P_{avg}^{fresh}(t)\|_{L_x^2}^2dt
\le
C_N(u_0)+C R_{legal}(P),
\tag{5}
```

with

```math
\mathcal P_{avg}^{fresh}(t)
=
{1\over |J|}\int_J\Psi^S(\sigma,t)\,d\sigma.
\tag{6}
```

The signed-to-positive transfer is the identity `(3)` plus the already separated
negative-return, spill, selector, frame, and legal charges.  Hence
`OriginalHistorySelectedPotentialAmplificationBV.A` supplies:

```text
FreshPotentialAverageKillAndPositiveTransfer.A.
```

The important point is that the potential average is not a scalar orphan.  It is
the low-order coordinate of the same stopped original-history record whose
selected increments and reset jumps are also being measured.

## 3. Projection to strict reset/overrun Carleson

For a strict reset \(Q\to Q'\), compare the child selected coefficient with the
parent coefficient transported into the child chart:

```math
\Delta_{reset}\Lambda^S(Q,Q')
=
\Lambda^S_{new}(Q')-\Lambda^S_{old\to new}(Q).
\tag{7}
```

The reset overrun is exactly the positive critical variation of this same
record:

```math
\Omega_{reset}(Q,Q')
=
\omega(Q,Q')\,[\Delta_{reset}\Lambda^S(Q,Q')]_+
+R_{legal}(Q,Q').
\tag{8}
```

Summing `(8)` over stopped reset edges gives

```math
\sum_{Q\subseteq Q_0,\ reset}
\Omega_{reset}(Q,Q')
\le
\operatorname{Var}_{crit}^{stop}(\Lambda^S;Q_0)
+C R_{legal}(Q_0).
\tag{9}
```

The second line of `(2)` therefore implies

```math
\sum_{Q\subseteq Q_0,\ reset}
\Omega_{reset}(Q,Q')
\le
C_N(u_0)+C R_{legal}(Q_0).
\tag{10}
```

This is

```text
CriticalWeightedResetBVFromOriginalHistory.A
/ LogScaleResetDerivativeCarrierBound.A.
```

The reset branch is no longer a separate coefficient-overrun problem.  A reset
is a chart change of the selected amplification record.  If the child
coefficient is not a charted reading of \(\Lambda^S\), the transaction is not a
retained same-record reset; it pays selector/reselection/legal loss instead.

## 4. Fixed stopped-score return as the third projection

The fixed stopped-score branch already closed with

```math
P_R=\Gamma_R Z^S.
\tag{11}
```

On a retained fixed stopped core,

```math
A_{sel}(e)
\lesssim
[P_R(Q_{k+1})-P_R(Q_k)]_+
+R_{legal},
\tag{12}
```

and

```math
\partial_\sigma P_R
=
\Gamma_R\partial_\sigma Z^S
+
(\partial_\sigma\Gamma_R)Z^S.
\tag{13}
```

Thus fixed-core return is also a projection of \(\mathfrak Z^S\): the
\(Z^S\)-coordinate controls inherited fixed-core motion, the
\(\Lambda^S\)-coordinate controls reset motion, and the \(\Psi^S\)-coordinate
controls the fresh affine potential average.

This is the real unification:

```text
fixed stopped-score return/BV
+ fresh potential-average transfer
+ strict reset/overrun Carleson
<= one original-history selected potential/amplification record.
```

## 5. Consequence for the current Gold chain

Combining the projection implications gives

```text
OriginalHistorySelectedPotentialAmplificationBV.A
  -> FreshPotentialAverageKillAndPositiveTransfer.A
     + CriticalWeightedResetBVFromOriginalHistory.A / LogScaleResetDerivativeCarrierBound.A
  -> PersistentRootAffineQuotientReturnPayment.A
  -> RootDefectHighFrequencyTailCharge.A
  -> RootDefectCarrierStableCompactness.A
  -> StoppedPredictableRootGeometryCompensator.A.
```

So the current two-branch frontier is one unpaid subproducer inside the live
root-geometry compensator:

```text
StoppedPredictableRootGeometryCompensator.A
  requires OriginalHistorySelectedPotentialAmplificationBV.A
```

or, in testing language,

```text
OriginalHistoryHilbertBMOProducer.A / StoppedSelectorTestingCarleson.A
```

provided the testing theorem constructs the record \(\mathfrak Z^S\) from the
original routed source and proves `(2)`.

## 6. Why this is noncircular

The record must be built before descendant selected readout.  Its allowed
payments are:

```text
original scale derivative,
viscous/tower loss,
turnstile/exchange/covector/frame motion,
dynamic silent commutator motion,
selector/reselection paid loss,
legal loss,
stop loss.
```

The record is not allowed to be defined as "whatever the future selected tail
does."  That would reproduce the selected-critical norm being proved.

The noncircular construction burden is therefore exact:

```text
build the stopped signed record and prove its testing/BV norm from original
same-material history.
```

That is smaller than the whole Gold theorem because the downstream implications
above are now explicit.  It is still the real hard producer because it must
turn local source-origin payment into a global stopped BMO/BV record.

## 7. Result

This note closes no final Gold gate.  It identifies the common object behind the
two current open payments and places it under the live root-geometry producer.

The live Gold producer remains:

```text
StoppedPredictableRootGeometryCompensator.A
```

with `OriginalHistorySelectedPotentialAmplificationBV.A` and
`OriginalHistoryHilbertBMOProducer.A / StoppedSelectorTestingCarleson.A` as the
unpaid constructive/testing subproducer.
