---
theorem_id: forward-gold-critical-fresh-source-affine-quotient-transition-payment-20260627
status: critical-fresh-source-reduced-to-affine-quotient-transition-payment-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / critical fresh source tent Carleson
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - CriticalFreshSourceTentCarleson.A
  - FreshSourceCriticalScaleMemoryBound.A
  - FreshSourceWeightedPairedCarrierBound.A
  - ParentChildTransitionPaymentLaw.A
refined_hinge:
  - AffineQuotientTransitionPayment.A
  - FreshPotentialAverageKillAndPositiveTransfer.A
  - StoppedNegativeReturnOrientedPayment.A
  - CriticalWeightedParentChildResetCarleson.A
  - LogScaleResetDerivativeCarrierBound.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-source-tent-carleson-governing-hinge-realignment-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-source-tent-carleson-paired-carrier-direct-attack-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-paired-carrier-proof-mechanism-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-paired-carrier-der-aqk-potential-average-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-child-transition-payment-method-synthesis-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-return-branch-sharp-inputs-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-child-reset-critical-weight-countertest-20260627.md
effect: >-
  Integrates the parent-child transition payment synthesis back into the live
  CriticalFreshSourceTentCarleson.A packet. The fresh paired-carrier route and
  the repeated/shrinking branch split meet at the same affine quotient survivor
  of the one-sided scale primitive. This note reduces the next proof unit to an
  affine-quotient transition payment theorem; it does not prove that theorem.
---

# Critical fresh source affine-quotient transition payment

The live parent producer is still

```text
CriticalFreshSourceTentCarleson.A / FreshSourceCriticalScaleMemoryBound.A.
```

The direct attack has already narrowed it to the weighted paired carrier

```text
FreshSourceWeightedPairedCarrierBound.A.
```

The paired-carrier audit then split the operator into a derivative-exact part
and an affine quotient.  The derivative-exact part is the DER side.  The affine
quotient is the survivor.

The parent-child transition note shows the same survivor from the branch side:
repeated cores need negative return / potential average payment, while escaping
cores need a critical weighted reset from log-scale derivative, turnstile, and
exchange.  These are not separate obstructions.  They are two ways the same
affine quotient must be paid.

## 1. The shared quotient

For the fresh one-sided scale primitive, write

```math
F^{fresh}(s,t)=(\mathcal V_\kappa\widetilde Z^{fresh})(s,t).
```

The weighted projector splits

```math
\mathcal V_\kappa\widetilde Z^{fresh}
=
(I-P_w)\mathcal V_\kappa\widetilde Z^{fresh}
+
P_w\mathcal V_\kappa\widetilde Z^{fresh}.
\tag{1}
```

The first term is the derivative-exact part.  The second term is the affine
quotient

```math
c_F^{fresh}(t,x)
=
A_\kappa M_0^{fresh}(t,x)+B_\kappa M_1^{fresh}(t,x),
\tag{2}
```

with

```math
M_0^{fresh}=\int_J\widetilde Z^{fresh}(\sigma,t,x)d\sigma,
\qquad
M_1^{fresh}=\int_J\sigma\widetilde Z^{fresh}(\sigma,t,x)d\sigma.
\tag{3}
```

The open estimate is

```math
AQ(P):=
\int_0^{T^*}H_w(t)\|c_F^{fresh}(t)\|_{L_x^2}^2dt
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P).
\tag{4}
```

Proving `(4)` gives the AQK part of the DER/AQK route, hence the fresh weighted
paired carrier and the critical fresh source tent theorem.

## 2. Why signed first-order descent stops exactly here

The signed scale descent gives

```math
Y^{fresh}=\partial_\sigma\Psi^{fresh}+S^{spill}+E.
\tag{5}
```

Pairing against the affine quotient weight gives

```math
\int_J\theta_\kappa\partial_\sigma\Psi^{fresh}d\sigma
=
-\theta_\kappa(s_0)\Psi^{fresh}(s_0,t)
+{1\over |J|}\int_J\Psi^{fresh}(\sigma,t)d\sigma.
\tag{6}
```

