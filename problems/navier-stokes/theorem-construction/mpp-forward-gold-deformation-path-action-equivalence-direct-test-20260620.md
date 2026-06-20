---
ns_viewer:
  theorem_id: forward-gold-deformation-path-action-equivalence-direct-test-20260620
  status: direct-test-complete-deformation-path-action-is-equivalent-to-missing-unweighted-strain-reserve
  proof_role: forward_gold_same_carrier_unweighted_action_production_boundary
  logical_landing_node: terminal_heat_scale_pulse_unweighted_selected_carrier_reserve
  edge_effect: "Tests the non-endpoint version of the flow-map idea: measure path length/action of the deformation gradient in the volume-preserving shape space rather than endpoint Cauchy-Green data. The calculation shows that the path metric reads exactly the accumulated symmetric strain along material labels. Its square/action version is the selected critical-strain reserve already isolated as missing. Physical energy controls only the radius-discounted version, and endpoint cancellation examples become long loops in deformation space. Thus deformation path action is an equivalent currency for the wall, not a new supplier."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-deformation-convexity-square-reserve-direct-test-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-lagrangian-deformation-coercion-direct-test-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-pack-gain-ledger-direct-test-and-obstruction-20260505.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-critical-strain-carleson-direct-attempt-20260619.md
  downstream_consequence: "Do not respawn deformation path length, symmetric-space length, singular-value variation, or matrix-geodesic action as an independent gold supplier. It is useful only if a same-carrier unweighted deformation action/selected critical-strain/source-square/no-waste theorem is actually produced."
---

# MPP Forward-Gold Deformation Path-Action Equivalence Direct Test

Date: 2026-06-20

## Status

Direct test complete.  Deformation path length is the right non-endpoint object,
but it is not a new forward-gold supplier.

It is exactly another way to name the missing unweighted strain/action reserve.
The current Navier--Stokes energy inputs still pay only the radius-discounted
physical version.

## 1. Target

The endpoint Cauchy--Green route failed because endpoint deformation can return
to identity while selected positive strain action accumulates.  The natural
repair is to measure the whole path of \(F\), not only its endpoint.

Let \(F=\nabla_aX\) solve

```math
\dot F=(\nabla u)(X(a,t),t)F,
\qquad
\det F=1.
\tag{DPA.1}
```

The volume-preserving shape velocity is

```math
\dot F F^{-1}=(\nabla u)(X(a,t),t).
\tag{DPA.2}
```

Its symmetric part is exactly the strain:

```math
\operatorname{sym}(\dot F F^{-1})
=
S(X(a,t),t).
\tag{DPA.3}
```

So the natural path length in the deformation-shape space has the form

```math
L_F(I,a)
=
\int_I
\left\|S(X(a,t),t)\right\|\,dt.
\tag{DPA.4}
```

and the natural square action has the form

```math
A_F(I,a)
=
\int_I
\left\|S(X(a,t),t)\right\|^2dt.
\tag{DPA.5}
```

Thus the path metric has not discovered a new PDE budget.  It has identified the
same strain clock/action.

## 2. Endpoint loops become path length

The endpoint-cancellation model from the deformation-convexity test is

```math
S(t)=S_0\quad(0<t<\tau),
\qquad
S(t)=-S_0\quad(\tau<t<2\tau),
\tag{DPA.6}
```

with

```math
S_0=\operatorname{diag}(2,-1,-1).
\tag{DPA.7}
```

Since the two pieces commute,

```math
F(2\tau)=\exp(-\tau S_0)\exp(\tau S_0)=I.
\tag{DPA.8}
```

The endpoint deformation sees no net defect.  The path length sees the loop:

```math
L_F([0,2\tau])
=
2\tau\|S_0\|.
\tag{DPA.9}
```

and the square action is

```math
A_F([0,2\tau])
=
2\tau\|S_0\|^2.
\tag{DPA.10}
```

So path length repairs the endpoint-cancellation blindness.  It does not explain
where the budget for `(DPA.9)` or `(DPA.10)` comes from.

## 3. Heat-scale scaling

On a packet of radius \(r\), take

```math
S_r(t,x)=r^{-2}S_0
\tag{DPA.11}
```

for a heat interval \(|I_r|=r^2\).  Along a material label in the packet,

```math
L_F(I_r,a)
\simeq
\int_{I_r}r^{-2}\,dt
\simeq
1.
\tag{DPA.12}
```

The pointwise path square action is

```math
A_F(I_r,a)
\simeq
\int_{I_r}r^{-4}\,dt
\simeq
r^{-2}.
\tag{DPA.13}
```

After integrating over the packet volume \(r^3\), the physical strain-square
cost is

```math
\int_{I_r}\int_{B_r}|S_r|^2\,dxdt
\simeq
r.
\tag{DPA.14}
```

The normalized unweighted action is

```math
r^{-1}
\int_{I_r}\int_{B_r}|S_r|^2\,dxdt
\simeq
1.
\tag{DPA.15}
```

Thus a dyadic terminal stack can satisfy

```math
\sum_j
\int_{I_{r_j}}\int_{B_{r_j}}|S_{r_j}|^2\,dxdt
<\infty,
\tag{DPA.16}
```

while

```math
\sum_j
r_j^{-1}
\int_{I_{r_j}}\int_{B_{r_j}}|S_{r_j}|^2\,dxdt
=\infty.
\tag{DPA.17}
```

The path-action language sees exactly the unweighted normalized action in
`(DPA.15)`.  The physical energy law supplies `(DPA.14)`.

## 4. Relation to the selected positive carrier

The actual selected native carrier is not the full strain norm.  It is the
one-sided localized packet feed

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
\tag{DPA.18}
```

A full deformation action bound on the same carrier would dominate it after the
usual packet Hölder/localization estimates:

```math
\text{same-carrier deformation action}
\Longrightarrow
\text{selected critical-strain/source-square reserve}.
\tag{DPA.19}
```

The reverse production is the gold wall:

```math
\text{finite physical energy/local energy}
\Longrightarrow
\text{same-carrier deformation action}.
\tag{DPA.20}
```

The heat-scale model `(DPA.11)`--`(DPA.17)` shows why `(DPA.20)` is not available
from current inputs.

## 5. Verdict

Deformation path length is the right object after endpoint Cauchy--Green
cancellation:

```math
\boxed{
\text{endpoint deformation can miss a loop; path length sees it.}
}
\tag{DPA.21}
```

But the path length/action is not a new supply of coercivity:

```math
\boxed{
\text{deformation path action is the selected strain/action reserve in geometric
language.}
}
\tag{DPA.22}
```

The physical budget still has the heat-scale radius discount:

```math
\boxed{
\text{physical strain-square cost}\sim r,
\qquad
\text{normalized deformation action}\sim1.
}
\tag{DPA.23}
```

So this branch returns to the same exact forward-gold wall:

```math
\boxed{
\text{same-carrier source-square, selected critical-strain Carleson, strict
no-waste, polar saturation/no-free Zeno,}
}
\tag{DPA.24}
```

or directly

```math
\boxed{
\text{UnweightedTerminalCriticalActionReserve.A on the actual selected positive
native carrier.}
}
\tag{DPA.25}
```
