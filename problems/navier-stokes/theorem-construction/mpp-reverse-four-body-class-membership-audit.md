# MPP Reverse Four-Body Class-Membership Audit

## Status

Theorem-facing audit note.

Role: reread the four-body circuit from the MPP object law in reverse-dependency
order, and test at each body whether the problem surface is even lawful inside
the admissible one-fluid class before trying to control it.

## Purpose

The classical four-body packet is a control loop. The MPP reread adds a prior
question:

```math
\boxed{
\text{before trying to estimate a feared body-surface, ask whether that surface is even realizable inside the lawful MPP fluid.}
}
\tag{R4A.0}
```

So this note is not a new estimate program. It is the class-membership audit
that has to run before survivor control is trusted.

## Fixed Reverse Read

The reverse dependency order is:

```math
\boxed{
\text{Body I problem surface}
\Longleftarrow
\text{Body IV exact deformation realization}
\Longleftarrow
\text{Body III exact same-surface object}
\Longleftarrow
\text{Body II same-fluid tether / drain realization}
\Longleftarrow
\text{Body I object-law admissibility.}
}
\tag{R4A.1}
```

This is the same four-body loop, but read as a legality audit:

1. Body I names the feared scale / tail escape.
2. Body IV tells what exact deformation geometry that fear would have to look
   like on one actual flow.
3. Body III tells whether that geometry survives exact same-surface passage.
4. Body II tells whether the packet being passed around is still one tethered
   same-fluid packet at all.
5. Body I object law judges whether the whole picture belongs to the admissible
   class in the first place.

## Class-Membership Gate

On a still-live window `Q`, the class-membership witness is

```math
\mathrm{CM}_{N,r,Q}(u,p,\Phi)
:=
\mathrm{Pack}_Q(u,\Phi)
\wedge
\mathrm{Part}_{N,Q}(u,p)
\wedge
\mathrm{Field}_{N,r,Q}(u,p),
\tag{R4A.2}
```

as installed in
[mpp-exact-class-membership-witness-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-exact-class-membership-witness-theorem.md).

The audit now works directly with primitive witness failure. The older words
`dead / blown / jump` may still appear as participation-side / packing-side /
one-field-side readout labels, but they are not used here as exact
biconditionals.

```math
\neg \mathrm{Part},
\qquad
\neg \mathrm{Pack},
\qquad
\neg \mathrm{Field}.
\tag{R4A.3}
```

So the audit question at every body is:

```math
\boxed{
\text{does this body-surface admit a realization with }\mathrm{Pack}\wedge \mathrm{Part}\wedge \mathrm{Field}\text{ still installed?}
}
\tag{R4A.4}
```

If not, that surface is not a lawful survivor family of the MPP fluid. It is
already a class-exit picture.

## Proposition `R4A.A` (Reverse admissibility audit)

Let `\Sigma_I`, `\Sigma_{IV}`, `\Sigma_{III}`, and `\Sigma_{II}` be the
problem-surfaces currently exposed on Bodies I, IV, III, and II respectively,
with reverse dependency chain `(R4A.1)`.

Assume a still-live window `Q`.

Then a candidate body-surface may be treated as a lawful MPP survivor surface
only if it admits a realization on `Q` for which, at every finite depth `N`,
some scale `r_N>0` satisfies

```math
\mathrm{CM}_{N,r_N,Q}(u,p,\Phi).
\tag{R4A.5}
```

Equivalently, if every realization of a candidate body-surface forces failure of
at least one of

```math
\mathrm{Pack}_Q,\qquad \mathrm{Part}_{N,Q},\qquad \mathrm{Field}_{N,r,Q},
\tag{R4A.6}
```

then that body-surface is not a lawful survivor surface to be controlled. It is
already an MPP class-exit witness.

### Proof

This is just Theorem `CMW.A` and Corollary `CMW.B` read contrapositive in the
four-body setting. If a body-surface were a lawful survivor surface on `Q`, then
it would still be a construction of the same restricted fluid object and would
therefore admit realizations with `Pack`, `Part`, and `Field` installed through
every finite depth. Conversely, if every realization of that surface forces
failure of one of those predicates, then by definition it is not a surviving
same-fluid surface; it is already a first class-exit picture.

## Body-by-Body Reverse Audit

### Body I

Body I exposes the feared scale-concentration picture: activity tries to squeeze
into thinner and thinner active regions while remaining the same dangerous
survivor.

In the modernized packet this is the tail-side survivor packet
`S_{\mathrm{tail}}` or its tower version. Reverse reading says:

```math
\text{Body I feared geometry}
\Longleftarrow
\text{Body IV exact deformation geometry.}
\tag{R4A.7}
```

So the MPP audit is:

```math
\boxed{
\text{run the thin-region picture backward through the exact-fluid geometry;}
\quad
\text{if it already requires detached packing, loss of exchange, or one-field fracture, it is not a lawful Body I survivor.}
}
\tag{R4A.8}
```

