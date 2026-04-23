# Canonical-Center Atlas Admissibility Reduction

## Status

Active theorem-facing repair note for the stronger canonical-center
localized-projector route.

Role: isolate the real remaining theorem debt on the canonical-center branch.

## Audit Result

The note
[canonical-center-localized-projector-atlas-eliminates-overlap-mismatch.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/canonical-center-localized-projector-atlas-eliminates-overlap-mismatch.md)
correctly observes that a shared measurable center field kills overlap mismatch
once every local window uses the same projector section.

But that does **not** by itself imply that the installed local `PSJ+.22`
window estimates remain valid for the canonical projector field. The missing
step is an admissibility theorem comparing each original local window packet to
the canonical-center packet.

So the stronger route is honest only after inserting one more supplier:

```math
\boxed{
\texttt{canonical-center atlas admissibility}
}.
\tag{CAA.0}
```

This note writes that supplier in exact localized-projector form.

## Setup

Keep one theorem-safe local window `\Lambda_\ell` with local weight `w_\ell`,
local PSD surrogate `\widetilde S_{J,\ell}`, local top projector
`\widehat P_{J,\ell}`, local mass `m_\ell`, and local concentration estimate

```math
\frac1{m_\ell}
\int_{\Lambda_\ell}
w_\ell(z)\,
d_{\mathrm{proj}}\!\bigl(P_J(z),\widehat P_{J,\ell}(z)\bigr)^2
d\mu_J(z)
\le
\varepsilon_\ell.
\tag{CAA.1}
```

Let `\widehat P_J^{can}` be the canonical-center projector field from
[canonical-center-localized-projector-atlas-eliminates-overlap-mismatch.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/canonical-center-localized-projector-atlas-eliminates-overlap-mismatch.md).

Define the local atlas-discrepancy density

```math
\mathfrak a_{J,\ell}(z)
:=
d_{\mathrm{proj}}\!\bigl(
\widehat P_{J,\ell}(z),\widehat P_J^{can}(z)
\bigr)^2.
\tag{CAA.2}
```

## Proposition `CAA.A` (atlas discrepancy transfers the local window estimate)

For every theorem-safe local window `\Lambda_\ell`,

```math
\frac1{m_\ell}
\int_{\Lambda_\ell}
w_\ell(z)\,
d_{\mathrm{proj}}\!\bigl(P_J(z),\widehat P_J^{can}(z)\bigr)^2
d\mu_J(z)
\le
2\varepsilon_\ell

\frac{2}{m_\ell}
\int_{\Lambda_\ell}
w_\ell(z)\,\mathfrak a_{J,\ell}(z)\,d\mu_J(z).
\tag{CAA.3}
```

### Proof

By the projector triangle inequality,

```math
d_{\mathrm{proj}}\!\bigl(P_J,\widehat P_J^{can}\bigr)^2
\le
2\,d_{\mathrm{proj}}\!\bigl(P_J,\widehat P_{J,\ell}\bigr)^2
+
2\,d_{\mathrm{proj}}\!\bigl(\widehat P_{J,\ell},\widehat P_J^{can}\bigr)^2.
\tag{CAA.4}
```

Multiply by `w_\ell/m_\ell` and integrate over `\Lambda_\ell`. Use `(CAA.1)`
and `(CAA.2)`. ∎

## Corollary `CAA.B` (globalization on the canonical-center atlas)

Assume the bounded-multiplicity window family of `OMG.A`, but use the same
canonical projector section on every local window. Then the global
localized-projector synchronization channel obeys

```math
\int
d_{\mathrm{proj}}\!\bigl(P_J(z),\widehat P_J^{can}(z)\bigr)^2
d\mu_J(z)
\le
2\sum_\ell m_\ell\varepsilon_\ell
+
2\sum_\ell
\int_{\Lambda_\ell}w_\ell(z)\,\mathfrak a_{J,\ell}(z)\,d\mu_J(z).
\tag{CAA.5}
```

### Proof

Apply `CAA.A` on each local window and sum in `\ell`. No overlap term appears
because every window uses the same canonical projector field. ∎

## Proposition `CAA.C` (atlas discrepancy from one-sided surrogate comparison)

Assume on `\Lambda_\ell`:

1. the local surrogate `\widetilde S_{J,\ell}` and the canonical surrogate
   `\widetilde S_J^{can}` both have simple top gaps bounded below by
   `\gamma_\ast>0`;
2. their operator mismatch obeys

```math
\bigl\|
\widetilde S_{J,\ell}(z)-\widetilde S_J^{can}(z)
\bigr\|_{\mathrm{op}}
\le
\sigma_{J,\ell}^{can}(z).
\tag{CAA.6}
```

Then

