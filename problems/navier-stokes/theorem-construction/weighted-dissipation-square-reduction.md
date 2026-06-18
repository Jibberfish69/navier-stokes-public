# Weighted Dissipation Square Reduction

## Purpose

This note records the clean stronger sufficient theorem that implies the
upper-tail kernelized dissipation theorem `(UTKD)`.

Fix `M\ge 4`, let `u` be the exact Euclidean Navier-Stokes solution on
`[0,T)\times\mathbb R^3`, and define

```math
D_j(t):=2^{4j}\|\Delta_j u(t)\|_{L_x^2}^2,
```

```math
\mathcal D_k^\sigma(t):=
\sum_{j>k+4}2^{-\sigma(j-k)}D_j(t).
```

## Exact Needed Theorem On The Minimal Route

The upper-tail kernelized dissipation theorem is

```math
\textbf{(UTKD)}
\qquad
\int_0^T
\sum_{k>N+M}
2^{k}\big(\mathcal D_k^\sigma(t)\big)^2\,dt
\le
C_*2^{-2\delta N}.
```

## Stronger Sufficient Theorem

The stronger sufficient theorem is

```math
\textbf{(WDS)}
\qquad
\int_0^T
\sum_{j>N+M+4}2^j D_j(t)^2\,dt
\le
C_*2^{-2\delta N}.
```

## Proof That WDS Implies UTKD

Define

```math
x_j(t):=2^{j/2}D_j(t).
```

Then

```math
2^{k/2}\mathcal D_k^\sigma(t)
=
\sum_{j>k+4}2^{-\sigma(j-k)}2^{k/2}D_j(t).
```

Write `j=k+r` with `r>4`. Then

```math
2^{k/2}\mathcal D_k^\sigma(t)
=
\sum_{r>4}2^{-(\sigma+1/2)r}x_{k+r}(t).
```

So the sequence

```math
y_k(t):=2^{k/2}\mathcal D_k^\sigma(t)
```

is the one-sided discrete convolution of `x_j(t)` with the summable kernel

```math
\mu_r:=2^{-(\sigma+1/2)r}\mathbf 1_{r>4}.
```

By the `\ell^1 * \ell^2 \to \ell^2` Young inequality, for each fixed `t`,

```math
\sum_{k>N+M}2^k\big(\mathcal D_k^\sigma(t)\big)^2
=
\|y(t)\|_{\ell^2_k}^2
\le
\|\mu\|_{\ell^1(\mathbb Z)}^2
\|x(t)\|_{\ell^2_j}^2
=
\sum_{j>N+M+4}2^j D_j(t)^2.
```

Integrating in time gives `(WDS) \Rightarrow (UTKD)`.

## Exact Position In The Route

The implication stack is now

```math
\text{(WDS)}
\Longrightarrow
\text{(UTKD)}
\Longrightarrow
\text{(PC)}
\Longrightarrow
\text{(MSI)}
\Longrightarrow
\text{lifted remainder closure}.
```

So `(WDS)` is the cleaner stronger square-sufficient theorem, while `(UTKD)` is
the exact needed theorem on the minimal route.

## Honest Boundary

This reduction is rigorous, but it does not prove `(WDS)`.

What it shows is:

- `(UTKD)` is already a clean theorem target;
- `(WDS)` is a cleaner stronger sufficient theorem;
- a proof of `(WDS)` implies the whole remaining chain deterministically.
