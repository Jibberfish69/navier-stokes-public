# HFG.low: Strict Low-Mode Strain Suppression Result

## Status

The all-shell inequality

```math
\|\nabla S_{j-1}u(t)\|_{L^\infty}\le c\nu2^{2j}
```

is false from smooth divergence-free data alone: a fixed low Fourier mode with
arbitrary amplitude is included in `S_{j-1}` once `j` is large enough, while
the right side is fixed by `\nu` and the shell index. The theorem-grade result
is the dynamic-threshold version below, plus the exact residual low-shell
summation law.

## Theorem `HFG.low`

For a smooth classical solution on a time interval where the dyadic vorticity
ledger is defined, set

```math
A_{j-1}(t):=\|\nabla S_{j-1}u(t)\|_{L^\infty}.
```

Then

```math
A_{j-1}(t)\le C\|\omega(t)\|_{L^2}2^{3j/2}.
```

Consequently, for every fixed absorption constant `c>0`,

```math
A_{j-1}(t)\le c\nu2^{2j}
```

whenever

```math
2^{j/2}\ge C_c\nu^{-1}\|\omega(t)\|_{L^2}.
```

Thus low-mode strain is strictly absorbable on the high-shell range

```math
j\ge J(t):=
\left\lceil
2\log_2(C_c\nu^{-1}\|\omega(t)\|_{L^2})
\right\rceil.
```

## Proof

By Bernstein and the dyadic Biot-Savart relation,

```math
\|\nabla\Delta_k u(t)\|_{L^\infty}
\le C2^{3k/2}\|\nabla\Delta_k u(t)\|_{L^2}
\le C2^{3k/2}\|\Delta_k\omega(t)\|_{L^2}.
```

Therefore

```math
A_{j-1}(t)
\le
C\sum_{k<j}2^{3k/2}\|\Delta_k\omega(t)\|_{L^2}.
```

Cauchy-Schwarz gives

```math
\sum_{k<j}2^{3k/2}\|\Delta_k\omega\|_2
\le
\left(\sum_{k<j}2^k\right)^{1/2}
\left(\sum_{k<j}2^{2k}\|\Delta_k\omega\|_2^2\right)^{1/2}.
```

The second factor is bounded by `\|\omega\|_{\dot H^1}` if read literally, but
the sharper strain estimate uses the velocity-side form

```math
\|\nabla S_{j-1}u\|_\infty
\le
C\sum_{k<j}2^{5k/2}\|\Delta_k u\|_2.
```

Applying Cauchy-Schwarz as

```math
\sum_{k<j}2^{5k/2}\|\Delta_k u\|_2
\le
\left(\sum_{k<j}2^{2k}\|\Delta_k u\|_2^2\right)^{1/2}
\left(\sum_{k<j}2^{3k}\right)^{1/2}
```

and using

```math
\left(\sum_{k<j}2^{2k}\|\Delta_k u\|_2^2\right)^{1/2}
\le C_\nabla \|\nabla u\|_2,
\qquad
c_\omega\|\omega\|_2\le \|\nabla u\|_2\le C_\omega\|\omega\|_2,
```

we obtain

```math
A_{j-1}(t)\le C\|\omega(t)\|_2 2^{3j/2}.
```

The threshold condition

```math
C\|\omega(t)\|_2 2^{3j/2}\le c\nu2^{2j}
```

is exactly

```math
2^{j/2}\ge C_c\nu^{-1}\|\omega(t)\|_2.
```

This proves strict low-mode absorption on `j>=J(t)`.

## Residual low-shell summation law

For shells below `J(t)`,

```math
\sum_{j<J(t)}2^{3j/2}\|\Delta_j\omega(t)\|_2
\le
\left(\sum_{j<J(t)}2^{2j}\|\Delta_j\omega(t)\|_2^2\right)^{1/2}
\left(\sum_{j<J(t)}2^j\right)^{1/2}.
```

Thus

```math
\sum_{j<J(t)}2^{3j/2}\|\Delta_j\omega(t)\|_2
\le
C\|\nabla\omega(t)\|_2 2^{J(t)/2}
\le
C\nu^{-1}\|\omega(t)\|_2\|\nabla\omega(t)\|_2.
```

Therefore the residual low-shell part of `HFG` is controlled exactly by

```math
\int_0^T\|\omega(t)\|_2\|\nabla\omega(t)\|_2\,dt.
```

## Boundary

`HFG.low` closes the strict low-mode strain suppression on the required
high-shell range and identifies the residual summation law. It does not, by
itself, prove the residual mixed enstrophy-gradient integral from the baseline
energy layer.
