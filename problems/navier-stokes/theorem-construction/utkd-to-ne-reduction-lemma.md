# UTKD to NE Reduction Lemma

## Purpose

This note isolates the direct algebraic reduction from the upper-tail
kernelized dissipation theorem `(UTKD)` to the one-sided weighted bilinear
dissipation-tail theorem `(NE)`.

Fix `M\ge 4`, let `u` be the exact Euclidean Navier-Stokes solution on
`[0,T)\times\mathbb R^3`, and define

```math
D_j(t):=2^{4j}\|\Delta_j u(t)\|_{L_x^2}^2,
\qquad
\mathcal D_k^\sigma(t):=\sum_{j>k+4}2^{-\sigma(j-k)}D_j(t),
```

and

```math
\mathcal T_j^\sigma(t):=\sum_{\ell\ge j}2^{-\sigma(\ell-j)}D_\ell(t).
```

## Lemma Statement

For every `\sigma>0` and almost every `t`,

```math
\sum_{k>N+M}2^k\big(\mathcal D_k^\sigma(t)\big)^2
\le C_\sigma
\sum_{j>N+M+4}2^j D_j(t)\,\mathcal T_j^\sigma(t).
```

Consequently, the one-sided weighted bilinear dissipation-tail theorem

```math
\textbf{(NE)}
\qquad
\int_0^T
\sum_{j>N+M+4}2^j D_j(t)\,\mathcal T_j^\sigma(t)\,dt
\le
C_*2^{-2\delta N}
```

implies `(UTKD)`.

## Proof

Expand the square:

```math
\sum_{k>N+M}2^k\big(\mathcal D_k^\sigma(t)\big)^2
=
\sum_{k>N+M}2^k
\sum_{j,\ell>k+4}
2^{-\sigma(j-k)}2^{-\sigma(\ell-k)}D_j(t)D_\ell(t).
```

Swap the order of summation:

```math
\sum_{k>N+M}2^k\big(\mathcal D_k^\sigma(t)\big)^2
=
\sum_{j,\ell>N+M+4}
D_j(t)D_\ell(t)
\sum_{\substack{k>N+M\\k<j-4\\k<\ell-4}}
2^k2^{-\sigma(j-k)}2^{-\sigma(\ell-k)}.
```

If `m:=\min\{j,\ell\}`, then

```math
\sum_{\substack{k>N+M\\k<j-4\\k<\ell-4}}
2^k2^{-\sigma(j-k)}2^{-\sigma(\ell-k)}
=
2^{-\sigma(j+\ell)}
\sum_{N+M<k<m-4}2^{(1+2\sigma)k}
\le C_{\sigma,0}
2^{-\sigma(j+\ell)}2^{(1+2\sigma)m}.
```

Assume `j\le \ell` and symmetrize. Then

```math
2^{-\sigma(j+\ell)}2^{(1+2\sigma)j}
=
2^{(1+\sigma)j-\sigma\ell}
=
2^j\,2^{-\sigma(\ell-j)}.
```

Hence

```math
\sum_{k>N+M}2^k\big(\mathcal D_k^\sigma(t)\big)^2
\le C_\sigma
\sum_{j>N+M+4}\sum_{\ell\ge j}
2^{j-\sigma(\ell-j)}D_j(t)D_\ell(t)
=
\sum_{j>N+M+4}2^j D_j(t)\,\mathcal T_j^\sigma(t).
```

This is the claimed reduction.

Here `C_{\sigma,0}:=(1-2^{-(1+2\sigma)})^{-1}` is the geometric-sum constant,
and `C_\sigma` also absorbs the final symmetric exchange of `j` and `\ell`.

## Route Position

This lemma fixes the algebraic endpoint:

```math
\text{(NE)}
\Longrightarrow
\text{(UTKD)}
\Longrightarrow
\text{(PC)}
\Longrightarrow
\text{(MSI)}.
```

## Honest Boundary

This note proves only the reduction.

It does not prove `(NE)`. That theorem remains the first genuinely new theorem
after the displayed algebraic reductions.
