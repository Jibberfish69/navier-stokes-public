# Classical Low-Mode Coefficient Lemma

## Purpose

This lemma removes one fake source of uncertainty from both the scale-barrier and gradient bridges. The low-mode coefficient `\mathcal{L}_N` is not an extra frontier hypothesis; for each fixed cutoff it is automatically integrable on the classical energy surface.

## Setting

Let `u = u(t,x)` be a classical solution on `(0,T)\times\mathbb{R}^3` with

```math
\sup_{t\in[0,T]}\|u(t)\|_{L^2_x} \le M.
```

For a fixed dyadic cutoff `N`, define

```math
\mathcal{L}_N(t) := 1 + \sum_{k\le N-4}2^{3k/2}\|\Delta_k u(t)\|_{L^2_x}.
```

The same statement holds uniformly for any classical approximation family `u^{(n)}` with a uniform `L^\infty_tL^2_x` bound.

## Lemma Statement

For every fixed `N`,

```math
\mathcal{L}_N(t)
\le
1 + C\,2^{3N/2} M
```

for almost every `t`, where `C` depends only on the dyadic partition. In particular,

```math
\mathcal{L}_N \in L^\infty(0,T)\cap L^1(0,T),
\qquad
\int_0^T \mathcal{L}_N(t)\,dt \le T\big(1 + C\,2^{3N/2}M\big).
```

## Proof

By frequency localization,

```math
\|\Delta_k u(t)\|_{L^2_x} \le \|u(t)\|_{L^2_x} \le M.
```

Therefore

```math
\sum_{k\le N-4}2^{3k/2}\|\Delta_k u(t)\|_{L^2_x}
\le
M\sum_{k\le N-4}2^{3k/2}
\le
C\,2^{3N/2}M.
```

Adding the constant term `1` gives the pointwise bound for `\mathcal{L}_N(t)`. The `L^\infty_t` and `L^1_t` claims follow immediately.

## Output Of This Lemma

The low-mode coefficient is not an independent open bridge burden. What remains open is the high-side remainder packet that must be controlled after the low-mode pieces are extracted.
