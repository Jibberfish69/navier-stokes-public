# MPP ScaleCriticalTreeCarleson.A Equivalence Note

## Status

This note turns the Zeno donor-reserve option into a concrete analytic target.
It proves the route equivalence between:

```math
ScaleCriticalTreeCarleson.A,
```

the tree version of donor depletion, and the active-window Carleson /
active-square source-pulse carrier already present in the lane.

It does not prove the Carleson estimate from `OriginalSmoothData`; it removes
ambiguity about what estimate must be proved.

## Tree Edge Measure

For a legal Zeno source-refill tree `\mathcal T(P^0)`, define the positive
edge measure

```math
\nu_{\mathcal T}
:=
\sum_{e=(P^-\to P)\in\mathcal T}
\pi(e)\,\delta_{Q(P)}.
```

The source-pulse normalization makes each nontrivial edge comparable to the
localized positive active source / mixed-dissipation carrier on the child
packet:

```math
\pi(P^-\to P)
:=
\int_{Q(P)}
\mathfrak S_{loc}^{active}(u;P^-,P)\,dxdt.
\tag{STC.1}
```

Here `\mathfrak S_{loc}^{active}` is the pre-Cauchy, same-fluid, localized
source density before global absolute-value estimates erase parent structure.

## Tree Carleson Target

`ScaleCriticalTreeCarleson.A` is the assertion that for every terminal root
packet and every legal source-refill subtree,

```math
\boxed{
\nu_{\mathcal T}(\operatorname{Tent}(P^0))
\le
C\,\mathcal R_{\mathrm{sc}}(P^0)+o_N(1),
}
\tag{STC.2}
```

where `\mathcal R_{\mathrm{sc}}` is a finite scale-critical reserve under
`OriginalSmoothData`.

Equivalently, after summing over a bounded-overlap terminal family,

```math
\boxed{
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\mathfrak S_{loc}^{active}(u;P)\,dxdt
\le
o_N(1)+\text{summable legal loss}.
}
\tag{STC.3}
```

This is exactly the active source-pulse no-pulse estimate in tree language.

## `ScaleCriticalTreeCarleson.A => TwoTowerDonorDepletion.A`

Assume `(STC.2)`.  Combine it with `LocalDonorBalance.A` from
`mpp-two-tower-donor-balance-modulo-refill-note.md`:

```math
\pi(P^-\to child(P^-))
\le C_{\mathrm{LDB}}
\Delta E(P^-)+\pi(parent(P^-)\to P^-)+\ell(P^-).
```

Finite trees telescope.  Non-Zeno leaves are handled by
`mpp-entrance-leaf-decay-nonzeno-proof-note.md`.  Zeno leaves are charged by
`(STC.2)`.  Therefore every legal source-parent edge is paid by a finite
scale-normalized tree reserve plus legal losses:

```math
\boxed{
ScaleCriticalTreeCarleson.A
\Longrightarrow
TwoTowerDonorDepletion.A.
}
```

Consequently:

```math
\boxed{
ScaleCriticalTreeCarleson.A
\Longrightarrow
SourcePulseExclusion.A
}
```

through the donor/depletion route.

## Active-Square / Source-Pulse Equivalence

Under `EdgeDisintegrate.A`, the child-side pushforward of `\nu_{\mathcal T}` is
the same positive active source carrier used in the active-square and
source-pulse notes:

```math
(\mathrm{child})_\#\nu_{\mathcal T}
=
\mathfrak S_{N,loc}^{active}(t)\,dt+\mu_{\mathrm{legal}}
```

on the selected terminal packets, where `\mu_{\mathrm{legal}}` is the already-licensed
pressure/cutoff and localization loss measure.

Thus `(STC.3)` is the tree version of:

```math
\int_{Bad_N(\eta)}
\mathfrak S_{N,loc}^{active}(t)\,dt
=o_N(1),
```

which is the active target definition of `SourcePulseExclusion.A`.

Therefore, at route resolution:

```math
\boxed{
ScaleCriticalTreeCarleson.A
\equiv_{\mathrm{route}}
ActiveSquareCarleson.A
\equiv_{\mathrm{route}}
SourcePulseExclusion.A
}
```

provided the localized source-parent edge disintegration is used as the common
carrier.

## Exact Analytic Estimate Still Needed

The theorem to prove is not a new abstract tree statement.  It is the following
localized scale-critical positive source estimate:

```math
\boxed{
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[
\mathcal N_{preCauchy}^{loc}(u;P)
\right]_+
\,dxdt
\le
o_N(1)
+\text{summable legal losses},
}
\tag{STC.4}
```

for every bounded-overlap same-fluid terminal family `\mathcal F_N` selected by
the `Jump_avg` / source-pulse branch.

The Fourier diffuse-parent countermodel shows why `(STC.4)` is not a
bookkeeping consequence of raw energy: the positive source can be distributed
over many legal parents while raw quadratic donor cost remains too small.

The direct attempt on `(STC.4)` is recorded in
`mpp-local-positive-precauchy-source-carleson-direct-attempt-note.md`.  It shows
that Cauchy/Young envelopes, global trilinear skew symmetry, pressure/cutoff
routing, finite dyadic banding, same-fluid transport, and first-moment
dissipation do not prove the positive localized source estimate.

## Verdict

`ScaleCriticalTreeCarleson.A` has been reduced to the concrete positive
localized source estimate `(STC.4)`.  This is progress in formulation, but not a
discharge.  Proving `(STC.4)` from `OriginalSmoothData` is exactly the
scale-critical source-pulse theorem.