```math
\mathfrak a_{J,\ell}(z)
\le
\frac{4\,(\sigma_{J,\ell}^{can}(z))^2}{\gamma_\ast^2}.
\tag{CAA.7}
```

### Proof

Apply the one-dimensional Davis-Kahan projector comparison to the symmetric
pair `(\widetilde S_{J,\ell},\widetilde S_J^{can})`. ∎

## Corollary `CAA.D` (kernel form of atlas admissibility)

Assume the local and canonical surrogates are built from the same pair-projector
field on one common packet space. Let

```math
\overline S_{J,\ell}
:=
\frac{\widetilde S_{J,\ell}}{m_{J,\ell}},
\qquad
\overline S_J^{can}
:=
\frac{\widetilde S_J^{can}}{m_J^{can}},
\tag{CAA.8}
```

and define the one-sided normalized kernel-distance

```math
\kappa_{J,\ell}^{can}(z)
:=
\int_{\mathcal P_J(z)}
\bigl|
\vartheta_{J,\ell}(z,p)-\vartheta_J^{can}(z,p)
\bigr|
\,d\bar\nu_{J,z}(p).
\tag{CAA.9}
```

Then

```math
\bigl\|
\overline S_{J,\ell}(z)-\overline S_J^{can}(z)
\bigr\|_{\mathrm{op}}
\le
\kappa_{J,\ell}^{can}(z),
\tag{CAA.10}
```

and therefore, under a normalized gap floor `\overline\gamma_\ast>0`,

```math
\mathfrak a_{J,\ell}(z)
\le
\frac{4\,(\kappa_{J,\ell}^{can}(z))^2}{\overline\gamma_\ast^2}.
\tag{CAA.11}
```

### Proof

The proof is the one-sided version of
[localized-projector-kernel-mismatch-implies-overlap-surrogate.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-kernel-mismatch-implies-overlap-surrogate.md):
subtract the normalized packet averages and use `\|P_J\|_{\mathrm{op}}=1`, then
apply Davis-Kahan. Positive scalar normalization does not change the top
projector. ∎

## Corollary `CAA.E` (exact `PSJ+.1` realization)

On the exact `PSJ+.1` realization, suppose the local window `\ell` and the
canonical atlas use the same selector `\chi_J`, the same pair-length window
`\psi_\rho`, and the same confidence weight `\alpha`, while their spatial
localizers are centered at `c_{J,\ell}(z)` and `c_J(z)` respectively. Then the
atlas-discrepancy term is reduced to one localizer-comparison theorem:

```math
\sum_\ell
\int_{\Lambda_\ell}
w_\ell(z)\,\mathfrak a_{J,\ell}(z)\,d\mu_J(z)
\le
\frac{C}{\overline\gamma_\ast^2}
\sum_\ell
\int_{\Lambda_\ell}
w_\ell(z)\,
\bigl(\kappa_{J,\ell}^{can}(z)\bigr)^2
d\mu_J(z).
\tag{CAA.12}
```

Under a local mass floor and a Lipschitz localizer design, this becomes one
weighted canonical-center displacement theorem:

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
|c_{J,\ell}(z)-c_J(z)|^2
d\mu_J(z).
\tag{CAA.13}
```

### Proof

Apply `CAA.D`, then the same raw-kernel and modulus/Lipschitz reductions as in
[localized-projector-kernel-mismatch-implies-overlap-surrogate.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-kernel-mismatch-implies-overlap-surrogate.md)
and
[localized-projector-localizer-modulus-overlap-reduction.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-localizer-modulus-overlap-reduction.md),
but with the second center equal to the canonical center field `c_J(z)`. ∎

## Interpretation

The canonical-center route does **not** eliminate geometry for free.

It removes pairwise overlap mismatch, but replaces it by one atlas-admissibility
theorem comparing each local window packet to the canonical-center packet:

```math
\boxed{
\texttt{canonical-center atlas admissibility}
}
\Longrightarrow
\boxed{
\texttt{globalization without overlap mismatch}
}.
\tag{CAA.14}
```

So the stronger localized-projector route is now honestly:

1. one maximal-envelope theorem for the explicit entrance scalars;
2. the installed pair-family angular-forcing ledger `D.7ie1` or `D.7ie3`;
3. one canonical-center atlas admissibility theorem, reduced on the exact
   `PSJ+.1` realization to one weighted canonical-center displacement theorem.

If the shared center field is chosen by measurable selection from the existing
local center family, then the further reduction in
[measurable-selected-center-field-reduces-canonical-atlas-admissibility.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/measurable-selected-center-field-reduces-canonical-atlas-admissibility.md)
shows that this admissibility theorem collapses to the same weighted overlap
center-spacing theorem already present on the honest default route. So the
canonical-center route is only strictly better if one can construct a better
center field than that selected-atlas realization.
