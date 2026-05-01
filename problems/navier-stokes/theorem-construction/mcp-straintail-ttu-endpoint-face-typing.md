# StrainTail.TTU Endpoint Face Typing

## Status

Conditional endpoint-typing theorem.

## Statement

Assume the active endpoint tower depth satisfies

```math
N\ge 1.
```

Then

```math
\mathcal S_\infty\ne\varnothing
\Longrightarrow
tower\text{-}blown.
```

In particular,

```math
\mathcal S_\infty\ne\varnothing
\Longrightarrow
packing\text{-}detached\vee tower\text{-}blown\vee Jump.
```

## Proof

Choose

```math
a\in\mathcal S_\infty.
```

By definition,

```math
\int_{t_0}^{T_*}
\|\operatorname{sym}\nabla u(\Phi(a,t),t)\|_{op}\,dt
=
\infty.
```

The interval `[t_0,T_*)` has finite length. Since the solution is smooth on every compact subinterval below `T_*`, the integrand is finite on compact subintervals. Infinite integral on the finite terminal interval forces a sequence `t_j\uparrow T_*` such that

```math
\|\operatorname{sym}\nabla u(\Phi(a,t_j),t_j)\|_{op}\to\infty.
```

The symmetric strain is bounded by the full gradient:

```math
\|\operatorname{sym}\nabla u\|_{op}
\le
\|\nabla u\|_{op}.
```

The first tower rung is

```math
U_1=\nabla u.
```

Thus

```math
|U_1(\Phi(a,t_j),t_j)|\to\infty.
```

Because the active label remains inside the terminal packet `Q_t`, the tower amplitude satisfies

```math
\mathfrak A_{N,Q}(t_j)
\ge
|U_1(\Phi(a,t_j),t_j)|
```

for `N\ge1`. Hence

```math
\sup_{t<T_*}\mathfrak A_{N,Q}(t)=\infty.
```

This is exactly the endpoint face

```math
tower\text{-}blown.
```

## Output

```math
\boxed{
\mathcal S_\infty\ne\varnothing
\Longrightarrow
tower\text{-}blown.
}
```

## Boundary

This theorem types the bad strain tail into an endpoint face. The next task is to record the conditional route from endpoint exclusion to absence of `\mathcal S_\infty`, then to `Pack.TTU`.