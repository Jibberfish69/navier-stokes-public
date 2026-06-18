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

has `M_a^{3/2}\in L^1(0,T)`, and assume the annular far-kernel has finite
weighted Schur constant

```math
C_a^{far}:=
\sup_{\|x\|_{\ell^2}=1}
\sum_{k,\ell}
2^{(2a-1)k}|A_k|^{1/2}
2^{-3\max\{k,\ell\}}
2^{-ak}2^{-2a\ell}
|x_k|\,|x_\ell|^2
<\infty.
```

Then the far contribution

```math
\sum_k2^{(2a-1)k}\int_0^TF_k(t)\|u(t)\|_{L^2(A_k)}dt
```

is finite.

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

Weighted Cauchy-Schwarz with the moment weights turns the double sum into the
Schur form controlled by `C_a^{far}`, giving

```math
\sum_k2^{(2a-1)k}F_k\|u\|_{L^2(A_k)}
\le C\,C_a^{far} M_a(t)^{3/2}.
```

Integrating over `[0,T]` proves the far summability.

## Consequence

The far-pressure part of `PFlux.Supplier` is closed by weighted moment control and annular kernel decay.

## Boundary

This theorem supplies the far term. The near term uses the weighted annular `L4` source estimate.
