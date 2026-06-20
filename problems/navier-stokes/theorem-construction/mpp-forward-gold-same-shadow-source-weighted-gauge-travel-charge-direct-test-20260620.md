# Same-Shadow Source-Weighted Gauge Travel Charge Direct Test

Date: 2026-06-20

## Status

Direct test complete.  `SameShadowSourceWeightedGaugeTravelCharge.A` is not
proved by the current source-mode, gauge-action, or no-neutral-loop inputs.

This is the product estimate needed after endpoint mismatch and donor branching:
the selected source weight and the gauge/mode travel must be charged on the same
selected shadow.  Separate control of source mass and a different or discounted
modulation action does not prove that product estimate.

## 1. Target under test

On retained donor edges, write `d_e` for the canonical mode/gauge distance
between the donor and receiver endpoints.  The desired same-shadow charge is

```math
\sum_{e\in\mathcal G_m^{sel}}
|q_e|\,d_e
\le
\operatorname{Legal}^{gauge}_{m}+o_m(1).
\tag{SGT.1}
```

In a time-continuous version, with selected source density `Q_m(s)` and gauge
speed `v_m(s)=|\gamma_m^{-1}\gamma_{m,s}|`, the desired form is

```math
\int_{J_m}
|Q_m(s)|\,v_m(s)\,ds
\le
\operatorname{Legal}^{gauge}_{m}+o_m(1).
\tag{SGT.2}
```

The phrase "same-shadow" means that `Q_m`, `v_m`, and the selected source
packets are measured on the same terminal packet family.

## 2. What would prove it

The direct Cauchy-Schwarz route requires a same-shadow source-square reserve and
an unweighted same-shadow modulation action:

```math
\int_{J_m}|Q_m(s)|^2\,ds
\le
\operatorname{Legal}^{src2}_m+o_m(1),
\tag{SGT.3}
```

and

```math
\int_{J_m}v_m(s)^2\,ds
\le
\operatorname{Legal}^{mod}_m+o_m(1).
\tag{SGT.4}
```

Then

```math
\int_{J_m}|Q_m(s)|\,v_m(s)\,ds
\le
\left(\operatorname{Legal}^{src2}_m+o_m(1)\right)^{1/2}
\left(\operatorname{Legal}^{mod}_m+o_m(1)\right)^{1/2}.
\tag{SGT.5}
```

Equivalently, a strict no-waste Lyapunov theorem would prove `(SGT.1)` if its
action density directly dominates the product:

```math
\mathcal A_m(s)
\ge
c\,|Q_m(s)|\,v_m(s)
-
\mathcal R_m(s),
\tag{SGT.6}
```

with

```math
-{d\over ds}L_m(s)
\ge
c_0\mathcal A_m(s)-\mathcal R^{legal}_m(s),
\qquad
\inf_sL_m(s)>-\infty,
\qquad
\int \mathcal R^{legal}_m(s)\,ds<\infty.
\tag{SGT.7}
```

Current inputs do not install `(SGT.3)`--`(SGT.4)` on the same selected shadow
or `(SGT.6)`--`(SGT.7)`.

## 3. Exact product obstruction

Finite source mass and finite unweighted travel do not imply `(SGT.2)`.  On an
interval `J_h` of length `h`, set

```math
Q_h(s)=h^{-1}{\bf 1}_{J_h}(s),
\qquad
v_h(s)={\bf 1}_{J_h}(s).
\tag{SGT.8}
```

Then

```math
\int_{J_h}|Q_h(s)|\,ds=1,
\qquad
\int_{J_h}v_h(s)^2\,ds=h,
\tag{SGT.9}
```

but

```math
\int_{J_h}|Q_h(s)|\,v_h(s)\,ds=1.
\tag{SGT.10}
```

Thus finite selected source mass and even vanishing unweighted quadratic travel
do not charge the source-weighted travel product.

The missing input is source-square on the same shadow:

```math
\int_{J_h}|Q_h(s)|^2\,ds=h^{-1}.
\tag{SGT.11}
```

That term detects the pulse, but it is exactly the source-square reserve not
available from current inputs.

## 4. Discounted modulation action obstruction

The no-neutral-loop notes show that physical energy gives a terminally
discounted action, not the unweighted action needed in `(SGT.4)`.  For events
at terminal log-times `s_j`, a discounted action budget has the form

```math
\sum_j e^{-s_j/2}d_j^2<\infty.
\tag{SGT.12}
```

Choose

```math
d_j=1,
\qquad
|q_j|=1.
\tag{SGT.13}
```

Then `(SGT.12)` is finite for any sequence `s_j\to\infty`, while

```math
\sum_j |q_j|d_j=\infty.
\tag{SGT.14}
```

So the discounted physical action cannot pay the unweighted source-weighted
travel sum required by endpoint mismatch and donor branching.

## 5. Same-shadow obstruction

Even if an unweighted action exists on another profile shadow, it does not prove
`(SGT.1)`.  The endpoint and branching charges multiply the selected source
weight by mode/gauge variation on the same donor edge or donor star.  A gauge
action measured on a different compactness representative, different selector,
or unsigned carrier can miss the signed selected source edge.

This is the same mismatch already identified in the no-null-source and
selected-polar-saturation notes: visibility has to occur on the selected native
carrier, not only on an abstract response or quotient orbit.

## 6. Exact reduction

At current input strength,

```math
\boxed{
\text{SameShadowSourceWeightedGaugeTravelCharge.A}
\Leftarrow
\text{SameShadowSourceSquareReserve.A}
+
\text{SameShadowUnweightedModulationAction.A}.
}
\tag{SGT.15}
```

An equivalent direct supplier is

```math
\boxed{
\text{SameShadowSourceWeightedGaugeTravelCharge.A}
\Leftarrow
\text{StrictRescaledNoWasteLyapunov.A}
\text{ with product-action domination }(SGT.6).
}
\tag{SGT.16}
```

A response-frame route would need

```math
\boxed{
\text{LowerFrameNoNullAdjointModeReadout.A}
+
\text{SelectedPolarSaturation.A}.
}
\tag{SGT.17}
```

These inputs are not installed.

## Verdict

`SameShadowSourceWeightedGaugeTravelCharge.A` is not a consequence of finite
source mass, scalar donor balance, bounded overlap, co-transport, or discounted
physical modulation action.  It needs a real same-shadow product control:
source-square plus unweighted modulation action, strict no-waste with product
domination, or lower-frame/no-null source visibility on the selected carrier.

