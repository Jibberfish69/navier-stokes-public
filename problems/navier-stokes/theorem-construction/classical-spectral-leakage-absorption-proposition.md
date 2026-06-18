# Classical Spectral Leakage Absorption Proposition

## Purpose

This note proves the base spectral leakage absorption law on the current
classical theorem surface by translating the already-installed dyadic
scale-barrier transport defect bound into frequency language.

The honest strength of this note is the `s=0` tail-energy surface.
It does not claim the higher weighted `s>0` closures.

## Setting

Let `\{u^{(n)},p^{(n)}\}` be the fixed classical approximation family on
`(0,T)\times \mathbb R^3` used by the Navier--Stokes lane, with the standard
energy budget and the same packet assumptions as in the dyadic scale-barrier
bridge.

Fix a dyadic frequency threshold `K=2^N`.
Define the spectral tail state and tail dissipation by

```math
T_0^{(n)}(K,t)
:=
\|P_{\ge K}u^{(n)}(t)\|_{L_x^2}^2,
\qquad
Q_0^{(n)}(K,t)
:=
\||\nabla|P_{\ge K}u^{(n)}(t)\|_{L_x^2}^2.
\tag{1}
```

Define the low-frequency carrier coefficient

```math
\mathcal C_0^{(n)}(K,t)
:=
1+\sum_{k\le N-4}2^{3k/2}\|\Delta_k u^{(n)}(t)\|_{L_x^2}.
\tag{2}
```

Define the shellwise spectral leakage by

```math
\mathrm{Leakage}_0^{(n)}(K,t)
:=
\sum_{j\ge N}
\left|
\left\langle
\Delta_j\big((u^{(n)}\cdot\nabla)u^{(n)}\big),
\Delta_j u^{(n)}
\right\rangle
\right|.
\tag{3}
```

This is the exact high-frequency transport leakage on the `s=0` tail-energy
surface.

## Proposition

Assume the packet reductions used in the dyadic scale-barrier bridge,
including the lifted-band repair theorem `(L-Flux)` on the same classical
surface.

Then there exist constants `\delta>0`, `C>0`, `C_*>0`, `N_*`, and
`\eta\in(0,\nu)` such that for every `K=2^N` with `N\ge N_*`,

```math
\int_0^T \mathrm{Leakage}_0^{(n)}(K,t)\,dt
\le
C \int_0^T \mathcal C_0^{(n)}(K,t)\,T_0^{(n)}(K,t)\,dt
+
\eta\nu\int_0^T Q_0^{(n)}(K,t)\,dt
+
C_* K^{-2\delta},
\tag{4}
```

uniformly in `n`.

So the base spectral leakage is absorbable by:

- a controlled carrier term,
- an arbitrarily small fraction of tail dissipation,
- and a summable remainder.

## Proof

Set `K=2^N`.
In the notation of
[scale-barrier-transport-defect-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/scale-barrier-transport-defect-lemma.md),
the dyadic tail quantities are

```math
E_N^{(n)}(t)
:=
\sum_{j\ge N}\|\Delta_j u^{(n)}(t)\|_{L_x^2}^2,
\qquad
D_N^{(n)}(t)
:=
\sum_{j\ge N}2^{2j}\|\Delta_j u^{(n)}(t)\|_{L_x^2}^2.
\tag{5}
```

For the fixed smooth dyadic partition with uniformly finite overlap, the
threshold `K=2^N` tail norms satisfy the exact equivalence

```math
c_{LP}E_N^{(n)}(t)
\le
T_0^{(n)}(K,t)
\le
C_{LP}E_N^{(n)}(t),
\qquad
c_{LP}D_N^{(n)}(t)
\le
Q_0^{(n)}(K,t)
\le
C_{LP}D_N^{(n)}(t),
\tag{6}
```

with absolute equivalence constants depending only on the chosen dyadic
partition.

Also, by definition,

```math
\mathcal C_0^{(n)}(K,t)=\mathcal L_N^{(n)}(t),
\tag{7}
```

where `\mathcal L_N^{(n)}` is the low-mode coefficient from the dyadic
transport-defect lemma.

Finally, the leakage functional `(3)` is exactly the dyadic transport defect

```math
\mathrm{Leakage}_0^{(n)}(K,t)=\mathcal F_N^{(n)}(t).
\tag{8}
```

The transport-defect lemma states that, uniformly in `n`,

```math
\int_0^T \mathcal F_N^{(n)}(t)\,dt
\le
C \int_0^T \mathcal L_N^{(n)}(t)\,E_N^{(n)}(t)\,dt
+
\eta\nu\int_0^T D_N^{(n)}(t)\,dt
+
C_0 2^{-2\delta N}.
\tag{9}
```

Substituting `(6)`, `(7)`, and `(8)` into `(9)` gives

```math
\int_0^T \mathrm{Leakage}_0^{(n)}(K,t)\,dt
\le
C \int_0^T \mathcal C_0^{(n)}(K,t)\,T_0^{(n)}(K,t)\,dt
+
\eta\nu\int_0^T Q_0^{(n)}(K,t)\,dt
+
C_* K^{-2\delta},
\tag{10}
```

after changing constants.

This is exactly `(4)`.

## Corollary: spectral no-escape at base tail order

On the same classical surface, the tail energy identity is

```math
\frac12\frac{d}{dt}T_0^{(n)}(K,t)
+
\nu Q_0^{(n)}(K,t)
=
-\sum_{j\ge N}
\left\langle
\Delta_j\big((u^{(n)}\cdot\nabla)u^{(n)}\big),
\Delta_j u^{(n)}
\right\rangle.
\tag{11}
```

Hence

```math
\frac12\frac{d}{dt}T_0^{(n)}(K,t)
+
\nu Q_0^{(n)}(K,t)
\le
\mathrm{Leakage}_0^{(n)}(K,t).
\tag{12}
```

Combining `(12)` with the packet reductions recorded in
[scale-barrier-tail-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/scale-barrier-tail-lemma.md)
recovers the classical spectral tail barrier

```math
\sup_n \int_0^T T_0^{(n)}(K,t)\,dt
\le
C_* K^{-2\delta},
\qquad K\ge K_*.
\tag{13}
```

So the carrier-floor-leakage architecture is already real at the base spectral
tail order.

## Honest boundary

This proposition is not stronger than the current dyadic bridge.
It is the exact same `s=0` theorem rewritten in the spectral language that
matches the NC carrier-floor-leakage packet.

The higher weighted leakage surfaces remain separate gradient/enstrophy-tail
work.
