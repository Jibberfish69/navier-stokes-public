# Uniform Weighted Moment Propagation From Pressure-Flux Supplier

## Target

For

```math
w_a(x)=(1+|x|^2)^a,
```

prove

```math
\sup_{t\le T}\int w_a|u(t,x)|^2dx<\infty.
```

## Theorem `Moment.W`

Assume

```math
M_a(0):=\int w_a|u_0|^2dx<\infty,
```

and assume the weighted pressure flux is finite by `PFlux.W`:

```math
\int_0^T\left|\int p u\cdot\nabla w_a dx\right|dt<\infty.
```

Assume also the convective weighted flux bound

```math
\left|\int |u|^2u\cdot\nabla w_a dx\right|
\le C_T M_a(t)+G_a(t),
\qquad G_a\in L^1(0,T).
```

Then

```math
\sup_{t\le T}M_a(t)<\infty.
```

## Proof

Testing the equation against `w_a u` gives

```math
\frac12\frac d{dt}M_a(t)+\nu\int w_a|\nabla u|^2
\le C_aM_a(t)+C_T M_a(t)+G_a(t)+2\left|\int p u\cdot\nabla w_a dx\right|.
```

The right side is

```math
C_{a,T}M_a(t)+H_a(t),
\qquad H_a\in L^1(0,T),
```

by `PFlux.W`. Gronwall yields

```math
\sup_{t\le T}M_a(t)<\infty.
```

The tail estimate follows from

```math
\int_{|x|>R}|u(t,x)|^2dx\le R^{-2a}M_a(t).
```

## Consequence

`Moment.W` plus `PFlux.W` supplies the exterior tightness input `Tail.E` for the periodic-to-R3 exhaustion theorem.

## Boundary

This theorem consumes the pressure and convective weighted-flux suppliers. It converts those suppliers into uniform weighted moment propagation and exterior energy tightness.