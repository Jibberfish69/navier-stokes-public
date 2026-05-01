# BootSquare Weight Uniform Integrability From Higher Moment Bound

## Status

Conditional theorem.

Assume there is `delta>0` such that

```math
\sup_J\int (M_J^2)^{1+\delta}d\mu_J<\infty.
```

Then `M_J^2` is uniformly integrable with respect to `mu_J`.

Indeed, for `K>0`, on the set `{M_J^2>K}` one has

```math
M_J^2\le K^{-\delta}(M_J^2)^{1+\delta}.
```

Hence

```math
\sup_J\int_{\{M_J^2>K\}}M_J^2d\mu_J
\le
K^{-\delta}\sup_J\int(M_J^2)^{1+\delta}d\mu_J.
```

The right side tends to zero as `K` tends to infinity. Thus `M_J^2` is uniformly integrable.

## Source estimate retained

```text
prove a superlinear moment bound for M_J^2,
for example sup_J ||M_J^2||_{L^{1+delta}(dmu_J)} < infinity.
```