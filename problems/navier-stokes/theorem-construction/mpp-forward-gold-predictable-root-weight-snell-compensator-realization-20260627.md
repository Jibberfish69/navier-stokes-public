---
theorem_id: forward-gold-predictable-root-weight-snell-compensator-realization-20260627
status: predictable-root-realization-reduced-to-paid-stopped-weight-compensator-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / affine quotient transition payment
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - PredictableRootWeightMartingaleRealization.A
  - PredictableActiveWeightTransitionCarleson.A
  - StoppedAffineTransitionLiftedMartingaleDifference.A
  - AffineQuotientTransitionPayment.A
refines_to:
  - StoppedPredictableActiveWeightCompensator.A
  - RootSnellActiveWeightMajorant.A
  - OriginalHistoryWeightCompensatorPayment.A
  - PredictableProjectionTransitionInnovation.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-lifted-transition-bessel-consumer-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-transition-predictable-weight-martingale-lock-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-predictable-active-weight-transition-producer-direct-attack-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-announceable-active-weight-reset-carleson-cauchy-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-announceable-reset-derivative-representation-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-announceable-active-weight-reset-bad-profile-rigidity-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-multicurrency-invisible-child-to-stopped-compensator-synthesis-20260627.md
effect: >-
  Installs the next nonduplicate proof shape below PredictableRootWeightMartingaleRealization.A:
  do not choose a static parent envelope for the harmonic active weights. Build the
  common root Hilbert weight as the stopped predictable majorant of admissible child
  active weights, and prove that its Doob-Meyer/Bellman compensator is paid by
  original-history log-scale derivative, turnstile, exchange, covector, and
  record/return charges. This unifies the active-weight and martingale-split burdens.
---

# Predictable root weight via stopped active-weight compensator

## 1. Current live gap

The Bessel consumer is already isolated.  It proves square-packing once there is
a common parent-predictable root Hilbert geometry and a legal lifted
martingale-difference split.  The remaining theorem is the realization of that
geometry from original same-material history:

```text
PredictableRootWeightMartingaleRealization.A.
```

The current statement asks for:

```text
1. a common parent-predictable root Hilbert measure;
2. parent affine spans;
3. C_theta[Z_e]=B_e+D_e+R_e before positive selected readout;
4. D_e orthogonal to the parent affine span;
5. a bounded transition transform into the affine quotient readout;
6. branch routing of B_e to record/return and D_e to critical reset.
```

The previous active-weight direct attack showed that a parent-known supremal
envelope is not enough.  It repairs measurability but it does not pack the
critical half-tail.

## 2. The better object

The root weight should be built as a stopped predictable majorant, not as a
static envelope.

For a retained root \(P\), let \(\mathcal T(P)\) be the stopped transition tree.
For each possible child interval \(I\), write the harmonic active weight as

```math
H_I(t,x)
=
{|I|^2\over\int_I w(\sigma,t,x)^{-1}\,d\sigma}.
\tag{1}
```

Define \(H_P^\ast\) to be the least stopped parent-predictable majorant of all
admissible child weights generated below \(P\):

```math
H_I\le H_P^\ast
\qquad\text{on every retained announced edge }e\subset P.
\tag{2}
```

Equivalently, \(H_P^\ast\) is the tree Snell/Bellman envelope of the child active
weights along the stopped transition filtration.  This is still only a
definition until its compensator is controlled.

## 3. The compensator clause

The majorant must have a finite original-history compensator.  Write its stopped
Doob-Meyer/Bellman decomposition schematically as

```math
H_P^\ast
=
H_{P,0}
 + M_P^{wt}
 + A_P^{wt},
\tag{3}
```

where \(M_P^{wt}\) is the martingale fluctuation in the stopped transition
filtration and \(A_P^{wt}\) is the increasing predictable compensator recording
new active-weight upcrossings.

The proof-bearing theorem is:

```text
StoppedPredictableActiveWeightCompensator.A.
```

Statement:

```math
\int dA_P^{wt}
\le
C_N\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
+|\operatorname{covector}_\sigma|^2
\right)
+C_N\,\operatorname{Rec/Return}(P)
+R_{\rm legal}(P).
\tag{4}
```

Here the right side is original-history data.  It is not allowed to be defined
from the future selected descendant tail.

## 4. Why this avoids the failed parent envelope

The parent envelope from the direct attack proves only

```math
H_I\le H_Q^{env}
\tag{5}
```

for each admissible child of \(Q\).  The critical half-tail survives because the
same parent can keep admitting high active weights without any counted
upcrossing:

```math
\sum_\ell\|D_\ell\|^2<\infty,
\qquad
\sum_\ell H_{I_\ell}\|D_\ell\|^2=\infty.
\tag{6}
```

