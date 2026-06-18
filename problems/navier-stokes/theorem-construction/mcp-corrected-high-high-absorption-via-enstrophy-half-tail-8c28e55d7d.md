# Corrected High-High Absorption Via Enstrophy Half-Tail

## Status

Theorem-facing correction and local discharge for the genuine high-high cubic packet in the dyadic cascade route.

This note replaces the `L^2`-energy-only absorption line in `gradient-cubic-tail-absorption-lemma.md` with the correct enstrophy-controlled half-tail absorption. The result is still useful: under the route's named monotone bridge `Q(t)`, the genuine near-diagonal high-high packet is absorbable into the high-frequency gradient dissipation.

## Objects

Let

```math
u_j := \Delta_j u,
\qquad
D_N(t):=\sum_{j\ge N}2^{4j}\|u_j(t)\|_2^2.
```

Let `\mathfrak H_N^{grad,HH}` denote the genuine high-high packet after the strict low-mode and threshold-spill pieces have been removed.

The corrected near-diagonal estimate is

```math
\mathfrak H_N^{grad,HH}(t)
\le C_{HH}
\sum_{j\ge N-M}2^{\frac92j}\|u_j(t)\|_2^3.
\tag{1}
```

The power `9j/2` is the direct Bernstein count for the displayed gradient-energy high-high term:

```math
\|u_j\|_\infty\,\|\nabla u_j\|_2\,\|\Delta u_j\|_2
\le C_B
2^{\frac32j}\|u_j\|_2\cdot 2^j\|u_j\|_2\cdot 2^{2j}\|u_j\|_2.
```

So the earlier cubic packet with power `3j` was too small for the displayed `-\Delta\Delta_j u` test.

## Theorem `HH.Abs.Q`

Assume the monotone bridge supplies the enstrophy component

```math
E_1(t):=\|\nabla u(t)\|_2^2\le Q_1
\qquad\text{for all }t\in I.
\tag{2}
```

Define the finite collar

```math
\mathcal C_{N,M}(t)
:=
\sum_{N-M\le j<N}2^{4j}\|u_j(t)\|_2^2.
\tag{3a}
```

Then for every `\eta>0` there exists `N_*(Q_1,\eta,\nu,M,C_{HH})` such that
for all `N\ge N_*`,

```math
\mathfrak H_N^{grad,HH}(t)
\le
\eta\nu\bigl(D_N(t)+\mathcal C_{N,M}(t)\bigr)
=
\eta\nu D_{N-M}(t)
\qquad\text{for a.e. }t\in I.
\tag{3}
```

Consequently the genuine high-high cascade packet is absorbed either after
relabeling the high-side cutoff from `N` to `N-M`, or on the unshifted surface
only after the finite collar `\mathcal C_{N,M}` is included in the
threshold-spill packet.

## Proof

Start from the corrected near-diagonal reduction `(1)`. For each `j`, factor the cubic term as

```math
2^{\frac92j}\|u_j\|_2^3
=
\left(2^{4j}\|u_j\|_2^2\right)
\left(2^{\frac12j}\|u_j\|_2\right).
\tag{4}
```

The enstrophy bound gives the pointwise shell estimate

```math
2^j\|u_j(t)\|_2\le \|\nabla u(t)\|_2\le Q_1^{1/2}.
\tag{5}
```

Hence for every `j\ge N-M`,

```math
2^{\frac12j}\|u_j(t)\|_2
=
2^{-\frac12j}\,2^j\|u_j(t)\|_2
\le
2^{-\frac12(N-M)}Q_1^{1/2}.
\tag{6}
```

Insert `(6)` into `(4)` and sum over `j\ge N-M`:

```math
\sum_{j\ge N-M}2^{\frac92j}\|u_j\|_2^3
\le
2^{-\frac12(N-M)}Q_1^{1/2}
\sum_{j\ge N-M}2^{4j}\|u_j\|_2^2.
\tag{7}
```

The finite collar changes the dissipation by an explicit finite collar term:

```math
\sum_{j\ge N-M}2^{4j}\|u_j\|_2^2
=D_N(t)+\mathcal C_{N,M}(t)
=D_{N-M}(t).
\tag{8}
```

Combining `(1)`, `(7)`, and `(8)` gives the exact shifted/collar estimate

```math
\mathfrak H_N^{grad,HH}(t)
\le
C_{HH}2^{-\frac12(N-M)}Q_1^{1/2}
\bigl(D_N(t)+\mathcal C_{N,M}(t)\bigr).
\tag{9}
```

Choose `N_*` so that

```math
C_{HH}2^{-\frac12(N_*-M)}Q_1^{1/2}\le \eta\nu.
\tag{10}
```

Then `(3)` follows.

## Consequence For The Cascade Route

The genuine high-high packet closes by a real small parameter against the
shifted dissipation or against unshifted dissipation plus the explicit collar:

```math
2^{-(N-M)/2}Q_1^{1/2}.
```

The key correction is conceptual: the smallness comes from the enstrophy component of the monotone bridge `Q(t)`, not from the raw `L^2` energy component. This makes the cascade route internally coherent:

```math
Q(t)\ \text{controls enstrophy}
\quad\Longrightarrow\quad
\text{high-high half-tail is small at large }N
\quad\Longrightarrow\quad
\mathfrak H_N^{grad,HH}\text{ is absorbed by }D_{N-M}
\text{, or by }D_N\text{ plus the finite collar packet.}
```

## Boundary

This note closes the genuine near-diagonal high-high cubic packet under the
route's `Q(t)` enstrophy control only in the shifted-cutoff sense, or in the
unshifted sense after the finite collar `\mathcal C_{N,M}` is charged to the
threshold-spill packet. It leaves the strict low-mode coefficient and
threshold-spill packet in their separate slots. It also leaves the derivation of
the `Q(t)` enstrophy bound to the monotone bridge package.
