---
ns_viewer:
  theorem_id: forward-gold-deformation-convexity-square-reserve-direct-test-20260620
  status: direct-test-complete-deformation-convexity-does-not-produce-unweighted-selected-carrier-reserve
  proof_role: forward_gold_same_carrier_unweighted_action_production_boundary
  logical_landing_node: terminal_heat_scale_pulse_unweighted_selected_carrier_reserve
  edge_effect: "Tests the strongest remaining flow-map participation upgrade: use volume preservation, singular-value convexity, and material line stretching to turn selected feed into a square/action payment. The test shows that material line stretching gives visibility and a lower square action for a stretch event, but physical control remains radius-discounted. Endpoint deformation can also cancel by reversing/rotating trace-free strain while the selected positive carrier adds. Thus deformation convexity is a readout or consumer, not a produced unweighted same-carrier reserve."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-lagrangian-deformation-coercion-direct-test-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-coherent-participation-square-reserve-direct-test-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-participation-three-clock-strict-gap-test-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-unweighted-same-carrier-reserve-production-obligation-20260620.md
  downstream_consequence: "Do not respawn deformation convexity, singular-value growth, Cauchy-Green stretch, or endpoint deformation as a forward-gold supplier unless the route proves unweighted deformation action, same-carrier source-square/critical-strain reserve, strict no-waste, or a no-cancellation/polar-saturation theorem on the actual selected carrier."
---

# MPP Forward-Gold Deformation Convexity / Square Reserve Direct Test

Date: 2026-06-20

## Status

Direct test complete.  Flow-map convexity gives a clean way to see the terminal
packet, but it does not produce the missing unweighted same-carrier reserve from
current inputs.

The useful statement is exact: selected positive strain stretches material
lines.  The obstruction is also exact: physical energy pays the stretch action
with a radius factor, and endpoint deformation can cancel while the selected
positive carrier adds.

## 1. Target

The selected positive native carrier is

```math
a_m(s)
=
r_m
\int_{B_{r_m}(x_m)}
\left[
\left\langle
S_{<j_m}^{loc}w_{j_m},
w_{j_m}
\right\rangle
\right]_+
(t_m+r_m^2s,x)\,dx.
\tag{DCS.1}
```

The forward-gold theorem needs endpoint uniform integrability or an equivalent
square reserve on `(DCS.1)`:

```math
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}a_m(s)\,ds
=0.
\tag{DCS.2}
```

This note tests whether flow-map singular-value convexity can produce that
reserve.

## 2. Material line stretching

Let \(X(a,t)\) be the flow map, \(F=\nabla_aX\), and

```math
\partial_tF=(\nabla u)(X(a,t),t)F,
\qquad
\det F=1.
\tag{DCS.3}
```

For a fixed label vector \(\xi\ne0\), define

```math
e(t)={F(t)\xi\over |F(t)\xi|}.
\tag{DCS.4}
```

Then

```math
{d\over dt}\log |F(t)\xi|
=
\left\langle S(X(a,t),t)e(t),e(t)\right\rangle,
\tag{DCS.5}
```

where \(S=(\nabla u+\nabla u^\top)/2\).

Thus a selected positive strain event is exactly a material line-stretch event
along a chosen direction.

By Cauchy--Schwarz on a time interval \(I\),

```math
\int_I
\left[
\left\langle Se,e\right\rangle
\right]_+^2dt
\ge
{1\over |I|}
\left(
\int_I
\left[
\left\langle Se,e\right\rangle
\right]_+dt
\right)^2.
\tag{DCS.6}
```

So if a single material line undergoes order-one positive logarithmic stretch on
one normalized heat interval, there is order-one normalized square strain
action.  This is visibility.

It is not yet a budget.

## 3. Heat-scale radius discount remains

On a packet of radius \(r\), take a trace-free constant strain profile

```math
S_r(t,x)
=
r^{-2}S_0,
\qquad
S_0=\operatorname{diag}(2,-1,-1),
\tag{DCS.7}
```

for one heat time \(|I_r|=r^2\) in a packet of volume comparable to \(r^3\).
Then a material line in the \(e_1\) direction has

```math
\int_{I_r}
\left\langle S_re_1,e_1\right\rangle dt
=2,
\tag{DCS.8}
```

and

```math
\int_{I_r}
\left[
\left\langle S_re_1,e_1\right\rangle
\right]_+^2dt
=
4r^{-2}.
\tag{DCS.9}
```

