# MPP ScaleCriticalTreeCarleson Failure Field-Face Diagnostic

## Status

Installed as a selection-aware CM failure-face theorem.

This note proves the sharper use of `ScaleCriticalTreeCarleson.A`: on the
selected CM source-wall branch, its failure is not first treated as a missing
positive estimate. It is sorted through the witness faces.

The installed CM-facing conclusion is:

```math
\neg_{sel} ScaleCriticalTreeCarleson.A(Q)
\Longrightarrow
\neg Pack_Q
\ \vee\
\neg Part_{N,Q}
\ \vee\
\forall r>0\,\neg Field_{N,r,Q}.
```

On the retained same-fluid branch this reduces to:

```math
Pack_Q+Part_{N,Q}+\neg ScaleCriticalTreeCarleson.A
\Longrightarrow
\forall r>0\,\neg Field_{N,r,Q}.
```

Here `\neg_{sel}` means the failure has already been reduced to the active
CM-selected source-wall branch: legal-loss windows, endpoint/readout alternatives,
and non-selected branch alternatives have been routed before the theorem is
spent.

So if the selected scale-critical source reserve failure is the way smoothness
breaks, and if the carrier geometry and pressure-viscosity participation have not
already broken, then the failure is a `Field` failure.

The endpoint refinement is now sharper.  By
`mpp-retained-field-endpoint-tower-reduction-20260515.md`, on a first retained
terminal tail with bounded pack gauge,

```math
Pack_Q+Part_{N,Q}
+\forall r>0\,\neg Field_{N,r,Q}
\Longrightarrow
tower\text{-}blown,
```

equivalently the same-family DTC/tower analytic package fails.  By
`mpp-retained-field-actkx-license-and-conditional-closure-20260515.md`, a
pre-endpoint `ACT.KX`/DTC package rules out this retained Field exit.  Thus
the retained Carleson failure now lands in a precise Field-side analytic cell:

```math
\neg PreEnd.ACTKX_Q
\vee
\neg(\text{same-cover pressure readout})
\vee
\neg(\text{same-family depth synchronization}),
```

unless the branch has already left through `Pack` or `Part`.

## Why This Is The Right Pivot

The old positive-supplier posture asks for:

```math
OriginalSmoothData\Longrightarrow ScaleCriticalTreeCarleson.A.
```

That is a strong direct continuation theorem. It may still be useful, but it is
not the primitive CM move.

The CM move is:

```math
Exit(Q):=\neg Member(Q)
```

with witness rows

```math
CM_{N,r,Q}=Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}.
```

Therefore a real terminal smoothness failure must leave `CM`. A terminal
Carleson/source-reserve failure is useful only after it is diagnosed against
`Pack`, `Part`, and `Field`.

## Selected-Branch Failure Object

On the direct source-wall branch, after `ParentSquareEmbed.A` has priced diffuse
parentage, `\neg_{sel} ScaleCriticalTreeCarleson.A(Q)` means the
scale-critical reserve still has positive tail mass after declared losses and
non-selected exits are removed. Concretely, there is an `eta>0` and scales
`k_m->infty` for which a selected same-fluid terminal window satisfies

```math
\int_{I_m}
2^{k_m}
\left(
\sum_{\ell>k_m+4}D_\ell(t)
\right)^2dt
\ge \eta
```

after legal losses, bounded-overlap descendants, and non-retained alternatives
have been removed.

This is the only form of `\neg ScaleCriticalTreeCarleson.A` relevant to this CM
face diagnostic. Raw failures outside this selected branch are routed first as
`Pack` failure, `Part` failure, visible endpoint/readout failure, or legal-loss
failure. They are not hidden fourth faces.

## Face Sorting

There are three cases.

1. `Pack_Q` fails.

Then the source-reserve packet has lost the one bounded same-fluid carrier. The
Carleson failure is not a Field theorem; it is a `Pack` exit.

2. `Part_{N,Q}` fails.

Then the packet is not participating in the same differentiated
pressure-viscosity law. The source term is not a lawful same-fluid source
reserve on the retained branch. This is a `Part` exit.

3. `Pack_Q` and `Part_{N,Q}` survive.

Then the source reserve is on one retained carrier and in the same PDE law. At
this point the installed class-internal theorem applies:

```math
ClassInternalSourceTreeExclusion.A:
\quad
CM_{N,r,Q}
\Longrightarrow
\text{no terminal positive source reserve concentrates along an infinite
dyadic tree inside }Q.
```

Equivalently:

```math
\text{infinite terminal positive source-reserve tree}
\Longrightarrow
\neg Field_{N,r,Q}
\Longrightarrow
\neg CM_{N,r,Q}.
```

