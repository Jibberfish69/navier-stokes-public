# Body 1 Kernelized Lifted-Band Integration Audit

## Purpose

This note performs the next bounded self-attempt after
`scale-kernelized-lifted-band-reduction-lemma.md`.

That earlier note proves that the scale-side lifted remainder carries a real
summable gap factor `2^{-(j-k)}` on the exact band `N+M<k<j-4`. The question
here is whether the **current** Body `1` inputs are already strong enough to
integrate that kernelized carrier into a theorem of the form

```math
\sup_n \int_0^T \mathfrak K_N^{scale}[u^{(n)}](t)\,dt
\le
C_*2^{-2\delta N}.
```

## Kernelized Carrier

From `scale-kernelized-lifted-band-reduction-lemma.md`, the lifted packet is
controlled by

```math
\mathfrak K_N^{scale}[u^{(n)}](t)
=
\sum_{j\ge N}\lambda_j^{(n)}(t)\,
\|\nabla \Delta_j u^{(n)}(t)\|_{L^2_x}\,
\|\Delta_j u^{(n)}(t)\|_{L^2_x},
```

with

```math
\lambda_j^{(n)}(t)
:=
\sum_{N+M<k<j-4}
2^{-(j-k)}\,2^{3k/2}\|\Delta_k u^{(n)}(t)\|_{L^2_x}.
```

## First Integrated Route

Use Young shellwise:

```math
\lambda_j\,\|\nabla \Delta_j u\|_{L^2_x}\,\|\Delta_j u\|_{L^2_x}
\le
\varepsilon \|\nabla \Delta_j u\|_{L^2_x}^2
+
C_\varepsilon \lambda_j^2 \|\Delta_j u\|_{L^2_x}^2.
```

So the issue is the remainder

```math
\sum_{j\ge N}\lambda_j^2 \|\Delta_j u\|_{L^2_x}^2.
```

By Cauchy-Schwarz in the `k` sum,

```math
\lambda_j^2
\le C_{CS}
\sum_{N+M<k<j-4}
2^{-(j-k)}\,2^{3k}\|\Delta_k u\|_{L^2_x}^2.
```

Hence

```math
\sum_{j\ge N}\lambda_j^2 \|\Delta_j u\|_{L^2_x}^2
\le C_{B1}
\sum_{k\ge N+M}
2^{3k}\|\Delta_k u\|_{L^2_x}^2
\sum_{j>k+4}2^{-(j-k)}\|\Delta_j u\|_{L^2_x}^2.
```

## Exact Obstruction

The current Body `1` inputs are:

- `u^{(n)} \in L_t^\infty L_x^2`,
- `u^{(n)} \in L_t^2 H_x^1`,
- and the coarse tail theorem one is trying to upgrade.

But

```math
2^{3k}\|\Delta_k u\|_{L^2_x}^2
=
2^k\cdot 2^{2k}\|\Delta_k u\|_{L^2_x}^2.
```

The available `L_t^2 H_x^1` control only integrates the factor
`2^{2k}\|\Delta_k u\|_{L^2_x}^2`. The extra `2^k` is not summable on the
current surface.

So this first route fails: the kernel helps with the `j-k` gap, but the
remaining `k`-weight is still too large for the present energy/enstrophy
package.

## Second Integrated Route

Try Cauchy-Schwarz in time first:

```math
\int_0^T \mathfrak K_N^{scale}[u^{(n)}](t)\,dt
\le
\sum_{j\ge N}
\Big(\int_0^T (\lambda_j^{(n)}(t))^2\|\Delta_j u^{(n)}(t)\|_{L^2_x}^2\,dt\Big)^{1/2}
\Big(\int_0^T \|\nabla \Delta_j u^{(n)}(t)\|_{L^2_x}^2\,dt\Big)^{1/2}.
```

This still reduces to controlling

```math
\int_0^T (\lambda_j^{(n)}(t))^2\|\Delta_j u^{(n)}(t)\|_{L^2_x}^2\,dt,
```

so the same `2^{3k}` obstruction remains.

## Honest Verdict

The kernelized scale-side reduction is real, but it does **not** close on the
current Body `1` energy surface by the first direct integration routes.

What the new kernel buys is:

- the lifted remainder is no longer a raw coefficient with no shell gap gain;
- the exact shell algebra really does produce `2^{-(j-k)}`;
- the remaining upstream burden is now a sharper theorem question about how to
  integrate that kernelized carrier.

What it does **not** yet buy is:

- a proof of the integrated leakage theorem;
- a reduction to the existing coarse tail barrier alone;
- or an automatic feedthrough to the gradient-side lifted packet.

## Precise Reduced Question

The Body `1` problem is now:

```math
\text{find an integrated theorem for }
\mathfrak K_N^{scale}[u^{(n)}]
\text{ that defeats the residual }2^k\text{ shell weight.}
```

That is the sharpest current upstream formulation of the last open packet.

## Most Promising Refinement

The new note `body1-half-derivative-lifted-band-gain-target.md` records the
cleanest next theorem target suggested by this audit:

- the off-diagonal gain `2^{-(j-k)}` is already real on the scale-side lifted
  band;
- the unresolved loss is entirely on the lower shell `k`;
- so the best next refinement is an integrated `k`-side payment of the exact
  residual square factor `2^k`, or an equivalent weighted tail theorem that
  absorbs that factor while preserving the band gap `2^{-(j-k)}`.
