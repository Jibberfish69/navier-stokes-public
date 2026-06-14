# MPP RefillTreeWellFounded.A Direct Attempt Note

## Status

Direct attempt on the refined donor-route target isolated by
`mpp-two-tower-donor-balance-modulo-refill-note.md`:

```math
\boxed{
RefillTreeWellFounded.A.
}
```

The local donor-balance identity is installed.  This note tests whether the
remaining refill tree can be forced to terminate, charge, or compactify from the
current original-data inputs.

## Target

Given a legal terminal source-refill tree

```math
\mathcal T(P^0)
```

rooted at a source-balanced child pulse, prove that one of the following occurs
with constants independent of terminal depth:

1. **controlled entrance leaves**: every branch reaches a fixed preterminal
   entrance scale/time where original smooth tail bounds control the leaf
   energy;
2. **finite tree charge**: the tree spends a summable scale-normalized reserve;
3. **rigid compact branch**: an infinite Zeno branch extracts a rigid ancient
   source-residue object whose active residue vanishes.

Any of these closes the donor route after `LocalDonorBalance.A`.

## Attempt 1: Entrance Termination

If every branch reaches a fixed positive entrance scale or a fixed preterminal
time, the finite-tree telescoping lemma gives:

```math
\sum_{e\in\mathcal T}\pi(e)
\le C_{\mathrm{RT}}
\sum_{v\in \partial\mathcal T}E(v;t_v^-)
+\sum_{v\in\mathcal T}\ell(v).
```

For fixed preterminal entrance data, original smoothness makes the high-shell
leaf tail small as the terminal shell threshold tends to infinity.  This would
contradict the source-pulse lower bound.

The problem is that legal source-refill ancestry need not reach such an
entrance surface.  Heat-scale backward steps can form a Zeno chain:

```math
\sum_m r_m^2<\infty,
\qquad
r_m\downarrow0,
```

while the branch remains inside the terminal endpoint collar.  Original
smoothness on compact preterminal intervals does not control the limiting
endpoint Zeno leaves.

Thus entrance termination is not installed.

## Attempt 2: Scale-Time Summation

Comparable-scale ancestry gives backward time increments of order `r_m^2`.
If

```math
\sum_m r_m^2=\infty,
```

then the branch reaches a preterminal entrance time and Attempt 1 closes it.
But the dangerous terminal case is exactly:

```math
\sum_m r_m^2<\infty.
```

Finite dyadic banding permits this geometric scale cascade.  The shell index can
drift upward while the parabolic time increments remain summable.

Therefore scale-time summation proves only the non-Zeno branch.  It does not
close terminal source-pulse refill.

## Attempt 3: Raw Leaf-Energy Bound

The finite-tree identity controls interior positive feed by boundary leaf
energy.  Raw energy is finite:

```math
\sup_{t<T_\ast}\|u(t)\|_2^2<\infty.
```

But the source-pulse normalization is scale-critical.  A leaf packet at radius
`r` can have order-one normalized source residue while its raw `L^2` energy
cost is compatible with a shrinking physical volume.  Summing raw leaf energy
therefore does not give a depth-independent contradiction unless one already
has a scale-normalized tree Carleson bound.

Thus raw energy does not prove well-foundedness.

## Attempt 4: Finite Branching

Finite frequency-band interaction restricts the range of shell indices in one
edge.  It does not restrict the number of legal physical or triadic predecessor
pieces.  The Fourier countermodel
`mpp-parent-concentration-or-diffuse-charge-fourier-countermodel-note.md`
exhibits positive parent mass spread over arbitrarily many legal predecessors.

So finite banding does not produce bounded branching or a finite-depth tree.

## Attempt 5: Compact Zeno Branch

A Zeno branch can be rescaled around its terminal packets.  The installed local
energy and pressure structure can produce a local suitable ancient limit after
the usual compactness extraction.  However, the current route does not force
that limit into a rigid class such as Type I, finite global ancient energy,
critical smallness, self-similarity, or symmetry.

This is exactly the compact-Liouville package:

```math
BoundedAncestryClass.A+SourceResidueLiouville.A.
```

It remains open by
`mpp-bounded-ancestry-class-source-residue-liouville-direct-audit-note.md`.

## Conditional Closure From Sharpened Atoms

The direct attempt reduces `RefillTreeWellFounded.A` to three precise atoms:

```math
\boxed{
EntranceLeafDecay.A
}
```

controls non-Zeno entrance leaves by original smooth tail decay;

```math
\boxed{
ScaleCriticalTreeCarleson.A
}
```

charges Zeno refill trees by a scale-normalized donor reserve;

```math
\boxed{
ZenoSourceResidueRigidity.A
}
```

extracts a rigid ancient source-residue limit from any uncharged Zeno branch and
proves the inherited residue vanishes.

The first atom is proved in
`mpp-entrance-leaf-decay-nonzeno-proof-note.md` on branches that reach a fixed
entrance surface.
The second is the donor-depletion / active-window Carleson theorem.  The third
is the compact-Liouville route.

Thus:

```math
\boxed{
EntranceLeafDecay.A
+
\left(
ScaleCriticalTreeCarleson.A
\vee
ZenoSourceResidueRigidity.A
\right)
\Longrightarrow
RefillTreeWellFounded.A.
}
```

## Verdict

`RefillTreeWellFounded.A` is not installed by original smooth data, raw energy,
local energy, finite frequency banding, or same-fluid transport.

The local donor-balance half is solved, but the terminal Zeno refill branch
remains:

```math
\boxed{
\text{uncharged source-refill ancestry may accumulate at the endpoint across
shrinking heat scales.}
}
```

The next irreducible targets are therefore:

```math
\boxed{
ScaleCriticalTreeCarleson.A
}
```

or

```math
\boxed{
ZenoSourceResidueRigidity.A.
}
```

The direct audit of those two Zeno alternatives is recorded in
`mpp-zeno-refill-branch-alternatives-direct-attempt-note.md`: current installed
estimates do not prove either the scale-critical tree Carleson reserve or the
rigid ancient source-residue Liouville theorem.

No promotion of `TwoTowerDonorDepletion.A` is licensed until one of those Zeno
branch theorems is proved.