Thus the retained branch conclusion is:

```math
Pack_Q+Part_{N,Q}+\neg ScaleCriticalTreeCarleson.A
\Longrightarrow
\forall r>0\,\neg Field_{N,r,Q}.
```

## Mechanism

The mechanism is not raw energy.

Raw energy and local energy can allow finite physical mass while normalized
positive source mass keeps appearing on shrinking windows. `Field` is the
stronger object: it says the velocity-pressure tower is one coherent local field
at a uniform positive scale on the same retained carrier.

Once `Pack` and `Part` hold, the positive source reserve is a same-fluid
differentiated NS carrier. For a terminal node at scale `k`, the local Duhamel
response converts the positive tail source

```math
T_k(t)=\sum_{\ell>k+4}D_\ell(t)
```

into a normalized neighboring-field defect. At the parabolic scale, the response
has the same critical weight as the Carleson reserve:

```math
\int_{I_m}2^{3k_m}|\delta_{k_m}U|^2dt
\ge c_{\mathrm{SCF}}
\int_{I_m}2^{k_m}T_{k_m}(t)^2dt
-Loss_{legal}(I_m).
```

Infinitely many lower bounds by a fixed `c_0>0` of this form contradict the
tail vanishing required by `Field_{N,r,Q}`. Hence the source-reserve tree
cannot coexist with `Field`.

## Retained-Tree Response Lemma

This is the actual theorem move inside the pivot:

```math
\boxed{
RetainedSCTCFailureFieldExit.A:
\quad
Pack_Q+Part_{N,Q}
+\text{retained terminal }\neg ScaleCriticalTreeCarleson.A
\Longrightarrow
\forall r>0\,\neg Field_{N,r,Q}.
}
```

The content is simple. A retained failure tree is not just a bookkeeping failure
of a source estimate. Under `Pack_Q`, the bad mass is still on one bounded
same-fluid carrier. Under `Part_{N,Q}`, it is still a genuine
pressure-viscosity response of the differentiated Navier-Stokes law. Therefore
the source reserve has to be seen by the neighboring-field readout used by
`Field`.

At every sufficiently small retained node, the failed Carleson square reserve
gives a lower bound by a fixed `c_1>0` for

```math
\int_{I_m}2^{k_m}T_{k_m}(t)^2dt.
```

The local Duhamel response gives the matching lower bound

```math
\int_{I_m}
2^{3k_m}|\delta_{k_m}U|^2dt
\ge c\eta
```

after the declared legal losses are priced. Since `k_m->infty`, those defects
occur inside every candidate coherence radius. That is exactly what
`Field_{N,r,Q}` cannot allow: one-field coherence says the normalized tail of
neighboring-field differences vanishes.

So the retained branch has no fourth exit. If `Pack` survives and `Part`
survives, the Carleson failure is already a `Field` failure.

## Localization And Sorting

The completed sorting lemma is:

```math
\boxed{
SCTCFailureToFaceWitness.A:
\quad
\neg_{sel} ScaleCriticalTreeCarleson.A(Q)
\Longrightarrow
\neg Pack_Q\vee\neg Part_{N,Q}
\vee\text{retained terminal source-reserve tree}.
}
```

Here the premise is read in the source-wall sense installed by
`ParentSquareEmbed.A`: after legal losses and non-selected alternatives have been
removed, the scale-critical scalar reserve

```math
\int
\sum_{k>N}
2^k
\left(\sum_{\ell>k+4}D_\ell(t)\right)^2dt
```

does not vanish.

The proof is a sorting proof, not another estimate.

If the non-vanishing reserve cannot be placed inside one retained finite
same-fluid packet ledger after restriction, then the bounded carrier geometry
needed by `Pack_Q` has failed. This is not a hidden Carleson failure; it is the
`Pack` face.

If the reserve can be placed on the carrier but the active densities are no
longer the pressure-viscosity response of the same differentiated
Navier-Stokes tower, then the participation row has failed. This is the `Part`
face.

If both rows survive, `FaceRestrictionHeredity.A` lets us pass to the smaller
still-live terminal subledger without losing `Pack_Q` or `Part_{N,Q}`. The
non-vanishing reserve is then exactly a retained terminal source-reserve tree,
and `RetainedSCTCFailureFieldExit.A` applies.

Thus the selected-branch failure diagnosis is complete:

```math
\neg_{sel} ScaleCriticalTreeCarleson.A(Q)
\Longrightarrow
\neg Pack_Q
\vee
\neg Part_{N,Q}
\vee
\forall r>0\,\neg Field_{N,r,Q}.
```

With the bookkeeping alternatives restored, the raw form is:

