# Weighted Pressure-Tail Supplier For `PFlux.W`

## Target

Supply the annular pressure summability condition used by `PFlux.W`:

```math
PFlux.Supplier:
\quad
\sum_{k\ge0}2^{(2a-1)k}\int_0^T\|p(t)\|_{L^2(A_k)}\|u(t)\|_{L^2(A_k)}dt<\infty.
```

## Theorem `PTail.W`

Assume that, for some `a>0`,

```math
M_a(t)=\int (1+|x|^2)^a|u(t,x)|^2dx
```

is bounded on `[0,T]`, and assume the weighted pressure tail satisfies

```math
\sum_{k\ge0}2^{(2a-1)k}\int_0^T\|p(t)\|_{L^2(A_k)}\|u(t)\|_{L^2(A_k)}dt<\infty.
```

Then `PFlux.W` holds.

A sufficient concrete supplier is the stronger annular estimate

```math
\|p(t)\|_{L^2(A_k)}\le C2^{-bk}P_k(t),
```

with

```math
\sum_{k\ge0}2^{(2a-1-b)k}\int_0^TP_k(t)\|u(t)\|_{L^2(A_k)}dt<\infty.
```

## Route To Prove The Supplier

Split the pressure source against annuli:

```math
p=R_iR_j(u_iu_j)=p_k^{near}+p_k^{far}
```

on `A_k`, where `p_k^{near}` is sourced by `c2^k\le |y|\le C2^k` and `p_k^{far}` by the complement. The near part is controlled by Calderon-Zygmund on a fat annulus:

```math
\|p_k^{near}\|_{L^2(A_k)}\le C_{CZ}\|u\otimes u\|_{L^2(A_k^*)}.
```

This term requires local smoothness or an annular `L^4` control for `u`. The far part has kernel decay and is controlled by weighted energy tails:

```math
\|p_k^{far}\|_{L^2(A_k)}
\le C_{far}2^{-\sigma k}\sum_{\ell}2^{-c|k-\ell|}M_a(t).
```

Thus the pressure-tail supplier follows from weighted energy plus enough local annular smoothing to control `u\otimes u` in the near annulus.

## Conclusion

The pressure-flux estimate is reduced to a concrete annular supplier: weighted energy handles far pressure, while the near pressure requires annular local smoothing or `L^4`-type control. This is the sharp weighted pressure-tail subproblem feeding exterior decay propagation.

## Boundary

This note does not claim weighted `L^2` velocity alone controls the full pressure tail. It identifies the precise extra annular product-source control needed to close `PFlux.Supplier`.
