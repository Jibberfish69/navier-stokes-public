# Classical Scale-Barrier Functional

## Object

`classical_scale_barrier_functional`

## Definition

For a classical approximation family `\{u^{(n)},p^{(n)}\}` on `(0,T)\times\mathbb{R}^3`, a dyadic threshold `N`, and a dissipation fraction `\eta\in(0,\nu)`, define

```math
\mathfrak{S}_N[u^{(n)}]
:=
\int_0^T \sum_{j\ge N}
\left|\left\langle P_j((u^{(n)}\cdot\nabla)u^{(n)}),\,P_j u^{(n)}\right\rangle\right|dt
-\eta\nu\int_0^T\sum_{j\ge N}2^{2j}\|P_j u^{(n)}\|_{L^2_x}^2dt.
```

The scale-barrier bridge is discharged once one proves

```math
\sup_n \mathfrak{S}_N[u^{(n)}] \le C_0 2^{-2\delta N}
```

for all `N >= N_*` on the same classical surface.

## Slots

- `domain`: one fixed classical smooth-data approximation family with common energy/enstrophy budget.
- `codomain`: a nonnegative tail-defect scalar indexed by `N`.
- `admissibility`: original Euclidean Navier-Stokes dynamics only; no hyperviscosity, filtering, or geometric surrogate.
- `invariance`: independent of pressure gauge and stable under equivalent dyadic partitions up to harmless constants.
- `theorem_interface`: controls the only high-frequency quantity used by both compactness and gradient continuation.
- `critical_scale_measure`: the high-frequency energy and dissipation tails `E_N` and `D_N`.
- `closure_mechanism`: viscous absorption plus a summable remainder turns the high-side remainder packet into the tail estimate used downstream.
- `gradient_transfer_role`: supplies the `C_*2^{-2\delta N}` remainder term in the gradient-transfer operator.

## Honest Boundary

What remains missing is not the object definition but the Euclidean proof of the high-side remainder bound itself after the strict low-mode pieces are extracted. The exact unresolved packet is recorded in `theorem-construction/scale-high-side-remainder-packet.md`, and the exact residual local debt is recorded in `theorem-construction/scale-barrier-transport-defect-lemma.md`.
