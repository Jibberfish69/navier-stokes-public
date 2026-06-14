# `RefillTreeWellFounded.A` non-Zeno discharge and terminal-Zeno residue

## Status

Partial discharge. The non-Zeno refill-tree branches close. The terminal Zeno branch remains open and is exactly the remaining target.

## Statement

Assume `LocalDonorBalance.A`, giving the finite-tree telescoping estimate

```math
\sum_{e\in\mathcal T_L^{int}}\pi(e)
\le C_{tree}
\sum_{v\in\partial\mathcal T_L}E(v;t_v^-)
+\sum_{v\in\mathcal T_L}\ell(v)
+Boundary_{overlap}(\mathcal T_L).
```

Then every legal refill branch with

```math
\sum_m r_m^2=\infty
```

is controlled by entrance-leaf decay and legal losses.

## Proof

A refill edge moves backward by a parabolic amount comparable to `r_m^2` at scale `r_m`. If

```math
\sum_m r_m^2=\infty,
```

then the branch reaches a fixed preterminal time after finitely or countably many steps. At a fixed preterminal time, original smoothness gives high-shell decay. Hence every preterminal entrance leaf has vanishing normalized high-frequency source residue as `N\to\infty`.

Insert these entrance leaves into the finite-tree identity. The boundary terms and legal losses are summable by the packet ledger. Persistent order-one normalized source mass at the root contradicts the vanishing entrance leaves plus legal losses. Thus all non-Zeno branches are controlled.

## Remaining branch

The only surviving branch is terminal Zeno:

```math
\sum_m r_m^2<\infty,
\qquad r_m\downarrow0.
```

This branch never reaches a fixed preterminal entrance time. Original smooth high-shell decay is unavailable at the limiting endpoint. Raw energy also fails at source-pulse normalization, since a shrinking leaf can carry order-one normalized residue while raw energy remains finite.

Compactness extracts a local suitable ancient source-residue object. Current inputs do not place that object in Type I, finite global energy, critical-smallness, bounded-vorticity, self-similar, two-dimensional, axisymmetric, or source-cancellation class.

## Conditional closure

Thus

```math
RefillTreeWellFounded.A
```

is reduced to either

```math
ScaleCriticalTreeCarleson.A
```

or

```math
ZenoSourceResidueRigidity.A.
```

Together with `LocalDonorBalance.A`, this gives

```math
LocalDonorBalance.A+
(ScaleCriticalTreeCarleson.A\vee ZenoSourceResidueRigidity.A)
\Longrightarrow
TwoTowerDonorDepletion.A.
```

## Result

Non-Zeno refill trees are discharged. Terminal Zeno remains the unique obstruction.
