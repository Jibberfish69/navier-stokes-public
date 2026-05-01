# BootSquare Weight Uniform Integrability Criterion

## Status

Conditional theorem.

Uniform integrability of `M_J^2` means

```text
sup_J integral_{M_J^2 > K} M_J^2 dmu_J -> 0 as K -> infinity.
```

A sufficient condition is a uniform higher-integrability bound: for some `delta > 0`,

```math
\sup_J \int (M_J^2)^{1+\delta} d\mu_J < \infty.
```

Indeed, on the set where `M_J^2 > K`,

```math
M_J^2 <= K^{-\delta}(M_J^2)^{1+\delta}.
```

Hence

```math
\int_{M_J^2>K}M_J^2d\mu_J
\le
K^{-\delta}\int (M_J^2)^{1+\delta}d\mu_J.
```

Taking the supremum over `J` and then sending `K` to infinity proves uniform integrability.

## Source estimate retained

```text
prove uniform L^{1+delta} control of M_J^2,
or boundedness / superlinear Orlicz control by de la Vallee Poussin.
```