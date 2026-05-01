# Exterior Tightness Closure From Weighted Moment

## Statement

Assume

```math
\sup_{t\le T}M_a(t)=\sup_{t\le T}\int (1+|x|^2)^a|u(t,x)|^2dx<\infty
```

for some `a>0`. Then

```math
\lim_{R\to\infty}\sup_{t\le T}\int_{|x|>R}|u(t,x)|^2dx=0.
```

## Proof

For `|x|>R`,

```math
1\le R^{-2a}(1+|x|^2)^a.
```

Therefore

```math
\int_{|x|>R}|u(t,x)|^2dx
\le
R^{-2a}M_a(t).
```

Taking the supremum over `t<=T` gives

```math
\sup_{t\le T}\int_{|x|>R}|u(t,x)|^2dx
\le
R^{-2a}\sup_{t\le T}M_a(t).
```

The right side tends to zero as `R->infty`.

## Consequence

`Moment.W` implies `Tail.E`.