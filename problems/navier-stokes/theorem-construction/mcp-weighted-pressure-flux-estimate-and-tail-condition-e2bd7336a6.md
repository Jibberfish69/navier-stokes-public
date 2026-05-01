# Weighted Pressure-Flux Estimate And Tail Condition

## Target

For a polynomial weight

```math
w_a(x)=(1+|x|^2)^a,
```

control the pressure flux

```math
\int_0^T\left|\int_{\mathbb R^3}p(x,t)u(x,t)\cdot\nabla w_a(x)dx\right|dt.
```

## Theorem `PFlux.W`

Assume a smooth solution on `[0,T]`, finite weighted moment

```math
M_a(t):=\int w_a|u(t)|^2dx<\infty,
```

and the dyadic pressure-tail summability condition

```math
\sum_{k\ge0}2^{(2a-1)k}\int_0^T\|p(t)\|_{L^2(A_k)}\|u(t)\|_{L^2(A_k)}dt<\infty,
```

where `A_k={2^k<=|x|<=2^{k+1}}`. Then the weighted pressure flux is finite.

## Proof

On the annulus `A_k`,

```math
|\nabla w_a(x)|\le C_a2^{(2a-1)k}.
```

Hence

```math
\left|\int_{A_k}p u\cdot\nabla w_a dx\right|
\le
C_a2^{(2a-1)k}\|p\|_{L^2(A_k)}\|u\|_{L^2(A_k)}.
```

Summing over `k` and integrating over time gives the stated flux bound.

## Pressure-Tail Supplier Form

A sufficient supplier is

```math
\|p(t)\|_{L^2(A_k)}
\le C2^{-\beta k}P_k(t)
```

with

```math
\sum_k2^{(2a-1-\beta)k}\int_0^TP_k(t)\|u(t)\|_{L^2(A_k)}dt<\infty.
```

The far-field pressure theorem supplies such estimates once the exterior energy and local smoothness tails produce enough decay in the Riesz source `u\otimes u`.

## Exact Remaining Subproblem

The flux estimate is now reduced to an annular pressure-tail summability theorem:

```math
PFlux.Supplier:
\quad
\sum_k2^{(2a-1)k}\int_0^T\|p\|_{L^2(A_k)}\|u\|_{L^2(A_k)}dt<\infty.
```

This supplier is stronger than the unweighted Leray energy layer. It is the precise exterior-pressure input needed by weighted moment propagation.

## Consequence

`PFlux.W` supplies the pressure term in the weighted energy inequality and therefore feeds `Decay.Prop`, `Tail.E`, and the periodic-to-R3 exhaustion route.