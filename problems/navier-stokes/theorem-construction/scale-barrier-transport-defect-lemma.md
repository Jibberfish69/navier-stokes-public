# Scale-Barrier Transport Defect Lemma

## Purpose

This note isolates the exact remaining local debt inside the scale-barrier bridge: the classical dyadic transport-defect estimate for the unmodified three-dimensional Navier-Stokes equation. It does not attempt to reprove the entire bridge. It fixes the exact Bony split, the exact quantities that must be controlled, and the one estimate that is still missing on the same classical approximation surface.

## Local Debt Label

`Classical dyadic transport defect bound for the scale-barrier functional`

## Fixed Classical Surface

Let `\{u^{(n)},p^{(n)}\}` be the same smooth divergence-free classical approximation family used throughout the Navier-Stokes lane, on `(0,T)\times\mathbb{R}^3`, with the standard Euclidean Leray projection and the admissible energy/enstrophy budget already recorded elsewhere in the route.

Let `\Delta_j := P_j` and `S_m := \sum_{k<m}\Delta_k`. Define the high-frequency tail and dissipation tail by

```math
E_N^{(n)}(t) := \sum_{j\ge N}\|\Delta_j u^{(n)}(t)\|_{L^2_x}^2,
\qquad
D_N^{(n)}(t) := \sum_{j\ge N}2^{2j}\|\Delta_j u^{(n)}(t)\|_{L^2_x}^2.
```

Use the low-mode coefficient

```math
\mathcal{L}_N^{(n)}(t) := 1 + \sum_{k\le N-4}2^{3k/2}\|\Delta_k u^{(n)}(t)\|_{L^2_x}.
```

The transport defect to be controlled is

```math
\mathcal{F}_N^{(n)}(t)
:=
\sum_{j\ge N}
\left|
\left\langle
\Delta_j\big((u^{(n)}\cdot\nabla)u^{(n)}\big),
\Delta_j u^{(n)}
\right\rangle
\right|.
```

## Exact Bony Split

For each `j \ge N`,

```math
\Delta_j\big((u^{(n)}\cdot\nabla)u^{(n)}\big)
= \mathcal{T}^{LH}_{j,n}
+ \mathcal{T}^{HL}_{j,n}
+ \mathcal{T}^{HH}_{j,n},
```

with

```math
\mathcal{T}^{LH}_{j,n} := \Delta_j\big((S_{j-4}u^{(n)}\cdot\nabla)\Delta_j u^{(n)}\big),
```

```math
\mathcal{T}^{HL}_{j,n} := \Delta_j\big((\Delta_j u^{(n)}\cdot\nabla)S_{j-4}u^{(n)}\big),
```

```math
\mathcal{T}^{HH}_{j,n} := \Delta_j\left(\sum_{k\ge j-3}\Delta_k u^{(n)}\cdot\nabla \widetilde\Delta_k u^{(n)}\right),
\qquad
\widetilde\Delta_k := \Delta_{k-1}+\Delta_k+\Delta_{k+1}.
```

This is the exact low-high / high-low / high-high split the residual debt must use.

## Honest Estimate Route

The route is intended to prove the bound

```math
\int_0^T \mathcal{F}_N^{(n)}(t)\,dt
\le
C \int_0^T \mathcal{L}_N^{(n)}(t)\,E_N^{(n)}(t)\,dt
+ \eta\nu\int_0^T D_N^{(n)}(t)\,dt
+ C_0 2^{-2\delta N},
```

uniformly in `n`, for some `\delta>0`, `C_0>0`, `N_*`, and `\eta\in(0,\nu)`.

Equivalently, the route reduces to the pair of target subestimates

```math
\int_0^T \sum_{j\ge N}
\left(
\left|\left\langle \mathcal{T}^{LH}_{j,n},\Delta_j u^{(n)}\right\rangle\right|
+ \left|\left\langle \mathcal{T}^{HL}_{j,n},\Delta_j u^{(n)}\right\rangle\right|
\right)dt
\le
C \int_0^T \mathcal{L}_N^{(n)}(t)\,E_N^{(n)}(t)\,dt,
```

and

```math
\int_0^T \sum_{j\ge N}
\left|\left\langle \mathcal{T}^{HH}_{j,n},\Delta_j u^{(n)}\right\rangle\right|dt
\le
\eta\nu\int_0^T D_N^{(n)}(t)\,dt
+ C_0 2^{-2\delta N}.
```

The intended reduction is:

1. The strict low-mode parts of `\mathcal{T}^{LH}_{j,n}` and `\mathcal{T}^{HL}_{j,n}`, isolated in `theorem-construction/scale-paraproduct-reduction-lemma.md`, are reduced to `\mathcal{L}_N^{(n)}(t)E_N^{(n)}(t)` plus an arbitrarily small dissipation fraction.
2. Replacing `S_{j-4}` with `S_{N-4}` creates two different remainder packets: a threshold-local spill collar handled by `theorem-construction/scale-spill-reduction-lemma.md`, and a lifted high-side remainder which remains separate from the genuine high-high packet.
3. The genuine high-high packet is reduced to a cubic dyadic tail by `scale-high-high-near-diagonal-reduction-lemma.md` and is usable only through the `scale-cubic-tail-absorption-lemma.md` coefficient-margin estimate with `N>=N_*` and a fixed `0<eta<1` dissipation fraction.
4. The lifted high-side remainder is now reduced, by `scale-lifted-band-stress-strain-flux-repair.md`, to a single coupled mesoscopic stress-strain flux theorem `(L-Flux)` rather than a shellwise leakage estimate.
5. After summing in `j` and integrating in time, the strict low, spill, genuine high-high, and lifted flux bounds must each contribute a displayed fraction of the viscous term whose total is `<1`; under that condition the remaining remainder becomes `C_0 2^{-2\delta N}`.

## Why This Is Smaller Than The Whole Bridge

Once the transport-defect bound above is established, the scale-barrier bridge itself is already packaged: the retained viscous margin yields the tail bound, and the compactness and gradient packages consume that tail bound downstream. So this lemma is the exact residual local burden, not a restatement of the entire bridge.

## Precise Missing Step

The remaining missing step is the lifted-band flux theorem on the same
classical approximation family, with constants independent of `n` and `N`:

```math
\sup_n
\int_0^T \Pi^{lift,\mathrm{dy}}_{N}[u^{(n)}](t)\,dt
\le
\eta\nu \sup_n \int_0^T D_N^{(n)}(t)\,dt
+
C_0 2^{-2\delta N}.
```

The low-high, high-low, threshold-local spill, and genuine high-high packets
are isolated separately. The only genuinely new coupled burden is the lifted
mesoscopic stress-strain flux recorded in
`scale-lifted-band-stress-strain-flux-repair.md`.

## Honest Boundary

This lemma no longer hides a route-selection ambiguity, but under the stricter
audit standard its pure high-high remainder still belongs to the open
proof-critical packet stack on the classical surface.
