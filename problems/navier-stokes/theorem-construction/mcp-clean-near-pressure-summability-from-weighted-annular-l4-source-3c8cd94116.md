# Clean Near-Pressure Summability From Weighted Annular L4 Source

## Statement

Assume

```math
\sum_k2^{2ak}\int_0^T\|u(t)\|_{L^4(A_k^*)}^4dt<\infty
```

and

```math
\sup_{t\le T}\sum_k2^{2ak}\|u(t)\|_{L^2(A_k)}^2<\infty.
```

Then

```math
\sum_k2^{(2a-1)k}\int_0^T
\|u\otimes u\|_{L^2(A_k^*)}\|u\|_{L^2(A_k)}dt<\infty.
```

## Proof

Use

```math
\|u\otimes u\|_{L^2(A_k^*)}=\|u\|_{L^4(A_k^*)}^2.
```

For each time,

```math
\sum_k2^{(2a-1)k}\|u\|_{L^4(A_k^*)}^2\|u\|_{L^2(A_k)}
\le
\left(\sum_k2^{2ak}\|u\|_{L^4(A_k^*)}^4\right)^{1/2}
\left(\sum_k2^{(2a-2)k}\|u\|_{L^2(A_k)}^2\right)^{1/2}.
```

For `0<a<=1`, the second factor is bounded by the weighted moment. For `a>1`, use the corresponding stronger moment. Integrating in time and applying the `AnnL4.W` input proves the summability.

## Consequence

The near pressure contribution to `PFlux.Supplier` is closed by weighted annular `L4` smoothing plus weighted moment control.