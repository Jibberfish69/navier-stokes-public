# RefillTreeWellFounded.A — direct loop note

## Target

With `LocalDonorBalance.A` installed, prove that every legal terminal source-refill tree rooted at a source-balanced child pulse has controlled terminal leaves or spends a finite scale-normalized reserve.

The donor-balance identity gives finite-tree telescoping:

```math
\sum_{e\in\mathcal T_L^{int}}\pi(e)
\le C_{tree}
\sum_{v\in\partial\mathcal T_L}E(v;t_v^-)
+\sum_{v\in\mathcal T_L}\ell(v)
+Boundary_{overlap}(\mathcal T_L).
```

Thus the remaining target is well-foundedness of terminal refill trees.

## Attempt

Entrance leaves are controlled when a branch reaches a fixed preterminal time or fixed positive entrance scale. Original smoothness supplies high-shell decay there, and the finite-tree identity then contradicts persistent normalized source-pulse mass.

Scale-time summation closes every branch with

```math
\sum_m r_m^2=\infty.
```

Such a branch reaches a preterminal entrance time.

The dangerous branch is the terminal Zeno case:

```math
\sum_m r_m^2<\infty,
\qquad
r_m\downarrow0.
```

Finite dyadic banding permits this geometric scale cascade. Same-fluid transport preserves the legal chain. Original smoothness on compact preterminal intervals gives no terminal endpoint leaf bound for Zeno leaves.

Raw leaf energy also fails at source-pulse normalization. A leaf can carry order-one normalized residue on shrinking physical volume while raw `L^2` energy remains finite.

Finite banding restricts shell ranges and leaves physical/triadic branching unrestricted. It cannot produce bounded-depth or bounded-branching refill trees.

Compact Zeno extraction gives a local suitable ancient source-residue object. The current route supplies no rigid class and no source-residue Liouville theorem for that object.

## Result

`RefillTreeWellFounded.A` remains open under installed inputs.

The precise remaining Zeno alternatives are:

```math
ScaleCriticalTreeCarleson.A
```

or

```math
ZenoSourceResidueRigidity.A.
```

The first charges terminal Zeno refill trees by a scale-normalized donor reserve.
The second extracts a rigid ancient source-residue limit from any uncharged Zeno
branch and forces the inherited residue to vanish.

## Consequence

`LocalDonorBalance.A` is solved. The donor route still needs one Zeno theorem:

```math
LocalDonorBalance.A
+\left(ScaleCriticalTreeCarleson.A\vee ZenoSourceResidueRigidity.A\right)
\Longrightarrow
TwoTowerDonorDepletion.A.
```

Since both Zeno alternatives are open under current installed inputs, `TwoTowerDonorDepletion.A` remains unpromoted.
