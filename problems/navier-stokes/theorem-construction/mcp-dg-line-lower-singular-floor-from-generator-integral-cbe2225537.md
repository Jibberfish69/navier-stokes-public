# DG-Line Lower Singular Floor From Generator Integral

## Status

Conditional theorem.

Assume the reduced cocycle satisfies

```math
\partial_t H_J=G_J(t)H_J
```

on a finite retained strip. The inverse satisfies

```math
\partial_t H_J^{-1}=-H_J^{-1}G_J(t).
```

By Gronwall,

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

we get

```math
\sigma_2(H_J(t))
\ge
\sigma_{min}(H_J(t_0))
\exp\left(-\int_I\|G_J(t)\|_{op}dt\right).
```

If `H_J(t0)=I` and, on a positive-mass retained family,

```math
\int_I\|G_J(t)\|_{op}dt\le L_*<\infty,
```

then

```math
\sigma_2(H_J(t))\ge e^{-L_*}=:s_*>0.
```

This proves the lower singular-value floor needed by `DG-Line^sharp`.

## Source hypothesis retained

```text
positive-mass retained generator-integral bound:
int_I ||G_J||_op dt <= L_*.
```