So first-order exactness kills only the constant quotient direction.  The scale
average

```math
\mathcal P_{avg}^{fresh}(t)
=
{1\over |J|}\int_J\Psi^{fresh}(\sigma,t)d\sigma
\tag{7}
```

remains.  That is the analytic face of the same obstruction that record/return
sees as records plus negative return.

A direct second-order exactness theorem would kill the quotient by proving

```math
\widetilde Z^{fresh}=(\partial_\sigma-1)\partial_\sigma G^{fresh}+R^{fresh}
\tag{8}
```

with controlled residual.  Without `(8)`, the route needs transition payment for
`(7)`.

## 3. Transition payment form

The quotient should be paid by the parent-child transition law.  The target is:

```text
AffineQuotientTransitionPayment.A.
```

For every retained stopped root `P`, after spent-source projection,
silent-source normal form, selector/reselection payment, full-exchange refunds,
entrance/legal, subheat, and recirculation removals, decompose the affine quotient
mass into repeated-core and fresh-reset contributions:

```math
AQ(P)
\le
C\int_{\mathcal F_{rep}(P)}
\left(
\operatorname{Rec}_\infty(\Psi_\mathcal A)
+V_-^{return}(\Psi_\mathcal A)
\right)d\mathcal R_{ancestry}(\mathcal A)
+
C\sum_{Q\subset P}\sum_{Q'\in ch_{stop}(Q)}J_{crit}(Q\to Q')
+R_{legal}(P).
\tag{9}
```

Here the first term is used only when the child inherits the selected parent
state and stays in the repeated-core branch.  The second term is used only when
the child is genuinely fresh relative to the parent and pays a selected-critical
reset.

If `(9)` is proved, then the remaining root estimates are the two exact branch
payments already isolated:

```text
Repeated-core root:
  StoppedPotentialRecordAverageBound.A
  + StoppedNegativeReturnOrientedPayment.A
  -> StoppedNegativeScaleReturnCharge.A;

fresh-reset root:
  CriticalWeightedParentChildResetCarleson.A
  via LogScaleResetDerivativeCarrierBound.A.
```

Together they imply `(4)`.

## 4. Why this is smaller than the current parent theorem

`CriticalFreshSourceTentCarleson.A` asks for the whole selected-critical tent
Carleson measure.  The derivative-exact part of the paired carrier has already
been separated by the DER route.  The local fresh selected lower edge and
silent-source normal form are also support.

The nonduplicate remaining object is the affine quotient.  A proof of
`AffineQuotientTransitionPayment.A` would not yet be the final Gold proof unless
the branch root estimates are also supplied, but it would remove the current
operator survivor that keeps reappearing under different names:

```text
potential average,
negative return reset,
critical weighted parent-child reset,
low-high interface affine survivor,
FreshPotentialAverageKillAndPositiveTransfer.A.
```

These are the same quotient viewed from different coordinates.

## 5. Method fit

The method should not be another positive-forward local estimate.

Repeated-core quotient payment is a signed-cancellation plus oriented-payment
problem:

```text
PrimitivePLSDriverToSignedCommutatorIdentity.A
+
StoppedNegativeReturnOrientedPayment.A.
```

Escaping-core quotient payment is an analytic scale-memory estimate after the
minimal escaping-chain reduction:

```text
LogScaleResetDerivativeCarrierBound.A.
```

The proof strategy is therefore mixed but nonduplicative:

```text
DER pays exact derivative part;
AQ transition payment pays the affine quotient;
record/return handles inherited parent state;
critical reset handles genuine fresh parent-child state.
```

## 6. Result

The next exact hinge under the live parent theorem is:

```text
AffineQuotientTransitionPayment.A.
```

Statement: the affine quotient left after the DER split of the fresh weighted
paired carrier is bounded by repeated-core record/negative-return storage plus
critical weighted parent-child reset charge, both generated from the original
same-material history and not from the future selected tail.

This is still open.  Its value is that it joins the current branch split back to
`CriticalFreshSourceTentCarleson.A` without reviving raw capacity, raw Bessel,
endpoint atom, or local invisible-child routes.