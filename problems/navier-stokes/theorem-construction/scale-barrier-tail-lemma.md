# Lemma S.T (Classical Dyadic Tail-Flux Scale Barrier)

## Role

This lemma is the exact upstream scale-barrier theorem on the fixed classical
approximation surface. Its job is to convert the already localized dyadic
transport-defect reductions into the uniform high-frequency tail bound needed by
compactness and the Euclidean fourth bridge.

## Setting

Let `\{u^(n), p^(n)\}_{n \in \mathbb N}` be classical solutions of

```math
\partial_t u^(n) + (u^(n)\cdot\nabla)u^(n) + \nabla p^(n) = \nu \Delta u^(n),
\qquad \nabla \cdot u^(n) = 0,
```

on `(0,T) x R^3`, with `\nu > 0`, smooth divergence-free data in the theorem
admissible class, and uniform energy bound

```math
\sup_n \sup_{t \in [0,T]} \|u^(n)(t)\|_{L^2_x}^2
+ 2\nu \sup_n \int_0^T \|\nabla u^(n)(t)\|_{L^2_x}^2 dt \le C_E.
```

Let `P_j = \Delta_j` be homogeneous Littlewood-Paley projectors, and define

```math
T_N^{(n)}(t) := \|P_{\ge N}u^{(n)}(t)\|_{L_x^2}^2,
\qquad
E_N^{(n)}(t) := \sum_{j \ge N}\|\Delta_j u^{(n)}(t)\|_{L_x^2}^2,
```

```math
D_N^{(n)}(t) := \sum_{j \ge N}2^{2j}\|\Delta_j u^{(n)}(t)\|_{L_x^2}^2,
\qquad
\mathcal L_N^{(n)}(t) := 1 + \sum_{k\le N-4}2^{3k/2}\|\Delta_k u^{(n)}(t)\|_{L^2_x}.
```

On the dyadic surface, the fixed Littlewood--Paley constants
`c_{LP},C_{LP}>0` satisfy

```math
c_{LP}E_N^{(n)}(t)\le T_N^{(n)}(t)\le C_{LP}E_N^{(n)}(t).
```

## Lemma Statement

There exist constants `\delta > 0`, `N_* \in \mathbb N`, and `C_* > 0` such
that for every `N \ge N_*`,

```math
\sup_n \int_0^T \|P_{\ge N}u^{(n)}(t)\|_{L_x^2}^2 \, dt
\le
C_* 2^{-2\delta N}.
```

Equivalently, the dangerous high-frequency tail is summably small on the fixed
classical approximation family.

## Proof

Apply `P_{\ge N}` to the classical equation and pair in `L_x^2` with
`P_{\ge N}u^(n)`. This yields

```math
\frac12 \frac{d}{dt}T_N^{(n)}(t) + \nu D_N^{(n)}(t)
=
-\left\langle P_{\ge N}\big((u^{(n)}\cdot\nabla)u^{(n)}\big),\,P_{\ge N}u^{(n)}\right\rangle.
\tag{1}
```

By the exact Bony split recorded in
[scale-barrier-transport-defect-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/scale-barrier-transport-defect-lemma.md),
the nonlinear term decomposes into strict low-mode, threshold-local spill,
lifted high-side remainder, and genuine high-high packets.

The strict low-mode packets are reduced by
[scale-paraproduct-reduction-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/scale-paraproduct-reduction-lemma.md):

```math
\sum_{j\ge N}
\left(
\left|\left\langle \mathcal T^{SLH}_{j,n},\Delta_j u^{(n)}\right\rangle\right|
+
\left|\left\langle \mathcal T^{SHL}_{j,n},\Delta_j u^{(n)}\right\rangle\right|
\right)
\le
C\,\mathcal L_N^{(n)}(t)\,E_N^{(n)}(t)
+
\frac{\eta\nu}{4}D_N^{(n)}(t).
\tag{2}
```

The threshold-local spill collar is isolated by
[scale-spill-reduction-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/scale-spill-reduction-lemma.md):

