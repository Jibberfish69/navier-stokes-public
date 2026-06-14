# Compact-Support Localizer With Shrinking Radius Implies Center Spacing

## Status

Active stronger sufficient realization note for the exact `PSJ+.1`
localized-projector route.

Role: collapse the weighted overlap center-spacing theorem to one geometric
support-radius estimate plus one weighted small-radius budget.

## Purpose

The honest default localized-projector globalization wall is now

```math
\boxed{
\texttt{one localizer-modulus theorem}
}
\quad\text{or, under Lipschitz localizers,}\quad
\boxed{
\texttt{one weighted overlap center-spacing theorem}
}.
\tag{CSR.0}
```

This note records a stronger sufficient design choice under which the
center-spacing part is geometric rather than theorem-level:

```math
\boxed{
\texttt{compactly supported Lipschitz localizer at scale }r_J
}
\Longrightarrow
\boxed{
\delta_{J,\ell\ell'}^{ctr}\le C_{ctr} r_J
}.
\tag{CSR.1}
```

So the remaining wall reduces to one weighted small-radius budget.

## Compact-Support Localizer Design

Assume the exact `PSJ+.1` localizer profile is generated from one bounded
Lipschitz prototype `\phi` by

```math
\phi_{r_J}(y):=\phi(y/r_J),
\tag{CSR.2}
```

with

```math
\operatorname{supp}\phi\subset B(0,1),
\qquad
\operatorname{Lip}(\phi)\le L_\phi.
\tag{CSR.3}
```

Then

```math
\operatorname{supp}\phi_{r_J}\subset B(0,r_J),
\qquad
\operatorname{Lip}(\phi_{r_J})\le \frac{L_\phi}{r_J}.
\tag{CSR.4}
```

Keep the exact `PSJ+.1` localizer form on a local window `\Lambda_\ell`:

```math
\phi_\ell(z,p)=\phi_{r_J}\!\bigl(c_{J,\ell}(z)-m_p(t)\bigr).
\tag{CSR.5}
```

## Proposition `CSR.A` (support radius forces overlap center spacing)

Assume `z` belongs to an active overlap `\Lambda_\ell\cap\Lambda_{\ell'}`, and
there is one packet point `p\in\mathcal P_J(z)` on which both local kernels are
active:

```math
\phi_\ell(z,p)\neq 0,
\qquad
\phi_{\ell'}(z,p)\neq 0.
\tag{CSR.6}
```

Then

```math
|c_{J,\ell}(z)-c_{J,\ell'}(z)|
\le
2r_J.
\tag{CSR.7}
```

### Proof

By `(CSR.4)` and `(CSR.6)`,

```math
|c_{J,\ell}(z)-m_p(t)|\le r_J,
\qquad
|c_{J,\ell'}(z)-m_p(t)|\le r_J.
\tag{CSR.8}
```

The triangle inequality gives `(CSR.7)`. ∎

## Corollary `CSR.B` (compact-support design implies the center-spacing theorem)

Under the hypotheses of `LOM.C`, if the overlap activation condition `(CSR.6)`
holds whenever `z\in\Lambda_\ell\cap\Lambda_{\ell'}`, then the weighted
center-spacing theorem of
[localized-projector-localizer-modulus-overlap-reduction.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-localizer-modulus-overlap-reduction.md)
follows from

```math
\int_I\int_{\mathcal J}
\frac{A_J(z)^2\,r_J(z)^2}{m_\ast^2\,\overline\gamma_\ast^2}
d\mu_J^{pair}(a,b)\,dt
\le
C\bigl(\mathcal E_J^{obs}+\mathrm{Err}_{J,\mathrm{pair}}\bigr).
\tag{CSR.9}
```

### Proof

By `(CSR.7)`,

```math
\delta_{J,\ell\ell'}^{ctr}(z)^2\le 4r_J(z)^2.
\tag{CSR.10}
```

Insert `(CSR.10)` into `(LOM.10)` and absorb the factor `4` into `C`. ∎

## Corollary `CSR.C` (selected-center canonical route under compact support)

Under the measurable-selected-center reduction
[measurable-selected-center-field-reduces-canonical-atlas-admissibility.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/measurable-selected-center-field-reduces-canonical-atlas-admissibility.md),
the same compact-support design implies the stronger canonical-center route from
the same weighted small-radius budget `(CSR.9)`.

### Proof

`MSC.A` shows that the selected canonical-center displacement is controlled by
the same overlap center-spacing envelope. Apply `CSR.B`. ∎

## Interpretation

Under a compactly supported Lipschitz localizer design, both the honest default
route and the stronger canonical-center route reduce to one common weighted
small-radius theorem:

```math
\boxed{
\int_I\int_{\mathcal J}
\frac{A_J^2\,r_J^2}{m_\ast^2\,\overline\gamma_\ast^2}
d\mu_J^{pair}\,dt
\le
C(\mathcal E_J^{obs}+\mathrm{Err}_{J,\mathrm{pair}})
}.
\tag{CSR.11}
```

So the geometric wall is now:

1. compact-support / Lipschitz localizer design at radius `r_J`;
2. one weighted small-radius budget `(CSR.11)`.

The further reduction in
[uniform-packet-bounds-collapse-small-radius-budget.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/uniform-packet-bounds-collapse-small-radius-budget.md)
shows that the packet factor `A_J` is already controlled by the installed
`PSJ+.1` packet design, so this stronger route really reduces to a radius-gap
budget, and under a fixed gap floor plus finite active measure to a uniform
shrinking-radius theorem. That remains a stronger sufficient realization of the
fine exact-geometry route, not the installed minimal live overlap statement.
The live branch audit
[psj-plus-1-overlap-live-frontier-branch-audit.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/psj-plus-1-overlap-live-frontier-branch-audit.md)
keeps this radius-gap route as a sufficient continuation and prefers the coarse
scalar retained-cover counting endpoint as the narrower current frontier.
