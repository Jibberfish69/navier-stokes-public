# Localized Projector Coarse Route Collapses to One Overlapwise Summability Theorem

## Status

Active theorem-facing sharpening note for the localized-projector exact-potential
branch.

Role: isolate the sharpest remaining wall on the coarse localized-projector
route. On the source split `EP.10x`, the familywise summation theorem breaks
into a windowwise part and an overlapwise part. The installed localized-
projector packet already closes the windowwise part, so only the overlapwise
summability theorem remains genuinely new.

## Purpose

The note
[localized-projector-coarse-route-collapses-to-one-familywise-summability-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-coarse-route-collapses-to-one-familywise-summability-theorem.md)
already showed that on the installed localized-projector packet the coarse route
reduces to one familywise source-summation theorem.

But the source packet `EP.10x` is more refined:

```math
\sum_\ell C_\ell^{sync}\,\mathcal E_{J,\ell}^{sync}
\tag{EP.10x3}
```

and

```math
\sum_{(\ell,\ell')\in\mathcal O_\Lambda}
D_{\ell\ell'}^{sync}\,\mathcal E_{J,\ell\ell'}^{ov}
\tag{EP.10x4}
```

are separate.

Since `AFR.G` already closes the local windowwise entrance-plus-forcing side, the
current localized-projector coarse route should terminate at only the overlapwise
summability theorem.

## Corollary `LOS.A` (coarse localized-projector route needs only the overlapwise summability theorem)

Assume:

1. the maximal-envelope entrance theorem for the explicit entrance scalars;
2. the installed pair-family angular-forcing ledger `D.7ie1`, or on the
   adiabatic subbranch `D.7ie3`;
3. the coarse overlap packet is priced by one overlapwise summability theorem of
   the form

```math
\mathrm{Overlap}_{J,\mathrm{coarse}}
\le
C\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr).
\tag{LOS.1}
```

Then the coarse localized-projector synchronization channel closes.

### Proof

By `AFR.G`, hypotheses (1) and (2) close the windowwise source side on the
localized-projector packet. By hypothesis (3), the remaining overlapwise source
side is also priced by the observation/error ledger. Insert those two facts
into the globalization/gluing mechanism of
[localized-projector-overlap-mismatch-globalization.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-overlap-mismatch-globalization.md).
∎

## Interpretation

The installed localized-projector coarse route now has the sharpest honest form
currently visible on disk:

```math
\boxed{\texttt{windowwise side already closed by }AFR.G}
\quad+\quad
\boxed{\texttt{one overlapwise summability theorem}}
\Longrightarrow
\boxed{\texttt{global coarse localized-projector synchronization}}.
\tag{LOS.2}
```

Equivalently:

1. the windowwise entrance/forcing side is no longer a live theorem wall on this
   packet;
2. the only genuinely new coarse-route theorem content is one overlapwise
   summability theorem for the coarse overlap price.

The endpoint sharpening in
[localized-projector-coarse-route-collapses-to-one-retained-cover-counting-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-coarse-route-collapses-to-one-retained-cover-counting-theorem.md)
records that on the coarse normalized-kernel realization, even this overlapwise
summability theorem specializes to the scalar retained-cover counting law
`\sum_k |I_k|\,\mu_J^{pair}(\mathcal J_k)`.

This note does **not** claim that `(LOS.1)` is already closed. It only records
that the broader familywise theorem has sharpened to its overlapwise part on the
installed localized-projector route.
