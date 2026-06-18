# Pair-To-Cocycle Synchronization Braid Harvest

## Status

Cross-lane theorem-shape harvest for the live `NS` selector route.

This note does **not** claim that pair-to-cocycle synchronization is proved.
Its purpose is narrower:

1. identify what the shared `NS / YMG / Hodge` braid actually contributes to
   the remaining `NS` theorem wall;
2. separate those usable imports from ontology that is too upstream to close
   the current packet;
3. pin down the most honest theorem shape for the signless-pair-to-projective
   synchronization slot.

## 1. Exact `NS` target after the current reductions

The exact-potential simple-top branch is already reduced on disk to the
projective form:

```math
P_{ab}(t)=e_{ab}(t)\otimes e_{ab}(t),
\qquad
P_{J,\top}^{seg}(a,b,t)=n_J(a,b,t)\otimes n_J(a,b,t),
```

and

```math
\Xi_J^{ang}(a,b,t)
=
\frac12\|P_{ab}(t)-P_{J,\top}^{seg}(a,b,t)\|_F^2.
```

So the live slot is no longer an orientation theorem in the first instance.
It is a projective synchronization theorem.

The current theorem split already records the two exact slots:

1. pair-to-cocycle synchronization from the signless pair packet;
2. selector-strain compatibility between the recovered projective object and
   the top strain projector.

See:

- [cycle-exact-projective-synchronization-packet.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/cycle-exact-projective-synchronization-packet.md:15)
- [tps-selector-observability-to-sg4-bridge-proof-attempt.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-selector-observability-to-sg4-bridge-proof-attempt.md:1486)

## 2. What the braid actually contributes

### 2.1 One carrier, then selectors

The shared ontology fixes one carrier and one physical-sector selector before
any downstream localization.

See:

- [nc-leray-hodge-projector.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/working-notes/nc-leray-hodge-projector.md:5)
- [persistent-carrier-projector-and-coercivity.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/working-notes/persistent-carrier-projector-and-coercivity.md:10)
- [carrier-ontology-and-selector-correction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-ontology-and-selector-correction-note.md:42)

Operational consequence for `NS`:

- the missing synchronization object is a canonical projector or line
  field on the transported good family;
- it is not introduced first as a floating scalar selector label;
- sign choices, chart labels, and export-level selectors belong downstream.

### 2.2 Projectivize before orienting

The `Hodge / YMG` braid lives naturally at the level of local sections, overlap
cocycles, obstruction classes, and globalization:

- [hodge-ymg-holonomy-cocycle-braid-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/working-notes/hodge-ymg-holonomy-cocycle-braid-note.md:71)
- [hodge-ymg-holonomy-cocycle-braid-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/working-notes/hodge-ymg-holonomy-cocycle-braid-note.md:88)
- [hodge-ymg-holonomy-cocycle-braid-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/working-notes/hodge-ymg-holonomy-cocycle-braid-note.md:133)

The imported lesson for `NS` is exact:

- first recover local projective data;
- then prove overlap compatibility / cocycle control;
- only after that ask whether an oriented lift is needed.

For the current `NS` branch, an oriented lift is not the primary target because
the angle ledger is already signless.

### 2.3 Residue is structured signal, but not enough by itself

The braid dossier
[encoded-residue-is-structured-signal-template.yaml](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/brain/braid/dossiers/encoded-residue-is-structured-signal-template.yaml:8)
records the right meta-rule: leftover defect is retained when the
route burden is to determine whether it still carries structure.

But the `NS` projective packet also proves the sharp limit:

- `W_J` must be treated as information-bearing;
- `W_J` alone cannot determine the projective field.

That is already the content of the no-go proposition in
[cycle-exact-projective-synchronization-packet.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/cycle-exact-projective-synchronization-packet.md:139).

So the braid does **not** license the fantasy

```text
signless scalar defect alone -> oriented expanding direction.
```

It licenses the narrower statement

```text
signless defect is structural witness data used as confidence,
mass, weighting, or compatibility input in a larger synchronization object.
```

### 2.4 Readout must land back on a canonical source-side object

The braid dossier
[readout-to-source-closure-template.yaml](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/brain/braid/dossiers/readout-to-source-closure-template.yaml:8)
states the exact closure rule: a readout closes only when it lands back on a
canonical source-side or exact extracted object.

For `NS`, that means the synchronized object must land on one of the real
projector objects already present on disk, not on a free-floating witness:

1. the instantaneous top strain projector `P_{J,\top}^{seg}`;
2. on the Cauchy-Green route, the finite-time projector `P_J^{CG}`.

That is already how Proposition `D.7ma` is written:

- [tps-selector-observability-to-sg4-bridge-proof-attempt.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-selector-observability-to-sg4-bridge-proof-attempt.md:1486)

### 2.5 Rank-one channel closure is the right theorem template

The Hodge/YMG input packet contains a theorem-shaped bridge from witness data to
rank-one operators:

- [hodge-carrier-inputs-theorem-pack.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/working-notes/hodge-carrier-inputs-theorem-pack.md:132)
- [global-carrier-coverage-and-hodge-completion.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/working-notes/global-carrier-coverage-and-hodge-completion.md:44)

