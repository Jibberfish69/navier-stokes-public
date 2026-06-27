---
theorem_id: forward-gold-finite-stopped-score-selector-realization-pivot-20260627
status: branch-gates-reduced-to-finite-stopped-score-selector-realization-open
route: forward-gold same-material full-clock / stopped routed-current square-packing
created: 2026-06-27
inputs:
  - StoppedRoutedCurrentSquarePacking.A
  - StoppedPrimitiveSignedScalePotentialLiftWithDerivativeControl.A
  - ActiveWeightDefectTightnessFromOriginalHistory.A
  - QuantitativeZeroCostSelectedResetRigidity.A
  - AnnounceableResetDerivativeRepresentation.A
  - ResetWitnessIntervalBoundedOverlap.A
  - MaterialSelectorKinematicRealization.A
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-active-weight-bad-profile-compactness-tightness-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-announceable-active-weight-reset-carleson-cauchy-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-announceable-reset-derivative-representation-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-reset-witness-interval-bounded-overlap-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-zero-cost-selected-reset-rigidity-after-tightness-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-transition-continuity-announceable-reset-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-signed-scale-potential-lift-derivative-control-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-selector-kinematic-realization-direct-test-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-order-locked-selector-variation-bridge-20260627.md
output:
  - FiniteStoppedScoreSelectorRealization.A
  - StoppedSelectorFiniteScoreOrPaidDrift.A
  - OrderLockedStoppedSelectorConstruction.A
result: the fastest Gold route is not to prove active-weight tightness for
  arbitrary moving selectors. The checked notes show an upstream preemption:
  finite parent-known stopped scores close both branch gates conditionally, while
  post-hoc moving selectors are exactly the remaining false case.
---

# Finite stopped-score selector realization pivot

## 1. Live reduction

The current stopped routed-current gate has two exposed branch defects:

```text
fixed stopped-core derivative BV,
strict-reset active-weight tightness / zero-cost rigidity.
```

The checked reset notes show that the reset defect is already analytically paid
once every strict reset is a parent-announced derivative average with stopped
bounded overlap:

```text
AnnounceableResetDerivativeRepresentation.A
  + ResetWitnessIntervalBoundedOverlap.A
  -> AnnounceableActiveWeightResetCarleson.A.
```

The checked fixed-core note shows the same structural condition pays the fixed
branch: on a fixed stopped channel,

```math
P_R=\Gamma_R Z^S
\tag{1}
```

has positive-increment domination and derivative BV control by
\(\partial_\sigma Z\), turnstile, exchange, and covector motion.

So the better upstream target is not active-weight tightness for arbitrary
moving descendants. It is:

```text
FiniteStoppedScoreSelectorRealization.A.
```

## 2. Conditional closure from finite stopped scores

Assume a stopped root \(P\) carries a finite parent-known score family

```math
s_a(\sigma,t,x),\qquad a\in\mathcal A_R,\qquad |\mathcal A_R|<\infty,
\tag{2}
```

where each \(s_a\) is built from the transported same-material frame, routed
current, aperture/order-lock data, covector/collar geometry, and legal stop
state. Assume also that each score is absolutely continuous in log scale:

```math
s_a(\sigma_1)-s_a(\sigma_0)
=
\int_{\sigma_0}^{\sigma_1}\partial_\sigma s_a(\sigma)\,d\sigma,
\tag{3}
```

with

```math
\partial_\sigma s_a
=
L_a(\partial_\sigma Z)
+T_a(\operatorname{turnstile}_\sigma)
+E_a(\operatorname{exchange}_\sigma)
+C_a(\operatorname{covector}_\sigma)
+Err_a^{legal}.
\tag{4}
```

Then a strict reset is the first exit of one of the finite stopped inequalities.
Its endpoint difference is therefore an announced derivative integral. The
previous Cauchy reduction turns the harmonic active weight into the exact dual
weight and pays the reset square:

