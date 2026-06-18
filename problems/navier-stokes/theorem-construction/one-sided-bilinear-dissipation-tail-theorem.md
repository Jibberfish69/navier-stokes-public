# One-Sided Bilinear Dissipation-Tail Theorem

## Purpose

This note records the first exact downstream bilinear consequence of the
frontier square theorem `(SDS^\sharp)`, together with the direct algebraic role
it still plays in the reduction of `(UTKD^\sharp)`.

Fix `M\ge 4`, let `u` be the exact Euclidean Navier-Stokes solution on
`[0,T)\times\mathbb R^3`, and define

```math
D_j(t):=2^{4j}\|\Delta_j u(t)\|_{L_x^2}^2,
\qquad
\mathcal D_k^\sigma(t):=\sum_{j>k+4}2^{-\sigma(j-k)}D_j(t),
```

and

```math
\mathcal T_j^\sigma(t):=
\sum_{\ell\ge j}2^{-\sigma(\ell-j)}D_\ell(t).
```

## First Bilinear Consequence Of SDS-Sharp

The downstream bilinear theorem is

```math
\textbf{Lemma 1.}\qquad
\text{(SDS}^\sharp\text{)}
\Longrightarrow
\text{(NE}^\sharp\text{)},
\qquad
\textbf{(NE}^\sharp\text{) One-sided weighted bilinear dissipation-tail theorem}
```

with statement

```math
\int_0^T
\sum_{j>N+M+4}
2^jD_j(t)\,\mathcal T_j^\sigma(t)\,dt
\le
C_*2^{-2\delta N}.
```

Equivalently,

```math
\int_0^T
\sum_{j>N+M+4}\sum_{\ell\ge j}
2^{j-\sigma(\ell-j)}D_j(t)D_\ell(t)\,dt
\le
C_*2^{-2\delta N}.
```

Because `D_j(t)\le \mathcal T_j^\sigma(t)`, `(SDS^\sharp)` implies
`(NE^\sharp)` by direct comparison.

## Why NE-Sharp Is Still Important

The direct algebraic reduction from the upper-tail square still lands on
`(NE^\sharp)`. Expanding `(UTKD^\sharp)` gives

```math
\sum_{k>N+M}2^k\big(\mathcal D_k^\sigma(t)\big)^2
=
\sum_{k>N+M}2^k
\sum_{j,\ell>k+4}
2^{-\sigma(j-k)}2^{-\sigma(\ell-k)}D_j(t)D_\ell(t).
```

Swapping the order of summation and evaluating the geometric `k`-sum yields

```math
\sum_{k>N+M}2^k\big(\mathcal D_k^\sigma(t)\big)^2
\le C_\sigma
\sum_{j>N+M+4}\sum_{\ell\ge j}
2^{j-\sigma(\ell-j)}D_j(t)D_\ell(t)
=
\sum_{j>N+M+4}2^jD_j(t)\,\mathcal T_j^\sigma(t).
```

So `(NE^\sharp)` still implies `(UTKD^\sharp)` directly.

## Position In The Route

The precise route is now

```math
\text{(SDS}^\sharp\text{)}
\Longrightarrow
\text{(NE}^\sharp\text{)}
\Longrightarrow
\text{(UTKD}^\sharp\text{)}
\Longrightarrow
\text{(PCI}^\sharp\text{)}
\Longrightarrow
\text{(MSI}^\sharp\text{)}
\Longrightarrow
\text{lifted remainder closure}.
```

The frontier theorem is `(SDS^\sharp)`. The bilinear theorem `(NE^\sharp)`
remains the first direct algebraic endpoint exposed by expansion of
`(UTKD^\sharp)`.

## Honest Boundary

This note does not prove `(SDS^\sharp)` or `(NE^\sharp)` independently.

What it fixes is the exact bilinear rung in the conditional closure stack below
`(SDS^\sharp)`.