So Body I only survives as a real theorem burden when the feared scale picture
admits realizations with `Pack`, `Part`, and `Field` still installed. Otherwise
the picture is cut at admissibility before any no-escape estimate is attempted.

The body-specific order is therefore:

```math
\text{Does the Body I failure picture exist inside class membership?}
\Longrightarrow
\text{if yes, which witness breaks?}
\Longrightarrow
\text{only then attempt control.}
\tag{R4A.8a}
```

### Body IV

Body IV exposes the exact-fluid sharpening picture on one real solution. This is
the most concrete body because it speaks directly about what the exact fluid is
trying to become.

Its reverse role is not only to continue the solution. It has to return the
exact geometric picture that Body I was silently fearing. So:

```math
\text{Body IV exact geometry}
\Longleftarrow
\text{Body III exact same-surface object.}
\tag{R4A.9}
```

The MPP audit is:

```math
\boxed{
\text{Bodies I--III should be reread through the exact geometry Body IV is actually worried about,}
\quad
\text{and if that geometry already violates }\mathrm{Pack}_Q\text{ or }\mathrm{Field}_{N,r,Q},
\text{ then Body IV has diagnosed a class exit, not a lawful survivor geometry.}
}
\tag{R4A.10}
```

So Body IV is the main diagnostic lens for the other bodies: it turns feared
classical escape pictures into exact one-fluid geometry and then asks whether
that geometry is legal inside the MPP class.

### Body III

Body III is exact same-surface object production. Its feared failure picture is
hidden defect closure: a sequence of prelimit flows converges to a fake limit
or a bookkeeping ghost that the true fluid never lawfully owns.

Its reverse role is:

```math
\text{Body III exact object}
\Longleftarrow
\text{Body II same-fluid tether / drain packet.}
\tag{R4A.11}
```

The MPP audit is:

```math
\boxed{
\text{ask whether the supposed defect object corresponds to any lawful survivor of the MPP fluid;}
\quad
\text{if the produced exact object no longer lives on one common carrier or one common field, then Body III has created a bookkeeping ghost rather than a lawful feed into Body IV.}
}
\tag{R4A.12}
```

So compactness is not free-standing here. It is only lawful when it produces an
exact object that still belongs to the same admissible class.

### Body II

Body II is the same-fluid tether / drain surface. Its feared failure picture is
runaway cascade transfer: the fluid keeps pushing activity across scales hard
enough to feed the same dangerous endpoint.

Under the MPP reread, this is the neighboring participation response law from
[mpp-cm-tethering-and-neighboring-participation-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-cm-tethering-and-neighboring-participation-theorem.md).

Its reverse dependency is:

```math
\text{Body II tether / drain packet}
\Longleftarrow
\text{Body I object-law admissibility.}
\tag{R4A.13}
```

The MPP audit is:

```math
\boxed{
\text{ask whether the transfer mechanism can occur while the same field remains shared and the same packing class remains intact;}
\quad
\text{if it already presupposes detach, fracture, or loss of exchange, then Body II is not looking at a lawful drain surface.}
}
\tag{R4A.14}
```

So Body II is spent only on packets that are still same-fluid packets. It does
not estimate away already-illegal detached or nonparticipating pictures.

## Bodywise Cut-Or-Survive Corollaries

For each body, let the corresponding feared picture mean exactly the one named
above:

```math
\Sigma_I^{thin}=\text{Body I scale-concentration picture,}
\tag{R4A.14aa}
```

```math
\Sigma_{II}^{cas}=\text{Body II runaway cascade-transfer picture,}
\tag{R4A.14ab}
```

```math
\Sigma_{III}^{ghost}=\text{Body III hidden-defect / fake-limit picture,}
\tag{R4A.14ac}
```

```math
\Sigma_{IV}^{geo}=\text{Body IV exact-fluid sharpening picture.}
\tag{R4A.14ad}
```

### Corollary `R4A.C` (Body I admissibility cut)

On a still-live window `Q`, exactly one of the following is allowed for
`\Sigma_I^{thin}`:

1. `\Sigma_I^{thin}` admits realizations on `Q` with
   `\mathrm{CM}_{N,r_N,Q}(u,p,\Phi)` installed for every finite depth `N`, in
   which case it is a lawful Body I survivor family and the next live theorem
   question is a genuine no-escape estimate on that survivor;
2. every realization of `\Sigma_I^{thin}` forces failure of at least one of
   `\mathrm{Pack}_Q`, `\mathrm{Part}_{N,Q}`, or `\mathrm{Field}_{N,r,Q}`, in
   which case `\Sigma_I^{thin}` is cut from Body I and reclassified as a
   dead/blown/jump class-exit picture rather than a survivor to be estimated.

### Proof

