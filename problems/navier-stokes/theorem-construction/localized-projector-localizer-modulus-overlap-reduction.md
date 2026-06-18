# Localized Projector Localizer-Modulus Overlap Reduction

## Status

Active theorem-facing sharpening note for the exact `PSJ+.1`
localized-projector realization.

Role: reduce the weighted localizer-overlap theorem from
[localized-projector-kernel-mismatch-implies-overlap-surrogate.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-kernel-mismatch-implies-overlap-surrogate.md)
to one modulus-of-continuity theorem for the spatial localizer family on
overlapping windows.

## Purpose

The current localized-projector globalization wall on the exact `PSJ+.1`
realization is already down to

```math
\boxed{
\texttt{one weighted localizer-overlap theorem}
}.
\tag{LOM.0}
```

But the localizer overlap is not a separate spectral burden. It is a geometric
modulus-of-continuity question for the spatial kernel `\phi_r`.

This note makes that reduction explicit.

## Exact `PSJ+.1` Localizer Overlap

Keep the exact localized-projector packet `(PSJ+.1)` and fix one active overlap
point `z=(a,b,t)`. Assume the two overlapping local packets `\ell` and `\ell'`
use the same selector `\chi_J`, the same pair-length window `\psi_\rho`, and
the same confidence weight `\alpha`, while their spatial kernels are generated
from one profile `\phi_r` by local centers `c_{J,\ell}(z)` and
`c_{J,\ell'}(z)`:

```math
\phi_\ell(z,p)=\phi_r\!\bigl(c_{J,\ell}(z)-m_p(t)\bigr),
\qquad
\phi_{\ell'}(z,p)=\phi_r\!\bigl(c_{J,\ell'}(z)-m_p(t)\bigr).
\tag{LOM.1}
```

Let `\omega_{\phi_r}` be a modulus of continuity for `\phi_r`, so

```math
|\phi_r(y)-\phi_r(y')|
\le
\omega_{\phi_r}(|y-y'|)
\qquad
\text{for all }y,y'\in\mathbf R^3.
\tag{LOM.2}
```

Define the overlap-center separation

```math
\delta_{J,\ell\ell'}^{ctr}(z)
:=
|c_{J,\ell}(z)-c_{J,\ell'}(z)|.
\tag{LOM.3}
```

and the common packet-factor mass

```math
A_J(z)
:=
\int_{\mathcal P_J(z)}
\chi_J(z,p)\,\psi_\rho(z,p)\,\alpha(z,p)
\,d\bar\nu_{J,z}(p).
\tag{LOM.4}
```

## Proposition `LOM.A` (modulus of continuity collapses raw localizer mismatch)

Under `(LOM.1)`-`(LOM.4)`, the raw kernel mismatch from `KMG.C` satisfies

```math
\Delta_{J,\ell\ell'}^{raw}(z)
\le
\omega_{\phi_r}\!\bigl(\delta_{J,\ell\ell'}^{ctr}(z)\bigr)\,A_J(z).
\tag{LOM.5}
```

### Proof

By `(LOM.1)` and `(LOM.2)`,

```math
|\phi_\ell(z,p)-\phi_{\ell'}(z,p)|
\le
\omega_{\phi_r}\!\bigl(
|c_{J,\ell}(z)-c_{J,\ell'}(z)|
\bigr)
=
\omega_{\phi_r}\!\bigl(\delta_{J,\ell\ell'}^{ctr}(z)\bigr).
\tag{LOM.6}
```

Multiply `(LOM.6)` by the common nonnegative factor
`\chi_J\psi_\rho\alpha`, integrate over `\mathcal P_J(z)`, and use
`(KMG.27)`. ∎

## Corollary `LOM.B` (modulus overlap implies the weighted localizer theorem)

Assume the local mass floor and normalized gap floor from
`KMG.B`-`KMG.C`:

```math
m_{J,\ell}(z),m_{J,\ell'}(z)\ge m_\ast>0,
\qquad
\overline\gamma_\ast>0.
\tag{LOM.7}
```

Then `KMG.D` is implied by

```math
\int_I\int_{\mathcal J}
\frac{A_J(z)^2}{m_\ast^2\,\overline\gamma_\ast^2}\,
\omega_{\phi_r}\!\bigl(\delta_{J,\ell\ell'}^{ctr}(z)\bigr)^2
\,
d\mu_J^{pair}(a,b)\,dt
\le
C\bigl(\mathcal E_J^{obs}+\mathrm{Err}_{J,\mathrm{pair}}\bigr).
\tag{LOM.8}
```

### Proof

Insert `(LOM.5)` into `KMG.D`. ∎

## Corollary `LOM.C` (Lipschitz localizer specialization)

If `\phi_r` is Lipschitz with constant `L_r`, then

```math
\omega_{\phi_r}(s)\le L_r s,
\tag{LOM.9}
```

so `(LOM.8)` follows from the weighted center-spacing budget

```math
\int_I\int_{\mathcal J}
\frac{A_J(z)^2}{m_\ast^2\,\overline\gamma_\ast^2}\,
\delta_{J,\ell\ell'}^{ctr}(z)^2
\,
d\mu_J^{pair}(a,b)\,dt
\le
\frac{C}{L_r^2}
\bigl(\mathcal E_J^{obs}+\mathrm{Err}_{J,\mathrm{pair}}\bigr).
\tag{LOM.10}
```

### Proof

Substitute `(LOM.9)` into `(LOM.8)`. ∎

## Interpretation

On the exact `PSJ+.1` realization, the overlap gluing wall has now been reduced
again:

```math
\boxed{
\texttt{weighted localizer-overlap theorem}
}
\Longrightarrow
\boxed{
\texttt{one modulus-of-continuity theorem for the localizer family}
}.
\tag{LOM.11}
```

