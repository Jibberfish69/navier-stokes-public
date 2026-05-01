# Weighted Moment Closure From Pressure And Convective Flux Suppliers

## Statement

Let

```math
w_a(x)=(1+|x|^2)^a,
\qquad
M_a(t)=\int w_a|u(t,x)|^2dx.
```

Assume

```math
M_a(0)<\infty,
```

`PFlux.W`, and the convective weighted-flux estimate

```math
\left|\int |u|^2u\cdot\nabla w_a dx\right|
\le C_{a,T}M_a(t)+G_a(t),
\qquad G_a\in L^1(0,T).
```

Then

```math
\sup_{t\le T}M_a(t)<\infty.
```

## Proof

Testing Navier-Stokes against `w_a u` gives

```math
\frac12\frac d{dt}M_a(t)+\nu\int w_a|\nabla u|^2
\le
C_aM_a(t)
+\left|\int |u|^2u\cdot\nabla w_a dx\right|
+2\left|\int p u\cdot\nabla w_a dx\right|.
```

By the convective supplier and `PFlux.W`, the right side is bounded by

```math
C_{a,T}M_a(t)+H_a(t),
\qquad H_a\in L^1(0,T).
```

Gronwall yields

```math
M_a(t)
\le
\left(M_a(0)+\int_0^TH_a(s)ds\right)e^{C_{a,T}T}.
```

Therefore the weighted moment is uniformly bounded on `[0,T]`.

## Consequence

This closes `Moment.W` once the pressure-flux supplier and convective supplier are installed.