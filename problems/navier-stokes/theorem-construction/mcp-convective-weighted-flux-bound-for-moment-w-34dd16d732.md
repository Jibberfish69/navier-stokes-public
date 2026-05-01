# Convective Weighted-Flux Bound For `Moment.W`

## Statement

Let

```math
w_a(x)=(1+|x|^2)^a,
\qquad
M_a(t)=\int w_a|u(t,x)|^2dx.
```

On a finite classical interval `[0,T]`, the convective weighted flux obeys

```math
\left|\int |u|^2u\cdot\nabla w_a dx\right|
\le C_{a,T}M_a(t).
```

Thus `Moment.W` holds with `G_a=0` for the convective term on a classical finite window.

## Proof

For polynomial weights,

```math
|\nabla w_a(x)|\le C_a w_a(x).
```

Therefore

```math
\left|\int |u|^2u\cdot\nabla w_a dx\right|
\le C_a\|u(t)\|_{L^\infty}\int w_a|u|^2dx.
```

On a finite classical interval, smoothness gives

```math
\sup_{t\le T}\|u(t)\|_{L^\infty}\le C_T.
```

Hence

```math
\left|\int |u|^2u\cdot\nabla w_a dx\right|
\le C_{a,T}M_a(t).
```

## Consequence

The weighted moment equation reduces to

```math
\frac d{dt}M_a(t)
\le C_{a,T}M_a(t)+2\left|\int p u\cdot\nabla w_a dx\right|.
```

Together with `PFlux.W`, this closes the weighted moment propagation theorem on every finite classical interval.

## Boundary

The proof uses finite classical-window boundedness. A weak-solution version needs an alternate integrability supplier for the factor `||u||_infty`.