Apply Proposition `R4A.A` to the Body I feared picture. The body-specific
reading of `(R4A.8)` says that the thin-region scale picture is lawful only when
it can occur without detached packing, loss of exchange, or one-field fracture.
That is exactly alternative `1`; otherwise alternative `2` holds.

### Corollary `R4A.D` (Body II admissibility cut)

On a still-live window `Q`, exactly one of the following is allowed for
`\Sigma_{II}^{cas}`:

1. `\Sigma_{II}^{cas}` admits realizations with the class-membership witness
   installed, in which case it is a lawful internal transfer mechanism and the
   next live theorem question is the same-fluid tether / drain estimate;
2. every realization of `\Sigma_{II}^{cas}` forces failure of
   `\mathrm{Pack}_Q`, `\mathrm{Part}_{N,Q}`, or `\mathrm{Field}_{N,r,Q}`, in
   which case it is cut from Body II and reclassified as an already-illegal
   detached/fractured/nonparticipating transfer picture.

### Proof

This is Proposition `R4A.A` specialized to the Body II feared cascade picture,
using the body-specific reading `(R4A.14)`.

### Corollary `R4A.E` (Body III admissibility cut)

On a still-live window `Q`, exactly one of the following is allowed for
`\Sigma_{III}^{ghost}`:

1. `\Sigma_{III}^{ghost}` admits realizations that still produce one exact
   same-surface object inside the class-membership witness, in which case it is
   a lawful Body III survivor family and the next live theorem question is exact
   object production without class exit;
2. every realization of `\Sigma_{III}^{ghost}` forces failure of
   `\mathrm{Pack}_Q`, `\mathrm{Part}_{N,Q}`, or `\mathrm{Field}_{N,r,Q}`, in
   which case it is cut from Body III and identified as a bookkeeping ghost
   rather than a lawful survivor of the MPP fluid.

### Proof

This is Proposition `R4A.A` specialized to the Body III hidden-defect picture,
using the body-specific reading `(R4A.12)`.

### Corollary `R4A.F` (Body IV admissibility cut)

On a still-live window `Q`, exactly one of the following is allowed for
`\Sigma_{IV}^{geo}`:

1. `\Sigma_{IV}^{geo}` admits realizations with the class-membership witness
   installed, in which case it is a lawful exact-fluid survivor geometry and
   the next live theorem question is a continuation / closure estimate on that
   exact geometry;
2. every realization of `\Sigma_{IV}^{geo}` forces failure of
   `\mathrm{Pack}_Q` or `\mathrm{Field}_{N,r,Q}`, in which case it is cut from
   Body IV and identified as exact blown/jump geometry rather than a lawful
   survivor family.

### Proof

This is Proposition `R4A.A` specialized to the Body IV exact-fluid sharpening
picture, using the body-specific reading `(R4A.10)`.

## Proposition `R4A.B` (Admissibility before witness control)

For any feared body-failure picture `\Sigma`, the healthy proving order is:

```math
\boxed{
\text{first ask whether }\Sigma\text{ exists inside the lawful MPP class;}
\quad
\text{then identify which exact witness predicate fails if it does;}
\quad
\text{only then try to propagate that witness.}
}
\tag{R4A.14a}
```

### Proof

The first step is exactly Proposition `R4A.A`: a feared picture that cannot be
realized with `Pack`, `Part`, and `Field` installed is not a survivor family at
all. Once a feared picture survives that admissibility test, Corollary `CMW.B`
identifies the exact primitive predicate family whose breakdown witnesses the
corresponding class exit. Only after those two layers are fixed does it make
sense to use transported witness packets such as
`(A_F,P_F,\widetilde E)` as control machinery.

## Operational Rule

The healthy proving order is therefore:

```math
\boxed{
\text{audit legality first,}
\quad
\text{classify exits second,}
\quad
\text{control only the survivors.}
}
\tag{R4A.15}
```

Equivalently, at the four-body level:

```math
\boxed{
\text{first: does this body's feared geometry exist?}
\quad
\text{second: which exact witness breaks if it exists?}
\quad
\text{third: can that witness be propagated?}
}
\tag{R4A.15a}
```

Equivalently:

```math
\boxed{
\text{do not spend Body II / IV control on a picture that the Body-I object-law audit already classifies as dead, blown, or jump.}
}
\tag{R4A.16}
```

## What This Changes

This note does **not** prove new coercive estimates.

What it does settle is the logical order:

1. admissibility of the MPP fluid comes before survivor control;
2. the reverse four-body read is a legality audit, not only a control loop;
3. the class-membership witness is the exact test for whether a body-surface is
   a lawful survivor family or an already-illegal exit picture.

So the right use of the later witness packet
`(A_F,P_F,\widetilde E)` is downstream:

```math
\text{first audit that the feared geometry belongs to the class,}
\qquad
\text{then control the surviving packet.}
\tag{R4A.17}
```