```math
\boxed{
RawSCTCFailurePartition.A:
\quad
\neg ScaleCriticalTreeCarleson.A
\Longrightarrow
LegalLossExit
\vee ReadoutExit
\vee NonSelectedBranchExit
\vee \neg Pack_Q
\vee \neg Part_{N,Q}
\vee \forall r>0\,\neg Field_{N,r,Q}.
}
```

The first three alternatives are not analytic surprises. They are the declared
routes removed by the selection convention in `\neg_{sel}`. If none of them
occurs, the raw failure is exactly a selected source-wall failure on the active
CM ledger, so `SCTCFailureToFaceWitness.A` applies. The selected theorem is the
one used by the CM program. Once the failure is on that branch, it breaks
`Field` unless `Pack` or `Part` has already broken.

## Relation To Existing Surfaces

This note does not replace `ScaleCriticalTreeCarleson.A` as a direct supplier
wall. It separates two uses:

```math
OriginalSmoothData\Longrightarrow ScaleCriticalTreeCarleson.A
```

is the stronger direct supplier theorem and remains open.

```math
\neg ScaleCriticalTreeCarleson.A
\text{ on a retained terminal branch}
\Longrightarrow
\neg Field
```

is the CM face diagnostic. It uses the already installed class-internal theorem
and should be the first CM-facing use of the Carleson concept.

This also refines the older `SourcePulseFieldExit.A` posture. That older face
said:

```math
\text{terminal source-pulse}+Pack+Part\Longrightarrow \neg Field.
```

The current note is the scale-critical source-reserve specialization:

```math
\text{terminal } \neg ScaleCriticalTreeCarleson.A
+Pack+Part
\Longrightarrow
\neg Field.
```

## Proof Closure

The class-internal tree-to-Field contradiction is already recorded by
`mpp-class-internal-scalecritical-source-control-tree-exclusion-20260507.md`.

The selection-aware localization/sorting bridge is now closed:

```math
\boxed{
SCTCFailureToFaceWitness.A:
\quad
\neg_{sel} ScaleCriticalTreeCarleson.A(Q)
\Longrightarrow
\neg Pack_Q
\vee
\neg Part_{N,Q}
\vee
\text{terminal retained positive source-reserve tree}.
}
```

The raw global diagnostic is the composition:

```math
RawSCTCFailurePartition.A
+
SCTCFailureToFaceWitness.A
+
RetainedSCTCFailureFieldExit.A.
```

It proves that a raw failure of `ScaleCriticalTreeCarleson.A` either exits
through a declared legal/readout/non-selected route or, on the selected CM
source-wall branch, exits through `Pack`, `Part`, or `Field`.

The proof has two jobs:

```math
SCTCFail.Localize:
\quad
\neg_{sel} ScaleCriticalTreeCarleson.A(Q)
\Longrightarrow
\text{retained terminal failure tree}
\quad\text{or a prior non-retained exit}.
```

```math
SCTCFail.Sort:
\quad
\text{prior non-retained exit}
\Longrightarrow
\neg Pack_Q\vee\neg Part_{N,Q}
\quad\text{or declared legal/readout failure}.
```

After localization, `RetainedSCTCFailureFieldExit.A` is already supplied by
`ClassInternalSourceTreeExclusion.A`:

```math
\text{terminal retained positive source-reserve tree}
+Pack_Q+Part_{N,Q}
\Longrightarrow
\forall r>0\,\neg Field_{N,r,Q}.
```

So the route-facing target is not "prove a Carleson estimate" first. It is:
sort the failure. The branch either breaks the carrier, breaks participation in
the same PDE, or stays inside both rows and therefore breaks one-field
coherence.

What remains open is different: the direct supplier theorem

```math
OriginalSmoothData\Longrightarrow ScaleCriticalTreeCarleson.A
```

is still open as a positive route, but it is not the CM-contrapositive burden.
The contrapositive burden is the noncircular production of the pre-endpoint
ACT/KX-DTC package, or the averaged branch killer

```math
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A,
```

which removes `Jump_avg` without spending endpoint closure upstream.  The
alternate Zeno rigid-class presentation has its own Pack/Part/Field landing in
`mpp-zeno-terminal-atom-field-face-diagnostic-20260514.md`.  Those are not gaps
in `SCTCFailureToFaceWitness.A`; they are separate source-wall routes.

The cross-ledger warning `PositiveFieldScaleUnderSynchronization.A` is also
separate. This note diagnoses a selected SCTC failure on one active CM ledger; it
does not claim that independent Pack, Part, and Field witnesses from different
ledgers synchronize without a same-ledger synchronization theorem.
