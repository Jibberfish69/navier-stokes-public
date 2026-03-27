# Gradient High-High Near-Diagonal Reduction Lemma

## Purpose

This note sharpens the gradient-side genuine high-high packet. After the strict low-mode and spill reductions, the remaining commutator term is forced by frequency support into a near-diagonal cubic enstrophy packet.

## Exact Statement

There exists a universal collar width `M` and a constant `C > 0` such that for every `j \ge N`,

```math
2^{2j}|\mathcal{C}^{HH}_j(t)|
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

## Proof Route

1. In the high-high commutator term, only a finite dyadic collar around `j` survives after applying `P_j`.
2. The extra derivative in the enstrophy identity contributes one more factor of `2^j`.
3. Bernstein and almost orthogonality reduce the full packet to the near-diagonal cubic expression above.

## Consequence

The remaining gradient-side theorem burden is equivalent to controlling the near-diagonal cubic packet

```math
\sum_{j\ge N-M} 2^{3j}\|\Delta_j u(t)\|_{L^2_x}^3
```

by an absorbable fraction of `D_N(t)` plus a summable dyadic remainder.

## Honest Boundary

This note does not prove the final coercive bound. It proves that the genuine high-high gradient burden is now reduced to one concrete cubic dyadic packet.
