---
theorem_id: forward-gold-affine-transition-predictable-weight-martingale-lock-20260627
status: stopped-affine-transition-square-packing-sharpened-to-predictable-weighted-martingale-split-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped routed current square-packing
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - StoppedRoutedCurrentSquarePacking.A
  - CriticalFreshSourceTentCarleson.A
  - AffineQuotientTransitionPayment.A
  - StoppedAffineQuotientTransitionSquarePacking.A
refines_to:
  - StoppedAffineTransitionLiftedMartingaleDifference.A
  - PredictableActiveWeightTransitionCarleson.A
  - AffineTransitionPredictableOrthogonalSplit.A
  - StoppedLiftedTransitionBesselCarleson.A
routes_predictable_to:
  - FreshSelectedPrimitiveAlignment.A
  - PrimitivePLSSignedChannelRealization.A
  - StoppedPotentialRecordAverageBound.A
  - StoppedNegativeReturnOrientedPayment.A
routes_innovation_to:
  - ResetLocalAffineBandToCriticalJumpCarrier.A
  - CriticalWeightedParentChildResetCarleson.A
  - LogScaleResetDerivativeCarrierBound.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-routed-current-square-packing-branch-gates-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-current-square-packing-root-reserve-branch-lock-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-source-tent-carleson-governing-hinge-realignment-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-source-affine-quotient-transition-payment-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-quotient-transition-localization-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-quotient-transition-square-packing-branch-synthesis-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-affine-quotient-transition-square-packing-direct-attack-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-child-transition-payment-method-synthesis-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-child-reset-critical-weight-countertest-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-pls-signed-channel-realization-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-negative-scale-return-bv-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-paired-carrier-proof-mechanism-audit-20260627.md
---

# Affine transition predictable-weight martingale lock

The current branch gates are correct, but they are not yet the first theorem to
prove.  Return and reset are payment ledgers.  Before those ledgers can pay the
fresh affine quotient, the quotient pile must be converted into a legitimate
stopped square function.

The next nonduplicate theorem is the lifted martingale split with a predictable
active weight.  Without that split, the branch payments have no square-packed
object to attach to.

## 1. Current relay object

After the silent-source normal form, the stopped routed-current target is

```math
\sum_{Q\subset P}
\left[
\int_{\widehat Q}|J^S|^2\,d\mathcal R
+Stop(Q)
\right]
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{1}
```

The exposed non-legal branch defects are fixed-core record/return and strict
reset BV:

```math
Def_{\rm test}(P)
\le
C\,RetBV(P)+C\,ResetBV(P)+C\,R_{\rm legal}(P).
\tag{2}
```

The fixed-core branch needs the signed stopped primitive record package:

```text
StoppedPrimitivePLSSignedScalePotentialLift.A
+ StoppedPotentialRecordAverageBound.A
+ SignedStoppedPLSEvolutionIdentity.A / StoppedReturnBVFiniteFromOriginalData.A.
```

The strict reset branch needs the critical weighted reset package:

```text
CriticalWeightedResetBVFromOriginalHistory.A
/ LogScaleResetDerivativeCarrierBound.A.
```

Those remain real gates.  The additional point is order: branch payments apply
after the affine quotient has been localized and squared.

## 2. The affine quotient survivor

The direct fresh-source route has already reduced the selected-critical tent
estimate to a derivative-exact part plus an affine quotient.  The quotient is

```math
AQ(P)
:=
\int_0^{T^*}
H_w(t)\|c_F^{fresh}(t)\|_{L_x^2}^2\,dt,
\tag{3}
```

where

```math
c_F^{fresh}(t)
=
\mathcal C_\theta[\widetilde Z_P^{fresh}](t)
=
\int_J\theta_\kappa(\sigma)\widetilde Z_P^{fresh}(\sigma,t)\,d\sigma .
\tag{4}
```

The transition-payment theorem wants to control `(3)` by repeated-core
record/return plus critical reset charges:

```math
AQ(P)
\le
C\,AQ_{\rm rep}(P)
+C\,AQ_{\rm reset}(P)
+R_{\rm legal}(P).
\tag{5}
```

