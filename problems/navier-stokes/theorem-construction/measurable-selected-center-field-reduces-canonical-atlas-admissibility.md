# Measurable Selected Center Field Reduces Canonical Atlas Admissibility

## Status

Active theorem-facing reduction note for the stronger canonical-center
localized-projector branch.

Role: show that the canonical-center atlas admissibility theorem is not a new
independent geometry wall once the shared center field is chosen by measurable
selection from the existing local centers.

## Purpose

The stronger route currently reads:

```math
\texttt{canonical-center atlas admissibility}
\Longrightarrow
\texttt{globalization without overlap mismatch}.
\tag{MSC.0}
```

But if the shared center field is selected from the already-installed local
window centers, then admissibility is controlled by the same overlap
center-spacing theorem that appears on the honest default route.

So this note identifies the exact relation between the two routes.

## Local Center Family

For each active local window `\Lambda_\ell`, let

```math
c_{J,\ell}(z)\in\mathbf R^3
\tag{MSC.1}
```

be its local spatial center on the exact `PSJ+.1` realization. Assume a
measurable selector

```math
\iota(z)\in\{\ell:\ z\in\Lambda_\ell\}
\tag{MSC.2}
```

is chosen on the active covered family, and define the selected canonical
center field

```math
c_J^{sel}(z):=c_{J,\iota(z)}(z).
\tag{MSC.3}
```

Assume the overlap center-spacing envelope

```math
|c_{J,\ell}(z)-c_{J,\ell'}(z)|
\le
\sigma_J(z)
\qquad
\text{whenever }z\in\Lambda_\ell\cap\Lambda_{\ell'}.
\tag{MSC.4}
```

## Proposition `MSC.A` (selected canonical center inherits overlap spacing)

For every active window `\Lambda_\ell` containing `z`,

```math
|c_{J,\ell}(z)-c_J^{sel}(z)|
\le
\sigma_J(z).
\tag{MSC.5}
```

### Proof

If `z\in\Lambda_\ell`, then also `z\in\Lambda_{\iota(z)}` by `(MSC.2)`. So
`z\in\Lambda_\ell\cap\Lambda_{\iota(z)}`, and `(MSC.4)` gives

```math
|c_{J,\ell}(z)-c_{J,\iota(z)}(z)|
\le
\sigma_J(z).
\tag{MSC.6}
```

Use `(MSC.3)`. ∎

## Corollary `MSC.B` (selected-center atlas admissibility from overlap spacing)

Assume the exact `PSJ+.1` canonical-atlas admissibility reduction
`(CAA.13)` from
[canonical-center-atlas-admissibility-reduction.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/canonical-center-atlas-admissibility-reduction.md),
and choose the canonical center field by `(MSC.3)`. Then

```math
\sum_\ell
\int_{\Lambda_\ell}
w_\ell(z)\,\mathfrak a_{J,\ell}(z)\,d\mu_J(z)
\le
\frac{C}{m_\ast^2\overline\gamma_\ast^2}
\sum_\ell
\int_{\Lambda_\ell}
w_\ell(z)\,
A_{J,\ell}(z)^2\,
\sigma_J(z)^2
d\mu_J(z).
\tag{MSC.7}
```

### Proof

Substitute `(MSC.5)` into `(CAA.13)`. ∎

## Interpretation

The stronger canonical-center route is therefore not a genuinely new geometric
wall if one builds the center field by measurable selection from the existing
local centers.

In that case:

```math
\boxed{
\texttt{weighted overlap center-spacing theorem}
}
\Longrightarrow
\boxed{
\texttt{canonical-center atlas admissibility}
}.
\tag{MSC.8}
```

So the stronger route is a repackaging of the same center-spacing geometry,
not an escape from it, unless one can prove a better canonical center field
directly.

Equivalently:

1. the fine exact-geometry route is still one localizer-modulus theorem, or
   under Lipschitz localizers one weighted center-spacing theorem;
2. the stronger canonical-center route collapses to the same weighted
   center-spacing theorem when the center field is chosen by measurable
   selection from the local window family.

The further stronger sufficient design note
[compact-support-localizer-shrinking-radius-implies-center-spacing.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/compact-support-localizer-shrinking-radius-implies-center-spacing.md)
then collapses both routes to the same weighted small-radius budget when the
localizer is chosen compactly supported and Lipschitz at scale `r_J`.

The branch audit
[psj-plus-1-overlap-live-frontier-branch-audit.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/psj-plus-1-overlap-live-frontier-branch-audit.md)
records the live-frontier decision after comparing this fine route with the
coarse normalized-kernel route: the preferred minimal overlap endpoint is the
scalar retained-cover counting law, while this note remains the fine
exact-geometry sibling branch.
