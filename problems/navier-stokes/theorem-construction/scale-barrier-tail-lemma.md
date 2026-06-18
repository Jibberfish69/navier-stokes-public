# Lemma S.T (Conditional Classical Dyadic Tail-Flux Scale Barrier)

## Role

This lemma is the conditional upstream scale-barrier theorem on the fixed
classical approximation surface. Its job is to state the exact hypotheses under
which localized dyadic transport-defect reductions convert into the uniform
high-frequency tail bound needed by compactness and the Euclidean fourth bridge.

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

Assume the packet estimates `(2)`--`(5)` below and the following
tail-compatible Gronwall coefficient condition: for some `\delta>0`, `C_G<\infty`,
and `N_*`,

```math
\sup_n\left[
T_N^{(n)}(0)
\exp\!\left(C\int_0^T\mathcal L_N^{(n)}(s)\,ds\right)
\right]
\le
C_G 2^{-2\delta N}
\qquad (N\ge N_*).
```

Then there exists `C_* > 0` such that for every `N \ge N_*`,

```math
\sup_n \int_0^T \|P_{\ge N}u^{(n)}(t)\|_{L_x^2}^2 \, dt
\le
C_* 2^{-2\delta N}.
```

Equivalently, the dangerous high-frequency tail is summably small on the fixed
classical approximation family under the displayed coefficient hypothesis.

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
and then controlled for all large cutoffs by the coefficient-margin estimate in
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

so `\mathcal L_N^{(n)} \in L_t^\infty \cap L_t^1` on `[0,T]`.  This is enough
to apply Gronwall at fixed `N`; it is not enough to preserve a summable tail as
`N\to\infty`, because the displayed bound contains the factor `2^{3N/2}`.  Gronwall
applied to `(6)` gives the exact estimate

```math
T_N^{(n)}(t)
\le
T_N^{(n)}(0)\,
\exp\!\left(C\int_0^t \mathcal L_N^{(n)}(s)\,ds\right).
\tag{7}
```

Hence

```math
\int_0^T T_N^{(n)}(t)\,dt
\le
T\,T_N^{(n)}(0)
\exp\!\left(C\int_0^T \mathcal L_N^{(n)}(s)\,ds\right).
\tag{8}
```

The needed initial tail bound is part of the coefficient hypothesis above.
Pointwise smoothness of each approximant does not by itself give a uniform
`C_0,\delta` for the whole approximation family.  The conclusion follows only
when the uniform initial tail and the tail-compatible coefficient bound are
both supplied; without them, the Gronwall factor in `(8)` can destroy the
`2^{-2\delta N}` decay.  Under the hypothesis,

```math
\sup_n \int_0^T T_N^{(n)}(t)\,dt
\le
C_* 2^{-2\delta N},
\qquad N \ge N_*.
```

This proves the dyadic scale barrier conditional on `(L-Flux)` and the
tail-compatible Gronwall coefficient bound.  Energy control alone does not
prove that coefficient bound.

## Object Slots

- `domain`: classical approximation family on `(0,T) x R^3`
- `codomain`: uniform high-frequency tail barrier
- `admissibility`: same energy surface and same classical PDE as the main theorem
- `invariance`: pressure gauge and equivalent dyadic partitions
- `theorem_interface`: exact upstream input for compactness and gradient continuation
- `critical_scale_measure`: `T_N^{(n)}` / `E_N^{(n)}` and the dissipation tail
- `closure_mechanism`: paraproduct reduction, spill reduction, high-high coefficient margin, `(L-Flux)`, and Gronwall under the tail-compatible coefficient hypothesis
- `gradient_transfer_role`: supplies the same dyadic barrier later recertified by the Euclidean fourth bridge

## Honest Boundary

This lemma remains a theorem-construction target on the fixed classical
Euclidean surface. Under the stricter audit standard, the remaining live burdens
are proposition-level packet alignment, the coupled lifted-band flux theorem
`(L-Flux)` from `scale-lifted-band-stress-strain-flux-repair.md`, and the
tail-compatible Gronwall coefficient bound displayed in the lemma statement.
Without those theorem-grade inputs, the proposition cannot honestly count as
closed.
