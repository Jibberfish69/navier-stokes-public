# Scale Paraproduct Reduction Lemma

## Purpose

This lemma extracts the genuinely low-mode part of the scale-barrier transport defect and proves that it is not the frontier. After that extraction, the only remaining scale-side debt is the high-side remainder packet.

## Setting

Let `\{u^{(n)},p^{(n)}\}` be the fixed classical approximation family on `(0,T)\times\mathbb{R}^3`. For `j \ge N`, write `\Delta_j := P_j` and define

```math
E_N^{(n)}(t) := \sum_{m\ge N}\|\Delta_m u^{(n)}(t)\|_{L^2_x}^2,
\qquad
D_N^{(n)}(t) := \sum_{m\ge N}2^{2m}\|\Delta_m u^{(n)}(t)\|_{L^2_x}^2,
```

```math
\mathcal{L}_N^{(n)}(t) := 1 + \sum_{k\le N-4}2^{3k/2}\|\Delta_k u^{(n)}(t)\|_{L^2_x}.
```

Split the low transport coefficient at the fixed cutoff:

```math
S_{j-4}u^{(n)} = S_{N-4}u^{(n)} + (S_{j-4}-S_{N-4})u^{(n)}.
```

Define the strict low-mode paraproduct pieces

```math
\mathcal{T}^{SLH}_{j,n}
:=
\Delta_j\big((S_{N-4}u^{(n)}\cdot\nabla)\Delta_j u^{(n)}\big),
```

```math
\mathcal{T}^{SHL}_{j,n}
:=
\Delta_j\big((\Delta_j u^{(n)}\cdot\nabla)S_{N-4}u^{(n)}\big).
```

The difference between the original `S_{j-4}` interactions and the strict low-mode pieces is the finite-band spill

```math
\mathcal{T}^{spill}_{j,n}
:=
\Delta_j\big((((S_{j-4}-S_{N-4})u^{(n)})\cdot\nabla)\Delta_j u^{(n)}\big)
+
\Delta_j\big((\Delta_j u^{(n)}\cdot\nabla)((S_{j-4}-S_{N-4})u^{(n)})\big).
```

## Lemma Statement

For every `\varepsilon \in (0,\nu)`, there is a constant `C_\varepsilon` independent of `j`, `N`, and `n` such that

```math
\sum_{j\ge N}
\left(
\left|\left\langle \mathcal{T}^{SLH}_{j,n},\Delta_j u^{(n)}\right\rangle\right|
+
\left|\left\langle \mathcal{T}^{SHL}_{j,n},\Delta_j u^{(n)}\right\rangle\right|
\right)
\le
C_\varepsilon\,\mathcal{L}_N^{(n)}(t)\,E_N^{(n)}(t)
+
\varepsilon D_N^{(n)}(t)
```

for almost every `t`.

Moreover, every term in `\mathcal{T}^{spill}_{j,n}` contains only frequencies `\ge N-3` in both factors, so the spill belongs to the same high-side remainder packet as the original high-high interaction. It does not create a new independent bridge debt.

## Proof

Fix `j \ge N`.

For the strict low-high term, use that `\nabla\cdot S_{N-4}u^{(n)} = 0` to cancel the principal transport contribution:

```math
\left\langle (S_{N-4}u^{(n)}\cdot\nabla)\Delta_j u^{(n)}, \Delta_j u^{(n)}\right\rangle = 0.
```

Therefore

```math
\left\langle \mathcal{T}^{SLH}_{j,n},\Delta_j u^{(n)}\right\rangle
=
\left\langle [\Delta_j,S_{N-4}u^{(n)}\cdot\nabla]\Delta_j u^{(n)},\Delta_j u^{(n)}\right\rangle.
```

The standard fixed-gap commutator estimate gives

```math
\left|\left\langle \mathcal{T}^{SLH}_{j,n},\Delta_j u^{(n)}\right\rangle\right|
\le
C \|\nabla S_{N-4}u^{(n)}\|_{L^\infty_x}\,\|\Delta_j u^{(n)}\|_{L^2_x}^2.
```

Bernstein yields

```math
\|\nabla S_{N-4}u^{(n)}\|_{L^\infty_x}
\le
C \sum_{k\le N-4}2^{5k/2}\|\Delta_k u^{(n)}\|_{L^2_x}.
```

Since `k \le N-4 < j`, write `2^{5k/2} = 2^k 2^{3k/2}` and absorb the gap factor into the high shell:

```math
2^k\|\Delta_j u^{(n)}\|_{L^2_x}^2
\le
\varepsilon 2^{2j}\|\Delta_j u^{(n)}\|_{L^2_x}^2
+
C_\varepsilon \|\Delta_j u^{(n)}\|_{L^2_x}^2.
```

Thus

```math
\left|\left\langle \mathcal{T}^{SLH}_{j,n},\Delta_j u^{(n)}\right\rangle\right|
\le
C_\varepsilon \mathcal{L}_N^{(n)}(t)\,\|\Delta_j u^{(n)}\|_{L^2_x}^2
+
\varepsilon 2^{2j}\|\Delta_j u^{(n)}\|_{L^2_x}^2.
```

For the strict high-low term, frequency separation gives

```math
\left|\left\langle \mathcal{T}^{SHL}_{j,n},\Delta_j u^{(n)}\right\rangle\right|
\le
C \|\nabla S_{N-4}u^{(n)}\|_{L^\infty_x}\,\|\Delta_j u^{(n)}\|_{L^2_x}^2,
```

so the same Bernstein-plus-Young bound applies.

Summing over `j \ge N` proves

```math
\sum_{j\ge N}
\left(
\left|\left\langle \mathcal{T}^{SLH}_{j,n},\Delta_j u^{(n)}\right\rangle\right|
+
\left|\left\langle \mathcal{T}^{SHL}_{j,n},\Delta_j u^{(n)}\right\rangle\right|
\right)
\le
C_\varepsilon \mathcal{L}_N^{(n)}(t) E_N^{(n)}(t)
+
\varepsilon D_N^{(n)}(t).
```

Finally, every frequency in `(S_{j-4}-S_{N-4})u^{(n)}` lies between `N-3` and `j-4`. After pairing with `\Delta_j u^{(n)}`, those spill terms stay on the high side of the cutoff, but they no longer count as part of the live frontier: `scale-spill-reduction-lemma.md` reduces them to the same admissible coefficient surface.

## Output Of This Lemma

The strict low-mode low-high and high-low transport pieces are no longer part of the live scale-barrier mystery. The remaining scale-side debt is the high-side packet: original high-high terms plus the finite-band spill created when `S_{j-4}` is replaced by `S_{N-4}`.
