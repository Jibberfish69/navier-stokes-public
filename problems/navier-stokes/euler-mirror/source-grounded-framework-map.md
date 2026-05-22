# Euler Mirror Source-Grounded Framework Map

This file pins the positive-control Euler mirror back to the actual
Navier-Stokes source stack and to the exact mirror surfaces written inside
`euler-mirror/**`.

## Original Four-Part Framework

The handed Navier-Stokes theory fixes a four-principle cycle. The Euler mirror
keeps that same body-job order, but it terminally classifies every place where
the parent proof used explicit viscosity, dissipation, heat, Stokes, or
parabolic continuation structure:

1. `Scale-Barrier Principle`
2. `Monotone Functional`
3. `Non-Sobolev Compactness`
4. `Continuation / Regularity Bridge`

The mirror does **not** get to compress this into `scale + compactness +
something transporty`. The four-principle order remains locked even while the
fourth bridge and parts of the monotone layer are being rewritten.

As on the installed Navier-Stokes lane, the route geometry also stays split:
the internal proving posture remains torus-first, while the Route B whole-space
packet remains a downstream discharge/export surface. Writing the mirror in
Euler form does not collapse those theorem surfaces into one.

## Arrow Structure From The Original Diagram

- `Scale-Barrier Principle -> Monotone Functional` (`reinforces`)
- `Monotone Functional -> Non-Sobolev Compactness` (`enables`)
- `Non-Sobolev Compactness -> Continuation / Regularity Bridge` (`supports`)
- `Continuation / Regularity Bridge -> Scale-Barrier Principle` (`strengthens`)

The arrow structure is preserved in the Euler mirror as a theorem-order
contract, not as a claim that every parent proof arrow has already been
reproved on the Euler equation.

## Parent Source Anchors

- `Millennium Prize Problems/Navier-Stokes/TeX/Route_B_Euclidean_Closure_Theorem.tex`
- `Millennium Prize Problems/Navier-Stokes/TeX/Euclidean_Scale_Barrier_Recertification_Lemma.tex`
- `Millennium Prize Problems/Navier-Stokes/TeX/Combined_Closure_Sufficiency_Lemma.tex`
- `Millennium Prize Problems/Navier-Stokes/TeX/Global Regularity Framework for Arbitrary Initial Data in L2.tex`
- `Millennium Prize Problems/Navier-Stokes/TeX/Section_3-_Monotone_Functional.tex`
- `Millennium Prize Problems/Navier-Stokes/TeX/Section_6-_Interdependencies_Among_Principles.tex`
- `/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/source-grounded-framework-map.md`

These remain the direct proof-bearing source family. The Euler mirror is a
branch-local terminal classification of their theorem structure, not a
replacement source corpus.

## Euler Mirror Authoring Surfaces

- [claim-ladder.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/claim-ladder.md)
- [theorem-construction/positive-control-euler-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/positive-control-euler-program.md)
- [theorem-construction/route-b-euler-closure-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/route-b-euler-closure-theorem.md)
- [campaign-map.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/campaign-map.md)
- [theorem-construction/euler-mirror-frontier-packet.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/euler-mirror-frontier-packet.md)

## Principle-By-Principle Euler Reading

### 1. Scale-Barrier Principle

Parent role:

- suppress uncontrolled transfer into dangerous high frequencies;
- feed both compactness and the fourth bridge.

Euler mirror reading:

- keep the same dyadic tail/cascade target;
- keep the same downstream role into compactness and Route B;
- do **not** silently reuse the parent step where nonlinear transfer is
  absorbed by viscous dissipation.

The theorem shape survives conditionally. The decisive absorption mechanism is a
non-Euler import.

### 2. Monotone Functional

Parent role:

- provide the named `Q(t)` bridge rather than unnamed baseline energy;
- carry the energy/enstrophy layer into the later packages.

Euler mirror reading:

- `L^2` energy conservation survives as a same-surface Euler fact;
- the parent `Q(t)=\|u\|_{L^2}^2+\|\nabla u\|_{L^2}^2` monotone package does not
  survive automatically after removing `\nu \Delta u`;
- if the mirror wants a named control functional beyond `L^2`, that object
  must be rewritten honestly on the Euler surface.

So the name and bridge slot are preserved, but the parent proof object is only
partially mirrored.

### 3. Non-Sobolev Compactness

Parent role:

- upgrade weak control on one fixed approximation family to strong enough local
  convergence for nonlinear closure.

Euler mirror reading:

- keep the same fixed-family compactness architecture;
- keep the low/high recombination and nonlinear tensor-closure job;
- forbid hidden theorem labor from viscous smoothing or modified-equation
  approximants.

This is the cleanest part of the positive route to transplant, provided explicit
Euler control inputs are supplied on the same approximation family.

### 4. Continuation / Regularity Bridge

Parent role in the live lane:

- Route B replaces the old curvature branch by a same-surface Euclidean
  continuation mechanism;
- the packet uses dyadic tail energy plus a dissipative `\nu D_N` term and
  ends through a classical Navier-Stokes continuation criterion.

Euler mirror reading:

- preserve the same theorem slot and packet order;
- preserve the dyadic objects and same-surface continuation ambition;
- terminally classify the proof the moment the parent argument spends
  `\nu D_N`, dissipation, or a Navier-Stokes-only continuation lemma.

So the fourth bridge remains theorem-facing in the mirror as a conditional
surface, while the parent dissipative bridge is a non-Euler import.

## Local Synthesis Anchors

- `/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/v6-four-bridge-source-note.md`
- `/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/working-notes/braided-ns-four-principle-closure-loop.md`

These remain synthesis anchors only. They may sharpen the language around
feedback, obstruction, carrier, and route posture, but they do not replace the
direct source-grounded body jobs or erase the terminal conditional/non-Euler
classifications.

## Correction Rule For The Branch

If a live Euler-mirror theorem surface describes the positive route as already
closed merely because the parent Navier-Stokes packet is well developed, that
surface is source-misaligned and must be repaired.

If a live Euler-mirror theorem surface silently imports any of the following as
theorem-bearing:

- viscous dissipation,
- heat or Stokes smoothing,
- the parent `Q(t)` monotonicity law beyond what has been rewritten for Euler,
- the classical Navier-Stokes continuation lemma,

that surface is also source-misaligned.