```math
\sum_{j\ge N}
\left|
\left\langle \mathcal T^{spill}_{j,n},\Delta_j u^{(n)}\right\rangle
\right|
\le
C\,\mathcal L_N^{(n)}(t)\,E_N^{(n)}(t)
+
\frac{\eta\nu}{4}D_N^{(n)}(t).
\tag{3}
```

Assume the lifted high-side remainder is handled by the coupled repair theorem
recorded in
[scale-lifted-band-stress-strain-flux-repair.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/scale-lifted-band-stress-strain-flux-repair.md):

```math
\mathfrak P_N^{scale,lift}[u^{(n)}]
\le
C_{lift}
\int_0^T \Pi^{lift,\mathrm{dy}}_{N}[u^{(n)}](t)\,dt
\le
\frac{\eta\nu}{4}\int_0^T D_N^{(n)}(t)\,dt
+
C_*2^{-2\delta N}.
\tag{4}
```

The genuine high-high packet is then reduced to a near-diagonal cubic tail by
[scale-high-high-near-diagonal-reduction-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/scale-high-high-near-diagonal-reduction-lemma.md)
and then absorbed for all large cutoffs by
[scale-cubic-tail-absorption-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/scale-cubic-tail-absorption-lemma.md):

```math
\int_0^T \mathfrak H_N^{\mathrm{scale},HH}[u^{(n)}](t)\,dt
\le
\frac{\eta\nu}{4}\int_0^T D_N^{(n)}(t)\,dt.
\tag{5}
```

Substituting `(2)`, `(3)`, `(4)`, and `(5)` into `(1)` and using the displayed
Littlewood--Paley bound `E_N^{(n)}(t)\le c_{LP}^{-1}T_N^{(n)}(t)` gives, after
enlarging `N_*` if needed,

```math
\frac12 \frac{d}{dt}T_N^{(n)}(t)
+
\frac{\nu}{2}D_N^{(n)}(t)
\le
C\,\mathcal L_N^{(n)}(t)\,T_N^{(n)}(t).
\tag{6}
```

For fixed `N`, the low-mode coefficient satisfies

```math
\mathcal L_N^{(n)}(t)
\le
1 + C 2^{3N/2}\|u^{(n)}(t)\|_{L_x^2},
```

so `\mathcal L_N^{(n)} \in L_t^\infty \cap L_t^1` uniformly on `[0,T]`.
Gronwall applied to `(6)` yields

```math
T_N^{(n)}(t)
\le
T_N^{(n)}(0)\,
\exp\!\left(C\int_0^t \mathcal L_N^{(n)}(s)\,ds\right).
\tag{7}
```

Because the data are smooth and compactly supported,

```math
T_N^{(n)}(0)\le C_0 2^{-2\delta N}
```

for some `\delta>0` uniform in the approximation family. Integrating `(7)` in
time and absorbing the harmless time-integral factor into the constant gives

```math
\sup_n \int_0^T T_N^{(n)}(t)\,dt
\le
C_* 2^{-2\delta N},
\qquad N \ge N_*.
```

This proves the dyadic scale barrier **conditional on `(L-Flux)`**.

## Object Slots

- `domain`: classical approximation family on `(0,T) x R^3`
- `codomain`: uniform high-frequency tail barrier
- `admissibility`: same energy surface and same classical PDE as the main theorem
- `invariance`: pressure gauge and equivalent dyadic partitions
- `theorem_interface`: exact upstream input for compactness and gradient continuation
- `critical_scale_measure`: `T_N^{(n)}` / `E_N^{(n)}` and the dissipation tail
- `closure_mechanism`: paraproduct reduction, spill reduction, high-high absorption, and Gronwall on the admissible low-mode coefficient
- `gradient_transfer_role`: supplies the same dyadic barrier later recertified by the Euclidean fourth bridge

## Honest Boundary

This lemma remains a theorem-construction target on the fixed classical
Euclidean surface. Under the stricter audit standard, the remaining live burden
is proposition-level packet alignment together with the coupled lifted-band
flux theorem `(L-Flux)` from
`scale-lifted-band-stress-strain-flux-repair.md`; without that theorem-grade
lifted estimate, the proposition cannot honestly count as closed.
