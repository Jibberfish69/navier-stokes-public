---
theorem_id: forward-gold-affine-quotient-transition-localization-direct-test-20260627
status: affine-quotient-payment-reduced-to-transition-localization-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / critical fresh source tent Carleson
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - AffineQuotientTransitionPayment.A
  - CriticalFreshSourceTentCarleson.A
  - FreshSourceCriticalScaleMemoryBound.A
refined_hinge:
  - AffineQuotientTransitionLocalization.A
  - PrimitivePLSDriverToSignedCommutatorIdentity.A
  - StoppedNegativeReturnOrientedPayment.A
  - CriticalWeightedParentChildResetCarleson.A
  - LogScaleResetDerivativeCarrierBound.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-source-affine-quotient-transition-payment-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-child-transition-payment-method-synthesis-20260627.md
  - problems/navier-stokes/theorem-construction/persistent-weighted-quotient-kill-routes-audit.md
  - problems/navier-stokes/theorem-construction/affine-quotient-kill-from-signed-scale-descent-audit.md
  - problems/navier-stokes/theorem-construction/affine-survivor-stripped-down-note.md
  - problems/navier-stokes/theorem-construction/volterra-scale-memory-formalization-note.md
  - problems/navier-stokes/theorem-construction/lower-triangular-scale-memory-formalization-note.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-affine-bv-return-to-stopped-strict-half-barrier-live-edge-20260627.md
effect: >-
  Pressure-tests AffineQuotientTransitionPayment.A and finds a missing prior
  theorem. The affine quotient is a scale-band readout, while the proposed
  payments are parent-child transition charges. Before record/return and reset
  charges can pay it, the quotient must be localized into inherited chambers
  and genuine reset jumps. This note reduces the payment theorem to
  AffineQuotientTransitionLocalization.A; it does not close the Gold route.
---

# Affine quotient transition localization direct test

The current live parent theorem is still

```text
CriticalFreshSourceTentCarleson.A / FreshSourceCriticalScaleMemoryBound.A.
```

The latest installed reduction names

```text
AffineQuotientTransitionPayment.A
```

as the next hinge. Its payment inequality says that the affine quotient left by
the DER/AQK split should be bounded by repeated-core record/negative-return
storage plus critical weighted parent-child reset charge.

This note tests that transition-payment statement directly.

## 1. The type mismatch

The affine quotient is a scale-band readout. In the notation of the current
affine-quotient payment note,

```math
AQ(P)
:=
\int_0^{T^*}H_w(t)\|c_F^{fresh}(t)\|_{L_x^2}^2dt,
\tag{1}
```

where

```math
c_F^{fresh}(t)
=
\mathcal C_\theta[\widetilde Z_P^{fresh}](t)
=
\int_J\theta_\kappa(\sigma)\widetilde Z_P^{fresh}(\sigma,t)d\sigma .
\tag{2}
```

The proposed right side of `AffineQuotientTransitionPayment.A` is different in
type. It lives on stopped parent-child transitions:

```math
\int_{\mathcal F_{rep}(P)}
\left(
\operatorname{Rec}_\infty(\Psi_\mathcal A)
+V_-^{return}(\Psi_\mathcal A)
\right)d\mathcal R_{ancestry}(\mathcal A)
+
\sum_{Q\subset P}\sum_{Q'\in ch_{stop}(Q)}J_{crit}(Q\to Q')
+
R_{legal}(P).
\tag{3}
```

So the first missing statement is not a new payment currency. It is the map
from the scale-band quotient `(2)` to the transition charges `(3)`.

## 2. The missing theorem

The required bridge is:

```text
AffineQuotientTransitionLocalization.A.
```

One usable form would be a stopped localization identity

```math
\mathcal C_\theta[\widetilde Z_P^{fresh}]
=
\sum_{\mathcal A\in Rep(P)}
\mathcal C_\theta[Y_{\mathcal A}^{rep}]
+
\sum_{Q\to Q'\in Reset(P)}
\mathcal C_\theta[\Delta Z_{Q\to Q'}]
+
R_{legal}(P),
\tag{4}
```

with bounded overlap or orthogonality strong enough to square `(4)` against the
active weight:

```math
AQ(P)
\le
C\,AQ_{rep}(P)
+
C\,AQ_{reset}(P)
+
R_{legal}(P).
\tag{5}
```

The two localized pieces would then have to obey

```math
AQ_{rep}(P)
\le
C\int_{\mathcal F_{rep}(P)}
\left(
\operatorname{Rec}_\infty(\Psi_\mathcal A)
+V_-^{return}(\Psi_\mathcal A)
\right)d\mathcal R_{ancestry}(\mathcal A)
+R_{legal}(P),
\tag{6}
```

