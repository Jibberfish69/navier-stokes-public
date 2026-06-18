# Scale-Barrier Tail Discharge Source Pack

Historical theorem-construction source pack. Despite the filename, the live theorem side has not discharged this burden: the current exact tail lemma is conditional on packet alignment, lifted-band flux, and a tail-compatible Gronwall coefficient bound. This note records the former discharge target and may not be used as closure evidence.

## Target Obligation

- `debt-frontier-classical-dyadic-tail-or-flux-estimate-suppressing-dangerous-high-frequency-transfer-on-the-theorem-surface`
- `Frontier: Classical dyadic tail or flux estimate suppressing dangerous high-frequency transfer on the theorem surface`

## Classical Hypothesis Surface

Let `\{u^(n), p^(n)\}_{n \in N}` solve the classical incompressible 3D Navier-Stokes system on `(0,T) x R^3`:

```math
\partial_t u^(n) + (u^(n)\cdot \nabla)u^(n) + \nabla p^(n) = \nu \Delta u^(n), \quad \nabla \cdot u^(n) = 0,
```

with viscosity `\nu > 0` and smooth divergence-free data in the theorem admissible class. Assume:

1. Uniform energy bound:
```math
\sup_n \sup_{t \in [0,T]} \|u^(n)(t)\|_{L^2_x}^2
+ 2\nu \sup_n \int_0^T \|\nabla u^(n)(t)\|_{L^2_x}^2 dt \le C_E.
```
2. Uniform weak-time regularity on the same classical surface, sufficient for the compactness package.
3. No modified equation, no extra dissipation, no geometric surrogate dynamics.

Let `P_j` be homogeneous Littlewood-Paley projectors and `P_(>=N) := \sum_{j >= N} P_j`.

## Mediating Object

- `classical_scale_barrier_functional`
- `classical_dyadic_transport_defect`
- domain: one fixed classical approximation family `\{u^(n),p^(n)\}` in `L^\infty_t L^2_x cap L^2_t H^1_x`
- codomain: a nonnegative tail-defect scalar `\mathfrak{S}_N[u^(n)]`
- admissibility: classical Euclidean Navier-Stokes only; no hyperviscosity, filtering, or geometric surrogate
- invariance: insensitive to pressure gauge and stable under equivalent dyadic partitions
- theorem interface: if `\sup_n \mathfrak{S}_N[u^(n)] <= C_0 2^{-2\delta N}` and the tail-compatible Gronwall coefficient bound from `theorem-construction/scale-barrier-tail-lemma.md` is supplied, then the scale-barrier bridge is discharged on the same approximation surface
- critical_scale_measure: high-frequency energy tail `E_N^(n)` and dissipation tail `\sum_{j >= N} 2^{2j}\|P_j u^(n)\|_{L^2_x}^2`
- closure_mechanism: absorb the defect into viscous dissipation, control the Gronwall coefficient without losing the tail exponent, and leave a summable remainder
- gradient_transfer: feed the remainder `C_*2^{-2\delta N}` into the gradient-transfer operator
- transport_defect_split: low-high / high-low / high-high decomposition on the same classical approximation family

Define

```math
\mathfrak{S}_N[u^(n)]
:=
\int_0^T \sum_{j >= N}
\left|\left\langle P_j\big((u^(n)\cdot\nabla)u^(n)\big),\, P_j u^(n)\right\rangle\right| dt
- \eta \nu \int_0^T \sum_{j >= N} 2^{2j}\|P_j u^(n)\|_{L^2_x}^2 dt.
```

## Dyadic Tail / Flux Statement

For constants `\delta > 0`, `N_* in N`, `C_0 > 0`, and `\eta` with `0 < \eta < \nu`, require the estimate

```math
\int_0^T \sum_{j >= N}
\left|\left\langle P_j\big((u^(n)\cdot\nabla)u^(n)\big),\, P_j u^(n)\right\rangle\right| dt
\le C_0 2^{-2\delta N}
+ \eta \int_0^T \sum_{j >= N} 2^{2j}\|P_j u^(n)\|_{L^2_x}^2 dt
```

uniformly in `n` and `N >= N_*`.

After dissipation absorption, this yields the tail bound

```math
\sup_n \int_0^T \|P_(>=N)u^(n)(t)\|_{L^2_x}^2 dt \le C_* 2^{-2\delta N},
```

for some `C_*` depending only on classical-surface bounds.

## Transport-Defect Decomposition

Write `\Delta_j := P_j`, `S_{j-4} := \sum_{k<j-4}\Delta_k`, and `\widetilde\Delta_k := \Delta_{k-1}+\Delta_k+\Delta_{k+1}`. For each `j \ge N`,

```math
\Delta_j\big((u^(n)\cdot\nabla)u^(n)\big)
= \mathcal{T}^{LH}_{j,n}
+ \mathcal{T}^{HL}_{j,n}
+ \mathcal{T}^{HH}_{j,n},
```

where

```math
\mathcal{T}^{LH}_{j,n} := \Delta_j\big((S_{j-4}u^(n)\cdot\nabla)\Delta_j u^(n)\big),
```

