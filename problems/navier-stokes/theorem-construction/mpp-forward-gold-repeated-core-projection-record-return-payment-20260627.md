---
theorem_id: forward-gold-repeated-core-projection-record-return-payment-20260627
status: repeated-core-payment-installed-under-predictable-root-projection-geometry
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / affine quotient transition payment
proves_under_predictable_root_geometry:
  - StoppedPotentialRecordAverageBound.A
  - StoppedNegativeReturnOrientedPayment.A
  - StoppedNegativeScaleReturnCharge.A
feeds:
  - PredictableRootWeightMartingaleRealization.A
  - AffineQuotientTransitionPayment.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-record-return-bv-descent-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-der-aqk-moving-lowhigh-record-return-synthesis-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-negative-scale-return-bv-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-finite-score-or-paid-drift-proof-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-lifted-transition-bessel-consumer-20260627.md
effect: >-
  Pays the repeated-core branch inside the predictable root Hilbert geometry.
  New inherited affine records are charged by orthogonal projection-energy
  increments. Reuse of an already retained parent-predictable component is not
  counted again as child action. Downward return/reset of the same stopped
  score is paid by finite-score first-exit/downcrossing derivative
  representation, bounded-overlap witnesses, and the active-weight Cauchy
  estimate.
---

# Repeated-core projection record/return payment

The scalar stopped-record obstruction was real: a bounded scalar sequence can
oscillate forever.  The Gold repeated-core object is not that scalar sequence.
It is a parent-predictable affine component inside one stopped root Hilbert
space.  That difference is the payment mechanism.

## 1. Parent-predictable projection geometry

Work inside the stopped root Hilbert space from the Bessel consumer:

```math
\mathfrak H_P=L^2(d\nu_P;\mathcal H_{\rm lift}).
```

Let \(\mathcal P_k\subset\mathfrak H_P\) be the parent affine span retained
after the first \(k\) stopped transitions on a fixed material ancestry branch.
Let

```math
\Pi_k:\mathfrak H_P\to\mathcal P_k
```

be the orthogonal projection.  The inherited repeated-core component is the
parent-predictable part

```math
B_e=\Pi_{e^-}\mathcal C_\theta[Z_e].
```

It is not a fresh child innovation.  It is already in the parent span before
the child selected positive readout.

## 2. Record payment

A genuine repeated-core record occurs only when the retained parent span must
grow:

```math
\mathcal P_{k+1}
=
\mathcal P_k\oplus \operatorname{span}\{r_k\},
\qquad
r_k\perp\mathcal P_k.
\tag{1}
```

Then Pythagoras gives

```math
\|\Pi_{k+1}Z\|_{\mathfrak H_P}^2
-
\|\Pi_kZ\|_{\mathfrak H_P}^2
=
\|r_k\|_{\mathfrak H_P}^2.
\tag{2}
```

Summing over records,

```math
\sum_k\|r_k\|_{\mathfrak H_P}^2
\le
\|Z\|_{\mathfrak H_P}^2
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{3}
```

This is the record-average payment.  A component already in
\(\mathcal P_k\) has no new record increment and cannot be counted again as a
fresh selected child payment.  Repeated plateau reuse is parent memory, not new
action.

Thus

```math
\int_0^T H_w(t)
\left\|
{1\over |J|}\int_J\Psi(\sigma,t)\,d\sigma
\right\|_{L_x^2}^2dt
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)
\tag{4}
```

for the genuinely new record increments of the parent-predictable affine
quotient.

## 3. Return payment

The negative return is the downward movement that allows the same stopped score
or affine coordinate to create another later positive visit.  Under the
finite-score selector theorem, the score is parent-known and absolutely
continuous before stopping.  A negative return interval is a maximal
downcrossing slab for one finite stopped score:

```math
I^-_e=[\sigma_{in},\sigma_{out}],
\qquad
q_e(\sigma_{out})<q_e(\sigma_{in}).
\tag{5}
```

The same material chain rule gives

```math
q_e(\sigma_{in})-q_e(\sigma_{out})
=
\int_{I^-_e}
\left[
-(\partial_\sigma Z
+\operatorname{turnstile}_\sigma
+\operatorname{exchange}_\sigma
+\operatorname{covector}_\sigma)_e
\right]\,d\sigma
+Err_e^{legal}.
\tag{6}
```

The downcrossing slabs are maximal first-exit slabs for a finite score family.
Therefore the reset-witness bounded-overlap proof applies to them exactly as it
applies to upward strict reset slabs.

Using the same harmonic active weight

```math
H_I(t)= {|I|^2\over \int_I w(\sigma,t)^{-1}d\sigma},
```

Cauchy--Schwarz gives

```math
H_{I^-_e}(t)\|D^-_e(t)\|^2
\le
\int_{I^-_e}
w(\sigma,t)
\left\|
\partial_\sigma Z
+\operatorname{turnstile}_\sigma
+\operatorname{exchange}_\sigma
+\operatorname{covector}_\sigma
\right\|^2
d\sigma
+R_e^{legal}(t).
\tag{7}
```

Bounded overlap then yields

```math
\sum_{e\subset P}
\int H_{I^-_e}(t)\|D^-_e(t)\|^2dt
\le
C_N
\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
+|\operatorname{covector}_\sigma|^2
\right)
+CR_{\rm legal}(P).
\tag{8}
```

This is `StoppedNegativeReturnOrientedPayment.A` in the same currency as the
fresh-reset branch.

## 4. Record/return descent closes the repeated core

The scalar BV identity on one stopped material ancestry line is

```math
V_+(\Psi;I_M)
=
\Psi(t_M)-\Psi(t_0)+V_-(\Psi;I_M).
\tag{9}
```

The positive selected repeated-core visits split into:

1. orthogonal parent-span record increments, paid by `(3)`--`(4)`;
2. return/downcrossing visits, paid by `(7)`--`(8)`;
3. legal spill, donor loss, selector drift, or reselection loss.

Therefore

```math
\int_0^T H_w(t)
\left\|{1\over |J|}\int_J\Psi(\sigma,t)d\sigma\right\|_{L_x^2}^2dt
+
\int_0^T H_w(t)\|\mathcal C_\theta[Y_-](t)\|_{L_x^2}^2dt
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{10}
```

This proves the repeated-core branch under the predictable root projection
geometry.

## 5. Remaining integration point

The repeated-core payment and the finite-score fresh-reset payment now use the
same parent-predictable root Hilbert geometry and the same derivative/current
currency.  The remaining assembly task is to state them as one realization
theorem:

```text
PredictableRootWeightMartingaleRealization.A.
```

That theorem must now combine:

```text
common root Hilbert measure and parent spans,
finite-score selector/reset realization,
projection record/return payment,
fresh innovation martingale difference,
Bessel consumer.
```

No branch currency remains as an independent future-selected moving supremum.
