# Scale High-High Near-Diagonal Reduction Lemma

## Purpose

This note isolates the genuine scale-side high-high packet after the strict
low-mode and threshold-local spill collar have been separated. Its job is only
to prove the dyadic support reduction for the genuine high-high term itself.
The lifted high-side paraproduct remainder is a separate packet and is not
collapsed here.

## Exact Statement

Let `\{u^{(n)},p^{(n)}\}` be the fixed classical approximation family and let
`N` be a dyadic cutoff. Write

```math
\mathfrak{H}^{scale,HH}_{N}[u^{(n)}](t)
:=
\sum_{j\ge N}
\left|
\left\langle
\mathcal{T}^{HH}_{j,n},
\Delta_j u^{(n)}
\right\rangle
\right|,
```

where `\mathcal{T}^{HH}_{j,n}` is the genuine high-high term from the Bony
split.

Then there exist a universal collar width `M \in \mathbb N` and a constant `C > 0`, depending only on the chosen dyadic partition, such that for every `j \ge N`,

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
C \sum_{j\ge N-M} 2^j \|\Delta_j u^{(n)}\|_{L^2_x}^3.
```

## Proof

For each `j \ge N`, the genuine high-high term has the form

```math
\mathcal{T}^{HH}_{j,n}
=
\Delta_j\left(
\sum_{k\ge j-3}
\Delta_k u^{(n)}\cdot\nabla \widetilde{\Delta}_k u^{(n)}
\right),
\qquad
\widetilde\Delta_k:=\Delta_{k-1}+\Delta_k+\Delta_{k+1}.
```

Only near-diagonal shells can survive the projection `\Delta_j`. Indeed, there
are fixed dyadic support constants `0<c_A\le C_A<\infty`, depending only on the
chosen partition, such that the Fourier support of
`\Delta_k u^{(n)}\cdot\nabla \widetilde\Delta_k u^{(n)}` lies in
`{c_A2^k\le |\xi|\le C_A2^k}`. Hence after applying `\Delta_j` the term
vanishes unless `|k-j|\le M` for a universal collar width `M` depending only on
the dyadic partition. Therefore

```math
\mathcal{T}^{HH}_{j,n}
=
\Delta_j\left(
\sum_{|k-j|\le M}
\Delta_k u^{(n)}\cdot\nabla \widetilde{\Delta}_k u^{(n)}
\right).
```

Pair with `\Delta_j u^{(n)}` in `L^2_x`. For each surviving shell,

```math
\left|
\left\langle
\Delta_j\big(\Delta_k u^{(n)}\cdot\nabla \widetilde{\Delta}_k u^{(n)}\big),
\Delta_j u^{(n)}
\right\rangle
\right|
\le
\|\Delta_k u^{(n)}\|_{L^2_x}\,
\|\nabla \widetilde{\Delta}_k u^{(n)}\|_{L^2_x}\,
\|\Delta_j u^{(n)}\|_{L^2_x}.
```

By Bernstein and `|k-j|\le M`,

```math
\|\nabla \widetilde{\Delta}_k u^{(n)}\|_{L^2_x}
\le
C_B
2^k\|\widetilde{\Delta}_k u^{(n)}\|_{L^2_x}
\le
C_{B,M}
2^j\|\widetilde{\Delta}_k u^{(n)}\|_{L^2_x},
```

so

```math
\left|
\left\langle
\Delta_j\big(\Delta_k u^{(n)}\cdot\nabla \widetilde{\Delta}_k u^{(n)}\big),
\Delta_j u^{(n)}
\right\rangle
\right|
\le
C\,
2^j
\|\Delta_k u^{(n)}\|_{L^2_x}\,
\|\widetilde{\Delta}_k u^{(n)}\|_{L^2_x}\,
\|\Delta_j u^{(n)}\|_{L^2_x}.
```

Summing the finitely many indices `|k-j|\le M` proves the first displayed
estimate. For the cubic form, use that `\widetilde{\Delta}_k` contains at most
`C_{\widetilde\Delta,M}` shells and `|k-j|\le M`, so the collar sum collapses
into

```math
\mathfrak{H}^{scale,HH}_{N}[u^{(n)}](t)
\le
C \sum_{j\ge N-M} 2^j \|\Delta_j u^{(n)}(t)\|_{L^2_x}^3.
```

## Consequence

The genuine scale-side high-high packet has been reduced to one concrete cubic
dyadic tail. The remaining work is the downstream coefficient-margin estimate
for that tail together with separate theorem-grade control of the lifted
high-side remainder.

## Honest Boundary

This lemma is fully discharged as a reduction lemma for the genuine high-high
packet on the classical dyadic surface. It does not by itself prove the cubic
tail coefficient-margin bound

```math
\int_0^T \sum_{j\ge N-M} 2^j \|\Delta_j u^{(n)}(t)\|_{L^2_x}^3\,dt
\le
\eta\nu\int_0^T D_N^{(n)}(t)\,dt + C_0 2^{-2\delta N},
```

handled by `scale-cubic-tail-absorption-lemma.md`, and it does not by itself
resolve the separate lifted high-side remainder packet.
