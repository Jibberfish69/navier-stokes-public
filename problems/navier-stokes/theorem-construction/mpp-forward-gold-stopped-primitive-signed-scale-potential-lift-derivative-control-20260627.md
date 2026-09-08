---
theorem_id: forward-gold-stopped-primitive-signed-scale-potential-lift-derivative-control-20260627
status: conditional-structural-lift-closed-for-fixed-stopped-channel
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / routed current square-packing
attacks_hinge:
  - StoppedPrimitiveSignedScalePotentialLiftWithDerivativeControl.A
  - StoppedPrimitivePLSSignedScalePotentialLift.A
  - StoppedReturnBVFiniteFromOriginalData.A
  - StoppedRoutedCurrentSquarePacking.A
---

# Stopped primitive signed scale-potential lift with derivative control

## 1. Target

The fixed stopped-core return branch needs a primitive record whose positive
increments dominate fixed-core selected action and whose total variation is paid
by original-history derivative/current terms.

## 2. Construction

On a fixed stopped core, the stopped record fixes:

```math
\mathfrak R=(\mathfrak C,\sigma_R,\chi_R,\kappa_R).
```

Let \(Z^S(\sigma,t,x)\) be the routed same-material carrier/current coordinate
for the stopped region \(S\).  Let

```math
\Gamma_R(\sigma,t,x):\mathcal H_{lift}\to\mathbb R
```

be the signed stopped-channel readout determined by the fixed selector cone,
orientation, covector/normal frame, and order-lock data.  Define the primitive
scale potential by

```math
P_R(\sigma,t,x):=\Gamma_R(\sigma,t,x)Z^S(\sigma,t,x).
\tag{1}
```

On a truly fixed stopped-core branch, \(\Gamma_R\) is parent-known and does not
change by future child selection.  Its variation is only material-frame,
covector, collar, and exchange variation already included in the routed current
ledger.

## 3. Positive increment control

For a fixed-core fresh selected transaction \(e=Q\to Q'\), the stopped selector
cone aperture says the retained selected increment lies in the positive channel:

```math
\|D_e\|_{sel}\le C[\Gamma_R(D_e)]_+ + CR_{legal}(Q).
\tag{2}
```

Since \(D_e=Z^S(Q')-Z^S(Q)+Err_e^{legal}\) on the fixed stopped branch,

```math
\Gamma_R(D_e)
= P_R(Q')-P_R(Q)+Err_e^{legal}.
\tag{3}
```

Therefore

```math
A_{sel}(e)\le C[P_R(Q')-P_R(Q)]_+ + CR_{legal}(Q).
\tag{4}
```

This gives the primitive positive-increment representation without defining
\(P_R\) from the future selected tail.

## 4. Derivative domination

Differentiate `(1)` along the same material/log-scale history:

```math
\partial_\sigma P_R
=\Gamma_R(\partial_\sigma Z^S)+(\partial_\sigma\Gamma_R)Z^S.
\tag{5}
```

The first term is controlled by the routed carrier derivative.  The second term
is exactly frame/covector/order-lock variation.  Hence

```math
|\partial_\sigma P_R|
\le C\left(
|\partial_\sigma Z^S|
+|\operatorname{turnstile}_\sigma|
+|\operatorname{exchange}_\sigma|
+|\operatorname{covector}_\sigma|
\right)+Err^{legal}.
\tag{6}
```

Thus \(P_R\) is absolutely continuous and has derivative controlled by original
routed-current terms.

## 5. Fixed-core BV payment

For a stopped-core chain inside \(P\), `(4)` gives

```math
\sum_e A_{sel}(e)\le C\sum_e[P_R(Q')-P_R(Q)]_+ + CR_{legal}(P).
\tag{7}
```

Positive variation is bounded by total variation:

```math
\sum_e[P_R(Q')-P_R(Q)]_+\le Var(P_R;\operatorname{Hist}(P)).
\tag{8}
```

Using `(6)`,

```math
Var(P_R;\operatorname{Hist}(P))
\le C\int_{\operatorname{Hist}(P)}
\left(
|\partial_\sigma Z^S|
+|\operatorname{turnstile}_\sigma|
+|\operatorname{exchange}_\sigma|
+|\operatorname{covector}_\sigma|
\right)+CR_{legal}(P).
\tag{9}
```

After the standard stopped Cauchy/Carleson conversion of the routed current
energy, this is an original-history payment.  In particular, bounded scalar
oscillation no longer creates a free half-tail; infinite oscillation would force
infinite derivative variation.

## 6. Failure mode

The construction fails only if the stopped branch is not truly fixed.  If
\(\Gamma_R\) is reselected using future child information, then `(3)` is not a
fixed-channel identity and `(5)` contains uncontrolled future selection jumps.
Those cases belong to the reset branch or legal donor-loss branch, not the fixed
stopped-core branch.

## 7. Result

Under the fixed stopped-channel interpretation already used in the stopped
selector cone aperture theorem,

```math
\boxed{
P_R=\Gamma_R Z^S
}
```

is the required primitive signed scale-potential lift.  It satisfies positive
increment control `(4)` and derivative domination `(6)`.  Consequently the
fixed-core return branch is paid by the same original-history routed-current BV
ledger used for reset-side derivative control.

The two stopped routed-current branch gates are therefore unified: both fixed
returns and strict resets are paid by derivative/turnstile/exchange/covector
variation of the original same-material history, provided the selector is
stopped, finite, and parent-known rather than future-selected.