# Exterior Decay Propagation Via Weighted Energy Inequality

## Target

Show that rapidly decaying initial data preserve enough weighted control to support exhaustion and pressure-tail limits.

## Theorem `Decay.Prop`

Let

```math
w_a(x)=(1+|x|^2)^a,
\qquad a>0.
```

Assume

```math
\int w_a(x)|u_0(x)|^2dx<\infty.
```

Assume the weighted pressure flux satisfies

```math
\int_0^T\left|\int p u\cdot\nabla w_a dx\right|dt<\infty.
```

Then

```math
\sup_{t\le T}\int w_a|u(t)|^2dx<\infty.
```

Consequently,

```math
\int_{|x|>R}|u(t)|^2dx\le R^{-2a}\int w_a|u(t)|^2dx,
```

so exterior energy tightness follows.

## Proof

Multiply Navier-Stokes by `w_a u` and integrate. The divergence-free condition gives

```math
\frac12\frac d{dt}\int w_a|u|^2+
u\int w_a|\nabla u|^2
\le C\int |\nabla^2 w_a||u|^2
+\int |u|^2u\cdot\nabla w_a
+2\int p u\cdot\nabla w_a.
```

For polynomial weights,

```math
|\nabla^2w_a|\le C_aw_a.
```

On smooth finite intervals, local regularity controls the convective weighted term by

```math
\left|\int |u|^2u\cdot\nabla w_a\right|
\le C_T\int w_a|u|^2.
```

The pressure-flux term is integrable by hypothesis. Gronwall yields the weighted moment bound.

## Consequence

Weighted moment propagation supplies the exterior energy tightness needed by the exhaustion and pressure-tail theorems.

## Boundary

The active analytic subproblem is the pressure-flux estimate in weighted form. Once that estimate is supplied, exterior decay propagation follows by this weighted energy inequality.