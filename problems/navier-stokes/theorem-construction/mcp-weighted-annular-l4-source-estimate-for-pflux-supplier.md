# Weighted Annular L4 Source Estimate For PFlux.Supplier

## Target

Supply

```math
\sum_k 2^{2ak}\int_0^T\|u(t)\|_{L^4(A_k^*)}^4dt<\infty.
```

## Theorem `AnnL4.W`

Assume the weighted local smoothing source

```math
\sum_k2^{2ak}\int_0^T\|u(t)\|_{L^4(A_k)}^4dt<\infty.
```

Then the fat-annulus source satisfies

```math
\sum_k2^{2ak}\int_0^T\|u(t)\|_{L^4(A_k^*)}^4dt<\infty.
```

## Proof

The fat annulus `A_k^*` is the union of finitely many annuli `A_j` with `|j-k|<=2`. Hence

```math
\|u\|_{L^4(A_k^*)}^4
\le C\sum_{|j-k|\le2}\|u\|_{L^4(A_j)}^4.
```

Also `c_a2^{2aj}\le 2^{2ak}\le C_a2^{2aj}` for `|j-k|<=2`. Summing over `k` and using finite overlap gives

```math
\sum_k2^{2ak}\int_0^T\|u\|_{L^4(A_k^*)}^4dt
\le C_a
\sum_j2^{2aj}\int_0^T\|u\|_{L^4(A_j)}^4dt.
```

The right side is finite by the weighted local smoothing source.

## Supplier Form

A route-level sufficient source is

```math
\sum_k2^{2ak}\int_0^T\|u\|_{L^4(A_k)}^4dt<\infty.
```

This can be pursued through localized cascade/local Hs control on annuli or through a weighted smoothing theorem.

## Boundary

This note converts a weighted local smoothing source into the fat-annulus L4 estimate needed by `PFlux.Supplier`. The weighted smoothing source remains the analytic input.
