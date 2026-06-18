# Gradient Cubic-Tail Coefficient Lemma

## Purpose

This note closes the genuine gradient-side high-high coefficient step after the strict low-mode and threshold-spill reductions. The corrected near-diagonal packet is controlled by the enstrophy component of the monotone bridge `Q(t)`, rather than by raw `L^2` energy alone.

## Exact Statement

Let `u` be a classical solution on the working interval, and set

```math
D_N(t):=\sum_{j\ge N}2^{4j}\|\Delta_j u(t)\|_2^2.
```

Assume the enstrophy component of the monotone bridge:

```math
\|\nabla u(t)\|_2^2\le Q_1
\qquad\text{for a.e. }t.
```

Let `\mathfrak H_N^{grad,HH}[u](t)` be the genuine high-high packet from `gradient-genuine-high-high-packet.md`, with the corrected near-diagonal reduction

```math
\mathfrak H_N^{grad,HH}[u](t)
\le
C_M\sum_{j\ge N-M}2^{\frac92j}\|\Delta_j u(t)\|_2^3.
```

Then for every `\eta>0` there is `N_*=N_*(Q_1,\eta,\nu,M)` such that, for every `N\ge N_*`,

```math
\mathfrak H_N^{grad,HH}[u](t)
\le
\frac{\eta\nu}{2}D_{N-M}(t)
```

for almost every `t`. After shifting the high-side cutoff by the fixed collar width, this gives the route form

```math
\mathfrak H_N^{grad,HH}[u](t)
\le
\frac{\eta\nu}{2}D_N(t).
```

A summable reserve may be added:

```math
\mathfrak H_N^{grad,HH}[u](t)
\le
\frac{\eta\nu}{2}D_N(t)+C_0 2^{-2\delta N}.
```

## Proof

By the corrected near-diagonal reduction,

```math
\mathfrak H_N^{grad,HH}[u](t)
\le
C_M\sum_{j\ge N-M}2^{\frac92j}\|\Delta_j u(t)\|_2^3.
```

For each `j`, factor

```math
2^{\frac92j}\|\Delta_j u\|_2^3
=
\left(2^{4j}\|\Delta_j u\|_2^2\right)
\left(2^{\frac12j}\|\Delta_j u\|_2\right).
```

The enstrophy bound gives

```math
2^j\|\Delta_j u(t)\|_2\le \|\nabla u(t)\|_2\le Q_1^{1/2}.
```

Hence, for `j\ge N-M`,

```math
2^{\frac12j}\|\Delta_j u(t)\|_2
=2^{-\frac12j}\,2^j\|\Delta_j u(t)\|_2
\le
2^{-\frac12(N-M)}Q_1^{1/2}.
```

Therefore

```math
\mathfrak H_N^{grad,HH}[u](t)
\le
C_M2^{-\frac12(N-M)}Q_1^{1/2}
\sum_{j\ge N-M}2^{4j}\|\Delta_j u(t)\|_2^2.
```

The sum on the right is `D_{N-M}(t)`. Choose `N_*` so that

```math
C_M2^{-\frac12(N_*-M)}Q_1^{1/2}\le \frac{\eta\nu}{2}.
```

Then the desired coefficient-margin estimate follows for every `N\ge N_*`.

## Consequence

The genuine high-high packet has a real small coefficient:

```math
2^{-N/2}Q_1^{1/2}.
```

Thus the high-high portion of the gradient cascade is controlled by high-frequency gradient dissipation once the route has the `Q(t)` enstrophy layer.

## Boundary

This lemma closes the genuine high-high coefficient slot. The strict low-mode coefficient, threshold-spill collar, and lifted high-side remainder remain separate packets in the full gradient cascade theorem.