and

```math
AQ_{reset}(P)
\le
C\sum_{Q\subset P}\sum_{Q'\in ch_{stop}(Q)}
J_{crit}(Q\to Q')
+R_{legal}(P).
\tag{7}
```

Only after `(4)`-`(7)` are proved do the repeated-core and fresh-reset branch
payments actually touch the affine quotient.

## 3. Why the installed notes do not yet prove this

The Volterra and lower-triangular notes identify the right readout object: the
crude Hardy collapse should be replaced by a quotient/readout theorem. They do
not localize that readout onto stopped parent-child transitions.

The persistent quotient audit proves that the affine moment route is the only
genuine shrinkage among the tested quotient-kill routes. It does not assign the
affine moment to inherited chambers or reset jumps.

The signed scale-descent audit and the stripped-down affine survivor note show
that the current signed mechanism is one scale derivative short, or else needs
a potential-average kill or moment-closed theorem. They do not provide the
transition partition `(4)`.

The fresh affine BV-return note decomposes the positive affine quotient into
potential-average growth and negative scale return after
`Y_+=Y+Y_-`. That is a signed/positive channel decomposition. It is still not
the stopped transition localization needed to charge `AQ(P)` to record/return
and `J_crit`.

The parent-child transition synthesis supplies the two payment currencies:
inherited parent state pays by record/negative return; genuine fresh reset pays
by critical weighted reset. It assumes the object to be paid has already been
routed into those two transition classes.

## 4. Direct attempt and failure point

Try to split the selected stopped tree under `P` into inherited chambers and
reset jumps. Formally this suggests

```math
\widetilde Z_P^{fresh}
\stackrel{?}{=}
\sum_{\mathcal A\in Rep(P)}Y_{\mathcal A}^{rep}
+
\sum_{Q\to Q'\in Reset(P)}\Delta Z_{Q\to Q'}
+
R_{legal}.
\tag{8}
```

Applying `\mathcal C_\theta` gives the desired linear form `(4)`.

The problem appears when `(8)` is squared in `(1)`. The cross terms are not
automatically legal:

```math
\left\|
\sum_{\mathcal A} \mathcal C_\theta[Y_\mathcal A^{rep}]
+
\sum_{Q\to Q'}\mathcal C_\theta[\Delta Z_{Q\to Q'}]
\right\|_{L_x^2}^2
\tag{9}
```

requires a real laminar-overlap, orthogonality, or Carleson packing theorem.
The existing records and reset charges are event quantities; they do not by
themselves prove that the scale-band readout has been disjointly or almost
orthogonally assigned to those events.

The inherited branch also has a second condition. Record/negative-return pays
only after the positive selected channel has been lifted to the signed primitive
driver and oriented correctly:

```text
PrimitivePLSDriverToSignedCommutatorIdentity.A
+
StoppedNegativeReturnOrientedPayment.A.
```

The reset branch has the parallel condition that the band readout of a genuine
reset is controlled by the selected critical jump:

```text
CriticalWeightedParentChildResetCarleson.A
via LogScaleResetDerivativeCarrierBound.A.
```

Those are branch payments. They are not substitutes for the localization of
`AQ(P)` into the branches.

## 5. Smaller hinge below the payment theorem

This makes `AffineQuotientTransitionLocalization.A` the smaller hinge below
`AffineQuotientTransitionPayment.A`.

The payment theorem can now be read as a three-stage statement:

```text
1. localize AQ(P) into inherited chambers plus genuine reset jumps;
2. pay inherited chambers by signed primitive record/negative return;
3. pay reset jumps by selected-critical parent-child reset charge.
```

The current installed branch notes address stages 2 and 3 conditionally.
Stage 1 is not installed.

## 6. Method fit

The right method is not another direct positive estimate on the full fresh
source. The source has already been shrunk to a quotient readout.

The new proof method should be a stopped-tree localization argument:

```text
proof-theoretic decomposition of the stopped tree
+ laminar/Carleson packing or orthogonality
+ channel identity for inherited pieces
+ reset jump accounting for escaping pieces.
```

This is a proof-state and stopping-time theorem before it is an analytic norm
estimate.

## Result

`AffineQuotientTransitionPayment.A` is still open, but its first nonduplicate
sub-hinge is now sharper:

```text
AffineQuotientTransitionLocalization.A.
```

The Gold route should attack this localization before invoking record/return or
critical reset as payments for the affine quotient. Otherwise the branch
currencies are being applied to a scale-band readout that has not yet been
turned into transition material.