The source checks show `(5)` is not installed.  The first missing theorem is
not a new payment currency.  It is the stopped localization and square-packing
of the affine transition expansion.

## 3. Why linear localization is not enough

The tempting linear identity is

```math
\mathcal C_\theta[\widetilde Z_P^{fresh}]
=
\sum_{e\in\mathscr E(P)}
\mathcal C_\theta[Z_e]
+R_{\rm legal}(P),
\tag{6}
```

where transition edges split into inherited repeated-core edges and genuine
reset edges:

```math
\mathscr E(P)=\mathscr E_{\rm rep}(P)\cup\mathscr E_{\rm reset}(P).
\tag{7}
```

But `(6)` is not enough.  The quotient norm squares the sum:

```math
\int H_w(t)
\left\|
\sum_{e\in\mathscr E(P)}
\mathcal C_\theta[Z_e](t)
\right\|_{L_x^2}^2dt .
\tag{8}
```

Laminar nesting or bounded overlap does not control `(8)`.  On a single chain,
collinear pieces

```math
f_k=M^{-1/2}g,\qquad 1\le k\le M
\tag{9}
```

have

```math
\sum_{k=1}^M\|f_k\|_2^2=\|g\|_2^2,
\qquad
\left\|\sum_{k=1}^Mf_k\right\|_2^2=M\|g\|_2^2.
\tag{10}
```

So the transition expansion needs martingale/Bessel structure, not only a
tree partition.

## 4. The missing proof order

The square-packing must be built before scalar positive selected readout.  The
working Hilbert space is the lifted visible/silent/exchange packet:

```math
\mathcal H_{\rm lift}
=
\mathcal H_{\rm vis}
\oplus
\mathcal H_{\rm sil}
\oplus
\mathcal H_{\rm ex}.
\tag{11}
```

