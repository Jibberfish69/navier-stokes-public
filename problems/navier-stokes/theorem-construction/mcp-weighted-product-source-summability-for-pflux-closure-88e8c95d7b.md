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

This follows from a weighted local smoothing bound of the form

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

The kernel decay in `F_k` and the weighted moment give this summability under the same weighted local smoothing and exterior-tail hypotheses.

## Closure

Near-source summability plus far-tail summability gives `PFlux.Supplier`; `PFlux.Supplier` gives `PFlux.W`; `PFlux.W` and the convective weighted-flux estimate give `Moment.W`.

## Boundary

The live analytic input is the weighted local `L^4` smoothing estimate. The pressure-flux closure is complete once that source estimate is supplied.
