# Full PFlux Supplier Closure From Near And Far Pressure Summability

## Target

Close

```math
PFlux.Supplier:
\sum_k2^{(2a-1)k}\int_0^T\|p\|_{L^2(A_k)}\|u\|_{L^2(A_k)}dt<\infty.
```

## Inputs

The annular pressure decomposition gives

```math
\|p-c_k\|_{L^2(A_k)}
\le C\|u\otimes u\|_{L^2(A_k^*)}+F_k.
```

The near summability theorem gives

```math
\sum_k2^{(2a-1)k}\int_0^T\|u\otimes u\|_{L^2(A_k^*)}\|u\|_{L^2(A_k)}dt<\infty.
```

The far summability theorem gives

```math
\sum_k2^{(2a-1)k}\int_0^TF_k\|u\|_{L^2(A_k)}dt<\infty.
```

## Theorem `PFlux.Supplier.Close`

Under those inputs,

```math
PFlux.Supplier
```

holds, and hence `PFlux.W` holds.

## Proof

Insert the annular pressure decomposition into the supplier sum:

```math
\sum_k2^{(2a-1)k}\int\|p-c_k\|_{L^2(A_k)}\|u\|_{L^2(A_k)}
```

```math
\le
C\sum_k2^{(2a-1)k}\int\|u\otimes u\|_{L^2(A_k^*)}\|u\|_{L^2(A_k)}
+
C\sum_k2^{(2a-1)k}\int F_k\|u\|_{L^2(A_k)}.
```

The first term is finite by near summability. The second is finite by far summability. The annular mean `c_k(t)` contributes no gradient pressure flux after the pressure is represented by the normalized Riesz pressure, because `\nabla c_k(t)=0` on each annulus. Equivalently, subtracting `c_k(t)` changes only the pressure gauge on that annulus.

Therefore `PFlux.Supplier` holds. The previously installed `PFlux.W` theorem then gives the weighted pressure flux estimate.

## Consequence

With `PFlux.W` and `ConvFlux.W`, the weighted moment theorem gives `Moment.W`, then exterior tightness follows.

## Boundary

This theorem closes the pressure-flux supplier conditionally on `AnnL4.W` and weighted moment control. The sharp remaining source estimate is the weighted annular `L4` smoothing theorem.
