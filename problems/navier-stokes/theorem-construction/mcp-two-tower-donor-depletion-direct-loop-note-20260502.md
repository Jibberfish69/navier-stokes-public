# TwoTowerDonorDepletion.A — direct loop note

## Target

Construct a nonnegative donor reserve `R_don`, a nonnegative edge-cost measure `d dfrak(e)`, and a summable legal-loss measure `d ell(e)` such that every legal positive source-parent edge satisfies

```math
d\pi(e) \le C\,d\mathfrak d(e)+d\ell(e),
```

and every legal ancestry tree satisfies

```math
\sum_{e\in\mathcal T} d\mathfrak d(e)
\le C R_{don}(root(\mathcal T))+C\sum_{e\in\mathcal T}d\ell(e).
```

This theorem would give

```math
TwoTowerDonorDepletion.A
\Longrightarrow
DiffuseParentCharge.A
\Longrightarrow
ParentConcentrationOrDiffuseCharge.A.
```

It would also give a backward drain along infinite source ancestry chains.

## Attempt

The Navier-Stokes shell flux identity supplies antisymmetric transfer before localization and one-sided source-pulse weighting. After terminal selection, the positive parent edge measure records the positive child-feeding source. A donor-depletion proof requires a fixed scale-normalized cost for each positive legal edge.

The global energy reserve gives finite raw mass:

```math
\sup_t\|u(t)\|_2^2<\infty.
```

At heat scale, a source pulse can carry order-one normalized source/mixed mass while its raw physical `L^2` contribution shrinks with volume. Therefore raw energy gives no fixed lower bound for `d dfrak(e)` at source-pulse normalization.

The local energy inequality has the form

```math
A_\ell \le A_{\ell-1}+Charge_\ell+Reserve_\ell.
```

This telescopes after a normalized Carleson charge is supplied. In the current route, that charge is exactly the missing source-pulse reserve. The local energy ledger therefore cannot serve as `R_don` for all legal positive edges.

Finite dyadic banding gives a bounded shell range for legal parents. It leaves physical and triadic parent multiplicity unrestricted. Hence it cannot convert diffuse parentage into a bounded donor cost.

Same-fluid transport preserves legal ancestry after an edge is chosen. It supplies fidelity, while the missing theorem requires a cost attached to every positive edge.

## Result

`TwoTowerDonorDepletion.A` remains open under the installed route inputs.

The obstruction is precise: the route lacks a scale-normalized donor reserve that prices positive source-parent edges at the same normalization used by `SourcePulseExclusion.A`.

## Consequence

The donor-depletion sufficient route remains valid as a target:

```math
TwoTowerDonorDepletion.A
\Longrightarrow
SourcePulseExclusion.A.
```

The direct proof from raw energy, local energy, finite banding, and same-fluid transport fails at the missing edge-cost measure. Continue to the ancestry-drain alternative.
