# Localized Projector Overlap-Mismatch Globalization

## Status

Active theorem-facing globalization note for the localized-projector exact-
potential branch.

Role: reduce the remaining localized-projector globalization wall to overlap
mismatch of local PSD surrogates plus maximal-envelope integrability of the
explicit local entrance scalars, with the pair-family angular-forcing ledger
already fixed.

## Purpose

The note
[localized-projector-angular-forcing-ledger-reduction.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-angular-forcing-ledger-reduction.md)
already sharpened the local forcing side as far as the current packet honestly
allows:

```math
\texttt{local entrance scalar}
+\texttt{pair-family angular forcing ledger }D.7ie1
\quad
(\text{or }D.7ie3\text{ adiabatic}).
\tag{OMG.0}
```

After maximal-envelope promotion of the entrance scalar, the remaining
globalization issue is no longer “coverage” in the abstract. It is the gluing of
the local projective sections `\widehat P_{J,\ell}` built on overlapping local
windows.

So the exact next globalization theorem is:

```math
\boxed{
\texttt{overlap mismatch control for local PSD surrogates}
}
\quad+\quad
\boxed{
\texttt{maximal-envelope integrability for the explicit local entrance scalars}
}.
\tag{OMG.1}
```

## Local Window Family

Let `\{\Lambda_\ell\}_\ell` be a bounded-multiplicity local synchronization
family on `\mathcal J\times I`, where each window `\Lambda_\ell` carries:

1. a nonnegative local weight `w_\ell(a,b,t)`;
2. a local mass

```math
m_\ell:=\int_{\Lambda_\ell} w_\ell(a,b,t)\,d\mu_J^{pair}(a,b)\,dt>0;
\tag{OMG.2}
```

3. a local PSD surrogate `\widetilde S_{J,\ell}`;
4. its top rank-one projector

```math
\widehat P_{J,\ell}:=\Pi_{\max}(\widetilde S_{J,\ell}).
\tag{OMG.3}
```

Assume the local weighted synchronization estimate on each window:

```math
\frac1{m_\ell}
\int_{\Lambda_\ell}
w_\ell(a,b,t)\,
d_{\mathrm{proj}}\!\bigl(P_{ab}(t),\widehat P_{J,\ell}(a,b,t)\bigr)^2
d\mu_J^{pair}(a,b)\,dt
\le
\varepsilon_\ell.
\tag{OMG.4}
```

Keep the same coverage bound as `EP.10l2`:

```math
\mathbf 1_{\mathcal J\times I}
\le
\sum_\ell w_\ell(a,b,t)
\le
N_{\mathrm{cov}}
\qquad\text{for a.e. }(a,b,t)\in\mathcal J\times I.
\tag{OMG.5}
```

## Proposition `OMG.A` (gluing local projective sections)

Assume there is a measurable selector `\iota(a,b,t)` choosing one active window
at each covered point and an overlap envelope `\mathfrak d_J(a,b,t)` such that
whenever `(a,b,t)\in\Lambda_\ell`,

```math
d_{\mathrm{proj}}\!\bigl(
\widehat P_{J,\iota(a,b,t)}(a,b,t),
\widehat P_{J,\ell}(a,b,t)
\bigr)^2
\le
\mathfrak d_J(a,b,t).
\tag{OMG.6}
```

Define the glued global projector

```math
\widehat P_J(a,b,t):=\widehat P_{J,\iota(a,b,t)}(a,b,t).
\tag{OMG.7}
```

Then

```math
d_{\mathrm{proj}}\!\bigl(P_{ab}(t),\widehat P_J(a,b,t)\bigr)^2
\le
2\,d_{\mathrm{proj}}\!\bigl(P_{ab}(t),\widehat P_{J,\ell}(a,b,t)\bigr)^2
+
2\,\mathfrak d_J(a,b,t)
\tag{OMG.8}
```

on every window `\Lambda_\ell`, and hence

```math
\int_I\int_{\mathcal J}
d_{\mathrm{proj}}\!\bigl(P_{ab}(t),\widehat P_J(a,b,t)\bigr)^2
d\mu_J^{pair}(a,b)\,dt
\le
2\sum_\ell m_\ell\varepsilon_\ell
+
2N_{\mathrm{cov}}
\int_I\int_{\mathcal J}\mathfrak d_J(a,b,t)\,d\mu_J^{pair}(a,b)\,dt.
\tag{OMG.9}
```

### Proof

Fix one point `(a,b,t)` and one window `\Lambda_\ell` containing it. The
projective triangle inequality gives

```math
d_{\mathrm{proj}}(P_{ab},\widehat P_J)^2
\le
2\,d_{\mathrm{proj}}(P_{ab},\widehat P_{J,\ell})^2
+
2\,d_{\mathrm{proj}}(\widehat P_{J,\ell},\widehat P_J)^2.
\tag{OMG.10}
```

