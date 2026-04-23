# Gradient High-High Near-Diagonal Reduction Lemma

## Purpose

This note records the genuine gradient-side high-high commutator packet after
the strict low-mode and threshold-local spill collar have been separated. Its
job is only to prove the dyadic support reduction for the genuine high-high
term itself. The lifted high-side remainder is a separate packet and is not
collapsed here.

## Exact Statement

Let `u = u(t,x)` be a classical Euclidean solution and fix `N`. After the
strict low-mode gradient reduction and the threshold-local spill reduction have
both been applied, define the genuine high-high commutator packet by

```math
\mathfrak{H}^{grad,HH}_{N}[u](t)
:=
\sum_{j\ge N}2^{2j}\big|\mathcal{C}^{HH}_j(t)\big|,
```

where `\mathcal{C}^{HH}_j` is the genuine high-high commutator remainder.

Here `\widetilde{\Delta}_k := \Delta_{k-1}+\Delta_k+\Delta_{k+1}`.

Then there exist a universal collar width `M \ge 4` and a constant `C > 0`
such that for every `j \ge N`,

```math
2^{2j}\big|\mathcal{C}^{HH}_j(t)\big|
\le
C
\sum_{|k-j|\le M}
2^{3j}
\|\Delta_k u(t)\|_{L^2_x}\,
\|\widetilde{\Delta}_k u(t)\|_{L^2_x}\,
\|\Delta_j u(t)\|_{L^2_x}.
```

In particular,

```math
\mathfrak{H}^{grad,HH}_{N}[u](t)
\le
C \sum_{j\ge N-M} 2^{3j}\|\Delta_j u(t)\|_{L^2_x}^3.
```

## Proof

Fix `j \ge N`. The genuine high-high commutator remainder has the standard
dyadic form

```math
\mathcal{C}^{HH}_j(t)
=
\sum_{k\ge j-3}
\left\langle
\Delta_j\big(\Delta_k u(t)\cdot\nabla \widetilde{\Delta}_k u(t)\big),
-\Delta \Delta_j u(t)
\right\rangle.
```

Only near-diagonal shells can survive the projection `\Delta_j`. Indeed, the
Fourier support of
`\Delta_k u(t)\cdot\nabla \widetilde{\Delta}_k u(t)` lies in an annulus of
size comparable to `2^k`, so after applying `\Delta_j` the term vanishes unless
`|k-j|\le M` for a universal collar width `M` depending only on the dyadic
partition. Therefore

```math
\mathcal{C}^{HH}_j(t)
=
\sum_{|k-j|\le M}
\left\langle
\Delta_j\big(\Delta_k u(t)\cdot\nabla \widetilde{\Delta}_k u(t)\big),
-\Delta \Delta_j u(t)
\right\rangle.
```

For each surviving shell,

```math
2^{2j}
\left|
\left\langle
\Delta_j\big(\Delta_k u(t)\cdot\nabla \widetilde{\Delta}_k u(t)\big),
-\Delta \Delta_j u(t)
\right\rangle
\right|
\le
2^{2j}
\|\Delta_k u(t)\|_{L^2_x}\,
\|\nabla \widetilde{\Delta}_k u(t)\|_{L^2_x}\,
\|\Delta \Delta_j u(t)\|_{L^2_x}.
```

By Bernstein and `|k-j|\le M`,

```math
\|\nabla \widetilde{\Delta}_k u(t)\|_{L^2_x}
\lesssim
2^k\|\widetilde{\Delta}_k u(t)\|_{L^2_x}
\lesssim
2^j\|\widetilde{\Delta}_k u(t)\|_{L^2_x},
```

and `\|\Delta \Delta_j u(t)\|_{L^2_x}\sim 2^{2j}\|\Delta_j u(t)\|_{L^2_x}`.
Hence

```math
2^{2j}\big|\mathcal{C}^{HH}_j(t)\big|
\le
C
\sum_{|k-j|\le M}
2^{3j}
\|\Delta_k u(t)\|_{L^2_x}\,
\|\widetilde{\Delta}_k u(t)\|_{L^2_x}\,
\|\Delta_j u(t)\|_{L^2_x}.
```

This proves the first displayed estimate. Because `\widetilde{\Delta}_k`
contains only `O_M(1)` neighboring shells and `|k-j|\le M`, the finite collar
collapses into

```math
\mathfrak{H}^{grad,HH}_{N}[u](t)
\le
C \sum_{j\ge N-M} 2^{3j}\|\Delta_j u(t)\|_{L^2_x}^3.
```

## Consequence

The genuine gradient-side high-high burden is now exactly the near-diagonal
cubic dyadic packet

```math
\sum_{j\ge N-M} 2^{3j}\|\Delta_j u(t)\|_{L^2_x}^3.
```

That is the correct support-geometry reduction surface for the genuine
high-high commutator packet. The later coercive step is the separate cubic-tail
absorption lemma, and the lifted high-side remainder remains a separate open
packet.

## Honest Boundary

This note is fully discharged as a dyadic support reduction for the genuine
high-high commutator packet.

It does not by itself prove the final absorbable estimate against `D_N(t)` and
the summable remainder; that later step is delegated to
`gradient-cubic-tail-absorption-lemma.md`. It also does not resolve the
separate lifted high-side remainder packet.