The physical strain-square cost over the packet is

```math
\int_{I_r}\int_{B_r}|S_r|^2\,dxdt
\simeq
r.
\tag{DCS.10}
```

The normalized unweighted square action is instead

```math
r^{-1}
\int_{I_r}\int_{B_r}|S_r|^2\,dxdt
\simeq
1.
\tag{DCS.11}
```

Thus a dyadic stack \(r_j=2^{-j}\) can have one order-one material stretch event
per scale while

```math
\sum_j
\int_{I_{r_j}}\int_{B_{r_j}}|S_{r_j}|^2\,dxdt
<\infty,
\qquad
\sum_j
r_j^{-1}
\int_{I_{r_j}}\int_{B_{r_j}}|S_{r_j}|^2\,dxdt
=\infty.
\tag{DCS.12}
```

The deformation-square action is the right currency, but physical energy gives
only its radius-discounted version.

## 4. Endpoint deformation does not recover the positive carrier

One might try to use the endpoint deformation tensor \(F^\top F\) or its
singular values as the missing monotone object.  This fails because the endpoint
can cancel while the selected positive carrier adds.

In normalized time, apply \(S_0\) for time \(\tau\), then \(-S_0\) for time
\(\tau\).  Since the matrices commute,

```math
\exp(-\tau S_0)\exp(\tau S_0)=I.
\tag{DCS.13}
```

The endpoint deformation returns to the identity.

During the first half, the selected expanding direction is \(e_1\):

```math
\left[
\langle S_0e_1,e_1\rangle
\right]_+
=2.
\tag{DCS.14}
```

During the second half, \(-S_0=\operatorname{diag}(-2,1,1)\) has positive
directions \(e_2,e_3\):

```math
\left[
\langle (-S_0)e_2,e_2\rangle
\right]_+
=1.
\tag{DCS.15}
```

So the selected positive carrier is nonzero on both halves, while the endpoint
deformation record is zero:

```math
F_{\rm end}=I,
\qquad
\int_0^{2\tau}
\lambda_{\max}(S(s))_+\,ds
\ge
3\tau.
\tag{DCS.16}
```

This is the deformation version of the signed-partner problem.  Volume
preservation supplies transverse compensation, but positive selection can follow
the expanding direction and discard the compensating contraction.

## 5. What deformation convexity can consume

If the same material line sees infinitely many non-canceling order-one
expansions, then the deformation gradient becomes unbounded:

```math
\|F(t)\|\to\infty.
\tag{DCS.17}
```

That is a deformation-clock or BKM/Field-facing readout.  It is not a
forward-gold contradiction unless a theorem has already proved that the
deformation clock remains bounded up to the terminal time.

If the expansions cancel by alternating direction, as in `(DCS.13)`--`(DCS.16)`,
endpoint deformation stays bounded while selected positive action remains.  A
proof must then control the full unweighted deformation variation/action, not
only endpoint stretch.

The needed theorem is therefore one of:

```math
\int^\infty
\lambda_{\max}(S(s))_+^2\,ds<\infty
\quad\text{on the selected carrier,}
\tag{DCS.18}
```

or the equivalent same-carrier source-square, selected critical-strain,
strict no-waste, or polar-saturation/no-cancellation theorem.

Current inputs do not provide `(DCS.18)`.

## 6. Verdict

Flow-map convexity gives the best local mathematical version of participation:

```math
\boxed{
\text{positive selected strain means material line stretching under a
volume-preserving flow.}
}
\tag{DCS.19}
```

It still does not produce the gold reserve:

```math
\boxed{
\text{material line stretching gives visibility, not an unweighted terminal
budget, because the physical action is radius-discounted.}
}
\tag{DCS.20}
```

Endpoint Cauchy-Green deformation also does not solve the selected positive
carrier problem:

```math
\boxed{
\text{endpoint deformation can cancel while selected positive strain action
adds.}
}
\tag{DCS.21}
```

The branch returns to:

```math
\boxed{
\text{same-carrier source-square, selected critical-strain Carleson, strict
no-waste, polar saturation/no-free Zeno,}
}
\tag{DCS.22}
```

or directly

```math
\boxed{
\text{UnweightedTerminalCriticalActionReserve.A on the actual selected positive
native carrier.}
}
\tag{DCS.23}
```