For each stopped transition edge \(e=Q\to Q'\), the needed split is

```math
\mathcal C_\theta[Z_e]
=
B_e+D_e+R_e.
\tag{12}
```

Here:

```text
B_e = parent-predictable inherited affine component,
D_e = lifted innovation orthogonal to the parent affine span,
R_e = legal/collar/selector soft residual.
```

The predictable inherited part is the record/return branch.  The innovation is
the reset branch.  The theorem must not take the positive scalar selected tail
first and then try to recover signed orthogonality afterward.

## 5. Predictable active weight clause

The current square-packing statements use the harmonic active weight \(H_w(t)\).
For a martingale/Bessel proof, that weight has to be fixed from the stopped
parent/root history before the transition innovation is tested.

The missing clause is:

```text
PredictableActiveWeightTransitionCarleson.A
```

For each retained root \(P\), construct a predictable weight \(H_P(t)\), or a
bounded family \(H_{e^-}(t)\), from the original stopped parent history such
that

```math
H_w(t)\|c_F^{fresh}(t)\|_{L_x^2}^2
\le
C\sum_{e\in\mathscr E(P)}
H_{e^-}(t)\|\mathcal C_\theta[Z_e](t)\|_{L_x^2}^2
+R_{\rm legal}(P),
\tag{13}
```

and each \(H_{e^-}\) is measurable with respect to the parent transition
filtration.  In particular, \(H_{e^-}\) cannot be defined from the future
selected descendant tail that `(1)` is trying to prove finite.

This clause is what makes the Bessel projection noncircular.  Orthogonality in
a weight chosen after the descendants have been selected would only rename the
future tail.

## 6. Lifted martingale difference theorem

With the predictable weight fixed, the exact theorem is:

```text
StoppedAffineTransitionLiftedMartingaleDifference.A
```

Statement:

For every retained stopped root \(P\), there is a stopped transition filtration
\(\mathcal F_e\), parent affine spans \(\mathcal P_{e^-}\subset
L^2(H_{e^-}dt\,dx;\mathcal H_{\rm lift})\), and a decomposition `(12)` such
that

```math
B_e=\Pi_{\mathcal P_{e^-}}\mathcal C_\theta[Z_e],
\qquad
D_e=(I-\Pi_{\mathcal P_{e^-}})\mathcal C_\theta[Z_e],
\tag{14}
```

with

```math
D_e\perp\mathcal P_{e^-}
\quad\text{in}\quad
L^2(H_{e^-}dt\,dx;\mathcal H_{\rm lift}),
\tag{15}
```

before positive selected readout, and

```math
\sum_e\int H_{e^-}(t)\|R_e(t)\|_{L_x^2}^2dt
\le
R_{\rm legal}(P).
\tag{16}
```

Then the immediate consumer is the Bessel/Carleson embedding:

```text
StoppedLiftedTransitionBesselCarleson.A
```

```math
\int
\left\|
\sum_e D_e
\right\|_{H_{e^-}}^2
\lesssim
\sum_e\int H_{e^-}(t)\|D_e(t)\|_{L_x^2}^2dt
+R_{\rm legal}(P).
\tag{17}
```

The exact notation of `(17)` may require a root-level common measure rather
than edge-varying weights, but the proof obligation is the same: the innovations
must be orthogonal in a predictable lifted Hilbert geometry.

## 7. Branch routing after the split

Once `(12)`--`(17)` are in place, the branch gates regain their correct role.

The predictable inherited part routes to the fixed-core branch:

```math
\sum_{e\in\mathscr E_{\rm rep}(P)}B_e
\leadsto
\sum_{\mathcal A}
\left(
\operatorname{Rec}_\infty(\Psi_\mathcal A)
+V_-^{return}(\Psi_\mathcal A)
\right).
\tag{18}
```

This requires the selected transaction to be positively visible to a
pre-existing stopped primitive channel:

```text
FreshSelectedPrimitiveAlignment.A
/ StoppedSignedChannelCoercivity.A
```

and then finite record/return ledgers:

```text
StoppedPotentialRecordAverageBound.A
+ StoppedNegativeReturnOrientedPayment.A.
```

The innovation part routes to the reset branch:

```math
\sum_{e\in\mathscr E_{\rm reset}(P)}
\int H_{e^-}(t)\|D_e(t)\|_{L_x^2}^2dt
\leadsto
\sum_{Q\to Q'}J_{\rm crit}(Q\to Q').
\tag{19}
```

That requires

```text
ResetLocalAffineBandToCriticalJumpCarrier.A
+ LogScaleResetDerivativeCarrierBound.A
+ CriticalWeightedParentChildResetCarleson.A.
```

The reset critical weight must come from original log-scale derivative,
collar-turnstile motion, exchange, or paired-carrier structure.  Raw reset
distance fails the half-tail test.

## 8. Proof-method status

This note is a method pivot, not a closure proof.

The direct positive estimate on the whole fresh tent stalls because raw
freshness and raw Bessel mass miss the selected first-ratio weight.  The better
proof method is:

```text
proof-state decomposition of the stopped transition tree
  + predictable weighted martingale/Bessel square-packing
  + branch routing of predictable and innovation pieces.
```

This is smaller than `CriticalFreshSourceTentCarleson.A` because it attacks the
specific affine quotient survivor after the derivative-exact split.  It is
also upstream of the return/reset branch gates: without the predictable
innovation split, the branch gates are only currencies, not a square-function
proof.

## 9. Result

The next nonduplicate theorem should be stated as:

```text
PredictableWeightedStoppedAffineTransitionMartingale.A
```

meaning the package

```text
PredictableActiveWeightTransitionCarleson.A
+ StoppedAffineTransitionLiftedMartingaleDifference.A
+ StoppedLiftedTransitionBesselCarleson.A.
```

If this package is proved, the inherited part lands in the fixed-core
record/return gate and the innovation part lands in the critical reset gate.
Together those feed `AffineQuotientTransitionPayment.A`, then
`CriticalFreshSourceTentCarleson.A`, then the stopped routed-current
square-packing relay.

If it fails, the exact obstruction is a selected affine transition stack whose
pieces are linearly localized but not orthogonal in any predictable
original-history weight before positive readout.  That is the current hard wall,
not silent-source invisibility, raw nonuse, endpoint anti-atom, or a generic
full-clock restatement.