This does **not** transfer as a proof.
It transfers as theorem shape:

```text
observable witness data
-> positive / rank-one operator channel
-> top eigenspace / support line
-> transport-compatible realization.
```

That is exactly the role played in `NS` by the localized projector-moment
tensor `\widetilde S_J`:

- [cycle-exact-projective-synchronization-packet.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/cycle-exact-projective-synchronization-packet.md:590)
- [cycle-exact-projective-synchronization-packet.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/cycle-exact-projective-synchronization-packet.md:645)
- [transported-phase-space-selector-theorem-candidate.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/transported-phase-space-selector-theorem-candidate.md:1901)

So the braid sweep strongly supports the existing `NS` move

```text
pair packet -> PSD surrogate -> top projector,
```

not the abandoned move

```text
pair packet -> sign choice by fiat.
```

### 2.6 Cocycle/globalization is local-to-global projector gluing

The Hodge globalization notes phrase the endpoint as:

- local sections,
- overlap cocycle,
- vanishing or control of the Čech class,
- global section.

See:

- [global-carrier-coverage-and-hodge-completion.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/working-notes/global-carrier-coverage-and-hodge-completion.md:151)
- [global-carrier-coverage-and-hodge-completion.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/working-notes/global-carrier-coverage-and-hodge-completion.md:234)

Translated into the current `NS` packet, the right object is:

```text
local projective sections on strip windows
-> overlap mismatch ledger
-> projective cocycle control
-> global projective field on the transported good family.
```

This is the most concrete useful import from the braid.

## 3. Formal `NS` reformulation suggested by the braid sweep

### 3.1 Local projective windows

Cover the transported good strip by measurable windows `U_i`.
On each `U_i`, construct a local PSD surrogate from transported pair
projectors:

```math
\widetilde S_{J,i}(x,t)
:=
\int w_{J,i,x,t}(a,b)\,P_{ab}(t)\,d\mu_J^{pair}(a,b),
\qquad
(x,t)\in U_i,
```

with nonnegative observable weights `w_{J,i,x,t}` built from the installed pair
packet and transport-good family.

On the local simple-gap set, define

```math
\widehat P_{J,i}(x,t):=\Pi_{\max}(\widetilde S_{J,i}(x,t)).
```

### 3.2 Overlap mismatch as the cocycle-level quantity

On overlaps `U_i\cap U_j`, define the projective mismatch

```math
\delta_{ij}(x,t)
:=
d_{\mathrm{proj}}
\bigl(\widehat P_{J,i}(x,t),\widehat P_{J,j}(x,t)\bigr)^2.
```

This is the projective analogue of the overlap cocycle defect.
If one insists on oriented local lifts `v_i`, then the associated sign
transition `\sigma_{ij}\in\{\pm1\}` becomes a secondary lift problem.
For the present `NS` branch, the projective field is primary and the `\{\pm1\}`
lift is optional.

### 3.3 Honest theorem target

The braid-derived synchronization theorem is therefore:

```text
signless pair packet
+ transported pair geometry
+ local spectral gap
+ overlap mismatch control
-> global projective field \widehat P_J
-> comparison with P_{J,top}^{seg} or P_J^{CG}
-> angular ledger.
```

Equivalently, the true “pair-to-cocycle synchronization” slot is not

```text
recover an oriented vector directly from W_J.
```

It is

```text
construct local projective sections from observable pair geometry and prove they
glue coherently on overlaps.
```

## 4. Exact theorem wall after the braid sweep

The braid sweep also clarifies what it does **not** need to solve.

On the Cauchy-Green branch, selector-strain compatibility already has a
sufficient theorem route on disk:

- [tps-selector-observability-to-sg4-bridge-proof-attempt.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-selector-observability-to-sg4-bridge-proof-attempt.md:2305)
- [tps-selector-observability-to-sg4-bridge-proof-attempt.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-selector-observability-to-sg4-bridge-proof-attempt.md:2404)

So the cross-lane ontology is most useful on the **first** slot:

```text
pair-to-cocycle / projective synchronization from signless pair data.
```

It is less useful on the second slot because that slot is already reduced to
explicit commutator / gap / source budgets.

## 5. Working verdict

The strongest usable output of the braid sweep is the following.

### The braid supports

1. working in projective variables rather than oriented ones;
2. treating `W_J` as structural witness data but not as a complete observable;
3. building a local PSD or correlation surrogate from transported pair
   geometry;
4. phrasing synchronization as overlap / cocycle / gluing control of local
   projective sections;
5. demanding closure back to canonical `NS` projector objects.

### The braid does not support

1. direct orientation recovery from scalar signless defect data alone;
2. replacing the `NS` projector comparison theorem by ontology prose;
3. skipping the observable-surrogate construction and hoping `W_J` already
   fixes the line field.

### Most promising theorem direction

The most honest route suggested by the full braided ontology is:

```text
prove PSJ+ as a local-to-global projective-bundle theorem:
construct \widetilde S_J from transported pair projectors,
extract local top projectors,
control overlap mismatch by the observability / coherence ledgers,
glue to a global projective field,
then feed the existing NS projector-comparison splice.
```

That is the place where the ontology supplies real help rather than mood.