Under a Lipschitz design choice for `\phi_r`, this becomes

```math
\boxed{
\texttt{one weighted center-spacing theorem on window overlaps}
}.
\tag{LOM.12}
```

So the sharp exact localized-projector globalization wall is now:

1. one maximal-envelope theorem for the explicit entrance scalars;
2. the installed pair-family angular-forcing ledger `D.7ie1` or `D.7ie3`;
3. one localizer-modulus theorem, or under a Lipschitz localizer design one
   weighted center-spacing theorem on overlaps.

The separate coarse overlap note
[normalized-localized-projector-kernels-absorb-overlap-into-retained-cover-geometry.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/normalized-localized-projector-kernels-absorb-overlap-into-retained-cover-geometry.md)
shows that if one is willing to price overlap by the retained cover geometry
packet, then the third item can be bypassed by normalized local kernels. So the
present note should be read as the finer localized overlap route, not the only
possible one.

The exact downstream handoff for that coarse route is now spelled out in
[localized-projector-coarse-overlap-is-f1-consumer.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-coarse-overlap-is-f1-consumer.md):
in coarse mode, overlap adds no theorem debt beyond the retained-cover /
bounded-overlap side `(F.1)` of the downstream retained-family packet.
The further sharpening in
[localized-projector-coarse-overlap-is-retained-cover-counting-consumer.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-coarse-overlap-is-retained-cover-counting-consumer.md)
shows that the primitive coarse consumer is actually the scalar retained-cover
counting law `\sum_k |I_k|\,\mu_J^{pair}(\mathcal J_k)`, with `(F.1)` only one
upstream sufficient supplier.
The further routing note
[localized-projector-coarse-overlap-is-familywise-summability-consumer.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-coarse-overlap-is-familywise-summability-consumer.md)
shows that on the source split this scalar law is already the input to the same
familywise summability theorem that prices the retained drift windows.
The next reduction in
[localized-projector-coarse-route-reduces-to-force-ceiling-plus-familywise-summation.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-coarse-route-reduces-to-force-ceiling-plus-familywise-summation.md)
shows that after the entrance side is reduced to the installed local projective
entrance ledger, the coarse route lands exactly on the same two-packet
`EP.10af` wall: one local force-ceiling theorem plus one familywise
source-summation theorem.
The sharper current-packet note
[localized-projector-coarse-route-bypasses-force-ceiling-via-angular-forcing-ledger.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-coarse-route-bypasses-force-ceiling-via-angular-forcing-ledger.md)
shows that on the installed localized-projector packet this is not the final
wall: `AFR.A/B/G` already bypass the separate `EP.10ae` force-ceiling theorem,
so only the familywise source-summation theorem remains genuinely new on the
coarse route.
The final current-packet closure note
[localized-projector-coarse-route-collapses-to-one-familywise-summability-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-coarse-route-collapses-to-one-familywise-summability-theorem.md)
records that exact endpoint explicitly.
The sharper split in
[localized-projector-coarse-route-collapses-to-one-overlapwise-summability-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-coarse-route-collapses-to-one-overlapwise-summability-theorem.md)
shows that on the installed localized-projector packet this endpoint sharpens
once more: the only genuinely new coarse-route wall is the overlapwise
summability theorem.
The endpoint sharpening in
[localized-projector-coarse-route-collapses-to-one-retained-cover-counting-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-coarse-route-collapses-to-one-retained-cover-counting-theorem.md)
then records the exact coarse normalized-kernel specialization: the only
genuinely new theorem content is the scalar retained-cover counting law
`\sum_k |I_k|\,\mu_J^{pair}(\mathcal J_k)`.
The live branch audit
[psj-plus-1-overlap-live-frontier-branch-audit.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/psj-plus-1-overlap-live-frontier-branch-audit.md)
therefore prefers that coarse scalar endpoint as the minimal `PSJ+.1` overlap
frontier, while retaining the present localizer-modulus theorem as the fine
exact-geometry sibling branch.

The stronger sufficient design note
[compact-support-localizer-shrinking-radius-implies-center-spacing.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/compact-support-localizer-shrinking-radius-implies-center-spacing.md)
shows that if the localizer is chosen compactly supported and Lipschitz at
scale `r_J`, then this third item reduces further to one weighted small-radius
budget. The further note
[uniform-packet-bounds-collapse-small-radius-budget.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/uniform-packet-bounds-collapse-small-radius-budget.md)
then removes the packet factor from that stronger route and reduces it to a
radius-gap budget, and under a fixed gap floor plus finite active measure to a
uniform shrinking-radius theorem through the exact bound
`\int r_J(z)^2\,d\mu_J^{pair}\,dt\le \mathfrak m_\ast\rho_J^2=o_J(1)`.
That remains a bypass realization, not the installed minimal theorem wall.

If one allows the stronger packet redesign recorded in
[canonical-center-localized-projector-atlas-eliminates-overlap-mismatch.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/canonical-center-localized-projector-atlas-eliminates-overlap-mismatch.md),
then this third item disappears entirely: the overlap mismatch vanishes by
design on a shared measurable center field. But that stronger route is honest
only after the atlas-admissibility theorem isolated in
[canonical-center-atlas-admissibility-reduction.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/canonical-center-atlas-admissibility-reduction.md),
which compares each original local window packet to the canonical-center
packet. If the shared center field is chosen by measurable selection from the
existing local centers, then the further reduction in
[measurable-selected-center-field-reduces-canonical-atlas-admissibility.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/measurable-selected-center-field-reduces-canonical-atlas-admissibility.md)
shows that the stronger route collapses back to this same weighted overlap
center-spacing wall.
