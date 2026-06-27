---
theorem_id: forward-gold-stopped-potential-average-bound-endpoint-corrected-20260627
status: conditional-consumer-from-original-history-selected-potential-record
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / fresh affine quotient branch
attacks_hinge:
  - StoppedPotentialRecordAverageBound.A
  - FreshPotentialAverageKill.A
  - FreshPotentialAverageKillAndPositiveTransfer.A
inputs_checked:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-potential-average-transfer-direct-attempt-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-signed-scale-potential-lift-derivative-control-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fixed-stopped-score-return-bv-closure-20260627.md
effect: >-
  Proves only the projection/consumer step for the weighted stopped-potential
  average once an endpoint-corrected parent-known stopped potential record has
  already been constructed from original history.  The one-dimensional Poincare
  calculation is noncircular in that setting, but it does not construct the
  stopped signed record or prove its BV/testing norm.  The live producer remains
  OriginalHistorySelectedPotentialAmplificationBV.A / OriginalHistoryHilbertBMOProducer.A.
---

# Endpoint-corrected stopped potential average bound

The potential-average obstruction was

```math
\mathcal P_{avg}(t)
=
{1\over |J|}\int_J\Psi(\sigma,t)\,d\sigma.
\tag{1}
```

The raw representative \(\Psi\) is not invariant under
\(\Psi\mapsto \Psi+C(t,x)\).  The correct fixed stopped-channel object is the
endpoint-corrected potential

```math
\Psi^\sharp(\sigma,t)
:=
\Psi(\sigma,t)-\Psi(\sigma_0,t),
\qquad
\Psi^\sharp(\sigma_0,t)=0.
\tag{2}
```

The endpoint value is parent-predictable fixed-channel data.  If it is not
parent-predictable, the transaction has left the fixed stopped channel and is a
reset/overrun event.

## 1. Scale Poincare after endpoint correction

For each \(t\), one-dimensional Poincare/Cauchy on \(J=[\sigma_0,\sigma_1]\)
gives

```math
\left\|
{1\over |J|}\int_J\Psi^\sharp(\sigma,t)\,d\sigma
\right\|_{L_x^2}^2
\le
|J|
\int_J\|\partial_\sigma\Psi^\sharp(\sigma,t)\|_{L_x^2}^2\,d\sigma.
\tag{3}
```

Multiplying by the parent-known active weight \(H_w(t)\) and integrating,

```math
\int_0^{T^*}
H_w(t)
\left\|
{1\over |J|}\int_J\Psi^\sharp(\sigma,t)\,d\sigma
\right\|_{L_x^2}^2dt
\le
|J|
\int_0^{T^*}
H_w(t)\int_J
\|\partial_\sigma\Psi^\sharp(\sigma,t)\|_{L_x^2}^2d\sigma dt.
\tag{4}
```

This is the missing derivative gain.  It is not Poincare applied to the selected
source \(Y\); it is Poincare applied to the endpoint-corrected stopped
potential.

## 2. Derivative domination is original-history currency

For the fixed stopped channel, the primitive potential is the stopped score

```math
P_R=\Gamma_RZ^S.
\tag{5}
```

Its derivative satisfies

```math
\partial_\sigma P_R
=
\Gamma_R(\partial_\sigma Z^S)
+(\partial_\sigma\Gamma_R)Z^S,
\tag{6}
```

and hence

```math
|\partial_\sigma P_R|
\le
C\left(
|\partial_\sigma Z^S|
+|\operatorname{turnstile}_\sigma|
+|\operatorname{exchange}_\sigma|
+|\operatorname{covector}_\sigma|
+|\operatorname{conn}_\sigma|
\right)
+Err_{\rm legal}.
\tag{7}
```

The right side is the parent-known routed derivative / selector / frame /
connection current.  Therefore

```math
\int_0^{T^*}
H_w(t)
\int_J\|\partial_\sigma\Psi^\sharp(\sigma,t)\|_{L_x^2}^2d\sigma dt
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P),
\tag{8}
```

provided \(\Psi^\sharp\) is the endpoint-corrected representative of this fixed
stopped score.

Combining `(4)` and `(8)` gives

```math
\boxed{
\int_0^{T^*}
H_w(t)
\left\|
{1\over |J|}\int_J\Psi^\sharp(\sigma,t)\,d\sigma
\right\|_{L_x^2}^2dt
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P).
}
\tag{9}
```

This proves `StoppedPotentialRecordAverageBound.A` only as a consumer of the
endpoint-corrected parent-known record.  It does not build that record from
original history.

## 3. Positive transfer consequence

The positive selected affine quotient identity is

```math
\mathcal C_\theta[Y_+]
=
-\theta_\kappa(\sigma_0)\Psi(\sigma_0,t)
+
\mathcal P_{avg}(t)
+
\mathcal C_\theta[Y_-](t)
+
{\rm spill/legal}.
\tag{10}
```

After endpoint correction, the endpoint term is parent-predictable.  It is
either in the inherited parent span, hence removed by
\((I-\Pi_{\mathcal P_{e^-}})\), or it is a reset/selector mismatch and belongs
to reset/overrun/legal loss.

The average term is paid by `(9)` once
`OriginalHistorySelectedPotentialAmplificationBV.A` supplies the stopped record
and derivative bound.  The negative return term is paid by the fixed
stopped-score return/BV branch.  Thus the fixed-channel projection from that
record into `FreshPotentialAverageKillAndPositiveTransfer.A` is closed.

## 4. Remaining branch

The proof above leaves the construction of the endpoint-corrected stopped
record open.  The common producer for that record and for strict reset/overrun
is:

```text
OriginalHistorySelectedPotentialAmplificationBV.A
/ OriginalHistoryHilbertBMOProducer.A
/ StoppedSelectorTestingCarleson.A.
```

If the endpoint value, stopped channel, or affine representative is not
parent-known before child selection, that specific failure lands in strict
reset/overrun:

```text
CriticalWeightedResetBVFromOriginalHistory.A
/ LogScaleResetDerivativeCarrierBound.A.
```

So the potential-average branch is not closed as a producer.  It is reduced to
the original-history selected potential/amplification record, with strict reset
BV as the other projection of the same record.

Partial, not Gold closed.
