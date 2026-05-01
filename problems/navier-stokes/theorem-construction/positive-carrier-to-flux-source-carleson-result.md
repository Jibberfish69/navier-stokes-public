# Positive Carrier To Flux-Source Carleson Result

## Input

The positive replacement gives the interval bound

```math
\mathrm{LiftSrc}(t)
\le
\varepsilon\sum_{k>N}2^kU_k(t)^2
+C_\varepsilon\sum_{k>N}D_k(t),
```

where

```math
U_k(t)=\sum_{\ell>k+4}D_\ell(t).
```

## Conditional theorem

Assume the upper-tail-square carrier estimate

```math
\int_I\sum_{k>N}2^kU_k(t)^2dt
\le
\varepsilon\nu\int_I D_N(t)dt+C2^{-2\delta N}.
```

Then

```math
\int_I \mathrm{LiftSrc}(t)dt
\le
\varepsilon'\nu\int_I D_N(t)dt+C_{\varepsilon'}2^{-2\delta N}.
```

## Proof

Integrate the positive replacement over `I`. Insert the upper-tail-square estimate for the first term and use

```math
\sum_{k>N}D_k(t)\le D_N(t)
```

for the second term. Choose the dissipation fractions inside the available budget.

## Boundary

The positive-carrier route reduces the source estimate to the upper-tail-square carrier theorem:

```math
\int_I\sum_{k>N}2^k\left(\sum_{\ell>k+4}D_\ell(t)\right)^2dt
\le
\varepsilon\nu\int_I D_N(t)dt+C2^{-2\delta N}.
```