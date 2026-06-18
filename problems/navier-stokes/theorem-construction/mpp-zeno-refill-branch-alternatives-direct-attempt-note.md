# MPP Zeno Refill Branch Alternatives Direct Attempt Note

## Status

Direct attempt on the terminal branch left by
`mpp-refilltree-wellfounded-direct-attempt-note.md`:

```math
\boxed{
ScaleCriticalTreeCarleson.A
\quad\vee\quad
ZenoSourceResidueRigidity.A.
}
```

The non-Zeno entrance branch is paid by `EntranceLeafDecay.A`: for fixed
preterminal time or positive-scale entrance leaves,

```math
\sum_{v\in\partial\mathcal T_N}E_N(v;t_v^-)
\le
C_{\mathrm{leaf}}C_{\mathrm{ov}}
\sup_{t\le T_\ast-\tau}\|P_{\ge N-C}u(t)\|_{L^2}^2
\to0.
```

This note tests the two possible closures for a Zeno source-refill ancestry
branch.

## Zeno Branch

A Zeno source-refill branch has legal same-fluid edges

```math
\cdots\to P^{-2}\to P^{-1}\to P^0
```

with heat-scale radii `r_m\downarrow0` and

```math
\sum_m r_m^2<\infty,
```

so the backward parabolic time steps accumulate at the same terminal endpoint
instead of reaching a fixed preterminal entrance surface.

Each edge inherits a source-pulse lower bound:

```math
\pi(P^{-m-1}\to P^{-m})\ge c_{\mathrm{ZR}}c_0
```

after passing to the normalized active source branch.

## Alternative 1: `ScaleCriticalTreeCarleson.A`

The desired theorem is:

```math
\boxed{
ScaleCriticalTreeCarleson.A:
\quad
\sum_{e\in\mathcal T(P^0)}
\pi(e)
\le
C\,\mathcal R_{\mathrm{sc}}(P^0)
+o(1),
}
```

where `\mathcal R_{\mathrm{sc}}` is a finite scale-normalized donor reserve
under `OriginalSmoothData`.

This rules out an infinite normalized Zeno branch exactly when `\mathcal R_{\mathrm{sc}}(P^0)<\infty`, because the left side contains infinitely many edge masses bounded below.

### Direct Test

Raw energy gives only:

```math
\sup_t\|u(t)\|_2^2<\infty,
\qquad
\int_0^{T_\ast}\|\nabla u(t)\|_2^2\,dt<\infty.
```

These are not scale-normalized tree-Carleson bounds.  The Fourier diffuse-parent
model in
`mpp-parent-concentration-or-diffuse-charge-fourier-countermodel-note.md`
shows the gap: positive normalized source-parent mass can be spread across many
legal predecessor pieces while the raw quadratic donor cost tends to zero.

The active-square notes record the same obstruction in shell language.  A
scale-critical tree Carleson estimate dominates the active-window
square-source / positive parent edge measure.  That is exactly the donor
reserve missing from `TwoTowerDonorDepletion.A`.

Thus:

```math
\boxed{
ScaleCriticalTreeCarleson.A
\Longleftrightarrow_{\mathrm{route}}
TwoTowerDonorDepletion.A
\Longleftrightarrow_{\mathrm{route}}
ActiveSquareCarleson.A
}
```

at the current theorem resolution.  It is not installed by existing energy,
local-energy, pressure, cutoff, or source-supplier inputs.

The equivalence is formalized in
`mpp-scalecritical-tree-carleson-equivalence-note.md`, which identifies the
exact analytic target as a localized positive pre-Cauchy source estimate on
bounded-overlap same-fluid terminal packets.
The direct attempt on that concrete estimate is
`mpp-local-positive-precauchy-source-carleson-direct-attempt-note.md`, reducing
it to `PositiveSourceDepletion.A` or `ReverseHolderParentConcentration.A`.

## Alternative 2: `ZenoSourceResidueRigidity.A`

The desired compactness theorem is:

```math
\boxed{
ZenoSourceResidueRigidity.A:
\quad
\text{every uncharged Zeno source-refill branch extracts a rigid ancient
source-residue limit, and the inherited source residue vanishes there.}
}
```

Equivalently, it packages:

```math
ZenoBoundedClass.A
\quad+\quad
ZenoResidueLiouville.A.
```

### Direct Test

The installed local energy, pressure, and compactness structure can extract a
local suitable ancient limit from a rescaled Zeno chain, once the source-pulse
packets are localized.  However, this only gives an ancient local suitable
source-residue object.  It does not force:

```math
\text{Type I},
\quad
\text{finite global ancient energy},
\quad
\text{critical smallness},
\quad
\text{bounded ancient vorticity},
\quad
\text{self-similarity},
\quad
\text{axisymmetry/two-dimensionality}.
```

Without one of these rigid classes, no installed Liouville theorem kills the
inherited active source residue.  Broad ancient Liouville is false at this
level, because nonzero smooth ancient packets and coherent modes can carry
local energy and local source structure.

Thus:

```math
\boxed{
ZenoSourceResidueRigidity.A
\Longleftrightarrow_{\mathrm{route}}
BoundedAncestryClass.A+SourceResidueLiouville.A.
}
```

and it is not installed by current compactness alone.

The compactness half is separated and proved in
`mpp-zeno-source-residue-compactness-extraction-note.md`:

```math
ZenoCompactnessExtraction.A.
```

The remaining rigidity theorem is `ZenoResidueLiouville.A`, or an installed
rigid ancient class on which that Liouville statement holds.

## Conditional Closure

The Zeno branch would close under either:

```math
\boxed{
ScaleCriticalTreeCarleson.A
}
```

or

```math
\boxed{
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
}
```

Together with `LocalDonorBalance.A`, this gives:

```math
\boxed{
ScaleCriticalTreeCarleson.A
\vee
(ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A)
\Longrightarrow
RefillTreeWellFounded.A.
}
```

and hence:

```math
\boxed{
LocalDonorBalance.A
+
\left[
ScaleCriticalTreeCarleson.A
\vee
(ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A)
\right]
\Longrightarrow
TwoTowerDonorDepletion.A.
}
```

## Verdict

The Zeno branch is not closed by current installed estimates.  It has been
reduced to exactly two theorem-grade options:

```math
\boxed{
\text{scale-critical tree Carleson / donor reserve}
}
```

or

```math
\boxed{
\text{rigid ancient source-residue Liouville for Zeno ancestry limits}.
}
```

No weaker bookkeeping consequence of finite energy, local energy, finite-band
Littlewood-Paley structure, pressure Poisson recovery, or same-fluid transport
currently proves either option.
