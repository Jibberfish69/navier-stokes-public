# Gradient Spill Reduction Lemma

## Purpose

This note removes the finite-band spill term from the live gradient frontier. After the strict low-mode gradient paraproducts are extracted, replacing `S_{j-4}u` by `S_{N-4}u` creates a spill contribution in the dyadic enstrophy identity, but that contribution is still controlled by the admissible low-mode coefficient and a harmless dissipation fraction. The genuinely open gradient burden is therefore the high-high commutator packet.

## Local Debt Label

`Finite-band spill in the gradient transfer packet is reducible to the admissible coefficient`

## Exact Statement

Let `\mathcal{C}^{spill}_j(t)` denote the spill part of the dyadic enstrophy remainder created by the replacement `S_{j-4}u \mapsto S_{N-4}u`. Then for every `\varepsilon > 0` there exists `C_\varepsilon > 0` such that

```math
\sum_{j\ge N} 2^{2j} |\mathcal{C}^{spill}_j(t)|
\le
C_\varepsilon\,\mathcal{L}_N(t)\,E_N(t)
+
\varepsilon \nu D_N(t)
```

for almost every `t` on the same classical Euclidean theorem surface.

## Proof Route

1. Expand the difference `S_{j-4}u - S_{N-4}u` into bands `N-3 \le k < j-4`.
2. Use Bernstein on the low factor together with the already isolated dyadic enstrophy weights `2^{2j}`.
3. Sum the finite-band interactions by almost orthogonality.
4. Use Young absorption to place the derivative-bearing part into `\varepsilon \nu D_N(t)` and the remainder into `\mathcal{L}_N(t)E_N(t)`.

## Consequence

After this reduction, the live gradient-side remainder is the genuine high-high commutator packet

```math
\mathfrak{H}^{grad,HH}_{N}[u](t)
:=
\sum_{j\ge N}2^{2j}|\mathcal{C}^{HH}_j(t)|.
```

That packet is tracked separately in `gradient-genuine-high-high-packet.md`.

## Honest Boundary

This note is treated as a localized reduction on the classical theorem surface. The remaining live gradient-side burden is not the spill term; it is the genuine high-high commutator packet.