```math
\mathcal{T}^{HL}_{j,n} := \Delta_j\big((\Delta_j u^(n)\cdot\nabla)S_{j-4}u^(n)\big),
```

```math
\mathcal{T}^{HH}_{j,n} := \Delta_j\left(\sum_{k\ge j-3}\Delta_k u^(n)\cdot\nabla \widetilde\Delta_k u^(n)\right).
```

The readable part of the route is:

1. The strict low-mode low-high and high-low pieces, isolated in `theorem-construction/scale-paraproduct-reduction-lemma.md`, obey
   `int_0^T sum_{j >= N} (|<\mathcal{T}^{SLH}_{j,n}, P_j u^(n)>| + |<\mathcal{T}^{SHL}_{j,n}, P_j u^(n)>|) dt <= C int_0^T \mathcal{L}_N^(n)(t) E_N^(n)(t) dt + eps int_0^T D_N^(n)(t) dt`.
2. Replacing `S_{j-4}` by `S_{N-4}` creates a repaired high-side packet split: a threshold-local spill collar tracked by `theorem-construction/scale-spill-reduction-lemma.md`, plus a lifted high-side remainder tracked by `theorem-construction/scale-high-side-remainder-packet.md`.
3. The genuine high-high packet is kept separate from that lifted remainder and is tracked in `theorem-construction/scale-genuine-high-high-packet.md`.
4. The transport-defect estimate is complete only after the threshold-local spill collar, the lifted high-side remainder, the genuine high-high packet, and the tail-compatible Gronwall coefficient are all aligned on the same classical approximation family, uniformly in `n` and `N`.

For this decomposition, use

```math
E_N^(n)(t) := \sum_{j \ge N} \|P_j u^(n)(t)\|_{L^2_x}^2,
\qquad
D_N^(n)(t) := \sum_{j \ge N} 2^{2j}\|P_j u^(n)(t)\|_{L^2_x}^2,
```

and

```math
\mathcal{L}_N^(n)(t) := 1 + \sum_{k \le N-4}2^{3k/2}\|P_k u^(n)(t)\|_{L^2_x}.
```

## Main Estimate (Scale-Barrier Functional Form)

Define

```math
E_N^(n)(t) := \sum_{j >= N} \|P_j u^(n)(t)\|_{L^2_x}^2.
```

The desired scale-barrier inequality is

```math
E_N^(n)(T)
+ (\nu-\eta)\int_0^T \sum_{j >= N}2^{2j}\|P_j u^(n)\|_{L^2_x}^2 dt
\le E_N^(n)(0) + C_0 2^{-2\delta N}.
```

This is the exact bounded object passed downstream to compactness and gradient transfer.

## Proof Sketch (Classical Euclidean Route)

1. Apply `P_j` to the classical equation and pair with `P_j u^(n)`.
2. Sum over `j >= N`; pressure vanishes after Leray projection and divergence-free pairing.
3. Isolate the nonlinear transport contribution as the only non-dissipative high-mode term.
4. Prove the dyadic flux bound above with the low-mode coefficient controlled strongly enough that the Gronwall factor preserves the summable high-frequency tail; the uniform classical energy/enstrophy budget alone is not this control.
5. Absorb the `\eta`-weighted dissipation portion into the viscous term to close the tail inequality.
6. Integrate in time and pass to the uniform `n` bound.

## Interface to Other Fronts

- Compactness front: tail smallness feeds strong local compactness and the nonlinear closure `u^(n)\otimes u^(n) -> u\otimes u`.
- Gradient front: the same tail control is the summable high-frequency input for Euclidean continuation estimates.
- Closure audit: no term is borrowed from modified equations or stronger hypotheses.

## Still Conditional

The unresolved steps are the actual proof of the dyadic transport/flux inequality on the classical equation with constants uniform in `n` and `N`, and the tail-compatible Gronwall coefficient bound. Until those estimates are derived, this remains a conditional bridge package, not a discharged theorem component.

The exact residual local debt is: `Classical dyadic transport defect bound for the scale-barrier functional plus tail-compatible Gronwall coefficient bound`.

More precisely, the strict low-mode pieces are no longer the only live frontier, but the threshold-local spill collar and the repaired high-side packet remain theorem-critical. The genuine high-high packet is tracked in `theorem-construction/scale-genuine-high-high-packet.md`, while the lifted remainder is tracked in `theorem-construction/scale-high-side-remainder-packet.md`.

## Local Anchors

- [scale-barrier-package.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/scale-barrier-package.md)
- [classical-scale-barrier-functional.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/classical-scale-barrier-functional.md)
- [scale-high-side-remainder-packet.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/scale-high-side-remainder-packet.md)
- [scale-spill-reduction-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/scale-spill-reduction-lemma.md)
- [scale-genuine-high-high-packet.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/scale-genuine-high-high-packet.md)
- [scale-paraproduct-reduction-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/scale-paraproduct-reduction-lemma.md)
- [scale-barrier-transport-defect-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/scale-barrier-transport-defect-lemma.md)
- [spine.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/spine.md)
- [obstruction-capture.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/obstruction-capture.md)
