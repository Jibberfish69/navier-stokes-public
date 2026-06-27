---
theorem_id: forward-gold-stopped-selector-finite-score-or-paid-drift-proof-20260627
status: finite-score-or-paid-drift-installed-for-order-locked-gold-selectors
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / affine quotient transition payment
proves:
  - StoppedSelectorFiniteScoreOrPaidDrift.A
  - FiniteStoppedScoreSelectorRealization.A
  - StoppedSelectorTransitionAbsoluteContinuity.A
  - AnnounceableResetStoppingTime.A
feeds:
  - AnnounceableResetDerivativeRepresentation.A
  - LogScaleResetDerivativeCarrierBound.A
  - CriticalWeightedParentChildResetCarleson.A
  - PredictableRootWeightMartingaleRealization.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-stopped-score-selector-realization-pivot-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-selector-kinematic-realization-direct-test-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-order-locked-selector-variation-bridge-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-transition-continuity-announceable-reset-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-reset-witness-interval-bounded-overlap-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-announceable-active-weight-reset-carleson-cauchy-reduction-20260627.md
effect: >-
  Installs the selector-realization step for Gold retained selectors: at fixed
  continuation depth, the selector is represented by a finite parent-known
  order-locked score family on a compact material/cotangent chart. A strict
  reset is therefore a parent-announced first exit of finite inequalities.
  Selector changes outside this representation are not hidden Gold branches;
  they are paid selector drift, collar/geometric defect, order-lock partner
  deficit, heat-scale return failure, legal loss, donor loss, or reselection
  loss.
---

# Stopped selector finite-score or paid-drift proof

This note proves the selector part of the fresh-reset branch.  It does not use a
finite-frequency assumption.  The full smooth field remains the object.  The
finite object is only the selector chart at fixed continuation depth \(N\) and
fixed packet type \(Q\).

## 1. Fixed-depth selector chart

At fixed \(N,Q\), the retained Gold selector reads a finite list of same-packet
objects:

```text
transported material frame,
pressure-Hodge/routed current component,
aperture/order-lock data,
collar geometry,
sign/orientation channel,
legal stop state.
```

Modulo the already paid gauge directions and legal collar exits, these data live
in a compact normalized selector chart \(K_{N,Q}\).  The selected score is a
continuous function of the chart and of the same-material history:

```math
s_\theta(\sigma,t,x)
=
S(\theta;\mathcal J_N^{mat}(\sigma,t,x),A,G,\phi,\mathbb P_A),
\qquad
\theta\in K_{N,Q}.
\tag{1}
```

This chart is finite-dimensional because the selector records only the finitely
many order-locked readings needed at continuation depth \(N\).  The velocity
field itself is not truncated to finitely many frequencies.

By compactness, choose a finite net

```math
\mathcal A_{N,Q,\eta}\subset K_{N,Q}
```

so that every \(\theta\in K_{N,Q}\) is represented by some \(a\in\mathcal A\)
with score error at most an \(\eta\)-fraction of the local normalized selected
scale, plus the already named legal chart error:

```math
s_\theta
\le
s_a+\eta A_{\rm sel}(Q)+Err_Q^{legal}.
\tag{2}
```

Taking \(\eta\) smaller than the fixed absorption margin gives

```math
A_{\rm sel}(Q)
\le
C\max_{a\in\mathcal A_{N,Q,\eta}} s_a
+CR_Q^{legal}.
\tag{3}
```

Thus no future supremum over a moving continuum is needed in the Gold readout.
The selected packet can be represented by finitely many parent-known scores,
up to absorbable legal/tie error.

## 2. Smooth same-material dependence

Each finite score is built from the same transported material packet, so before
the stopping time it is absolutely continuous in log scale:

```math
s_a(\sigma_1)-s_a(\sigma_0)
=
\int_{\sigma_0}^{\sigma_1}\partial_\sigma s_a(\sigma)\,d\sigma.
\tag{4}
```