```math
H_{I_e}\|D_e^{fresh}\|^2
\le
C\int_{I_e}
w\left(
|\partial_\sigma Z|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
+|\operatorname{covector}_\sigma|^2
\right)
+CR_{legal}.
\tag{5}
```

Because the reset witnesses are maximal first-exit slabs for a finite score
family in a laminar tree, the witness intervals have stopped bounded overlap.
Summing `(5)` gives the reset Carleson estimate.

On a non-reset stopped-core edge, the same finite stopped score fixes the signed
channel \(\Gamma_R\). Then \(P_R=\Gamma_R Z^S\) gives positive-increment
domination and derivative BV. Thus the fixed-core branch is also paid by the
same original-history derivative/turnstile/exchange/covector ledger.

Therefore:

```text
FiniteStoppedScoreSelectorRealization.A
  -> StoppedRoutedCurrentSquarePacking.A branch gates,
```

with the usual legal, donor, and already-paid selector defects removed first.

## 3. Why this preempts the tightness fallback

`ActiveWeightDefectTightnessFromOriginalHistory.A` is still a lawful fallback:
it handles a normalized active-weight failure by extracting a same-carrier
zero-cost limit, then applying zero-cost rigidity.

But finite stopped scores make that fallback unnecessary. A high-weight reset
cannot hide inside a shrinking tube if it is the first crossing of a finite
parent-known absolutely continuous score. The crossing interval is the witness
interval, its derivative is charged by `(4)`, and the finite first-exit family
packs.

So the real fork is:

```text
finite parent-known stopped-score selector
  -> direct derivative/BV payment of both branches;

post-hoc moving supremal selector
  -> active-weight tightness is false without extra paid selector drift.
```

## 4. Installed support and remaining gap

The material-selector direct test proves the pass case under an order-locked
finite-dimensional selector chart:

```math
\mathfrak s
=
(\chi,\Phi,\Gamma)
=
\mathcal S(\mathcal J_K^{loc},\Theta),
\tag{6}
```

with the selector motion controlled by the local finite jet and material/cotangent
transport. It also identifies the false cases:

```text
arbitrary post-hoc extremizing selectors,
scalar heat-scale selectors through anisotropic strain,
selector ties or drift without charge.
```

The order-lock variation bridge says the only noncircular choices are:

```text
finite/compact selector stabilization with visible variation;
material/order-locked selector generation plus heat-scale return;
order-lock gap / partner deficit paid inside the retained full packet.
```

Thus the remaining theorem is exactly:

```text
StoppedSelectorFiniteScoreOrPaidDrift.A
```

Statement:

For every retained Gold stopped selector transaction, either the selector is
generated by a finite parent-known order-locked score family satisfying `(2)`--`(4)`,
or the attempted selector change pays one of:

```text
selector/collar visible variation,
heat-scale return failure,
tie-gap or drift charge,
order-lock partner deficit,
legal/donor/reselection loss.
```

No third branch may remain as a future-selected moving supremum.

## 5. Direct obstruction

The theorem is false without the finite-score-or-paid-drift clause. The moving
supremal selector can keep finding new spikes:

```math
s(a,t)=\sum_n A_n\phi_n(a)\psi_n(t),
\tag{7}
```

with disjoint label/time supports. Every fixed finite selector sees only finitely
many spikes, while the moving selector retains the active tail. In the reset
language this is exactly the critical half-tail: raw derivative mass may be
finite while active selected mass persists.

Therefore the proof cannot allow the selected child to be chosen by future
descendant action. The selected score must be stopped and parent-known before the
positive readout.

## 6. Result

The new nonduplicate hinge is:

```text
FiniteStoppedScoreSelectorRealization.A
  =
OrderLockedStoppedSelectorConstruction.A
  + TransportedSelectorHeatScaleReturn.A
  + SelectorTieGapOrDriftCharge.A
  + OrderLockPartnerDeficitPayment.A.
```

This is smaller than the whole Gold route and stronger than the active-weight
tightness fallback. It says the branch gates close once the retained selector is
not allowed to be a future-selected moving supremum. The next proof unit should
attack this finite-score-or-paid-drift theorem directly.
