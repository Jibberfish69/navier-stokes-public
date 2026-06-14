# Weighted High-Frequency Shell Reduction Lemma

## Purpose

This note isolates the reduced weighted-shell problem behind the strict
low-mode packet on the Euclidean gradient-transfer surface. It should be read
as a theorem target plus a bounded self-attempt, not as a discharged lemma.

The exact local question is whether the transport-form strict low estimate

```math
\sum_{j\ge N}\bigl(|LH_j^{strict}|+|HL_j^{strict}|\bigr)
\le C_{strict}
\mathcal L_N(t)\sum_{j\ge N}\sqrt{E_j(t)D_j(t)}
```

can be converted on the declared theorem surface into

```math
C\,\mathcal L_N(t)\,E_N(t)+\varepsilon \nu D_N(t).
```

## Setting

Let

```math
E_j(t):=2^{2j}\|\Delta_j u(t)\|_{L^2_x}^2,
\qquad
D_j(t):=2^{4j}\|\Delta_j u(t)\|_{L^2_x}^2,
```

```math
E_N(t):=\sum_{j\ge N}E_j(t),
\qquad
D_N(t):=\sum_{j\ge N}D_j(t),
```

and define the weighted shell sum

```math
F_N(t)
:=
\sum_{j\ge N}2^jE_j(t)
=
\sum_{j\ge N}2^{3j}\|\Delta_j u(t)\|_{L^2_x}^2.
```

Since `D_j=2^{2j}E_j`, one has the exact shell identity

```math
\sqrt{E_jD_j}=2^jE_j,
```

so the unresolved strict-low term is equivalently

```math
\mathcal L_N(t)\,F_N(t).
```

## Target Statement

The missing same-surface conversion would follow from any theorem-grade bound
of the form

```math
\mathcal L_N(t)\,F_N(t)
\le
C\,\mathcal L_N(t)\,E_N(t)
+
\varepsilon \nu D_N(t),
```

or from any stronger intermediate estimate that implies it without changing the
declared coefficient surface `\mathcal L_N`.

## Exact Collar/Far-Tail Split

Fix a collar width `J\in\mathbb N`. Split

```math
F_N(t)=F_{N,\le J}(t)+F_{N,>J}(t),
```

where

```math
F_{N,\le J}(t):=\sum_{N\le j\le N+J}2^jE_j(t),
\qquad
F_{N,>J}(t):=\sum_{j>N+J}2^jE_j(t).
```

### Near-threshold collar

For `N\le j\le N+J`,

```math
2^j\le 2^{N+J},
```

so

```math
F_{N,\le J}(t)
\le
2^{N+J}\sum_{N\le j\le N+J}E_j(t)
\le
2^{N+J}E_N(t).
\tag{1}
```

Thus the collar contributes

```math
\mathcal L_N(t)\,F_{N,\le J}(t)
\le
2^J\,\mathcal L_N(t)\,2^N E_N(t).
\tag{2}
```

### Far tail

For `j>N+J`,

```math
2^jE_j(t)=2^{-j}D_j(t)\le 2^{-(N+J+1)}D_j(t),
```

hence

```math
F_{N,>J}(t)
\le
2^{-(N+J+1)}\sum_{j>N+J}D_j(t)
\le
2^{-(N+J+1)}D_N(t).
\tag{3}
```

Therefore

```math
\mathcal L_N(t)\,F_{N,>J}(t)
\le
2^{-(N+J+1)}\mathcal L_N(t)\,D_N(t).
\tag{4}
```

Combining `(2)` and `(4)`,

```math
\mathcal L_N(t)\,F_N(t)
\le
2^J\,\mathcal L_N(t)\,2^N E_N(t)
+
2^{-(N+J+1)}\mathcal L_N(t)\,D_N(t).
\tag{5}
```

## What This Self-Attempt Achieves

The collar/far-tail split is exact and cleanly reduces the weighted-shell
problem to two separate quantities:

- a near-threshold collar term `\mathcal L_N 2^N E_N`,
- a far-tail term `2^{-(N+J)}\mathcal L_N D_N`.

This is the sharpest same-surface decomposition currently on record for the
transport-form strict low packet.

## Why The Split Still Does Not Close The Proposition Surface

The desired proposition-level target is

```math
C\,\mathcal L_NE_N+\varepsilon \nu D_N.
```

The collar term in `(5)` still carries an extra factor `2^N`, so the split
does **not** reduce it to `C\mathcal L_NE_N` by itself. The far-tail term is
closer to dissipation, but even there one would need

```math
2^{-(N+J)}\mathcal L_N(t)\ll \nu
```

uniformly on the theorem surface in order to absorb it into `\varepsilon \nu
D_N`. The current fixed-cutoff admissibility of `\mathcal L_N` does not give
that. On the contrary, the live fixed-cutoff bound grows like

```math
\mathcal L_N(t)\le C_L\bigl(1 + C_0\,2^{3N/2}M\bigr),
```

so the coefficient in front of `D_N` is not uniformly small.

Thus the weighted-shell split does **not** by itself prove the target lemma.

## Consequence For The Live Fork

This bounded self-attempt sharpens the strict-low obstruction rather than
closing it.

The current possibilities are now:

1. prove a genuinely new low-mode strain theorem strong enough to turn the
   factor `\mathcal L_N 2^N` into viscous-scale control;
2. prove a new localization theorem showing that the relevant high shells are
   concentrated near threshold strongly enough to compare `F_N` directly with
   `E_N`;
3. rewrite the gradient bridge on a stronger coefficient/interface rather than
   forcing the present `\mathcal L_N` surface.

The first option is the exact same-surface rescue input already isolated in
[h2-standalone-half-derivative-bound.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/h2-standalone-half-derivative-bound.md).

## Honest Boundary

This note does **not** prove the weighted-shell reduction.

It proves only that the most natural collar/far-tail decomposition yields the
explicit bound `(5)`, and that bound is still too weak to recover

```math
C\,\mathcal L_N E_N+\varepsilon \nu D_N
```

on the current theorem surface.