The compensator version asks for the missing count.  A new high active weight is
legal only when it enters through \(dA_P^{wt}\), and `(4)` forces that entry to
spend original log-scale derivative, turnstile, exchange, covector motion, or
record/return.

Thus the half-tail is not defeated by making the weight predictable.  It is
defeated only by proving that the predictable weight has finite paid variation.

## 5. How the martingale split is realized

Once \(H_P^\ast\) is paid, the root Hilbert space is

```math
\mathfrak H_P
=
L^2(H_P^\ast\,dt\,dx;\mathcal H_{\rm lift}),
\qquad
\mathcal H_{\rm lift}
=
\mathcal H_{\rm vis}\oplus\mathcal H_{\rm sil}\oplus\mathcal H_{\rm ex}.
\tag{7}
```

For every stopped affine transition edge \(e\), define the parent affine span
\(\mathcal P_{e^-}\subset\mathfrak H_P\) from the closed span of inherited
parent transport, frozen silent modes, old exchange/covector motion, and already
announced earlier transition pieces.

Then set

```math
B_e=\Pi_{\mathcal P_{e^-}}\mathcal C_\theta[Z_e],
\qquad
D_e=(I-\Pi_{\mathcal P_{e^-}})\mathcal C_\theta[Z_e],
\tag{8}
```

and keep selector/collar/reselection errors in \(R_e\).  This gives the formal
split

```math
\mathcal C_\theta[Z_e]=B_e+D_e+R_e.
\tag{9}
```

The Bessel theorem then applies to the \(D_e\) family, because the projection and
orthogonality are now taken in a common root space fixed before selected positive
readout.

## 6. Branch routing after the compensator

The predictable projection part is not a Bessel innovation.  It must route to
the repeated-core branch:

```math
\sum_eB_e
\leadsto
\operatorname{Rec}_\infty(\Psi)
+V_-^{return}(\Psi)
+R_{\rm legal}.
\tag{10}
```

The orthogonal innovation part routes to the reset branch:

```math
\sum_e\int H_P^\ast\|D_e\|_{\mathcal H_{\rm lift}}^2
\leadsto
\sum_{Q\to Q'}J_{\rm crit}(Q,Q')
+R_{\rm legal}.
\tag{11}
```

The active-weight compensator is the missing bridge between these two routes.
It records when a would-be predictable inherited weight becomes a genuine reset
upcrossing.

## 7. Relation to announced reset derivative representation

The Cauchy reduction already proved the analytic step for derivative-exact reset
pieces:

```math
H_I\|D_e\|^2
\le
\int_Iw\|\mathcal G_e\|^2
+R_e^{legal}.
\tag{12}
```

That is the local continuous part of `(4)`.  The remaining realization burden is
global and stopped:

```text
each increase of H_P^\ast must be an announced first-crossing event
whose witness interval/tube is packed by original-history motion.
```

So the two older open clauses become components of the compensator theorem:

```text
StoppedSelectorTransitionAbsoluteContinuity.A / AnnounceableResetStoppingTime.A
ResetWitnessIntervalBoundedOverlap.A / ResetSparsePackingFromOriginalHistory.A.
```

## 8. Bad-profile form

If `(4)` fails, normalize a bad sequence by

```math
\sum_e\int H_P^\ast\|D_e\|^2=1,
\qquad
\int dA_P^{wt}
+\int_{\operatorname{Hist}(P)}d\Lambda
+R_{\rm legal}(P)\to0.
\tag{13}
```

Then all announced derivative, turnstile, exchange, covector, and weight-upcrossing
charges vanish.  The zero-cost limit has:

```math
\partial_\sigma Z=0,\qquad
\operatorname{turnstile}_\sigma=0,\qquad
\operatorname{exchange}_\sigma=0,\qquad
\operatorname{covector}_\sigma=0,\qquad
dA_P^{wt}=0.
\tag{14}
```

Under the parent affine projection `(8)`, a nonzero \(D_e\) in that limit would
be a fresh selected reset with no scale motion, no exchange, no covector motion,
and no active-weight upcrossing.  That is exactly the zero-cost selected-reset
rigidity obstruction isolated in the bad-profile note.

Thus the compensator theorem can be attacked by compactness:

```text
bad normalized active-weight half-tail
  -> zero-cost selected-reset limit
  -> inherited parent affine transport after projection
  -> D_e=0
  -> contradiction.
```

## 9. Result

The current Gold hinge should be sharpened to:

```text
StoppedPredictableActiveWeightCompensator.A
  + PredictableProjectionTransitionInnovation.A
    -> PredictableRootWeightMartingaleRealization.A.
```

This is not Gold closure.  It is a smaller, proof-bearing realization target.
The static parent envelope is too coarse, and the pure Bessel theorem is already
a consumer.  The remaining object is the paid stopped compensator for the root
active weight, together with the parent-affine projection split in the
compensator-generated Hilbert space.