Use `(OMG.6)` for the second term. Multiply by `w_\ell`, integrate on
`\Lambda_\ell`, sum in `\ell`, and apply the coverage bound `(OMG.5)`. ∎

## Proposition `OMG.B` (overlap mismatch from Davis-Kahan)

Assume on every active overlap `\Lambda_\ell\cap\Lambda_{\ell'}`:

1. both local surrogates `\widetilde S_{J,\ell}` and `\widetilde S_{J,\ell'}`
   have simple top gaps bounded below by `\gamma_\ast>0`;
2. their operator mismatch obeys

```math
\bigl\|
\widetilde S_{J,\ell}(a,b,t)-\widetilde S_{J,\ell'}(a,b,t)
\bigr\|_{\mathrm{op}}
\le
\mathfrak s_J(a,b,t).
\tag{OMG.11}
```

Then

```math
d_{\mathrm{proj}}\!\bigl(
\widehat P_{J,\ell}(a,b,t),
\widehat P_{J,\ell'}(a,b,t)
\bigr)^2
\le
\frac{4\,\mathfrak s_J(a,b,t)^2}{\gamma_\ast^2}.
\tag{OMG.12}
```

So `OMG.A` applies with

```math
\mathfrak d_J(a,b,t):=\frac{4\,\mathfrak s_J(a,b,t)^2}{\gamma_\ast^2}.
\tag{OMG.13}
```

### Proof

Apply the one-dimensional Davis-Kahan projector comparison to the symmetric pair
`\bigl(\widetilde S_{J,\ell},\widetilde S_{J,\ell'}\bigr)` on the overlap. ∎

## Corollary `OMG.C` (localized-projector globalization wall)

Keep the explicit local entrance scalars from
[localized-projector-angular-forcing-ledger-reduction.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-angular-forcing-ledger-reduction.md):

```math
X_\ell\in\{q_\ell^{mat},q_\ell^{aux}\}.
\tag{OMG.14}
```

Let `\mathcal M_{\Lambda}X` be the maximal envelope

```math
\mathcal M_{\Lambda}X(a,b,t)
:=
\sup_{\ell:\,(a,b,t)\in\Lambda_\ell} X_\ell.
\tag{OMG.15}
```

Assume:

1. the maximal-envelope entrance theorem

```math
\int_I\int_{\mathcal J}
\mathcal M_{\Lambda}X(a,b,t)\,d\mu_J^{pair}(a,b)\,dt
\le
C\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr);
\tag{OMG.16}
```

2. the installed pair-family angular-forcing budget

```math
\int_I\int_{\mathcal J}
\frac{\beta_J(a,b,t)^2}{g_J(a,b,t)}
\,d\mu_J^{pair}(a,b)\,dt
\le
C\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr),
\tag{OMG.17}
```

or on the adiabatic branch the corresponding `D.7ie3` bound;

3. the overlap-surrogate theorem

```math
\int_I\int_{\mathcal J}
\frac{\mathfrak s_J(a,b,t)^2}{\gamma_\ast^2}
\,d\mu_J^{pair}(a,b)\,dt
\le
C\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr).
\tag{OMG.18}
```

On the actual localized-projector route, the note
[localized-projector-kernel-mismatch-implies-overlap-surrogate.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-kernel-mismatch-implies-overlap-surrogate.md)
reduces `(OMG.18)` further to a normalized kernel-mismatch theorem for the
local packet densities, and under a local mass floor to a raw-kernel overlap
theorem. On the exact `PSJ+.1` realization this sharpens again to one weighted
localizer-overlap theorem, and then in
[localized-projector-localizer-modulus-overlap-reduction.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-localizer-modulus-overlap-reduction.md)
to one localizer-modulus theorem or, under a Lipschitz localizer design, one
weighted center-spacing theorem on overlaps.

Then the global localized-projector synchronization channel closes:

```math
\int_I\int_{\mathcal J}
d_{\mathrm{proj}}\!\bigl(P_{ab}(t),\widehat P_J(a,b,t)\bigr)^2
d\mu_J^{pair}(a,b)\,dt
\le
C\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr).
\tag{OMG.19}
```

### Proof

Use the maximal-envelope promotion `AFR.G` to control `\sum_\ell m_\ell
\varepsilon_\ell` by `(OMG.16)` plus `(OMG.17)`. Then apply `OMG.A` and
substitute the Davis-Kahan overlap envelope from `OMG.B`. ∎

## Interpretation

The localized-projector exact-potential branch has now been reduced to the same
sharp globalization shape as the older synchronization packet, but stated on the
current localized-projector surfaces:

