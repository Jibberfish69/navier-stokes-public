---
theorem_id: mpp-four-body-native-selected-activity-identification-route-20260621
status: route-lemma-installed-direct-identification-false-order-lock-or-partner-deficit-required
logical_landing_node: native_selected_activity_to_four_body_carrier
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-selected-full-packet-identification-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-selected-full-packet-production-step-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-remaining-arrows-and-cycle-closure-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Native Selected Activity To Four-Body Carrier: Route Lemma

Date: 2026-06-21

## 0. Purpose

This note records the final comparison route after the four-body loop closes for its carried full-packet activity.

The desired final comparison is

```math
A_{\rm selected\ native}(\sigma)
\le
C A_{4B}(\sigma)+R_{\rm legal}(\sigma)
```

on the same retained carrier.

The direct comparison is false if native positive selection is taken channel-first. The solvable comparison is obtained by one of two mechanisms:

```math
\boxed{\text{positive part is order-locked after full-packet scalarization}}
```

or

```math
\boxed{\text{every cancelling negative partner discarded by native selection is retained and charged.}}
```

## 1. Algebraic core

Let

```math
n_\sigma
=
\langle N_\sigma,\varphi_\sigma\rangle
```

be the native selected source scalar on a retained packet.

Let the remaining full-packet partner scalar be

```math
b_\sigma
=
\langle P_\sigma+V_\sigma+T_\sigma+I_\sigma+L_\sigma+S_\sigma,
\varphi_\sigma\rangle.
```

The order-locked full-packet scalar is

```math
h_\sigma=n_\sigma+b_\sigma.
```

The native selected activity is

```math
A_{\rm native}(\sigma)=\int[n_\sigma]_+.
```

The carried four-body full-packet activity is

```math
A_{\rm full}(\sigma)=\int[h_\sigma]_+.
```

For real numbers `n,b`, the positive-part subadditivity gives

```math
[n]_+
=[(n+b)-b]_+
\le
[n+b]_+ +[-b]_+.
```

Therefore

```math
\boxed{
A_{\rm native}(\sigma)
\le
A_{\rm full}(\sigma)
+\Delta_{\rm partner}(\sigma),
}
```

where

```math
\Delta_{\rm partner}(\sigma)
=
\int[-b_\sigma]_+.
```

Thus the native-to-four-body problem is exactly the partner-deficit problem:

```math
\boxed{
\Delta_{\rm partner}
\le
C A_{4B}+R_{\rm legal}
\quad\text{or typed CM exit.}
}
```

## 2. Order-locked solution

If the native selected object is defined by the full scalar before taking positive part, then

```math
n_\sigma^{\rm native}=h_\sigma+r_\sigma^{legal}
```

on the same carrier, with

```math
\int |r_\sigma^{legal}|\le R_{\rm legal}(\sigma),
```

then the `1`-Lipschitz property of the positive part gives

```math
\left|
[n_\sigma^{\rm native}]_+-[h_\sigma]_+
\right|
\le
|r_\sigma^{legal}|.
```

Hence

```math
\boxed{
A_{\rm native}(\sigma)
\le
A_{4B}(\sigma)+R_{\rm legal}(\sigma).
}
```

This is the cleanest closure. It is exactly `FullPacketPreCauchyScalarizationIdentity.A + PositivePartOrderLock.A`.

## 3. Signed-partner solution

If the native selector is channel-first, the comparison survives only by retaining the discarded cancelling partners.

Decompose

```math
b_\sigma=b_\sigma^p+b_\sigma^v+b_\sigma^t+b_\sigma^i+b_\sigma^l+b_\sigma^s.
```

Then

```math
[-b_\sigma]_+
\le
[-b_\sigma^p]_+ +[-b_\sigma^v]_+ +[-b_\sigma^t]_+
+[-b_\sigma^i]_+ +[-b_\sigma^l]_+ +[-b_\sigma^s]_+.
```

