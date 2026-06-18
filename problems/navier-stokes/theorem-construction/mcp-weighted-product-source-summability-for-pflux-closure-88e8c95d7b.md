# Weighted Product-Source Summability For `PFlux` Closure

## Target

Close the pressure-flux supplier

```math
PFlux.Supplier:
\sum_k2^{(2a-1)k}\int_0^T\|p\|_{L^2(A_k)}\|u\|_{L^2(A_k)}dt<\infty.
```

## Input From Annular Pressure Estimate

The annular pressure estimate gives, after subtracting annular means
`c_k(t)` with `\nabla c_k(t)=0`,

```math
\|p\|_{L^2(A_k)}
\le
C\|u\otimes u\|_{L^2(A_k^*)}+F_k.
```

Therefore the near-source summability reduces to

```math
\sum_k2^{(2a-1)k}\int_0^T
\|u\|_{L^4(A_k^*)}^2\|u\|_{L^2(A_k)}dt<\infty.
```

## Sufficient Near-Annulus Supplier

A concrete sufficient estimate is

```math
\sum_k2^{(2a-1)k}\int_0^T
\|u\|_{L^4(A_k^*)}^2\|u\|_{L^2(A_k)}dt<\infty.
```

This follows from the exact weighted annular `L4` source

```math
\sum_k2^{2ak}\int_0^T\|u\|_{L^4(A_k^*)}^4dt<\infty
```

plus the weighted moment bound

```math
\sup_{t\le T}\sum_k2^{2ak}\|u(t)\|_{L^2(A_k)}^2<\infty.
```

Indeed, weighted Cauchy-Schwarz gives

```math
\sum_k2^{(2a-1)k}\|u\|_{L^4(A_k^*)}^2\|u\|_{L^2(A_k)}
\le
\left(\sum_k2^{2ak}\|u\|_{L^4(A_k^*)}^4\right)^{1/2}
\left(\sum_k2^{(2a-2)k}\|u\|_{L^2(A_k)}^2\right)^{1/2}.
```

The second factor is controlled by the weighted moment when `a<=1`, and by a slightly stronger moment when `a>1`.

## Far-Tail Supplier

The far-tail pressure term is controlled if

```math
\sum_k2^{(2a-1)k}\int_0^TF_k(t)\|u(t)\|_{L^2(A_k)}dt<\infty.
```

The exact far-tail theorem is separate.  It assumes the annular kernel bound

```math
F_k(t)\le C|A_k|^{1/2}
\sum_{|\ell-k|>2}2^{-3\max\{k,\ell\}}
\|u(t)\|_{L^2(A_\ell)}^2
```

and a finite weighted Schur constant `C_a^{far}` such that

```math
\sum_k2^{(2a-1)k}F_k(t)\|u(t)\|_{L^2(A_k)}
\le C C_a^{far}M_a(t)^{3/2}.
```

With `M_a^{3/2} in L^1(0,T)`, this gives the displayed far-tail summability.
It is not a consequence of the near `L4` source.

## Closure

Near-source summability plus far-tail summability gives `PFlux.Supplier`; `PFlux.Supplier` gives `PFlux.W`; `PFlux.W` and the convective weighted-flux estimate give `Moment.W`.

## Boundary

The live analytic inputs are the weighted annular `L4` source for the near
term, the weighted moment for the velocity factor, and the far-tail Schur
summability for `F_k`.  The pressure-flux closure is complete only after all
three inputs are supplied.