```math
\boxed{
\texttt{one maximal-envelope theorem for }q_\ell^{mat}\text{ or }q_\ell^{aux}
}
\quad+\quad
\boxed{
\texttt{the installed pair-family force ledger }D.7ie1
\text{ or }D.7ie3
}
\quad+\quad
\boxed{
\texttt{one normalized kernel-mismatch theorem for the local packet densities}
\texttt{ (or one weighted localizer-overlap theorem on exact }PSJ+.1\texttt{)}
}.
\tag{OMG.20}
```

So the remaining localized-projector globalization wall is no longer vague
coverage. It is exactly:

1. one maximal-envelope theorem for the explicit local entrance scalars;
2. one normalized kernel-mismatch theorem for the local packet densities, or on
   the exact `PSJ+.1` realization one localizer-modulus theorem, and under a
   Lipschitz localizer design one weighted center-spacing theorem;
3. the already-installed pair-family forcing ledger.

There is now also a coarser theorem-safe overlap route on disk in
[normalized-localized-projector-kernels-absorb-overlap-into-retained-cover-geometry.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/normalized-localized-projector-kernels-absorb-overlap-into-retained-cover-geometry.md):
after normalizing the local kernels, the overlap price is universally bounded
and is absorbed into bounded multiplicity plus retained cover geometry. So if
that retained geometry packet is admitted, overlap is no longer a separate
theorem debt. The routing note
[localized-projector-coarse-overlap-is-f1-consumer.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-coarse-overlap-is-f1-consumer.md)
records the sharper exact handoff: in coarse mode the localized-projector
overlap price is a downstream consumer of the retained-cover / bounded-overlap
side `(F.1)`, not of the full `V3` packet and not a new local theorem surface.
The further note
[localized-projector-coarse-overlap-is-retained-cover-counting-consumer.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-coarse-overlap-is-retained-cover-counting-consumer.md)
pushes this one step lower: the primitive consumer is the scalar retained-cover
counting term `\sum_k |I_k|\,\mu_J^{pair}(\mathcal J_k)`, while `(F.1)` is one
sufficient supplier.
The further routing note
[localized-projector-coarse-overlap-is-familywise-summability-consumer.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-coarse-overlap-is-familywise-summability-consumer.md)
identifies the exact upstream scalar wall from the older exact-potential packet:
that same counting term is already the input to one familywise summability
theorem pricing the retained drift windows against
`\mathcal E_J^{obs}+\mathrm{Err}_{J,\mathrm{pair}}`.
The next reduction in
[localized-projector-coarse-route-reduces-to-force-ceiling-plus-familywise-summation.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-coarse-route-reduces-to-force-ceiling-plus-familywise-summation.md)
shows that after the source-side entrance reduction, the coarse localized-
projector route lands exactly on the two-packet `EP.10af` wall: one local
force-ceiling theorem plus one familywise source-summation theorem.
The sharper current-packet note
[localized-projector-coarse-route-bypasses-force-ceiling-via-angular-forcing-ledger.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-coarse-route-bypasses-force-ceiling-via-angular-forcing-ledger.md)
then records the honest localized-projector upgrade: because `AFR.A/B/G`
already globalize the local drift side via `D.7ie1` / `D.7ie3`, the separate
`EP.10ae` force-ceiling theorem is bypassed on this packet, leaving only the
familywise source-summation theorem genuinely new on the coarse route.
The closure note
[localized-projector-coarse-route-collapses-to-one-familywise-summability-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-coarse-route-collapses-to-one-familywise-summability-theorem.md)
then packages the final current-packet statement: on the coarse route, the only
genuinely new theorem content is that one familywise summability theorem.
The sharper split in
[localized-projector-coarse-route-collapses-to-one-overlapwise-summability-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-coarse-route-collapses-to-one-overlapwise-summability-theorem.md)
uses `EP.10x3` versus `(EP.10x4)` to show that the windowwise side is already
closed by `AFR.G`, so the true remaining coarse-route wall is only the
overlapwise summability theorem.
The endpoint sharpening in
[localized-projector-coarse-route-collapses-to-one-retained-cover-counting-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-coarse-route-collapses-to-one-retained-cover-counting-theorem.md)
then records the exact coarse normalized-kernel specialization: the only
genuinely new theorem content is the scalar retained-cover counting law
`\sum_k |I_k|\,\mu_J^{pair}(\mathcal J_k)`.

A stronger sufficient realization is now also on disk in
[canonical-center-localized-projector-atlas-eliminates-overlap-mismatch.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/canonical-center-localized-projector-atlas-eliminates-overlap-mismatch.md):
if the localized-projector atlas is rebuilt around one shared measurable center
field, then the overlap term vanishes identically and the globalization route
collapses back to maximal-envelope entrance plus the installed pair-family
forcing ledger. The exact remaining debt on that stronger route is now isolated
in
[canonical-center-atlas-admissibility-reduction.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/canonical-center-atlas-admissibility-reduction.md):
one atlas-admissibility theorem transferring the local `PSJ+.22` window packet
to the canonical-center projector field.
