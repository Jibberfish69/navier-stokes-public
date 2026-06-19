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

The scale-time summation branch needs explicit parabolic comparability along the
ancestry edge: for some fixed constants `0<c<C<\infty`,

```math
c\,r_m^2\le \Delta t_m\le C\,r_m^2.
```

Under this hypothesis, the total backward time depth dominates the square-scale
sum.
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

A Zeno branch can be rescaled around its terminal packets, but the extraction
has to spend a precise compactness packet.  Choose terminal branch centers and
scales `(x_m,t_m,r_m)` with `r_m\downarrow0`, and define

```math
u_m(y,s)=r_m u(x_m+r_m y,t_m+r_m^2 s),
\qquad
p_m(y,s)=r_m^2\bigl(p(x_m+r_m y,t_m+r_m^2 s)-[p]_{B_{r_m}}(t_m+r_m^2s)\bigr).
```

For each fixed backward cylinder `Q_R^-=B_R\times(-R^2,0)`, the compactness
step requires uniform bounds

```math
\sup_{s\in(-R^2,0)}\int_{B_R}|u_m(s)|^2
+\int_{Q_R^-}|\nabla u_m|^2
+\int_{Q_R^-}|p_m|^{3/2}
\le C_R,
```

same-fluid tightness of the rescaled source-residue measures, and vanishing
legal-loss errors on compact subcylinders.  Under those hypotheses, the local
energy compactness theorem gives a subsequence converging to a local suitable
ancient object `(u_*,p_*,\mu_*^{src})` carrying the inherited source-residue
measure.

This extraction alone does not force the limit into a rigid class such as
Type I, finite global ancient energy, critical smallness, self-similarity, or
symmetry.

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

pays the non-Zeno entrance leaves through the exact fixed-entrance high-frequency
tail estimate

```math
\sum_{v\in\partial\mathcal T_N}E_N(v;t_v^-)
\le
C_{\mathrm{leaf}}C_{\mathrm{ov}}
\sup_{t\le T_\ast-\tau}\|P_{\ge N-C}u(t)\|_{L^2}^2
\to0;
```

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
