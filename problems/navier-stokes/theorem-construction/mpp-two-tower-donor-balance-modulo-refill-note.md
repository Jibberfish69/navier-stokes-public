# MPP Two-Tower Donor Balance Modulo Refill Note

## Status

This note proves the local algebraic part of the two-tower idea.  A donor tower
cannot feed a child tower for free: the feed is paid either by donor energy
drop, by licensed error, or by a refill source feeding the donor.  The remaining
open theorem is therefore not the local balance identity; it is the exclusion
of an infinite source-refill ancestry tree.

This is a genuine refinement of `TwoTowerDonorDepletion.A`.

## Local Donor Balance

Let `P^-` be a legal same-fluid donor packet feeding a child pulse `P`.  On the
localized donor shell/window write the shell energy balance in the form

```math
{d\over dt}E(P^-;t)+\nu D(P^-;t)
=
\mathsf{In}(P^-;t)-\mathsf{Out}(P^-;t)+\mathsf{Err}(P^-;t),
\tag{DB.1}
```

where:

```math
\mathsf{Out}^+(P^-;t)
```

is the positive nonlinear transfer from the donor packet to its legal children,

```math
\mathsf{In}^+(P^-;t)
```

is the positive nonlinear transfer from legal parents into `P^-`, and
`\mathsf{Err}` contains pressure, cutoff, commutator, and localization terms
already typed as legal losses by the source-parent packet.

Dropping favorable signs in `(DB.1)` gives the one-sided inequality

```math
\mathsf{Out}^+(P^-;t)
\le
-{d\over dt}E(P^-;t)
+\mathsf{In}^+(P^-;t)
+|\mathsf{Err}(P^-;t)|.
\tag{DB.2}
```

After integration on the donor window `I(P^-)`,

```math
\int_{I(P^-)}\mathsf{Out}^+(P^-;t)\,dt
\le
E(P^-;t_-)-E(P^-;t_+)
+\int_{I(P^-)}\mathsf{In}^+(P^-;t)\,dt
+\int_{I(P^-)}|\mathsf{Err}(P^-;t)|\,dt .
\tag{DB.3}
```

The left side dominates the positive edge measure from `P^-` to its children,
after the fixed source-pulse normalization constants are absorbed into the
packet definition:

```math
\pi(P^-\to \mathrm{child}(P^-))
\le C_{\mathrm{DB4}}
\int_{I(P^-)}\mathsf{Out}^+(P^-;t)\,dt.
\tag{DB.4}
```

Thus:

```math
\boxed{
\pi(P^-\to \mathrm{child}(P^-))
\le C_{\mathrm{DB5}}
\Delta E(P^-)
+\pi(\mathrm{parent}(P^-)\to P^-)
+\ell(P^-).
}
\tag{DB.5}
```

Here

```math
\Delta E(P^-):=E(P^-;t_-)-E(P^-;t_+),
\qquad
\ell(P^-):=\int_{I(P^-)}|\mathsf{Err}(P^-;t)|\,dt.
```

This is the rigorous version of:

```math
\text{a tower feeds another only by draining or by being refilled.}
```

## Finite Tree Telescoping

Let `\mathcal T_L` be a finite legal source-refill tree of depth `L` rooted at
the child pulse `P^0`.  Iterating `(DB.5)` over all interior vertices yields

```math
\sum_{e\in \mathcal T_L^{int}}\pi(e)
\le C_{\mathrm{DB6}}
\sum_{v\in \partial\mathcal T_L}E(v;t_v^-)
+\sum_{v\in \mathcal T_L}\ell(v)
+\operatorname{Boundary}_{overlap}(\mathcal T_L).
\tag{DB.6}
```

The interior refill terms cancel by parent-child matching.  Bounded overlap of
the localized packets absorbs `\operatorname{Boundary}_{overlap}` into the same
legal-loss ledger whenever the tree is finite and scheduler-compatible.

Therefore:

```math
\boxed{
\text{finite source-refill trees are controlled by leaf energy plus legal loss.}
}
\tag{DB.7}
```

This is installed algebra, not a new analytic assumption.

## Why This Does Not Yet Prove `TwoTowerDonorDepletion.A`

To upgrade `(DB.7)` to `TwoTowerDonorDepletion.A`, one must control the boundary
leaves of arbitrarily deep terminal refill trees.  There are only three ways:

1. **entrance termination**: every branch reaches a fixed preterminal entrance
   scale/time where original smooth tail bounds make the leaf energy vanish;
2. **quantized drain**: each branch spends a finite scale-normalized reserve
   before depth can diverge;
3. **compact-rigid limit**: an infinite branch extracts a rigid ancient
   source-residue limit and a Liouville theorem kills the inherited residue.

These are exactly the two existing closure packages plus the stronger donor
package:

```math
ParentConcentrationOrDiffuseCharge.A+BackwardDrainFunctional.A,
```

```math
ParentConcentrationOrDiffuseCharge.A
+BoundedAncestryClass.A+SourceResidueLiouville.A,
```

or

```math
TwoTowerDonorDepletion.A.
```

## Refined Open Atom

The local donor-balance half is now solved.  The remaining donor route can be
stated more sharply as:

```math
\boxed{
RefillTreeWellFounded.A:
\quad
\text{every legal source-refill ancestry tree has controlled terminal leaves,
or else spends a finite scale-normalized reserve.}
}
```

Equivalently:

```math
\boxed{
LocalDonorBalance.A+RefillTreeWellFounded.A
\Longrightarrow
TwoTowerDonorDepletion.A.
}
```

`LocalDonorBalance.A` is the content of `(DB.1)`--`(DB.7)` above.  The open
analytic problem is `RefillTreeWellFounded.A`, not the elementary tower-balance
identity.

The direct attempt on that refined target is recorded in
`mpp-refilltree-wellfounded-direct-attempt-note.md`.  It closes the non-Zeno
entrance branch by original smooth tail decay, proved in
`mpp-entrance-leaf-decay-nonzeno-proof-note.md`, and isolates the remaining
terminal Zeno source-refill alternatives:

```math
\boxed{
ScaleCriticalTreeCarleson.A
\quad\vee\quad
ZenoSourceResidueRigidity.A.
}
```

Those alternatives are audited directly in
`mpp-zeno-refill-branch-alternatives-direct-attempt-note.md`.

## Export

The source-pulse frontier may now record:

```math
\boxed{
TwoTowerDonorDepletion.A
\text{ reduced to }
RefillTreeWellFounded.A
\text{ after local donor-balance telescoping.}
}
```

No promotion of `SourcePulseExclusion.A` follows until
`RefillTreeWellFounded.A`, the drain package, or the compact-Liouville package
is proved from `OriginalSmoothData`.
