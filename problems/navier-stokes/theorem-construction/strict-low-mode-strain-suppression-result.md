# Strict Low-Mode Strain Suppression Result

The all-shell target is

```math
\|\nabla S_{j-1}u(t)\|_{L^\infty}\le c\nu2^{2j}.
```

A fixed low Fourier mode with arbitrary amplitude disproves this as a theorem from smooth divergence-free data alone: once the low projector contains that mode, the left side is proportional to the amplitude, while the right side is fixed by `nu` and `j`.

The valid direct estimate is

```math
\|\nabla S_{j-1}u(t)\|_{L^\infty}\le C\|\omega(t)\|_{L^2}2^{3j/2}.
```

This follows by Bernstein on each shell, Biot-Savart, summation over `k<j`, and Cauchy-Schwarz.

Thus absorption holds on shells with

```math
2^{j/2}\ge C\nu^{-1}\|\omega(t)\|_2.
```

The remaining HFG burden is the low-threshold residual

```math
\int_0^T\|\omega(t)\|_2\|\nabla\omega(t)\|_2dt<\infty,
```

or an all-scale transfer-loss theorem that removes this residual.
