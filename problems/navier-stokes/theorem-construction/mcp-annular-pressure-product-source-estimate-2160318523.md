# Annular Pressure Product-Source Estimate

## Statement

Let

```math
p=\mathcal R_i\mathcal R_j(u_i u_j)
```

on `R^3`. For annuli

```math
A_k=\{2^k\le |x|\le 2^{k+1}\},
\qquad
A_k^*=\bigcup_{|j-k|\le2}A_j,
```

there is an annular constant `c_k(t)` such that

```math
\|p(t)-c_k(t)\|_{L^2(A_k)}
\le
C\|u(t)\otimes u(t)\|_{L^2(A_k^*)}+F_k(t),
```

where the far-tail term obeys

```math
F_k(t)\le C|A_k|^{1/2}
\sum_{|\ell-k|>2}2^{-3\max\{k,\ell\}}\|u(t)\otimes u(t)\|_{L^1(A_\ell)}.
```

## Proof

Choose a smooth annular cutoff `\chi_k` equal to one on `A_k^*` and supported in a slightly larger fat annulus. Split

```math
p=p_k^{near}+p_k^{far},
```

with

```math
p_k^{near}=\mathcal R_i\mathcal R_j(\chi_k u_i u_j),
\qquad
p_k^{far}=\mathcal R_i\mathcal R_j((1-\chi_k)u_i u_j).
```

The near term is controlled by Calderon-Zygmund boundedness on `L^2`:

```math
\|p_k^{near}\|_{L^2(A_k)}\le C\|u\otimes u\|_{L^2(A_k^*)}.
```

For the far term, the pressure kernel is smooth on `A_k` against every annulus outside `A_k^*`. After subtracting the annular mean `c_k`, kernel derivatives give

```math
|p_k^{far}(x)-c_k|
\le
C\sum_{|\ell-k|>2}2^{-3\max\{k,\ell\}}\|u\otimes u\|_{L^1(A_\ell)}
```

for `x in A_k`. Taking the `L^2(A_k)` norm gives the displayed `F_k`.

## Consequence For `PFlux.W`

The annular pressure-flux supplier follows once the series

```math
\sum_k2^{(2a-1)k}\int_0^T
\left(\|u\otimes u\|_{L^2(A_k^*)}+F_k\right)
\|u\|_{L^2(A_k)}dt
```

is finite.

## Boundary

This theorem is the annular pressure decomposition. Weighted summability is a separate input supplied by local smoothing and exterior-tail bounds.