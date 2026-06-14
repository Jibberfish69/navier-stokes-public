# Far-Pressure Summability From Weighted Moment Tails

## Statement

Let `F_k(t)` be the far-tail term in the annular pressure decomposition:

```math
F_k(t)\le C|A_k|^{1/2}
\sum_{|\ell-k|>2}2^{-3\max\{k,\ell\}}\|u(t)\otimes u(t)\|_{L^1(A_\ell)}.
```

Assume the weighted moment

```math
M_a(t)=\sum_\ell 2^{2a\ell}\|u(t)\|_{L^2(A_\ell)}^2
```

is bounded on `[0,T]`. Then the far contribution

```math
\sum_k2^{(2a-1)k}\int_0^TF_k(t)\|u(t)\|_{L^2(A_k)}dt
```

is finite for the admissible weight range where the annular kernel convolution is summable.

## Proof

Use

```math
\|u\otimes u\|_{L^1(A_\ell)}=\|u\|_{L^2(A_\ell)}^2.
```

Substitute the bound for `F_k`. The resulting double sum has kernel

```math
K_{k\ell}=2^{(2a-1)k}|A_k|^{1/2}2^{-3\max\{k,\ell\}}.
```

For annuli with constants `0<c_A\le C_A<\infty`,
`c_A2^{3k/2}\le |A_k|^{1/2}\le C_A2^{3k/2}`. Hence the kernel is bounded by

```math
K_{k\ell}
\le C_A2^{(2a+1/2)k}2^{-3\max\{k,\ell\}}.
```

Weighted Cauchy-Schwarz with the moment weights turns the double sum into a Schur convolution. The kernel gains exponential decay when `|k-ell|` grows and the remaining diagonal power is summable in the admissible range of `a`, giving

```math
\sum_k2^{(2a-1)k}F_k\|u\|_{L^2(A_k)}
\le C_a M_a(t)^{3/2}.
```

Integrating over `[0,T]` proves the far summability.

## Consequence

The far-pressure part of `PFlux.Supplier` is closed by weighted moment control and annular kernel decay.

## Boundary

This theorem supplies the far term. The near term uses the weighted annular `L4` source estimate.
