# Gradient High-High Near-Diagonal Reduction Lemma

## Purpose

This note records the genuine gradient-side high-high commutator packet after the strict low-mode and threshold-local spill collar have been separated. It fixes the gradient-energy convention and the Bernstein powers feeding the absorption lemma.

## Convention

For the gradient-energy estimate, define

```math
\mathcal C^{\nabla,HH}_j(t)
:=
\sum_k
\left\langle
\Delta_j\big(\Delta_k u(t)\cdot\nabla\widetilde\Delta_k u(t)\big),
-\Delta\Delta_j u(t)
\right\rangle,
```

where

```math
\widetilde\Delta_k:=\Delta_{k-1}+\Delta_k+\Delta_{k+1}.
```

The genuine gradient high-high packet is

```math
\mathfrak H^{grad,HH}_N[u](t)
:=
\sum_{j\ge N}\left|\mathcal C^{\nabla,HH}_j(t)\right|.
```

This convention uses the `-\Delta\Delta_j u` test inside `\mathcal C^{\nabla,HH}_j`; it carries no extra outside `2^{2j}` weight.

## Exact Statement

There exist a universal collar width `M\ge4` and a constant `C>0` such that for every `j\ge N`,

```math
\left|\mathcal C^{\nabla,HH}_j(t)\right|
\le
C\sum_{|k-j|\le M}
2^{\frac92j}
\|\Delta_k u(t)\|_2
\|\widetilde\Delta_k u(t)\|_2
\|\Delta_j u(t)\|_2.
```

Consequently,

```math
\mathfrak H^{grad,HH}_N[u](t)
\le
C_M\sum_{j\ge N-M}2^{\frac92j}\|\Delta_j u(t)\|_2^3.
```

## Proof

Fix `j\ge N`. Fourier support gives near-diagonal survival only: after applying `\Delta_j`, the product

```math
\Delta_k u\cdot\nabla\widetilde\Delta_k u
```

contributes only when `|k-j|\le M`, with `M` depending only on the dyadic partition. Hence

```math
\mathcal C^{\nabla,HH}_j(t)
=
\sum_{|k-j|\le M}
\left\langle
\Delta_j\big(\Delta_k u\cdot\nabla\widetilde\Delta_k u\big),
-\Delta\Delta_j u
\right\rangle.
```

For each surviving shell, Bernstein and the `L^\infty\times L^2\to L^2` product bound give

```math
\|\Delta_k u\cdot\nabla\widetilde\Delta_k u\|_2
\le
\|\Delta_k u\|_\infty\,\|\nabla\widetilde\Delta_k u\|_2
\le C_B
2^{\frac32k}\|\Delta_k u\|_2\,2^k\|\widetilde\Delta_k u\|_2.
```

Since `|k-j|\le M`, this is bounded by

```math
C_M2^{\frac52j}\|\Delta_k u\|_2\|\widetilde\Delta_k u\|_2.
```

Also

```math
c_\Delta2^{2j}\|\Delta_j u\|_2
\le
\|\Delta\Delta_j u\|_2
\le
C_\Delta2^{2j}\|\Delta_j u\|_2.
```

Multiplying these estimates yields

```math
\left|\left\langle
\Delta_j(\Delta_k u\cdot\nabla\widetilde\Delta_k u),
-\Delta\Delta_j u
\right\rangle\right|
\le
C_M2^{\frac92j}
\|\Delta_k u\|_2\|\widetilde\Delta_k u\|_2\|\Delta_j u\|_2.
```

Summing over the finite collar proves the first estimate. The finite overlap of `\widetilde\Delta_k` collapses the collar to

```math
\mathfrak H^{grad,HH}_N[u](t)
\le
C_M\sum_{j\ge N-M}2^{\frac92j}\|\Delta_j u(t)\|_2^3.
```

## Consequence

The genuine high-high burden is the near-diagonal cubic packet

```math
\sum_{j\ge N-M}2^{\frac92j}\|\Delta_j u(t)\|_2^3.
```

The corrected absorption step is supplied by `mcp-corrected-high-high-absorption-via-enstrophy-half-tail-8c28e55d7d.md` and by the patched `gradient-cubic-tail-absorption-lemma.md`.

## Boundary

This note proves the support-geometry and Bernstein reduction for the genuine high-high packet. The strict low-mode, spill, and lifted high-side remainder packets remain in their separate slots.
