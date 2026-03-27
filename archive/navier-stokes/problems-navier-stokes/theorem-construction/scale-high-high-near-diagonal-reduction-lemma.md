# Scale High-High Near-Diagonal Reduction Lemma

## Purpose

This note sharpens the scale-side genuine high-high packet. Once the strict low-mode and spill pieces are removed, the remaining packet is not an arbitrary bilinear tail. Littlewood-Paley support forces it into a near-diagonal cubic packet.

## Exact Statement

There exists a universal collar width `M` and a constant `C > 0` such that for every `j \ge N`,

```math
\left|
\left\langle
\mathcal{T}^{HH}_{j,n},
\Delta_j u^{(n)}
\right\rangle
\right|
\le
C
\sum_{|k-j|\le M}
2^j
\|\Delta_k u^{(n)}\|_{L^2_x}\,
\|\widetilde{\Delta}_k u^{(n)}\|_{L^2_x}\,
\|\Delta_j u^{(n)}\|_{L^2_x}.
```

In particular,

```math
\mathfrak{H}^{scale,HH}_{N}[u^{(n)}](t)
\le
C \sum_{j\ge N-M} 2^j \|\Delta_j u^{(n)}(t)\|_{L^2_x}^3.
```

## Proof Route

1. In the Bony high-high term, the product `\Delta_k u^{(n)}\cdot\nabla\widetilde{\Delta}_k u^{(n)}` can contribute to output scale `j` only when `|k-j| \le M`.
2. Apply Bernstein to the differentiated factor and use almost orthogonality of the dyadic shells.
3. Pair the result with `\Delta_j u^{(n)}` in `L^2_x`.
4. Collapse the finite collar sum into the cubic dyadic packet shown above.

## Consequence

The remaining scale-side theorem burden is equivalent to controlling the near-diagonal cubic tail

```math
\int_0^T \sum_{j\ge N-M} 2^j \|\Delta_j u^{(n)}(t)\|_{L^2_x}^3\,dt
```

by an absorbable dissipation fraction plus a summable dyadic remainder.

## Honest Boundary

This note does not prove the final tail bound. It proves that the genuine high-high scale burden is now reduced to one concrete cubic dyadic packet.
