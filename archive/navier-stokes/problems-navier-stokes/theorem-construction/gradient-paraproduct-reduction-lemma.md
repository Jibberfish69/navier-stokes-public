# Gradient Paraproduct Reduction Lemma

## Purpose

This lemma removes the readable part of the gradient bridge from the frontier. It isolates the strict low-mode paraproducts in the dyadic enstrophy identity and shows that they reduce to the admissible coefficient `\mathcal{L}_N E_N` plus an arbitrarily small fraction of dissipation.

## Setting

Let `u = u(t,x)` be a classical solution on `(0,T)\times\mathbb{R}^3`. For `j \ge N`, set

```math
E_N(t) := \sum_{m\ge N} 2^{2m}\|\Delta_m u(t)\|_{L^2_x}^2,
\qquad
D_N(t) := \sum_{m\ge N} 2^{4m}\|\Delta_m u(t)\|_{L^2_x}^2,
```

```math
\mathcal{L}_N(t) := 1 + \sum_{k\le N-4}2^{3k/2}\|\Delta_k u(t)\|_{L^2_x}.
```

Split the low transport coefficient by

```math
S_{j-4}u = S_{N-4}u + (S_{j-4}-S_{N-4})u.
```

In the dyadic enstrophy identity, define the strict low-mode pieces

```math
LH_j^{strict}
:=
2^{2j}\left\langle \Delta_j\big((S_{N-4}u\cdot\nabla)\Delta_j u\big), -\Delta \Delta_j u\right\rangle,
```

```math
HL_j^{strict}
:=
2^{2j}\left\langle \Delta_j\big((\Delta_j u\cdot\nabla)S_{N-4}u\big), -\Delta \Delta_j u\right\rangle.
```

The finite-band spill produced by `(S_{j-4}-S_{N-4})u` is not a live frontier item. It is separated and reduced later by `gradient-spill-reduction-lemma.md`.

## Lemma Statement

For every `\varepsilon \in (0,\nu)`, there is `C_\varepsilon` such that, for almost every `t`,

```math
\sum_{j\ge N}\big(|LH_j^{strict}| + |HL_j^{strict}|\big)
\le
C_\varepsilon\,\mathcal{L}_N(t)\,E_N(t)
+
\varepsilon \nu D_N(t).
```

Consequently, after the strict low-mode reduction, the only remaining gradient-side frontier is the high-side remainder bundle `\mathcal{C}_j`.

## Proof

For the strict low-high term, use divergence-free cancellation at the `S_{N-4}u` level and rewrite the localized transport contribution as a commutator:

```math
LH_j^{strict}
=
2^{2j}
\left\langle
[\Delta_j,S_{N-4}u\cdot\nabla]\Delta_j u,
-\Delta \Delta_j u
\right\rangle.
```

Standard fixed-gap commutator bounds give

```math
|LH_j^{strict}|
\le
C\,2^{2j}\|\nabla S_{N-4}u\|_{L^\infty_x}\,\|\Delta_j u\|_{L^2_x}\,\|\Delta \Delta_j u\|_{L^2_x}.
```

Using Bernstein on the low coefficient and the shell relation `\|\Delta \Delta_j u\|_{L^2_x} \sim 2^{2j}\|\Delta_j u\|_{L^2_x}`, we obtain

```math
|LH_j^{strict}|
\le
C \left(\sum_{k\le N-4}2^{5k/2}\|\Delta_k u\|_{L^2_x}\right) 2^{4j}\|\Delta_j u\|_{L^2_x}^2.
```

Since `k \le N-4 < j`, split `2^{5k/2} = 2^k 2^{3k/2}` and apply Young to the gap factor:

```math
2^k 2^{4j}\|\Delta_j u\|_{L^2_x}^2
\le
\varepsilon \nu 2^{4j}\|\Delta_j u\|_{L^2_x}^2
+
C_{\varepsilon,\nu} 2^{2j}\|\Delta_j u\|_{L^2_x}^2.
```

Therefore

```math
|LH_j^{strict}|
\le
C_\varepsilon \mathcal{L}_N(t)\,2^{2j}\|\Delta_j u\|_{L^2_x}^2
+
\varepsilon \nu\,2^{4j}\|\Delta_j u\|_{L^2_x}^2.
```

The strict high-low term satisfies the same bound, because the derivative falls on `S_{N-4}u` and the frequency gap is unchanged:

```math
|HL_j^{strict}|
\le
C_\varepsilon \mathcal{L}_N(t)\,2^{2j}\|\Delta_j u\|_{L^2_x}^2
+
\varepsilon \nu\,2^{4j}\|\Delta_j u\|_{L^2_x}^2.
```

Summing over `j \ge N` yields the claimed inequality.

Finally, the spill terms coming from `(S_{j-4}-S_{N-4})u` involve only frequencies `\ge N-3`. They are handed off to `gradient-spill-reduction-lemma.md`, which reduces them to the same admissible coefficient surface.

## Output Of This Lemma

The strict low-mode low-high/high-low contribution is no longer the open problem. The remaining gradient-side debt is the genuine high-high packet, after the separate spill reduction has been applied.
