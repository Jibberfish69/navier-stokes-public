# DG-Line Lower Singular-Value Floor From Finite-Time Generator Bound

## Status

Conditional theorem.

Let the reduced cocycle solve

```math
\partial_t H_J=G_J(t)H_J
```

on a finite strip, with `H_J(t0)` invertible. Then the inverse satisfies

```math
\partial_t H_J^{-1}=-H_J^{-1}G_J(t).
```

Gronwall gives

```math
\|H_J(t)^{-1}\|_{op}
\le
\|H_J(t_0)^{-1}\|_{op}
\exp\left(\int_I\|G_J(t)\|_{op}dt\right).
```

Since

```math
\sigma_{min}(H_J(t))=\|H_J(t)^{-1}\|_{op}^{-1},
```

we obtain

```math
\sigma_2(H_J(t))
\ge
\sigma_{min}(H_J(t_0))
\exp\left(-\int_I\|G_J(t)\|_{op}dt\right).
```

If `H_J(t0)=I`, this is

```math
\sigma_2(H_J(t))
\ge
\exp\left(-\int_I\|G_J(t)\|_{op}dt\right).
```

Therefore, on any positive-mass retained subfamily where

```math
\int_I\|G_J(t)\|_{op}dt\le L_*<\infty,
```

one has

```math
\sigma_2(H_J(t))\ge e^{-L_*}=:s_*>0.
```

## Source estimate needed

```text
positive-mass retained bound on the reduced generator integral
int_I ||G_J||_op dt <= L_*.
```