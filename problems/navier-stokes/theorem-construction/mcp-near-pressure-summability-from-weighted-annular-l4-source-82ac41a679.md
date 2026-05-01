# Near-Pressure Summability From Weighted Annular L4 Source

## Statement

Assume

```math
\sum_k2^{2ak}\int_0^T\|u(t)\|_{L^4(A_k^*)}^4dt<\infty
```

and

```math
\sup_{t\le T}\sum_k2^{2ak}\|u(t)\|_{L^2(A_k)}^2<\infty.
```

Then the near-pressure part of `PFlux.Supplier` is finite:

```math
\sum_k2^{(2a-1)k}\int_0^T
\|u\otimes u
y\|_{L^2(A_k^*)}\|u\|_{L^2(A_k)}dt<\infty.
```

Interpreting the stray product notation correctly, this is

```math
\sum_k2^{(2a-1)k}\int_0^T
\|u\|_{L^4(A_k^*)}^2\|u\|_{L^2(A_k)}dt<\infty.
```

## Proof

Since

```math
\|u\otimes u\|_{L^2(A_k^*)}=\|u\|_{L^4(A_k^*)}^2,
```

apply Cauchy-Schwarz in `k` and `t`:

```math
\sum_k2^{(2a-1)k}\|u\|_{L^4(A_k^*)}^2\|u\|_{L^2(A_k)}
\le
\left(\sum_k2^{2ak}\|u\|_{L^4(A_k^*)}^4\right)^{1/2}
\left(\sum_k2^{(2a-2)k}\|u\|_{L^2(A_k)}^2\right)^{1/2}.
```

For `0<a<=1`, the second sum is bounded by the weighted moment. For larger `a`, replace the weighted moment input by the corresponding stronger moment. Integrating over time gives the result.

## Consequence

The near part of the annular pressure supplier is closed once `AnnL4.W` and the weighted moment are available.

## Boundary

This theorem closes only the near pressure source. The far-tail term `F_k` is handled separately.