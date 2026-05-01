# Positive Carrier Replacement For Lifted Remainder

## Statement

Let

```math
\mathcal R_{j,k,\ell}^{lift}
=
2^{2j}\langle[\Delta_j,\Delta_k u\cdot\nabla]\Delta_\ell u,\Delta_j u\rangle
```

on the support

```math
j\ge N,
\qquad
N+M<k<j-4,
\qquad
|\ell-j|\le C_{LP}.
```

Set

```math
a_k(t):=2^{3k/2}\|\Delta_k u(t)\|_2,
\qquad
U_k(t):=\sum_{\ell>k+4}D_\ell(t).
```

Then the absolute-value envelope of the lifted weighted sum obeys

```math
|\mathfrak G_N^{lift,\sigma}(t)|
\le
C\sum_{k>N}2^k a_k(t)U_k(t).
```

Consequently, for every `\varepsilon>0`,

```math
|\mathfrak G_N^{lift,\sigma}(t)|
\le
\varepsilon\sum_{k>N}2^kU_k(t)^2
+C_\varepsilon\sum_{k>N}D_k(t).
```

## Proof

The commutator estimate in the output collar gives

```math
|\mathcal R_{j,k,\ell}^{lift}|
\le
C\,2^j a_k D_\ell
```

after the fixed Littlewood-Paley collar constants are absorbed. The weighted lifted sum has finite `\ell`-multiplicity at each output shell and the support condition `N+M<k<j-4`. Taking absolute values and summing first in `j` over the admissible range below each `k` gives

```math
\sum_{N<j<k-M}2^j\le C2^k.
```

Then summing the active shells above `k` gives

```math
|\mathfrak G_N^{lift,\sigma}|
\le
C\sum_{k>N}2^k a_k\sum_{\ell>k+4}D_\ell
=
C\sum_{k>N}2^k a_kU_k.
```

Apply Young's inequality:

```math
2^k a_kU_k
\le
\varepsilon2^kU_k^2+C_\varepsilon2^k a_k^2.
```

Since

```math
2^k a_k^2=D_k,
```

we obtain

```math
|\mathfrak G_N^{lift,\sigma}|
\le
\varepsilon\sum_{k>N}2^kU_k^2
+C_\varepsilon\sum_{k>N}D_k.
```

## Consequence

The signed lifted-remainder branch has an exact positive replacement. The next theorem is the upper-tail-square carrier estimate

```math
\int_0^T\sum_{k>N}2^k\left(\sum_{\ell>k+4}D_\ell(t)\right)^2dt
```

with a reserve strong enough to absorb the remaining tail dissipation term.