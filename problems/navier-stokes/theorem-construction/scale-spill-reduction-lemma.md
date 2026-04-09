# Scale Spill Reduction Lemma

## Purpose

This note isolates the threshold-local spill collar created when the low-mode
transport coefficient is frozen at the cutoff `N`. Under the stricter audit
standard it should be read as a packet-definition and target-estimate note, not
as a fully discharged proposition-level proof.

## Local Debt Label

`Threshold-local spill collar for the scale-barrier transport defect`

## Exact Statement

Fix a collar width `M \ge 4` and let

```math
\mathcal{T}^{spill}_{j,n}
:=
\Delta_j\Big(((S_{N+M}-S_{N-4})u^{(n)}\cdot\nabla)\Delta_j u^{(n)}\Big)
+
\Delta_j\Big((\Delta_j u^{(n)}\cdot\nabla)(S_{N+M}-S_{N-4})u^{(n)}\Big),
```

for `j \ge N`, on the fixed classical approximation family `\{u^{(n)},p^{(n)}\}`. Then for every `\varepsilon > 0` there exists `C_\varepsilon > 0`, independent of `n` and `N`, such that

```math
\int_0^T \sum_{j\ge N}
\left|
\left\langle
\mathcal{T}^{spill}_{j,n},
\Delta_j u^{(n)}
\right\rangle
\right| dt
\le
C_\varepsilon \int_0^T \mathcal{L}_N^{(n)}(t)\,E_N^{(n)}(t)\,dt
+
\varepsilon \int_0^T D_N^{(n)}(t)\,dt.
```

The lifted remainder created by `(S_{j-4}-S_{N+M})u^{(n)}` is **not** part of
this note. It is merged into the genuine high-high packet because it no longer
contains a threshold-local low factor.

## Intended Proof Route

1. Expand `S_{N+M}-S_{N-4} = \sum_{N-3 \le k \le N+M}\Delta_k`.
2. Use the fixed threshold collar relation together with Bernstein to estimate the collar contribution against the same admissible surface, or else to show exactly where an additional packet split is still needed.
3. Pair the differentiated factor with `\Delta_j u^{(n)}` and use Cauchy-Schwarz/Young to split the product into `\mathcal{L}_N^{(n)}(t)E_N^{(n)}(t)` plus an arbitrarily small fraction of `D_N^{(n)}(t)`.
4. Sum in `j \ge N` and integrate in time.

## Consequence

The threshold-local spill collar is the smallest scale-side packet that still
needs proposition-level alignment after the strict low-mode reduction. The
lifted high-side remainder is tracked with the genuine high-high interaction in
`scale-genuine-high-high-packet.md`.

That packet is tracked separately in `scale-genuine-high-high-packet.md`.

## Honest Boundary

This note no longer claims that the whole frozen-cutoff remainder has already
been reduced. It isolates only the threshold-local spill collar. Under the
current audit standard that collar still belongs to the live proposition-level
packet-discharge burden.
