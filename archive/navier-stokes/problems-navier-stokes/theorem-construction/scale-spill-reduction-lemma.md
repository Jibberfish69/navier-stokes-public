# Scale Spill Reduction Lemma

## Purpose

This note removes the finite-band spill term from the live scale frontier. After the strict low-mode paraproduct pieces are extracted, the replacement `S_{j-4}u^{(n)} \mapsto S_{N-4}u^{(n)}` creates a residual spill term, but that term is still controlled by the same admissible low-mode coefficient and a harmless dissipation fraction. The genuinely open scale burden is therefore the high-high packet, not the spill.

## Local Debt Label

`Finite-band spill in the scale-barrier transport defect is reducible to the admissible coefficient`

## Exact Statement

Let

```math
\mathcal{T}^{spill}_{j,n}
:=
\Delta_j\Big(((S_{j-4}-S_{N-4})u^{(n)}\cdot\nabla)\Delta_j u^{(n)}\Big)
+
\Delta_j\Big((\Delta_j u^{(n)}\cdot\nabla)(S_{j-4}-S_{N-4})u^{(n)}\Big),
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

## Proof Route

1. Expand `S_{j-4}-S_{N-4} = \sum_{N-3 \le k < j-4}\Delta_k`.
2. Use the finite-band relation between `k` and `j` together with Bernstein to estimate the low factor in `L^\infty_x` by the admissible coefficient `\mathcal{L}_N^{(n)}(t)`.
3. Pair the differentiated factor with `\Delta_j u^{(n)}` and use Cauchy-Schwarz/Young to split the product into `\mathcal{L}_N^{(n)}(t)E_N^{(n)}(t)` plus an arbitrarily small fraction of `D_N^{(n)}(t)`.
4. Sum in `j \ge N` and integrate in time.

## Consequence

The spill term no longer carries independent frontier status. After the strict low-mode paraproduct reduction and this spill reduction, the only unresolved scale-side packet is the genuine high-high interaction

```math
\sum_{j\ge N}
\left|
\left\langle
\mathcal{T}^{HH}_{j,n},
\Delta_j u^{(n)}
\right\rangle
\right|.
```

That packet is tracked separately in `scale-genuine-high-high-packet.md`.

## Honest Boundary

This note is treated as a localized reduction on the existing classical surface. The live scale-side theorem burden is no longer the spill term; it is the genuine high-high packet that remains after spill removal.