Each term is a discarded partner deficit.

The signed-partner theorem must prove that every such deficit is either carried by the four-body packet or routed to a typed branch:

```math
\int[-b_\sigma^p]_+
\le
C A_{4B}^{press}(\sigma)+R_{press}^{legal}(\sigma)
```

or pressure-memory/collar exit;

```math
\int[-b_\sigma^v]_+
\le
C A_{4B}^{vis}(\sigma)+R_{vis}^{legal}(\sigma)
```

or visible viscous payment;

```math
\int[-b_\sigma^t]_+
\le
C A_{4B}^{time}(\sigma)+R_{term}(\sigma)
```

or terminal trace/storage exit;

```math
\int[-b_\sigma^i]_+
\le
C A_{4B}^{inc}(\sigma)+R_{sgn}(\sigma)
```

or donor/saturation exit;

```math
\int[-b_\sigma^l]_+
\le
C A_{4B}^{legal}(\sigma)+R_{legal}(\sigma)
```

or selector/collar exit;

```math
\int[-b_\sigma^s]_+
\le
C A_{4B}^{geom}(\sigma)+R_{geom}(\sigma)
```

or geometry/Field exit.

Summing gives

```math
\boxed{
\Delta_{\rm partner}(\sigma)
\le
C A_{4B}(\sigma)+R_{\rm legal}(\sigma)
}
```

outside the typed exit branches. Combining with the algebraic core yields the desired comparison.

## 4. Why this is noncircular

This does not define capacity from the native positive activity. It uses only the already closed four-body activity and the already listed legal/branch terms.

The four-body loop supplies

```math
\int_{\sigma_0}^\infty A_{4B}(\sigma)\,d\sigma<\infty.
```

If the partner-deficit theorem supplies

```math
A_{\rm native}\le C A_{4B}+R_{\rm legal},
\qquad R_{\rm legal}\in L^1_\sigma,
```

then

```math
\boxed{
\int_{\sigma_0}^\infty A_{\rm native}(\sigma)\,d\sigma<\infty.
}
```

This is the final transfer from full four-body carried activity to the original channel-first native selected activity.

## 5. Typed exits

If the partner deficit cannot be retained and charged, the failure is already one of the live branch exits:

```math
\text{pressure partner lost}
\Rightarrow
\text{pressure-memory/collar branch;}
```

```math
\text{time partner lost}
\Rightarrow
\text{terminal trace/storage branch;}
```

```math
\text{signed incompressibility partner lost}
\Rightarrow
\text{donor/saturation branch;}
```

```math
\text{selector/legal partner lost}
\Rightarrow
\text{selector/collar branch;}
```

```math
\text{geometry partner lost}
\Rightarrow
\text{geometry/Field branch.}
```

The CM landing is:

```math
\text{carrier lost} \Rightarrow \neg Pack_Q;
```

```math
\text{same-solution participation partner lost} \Rightarrow Pack_Q+\neg Part_{N,Q};
```

```math
\text{positive coherent field scale lost} \Rightarrow Pack_Q+Part_{N,Q}+\forall r>0\neg Field_{N,r,Q}.
```

## 6. Exact next proof target

The final proof target is not bare domination of one positive channel by a signed full equation. That is false.

The exact target is:

```math
\boxed{\texttt{PartnerDeficitRetentionOrExit.A}}
```

with statement:

```math
\boxed{
\Delta_{\rm partner}(\sigma)
=
\int[-\langle P+V+T+I+L+S,\varphi_\sigma\rangle]_+
\le
C A_{4B}(\sigma)+R_{\rm legal}(\sigma)
}
```

unless the packet exits through pressure-memory, terminal trace, donor/saturation, selector/collar, geometry, or Field/CM failure.

Once that theorem is installed, the native selected activity comparison follows immediately from the scalar inequality

```math
[n]_+\le[n+b]_+ +[-b]_+.
```