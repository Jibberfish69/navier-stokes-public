# BootSquare Weight Uniform Integrability Criterion

## Status

Conditional theorem.

Let `M_J^2` be the BootSquare weight relative to `mu_J`. A sufficient condition for uniform integrability is a uniform higher moment: for some `delta>0`,

```math
\sup_J \int (M_J^2)^{1+\delta}d\mu_J <= C.
```

Then for every `K>0`, on the set `{M_J^2>K}` one has

```math
M_J^2 <= K^{-\delta}(M_J^2)^{1+\delta}.
```

Therefore

```math
\sup_J\int_{\{M_J^2>K\}}M_J^2d\mu_J
<= C K^{-\delta} -> 0.
```

So `M_J^2` is uniformly integrable with respect to `mu_J`.

## Bounded-weight corollary

If `M_J^2` is uniformly bounded on the retained family and `mu_J` has controlled total mass, then `M_J^2` is uniformly integrable.

## Source estimate retained

```text
prove either a uniform higher-moment bound for M_J^2,
or a direct bounded-weight theorem on the retained family.
```