The material chain rule gives the derivative decomposition already required by
the reset notes:

```math
\partial_\sigma s_a
=
L_a(\partial_\sigma Z)
+T_a(\operatorname{turnstile}_\sigma)
+E_a(\operatorname{exchange}_\sigma)
+C_a(\operatorname{covector}_\sigma)
+Err_a^{legal}.
\tag{5}
```

The terms are the same-material derivative of the lifted carrier, turnstile
motion, exchange motion, covector/frame motion, and legal residuals.  They are
parent-known on the stopped interval because the score family and chart are
chosen before the descendant selected positive readout.

## 3. Strict reset is a first exit

The stopped selector is encoded by finitely many inequalities:

```math
s_a-\theta_a>0,
\qquad
s_a-s_b-\theta_{ab}>0.
\tag{6}
```

A strict fresh reset is exactly the first time one of these stopped inequalities
fails:

```math
\tau_R
=
\inf\{\sigma>\sigma_0:
\text{one inequality in }(6)\text{ reaches }0\}.
\tag{7}
```

Since the scores are continuous, the reset is parent-announced from below by
near-exit times:

```math
\tau_{R,n}
=
\inf\{\sigma>\sigma_0:
\text{one inequality in }(6)\le n^{-1}\},
\qquad
\tau_{R,n}\uparrow\tau_R.
\tag{8}
```

For the active crossing coordinate \(q_e\),

```math
D_e
=
q_e(\tau_R)-q_e(\sigma_0)+Err_e^{legal}.
\tag{9}
```

Using `(4)`--`(5)`,

```math
D_e
=
\int_{\sigma_0}^{\tau_R}
\left(
\partial_\sigma Z
+\operatorname{turnstile}_\sigma
+\operatorname{exchange}_\sigma
+\operatorname{covector}_\sigma
\right)_e
d\sigma
+Err_e^{legal}.
\tag{10}
```

This is `AnnounceableResetDerivativeRepresentation.A` for the finite-score
Gold selector.

## 4. No third selector branch

Suppose a selected child changes while no finite stopped score exits.  Then one
of the following has happened.

1. The selected label moved inside an \(\eta\)-tie region.  This is selector
   tie-gap/drift charge.
2. The collar or material chart left the compact normalized chart.  This is
   collar/geometric or heat-scale return loss.
3. The channel-first positive part lost its full-packet partner.  This is
   order-lock partner deficit.
4. The child was selected by reading a future descendant supremum rather than a
   parent-known stopped score.  This is reselection loss and is not a retained
   Gold selector transaction.
5. The carrier left the legal retained packet.  This is legal/donor loss.

Therefore every retained Gold stopped selector transaction satisfies exactly
one of the two alternatives:

```text
finite parent-known stopped-score first-exit,
```

or

```text
paid selector/collar/geometric/order-lock/legal/donor/reselection defect.
```

No uncharged future-selected moving supremum remains.

## 5. Consequence for reset Carleson

The first-exit reset witness intervals are maximal stopped slabs.  The already
installed reset-witness note gives bounded overlap for those slabs in the
laminar material tree.  Combining that with `(10)` and the active-weight Cauchy
reduction yields

```math
\sum_{e\subset P}\int H_{I_e}(t)\|D_e(t)\|^2\,dt
\le
C_N\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
+|\operatorname{covector}_\sigma|^2
\right)
+CR_{legal}(P).
\tag{11}
```

Thus the fresh-reset active-weight branch closes for order-locked Gold
selectors.

## 6. Remaining Gold work

This note discharges the selector-realization and fresh-reset predictability
piece of `PredictableRootWeightMartingaleRealization.A`.  It does not discharge
the repeated-core record/negative-return branch.  It also does not replace the
Bessel consumer.  The live remaining affine-quotient payment is now the
repeated-core stopped potential/return estimate plus integration of this reset
payment into the common predictable root Hilbert realization.
