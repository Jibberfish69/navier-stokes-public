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

This term requires the exact annular `L^4` source

```math
AnnL4.W:\qquad
\sum_k2^{2ak}\int_0^T\|u(t)\|_{L^4(A_k^*)}^4dt<\infty.
```

Together with

```math
\sup_{t\le T}\sum_k2^{2ak}\|u(t)\|_{L^2(A_k)}^2<\infty,
```

weighted Cauchy-Schwarz gives the near summability input

```math
S_{near}:=
\sum_k2^{(2a-1)k}\int_0^T
\|u\otimes u\|_{L^2(A_k^*)}\|u\|_{L^2(A_k)}dt<\infty.
```

The far part is controlled only after the annular kernel tail is paid.  With
`F_k(t)` as in the annular pressure decomposition, the required far input is

```math
S_{far}:=
\sum_k2^{(2a-1)k}\int_0^TF_k(t)\|u(t)\|_{L^2(A_k)}dt<\infty.
```

A sufficient exact far theorem is the weighted Schur estimate

```math
\sum_k2^{(2a-1)k}F_k(t)\|u(t)\|_{L^2(A_k)}
\le C C_a^{far} M_a(t)^{3/2},
```

with `C_a^{far}<infty` and `M_a^{3/2} in L^1(0,T)`.  One sufficient dyadic
kernel hypothesis for the far pressure is the explicit bound

```math
\|p_k^{far}\|_{L^2(A_k)}
\le C_{far}2^{-\sigma k}\sum_{\ell}2^{-c|k-\ell|}M_a(t).
```

This displayed kernel bound is a hypothesis strong enough to imply the weighted
Schur estimate; it is not a replacement for proving that the actual pressure
tail satisfies it on the same annular family.

Thus the pressure-tail supplier follows from the exact pair
`AnnL4.W + S_far`, with the weighted moment controlling the velocity factor in
the near term.  Weighted energy alone does not close the near annular product
source.

## Conclusion

The pressure-flux estimate is reduced to a concrete annular supplier: the near
pressure requires `AnnL4.W` plus weighted moment control, and the far pressure
requires the displayed `F_k` summability or the weighted Schur theorem above.
This is the sharp weighted pressure-tail subproblem feeding exterior decay
propagation.

## Boundary

This note does not claim weighted `L^2` velocity alone controls the full pressure tail. It identifies the precise extra annular product-source control needed to close `PFlux.Supplier`.
