# MPP Surface Ontology Ledger

## Status

Theorem-facing ontology ledger.

Role: record, surface by surface, what object each active Navier--Stokes note is
actually talking about relative to the whole class-membership fluid, what kind
of projection it is, what coupling survives, what it forgets, and where its
earliest admissible constitutive start really is.

## Purpose

This is the deeper artifact needed for patch-and-repair.

The general doctrine “local objects are not primitive” is not enough by itself.
One must know, for each live surface:

1. what slice/projection of the whole CM fluid it uses;
2. which parts of the pressure-viscosity-incompressibility-participation
   coupling survive that projection;
3. which parts are discarded and therefore must be reimported before the note
   can act as a closure-driving surface;
4. whether the note currently starts at its earliest admissible constitutive
   start or only at a downstream consumer start.

That is the purpose of this ledger.

## Governing Whole Object

All rows below are measured against the same object law:

```math
\boxed{
\text{one smooth NS evolution remaining internal to one shared incompressible pressure-viscosity field.}
}
\tag{SOL.0}
```

Its primitive laws are:

1. shared packing law;
2. shared participation law;
3. shared one-field law.

The stable carriers are:

```math
(u,p,\Phi,F),
\qquad
F:=D_a\Phi.
\tag{SOL.0a}
```

The currently installed witness coordinates are:

```math
\Gamma,\qquad
\widetilde{\mathcal H}_{N,r,\psi},\qquad
\mathfrak P_N+\mathfrak Q_N.
\tag{SOL.1}
```

## Ledger

### 1. PDE-native constitutive derivation

Surface:
[mpp-shared-participation-and-tower-coherence-law.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-shared-participation-and-tower-coherence-law.md)

- Surface object: the whole object law read through the flow map, tower carrier
  family, and finite-difference tower law.
- Projection type: constitutive derivation, not a reduced branch object.
- Coupling preserved: incompressibility, pressure closure, viscosity carrier,
  common nonlinear cascade, one-field finite-difference coupling.
- Coupling discarded: none at the theorem-primitive level; this is the root
  derivation surface.
- Earliest admissible constitutive start: this note itself.
- Consumer start? No.
- Misread danger: if treated as optional philosophy rather than the constitutive
  root, downstream branches start too late and look autonomous.

### 2. Unified material packet

Surface:
[mpp-material-packet-closure-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-material-packet-closure-program.md)

- Surface object: transported packet projection of the whole object-law fluid on a label
  family and finite tower depth.
- Projection type: constitutive witness packet.
- Coupling preserved: packed deformation, transported tower coherence,
  participation source at rung `1`.
- Coupling discarded: branch-specific readout geometry such as projectors,
  covectors, directional ledgers.
- Earliest admissible constitutive start: this note itself.
- Consumer start? No.
- Misread danger: if treated as “just another packet,” one forgets it is the
  branch-blind carrier from which later branch geometry must be exported.

### 3. Dead-tower reduction

Surface:
[mpp-dead-tower-rigidity-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-dead-tower-rigidity-reduction-note.md)

- Surface object: class-membership nonparticipation projected onto the
  participation witness and rigid literal deadness branches.
- Projection type: constitutive rigidity reduction.
- Coupling preserved: participation carrier `\mathfrak P_N+\mathfrak Q_N`,
  literal deadness, material-tube transport semantics.
- Coupling discarded: blown/jump branches and selector geometry.
- Earliest admissible constitutive start: this note itself.
- Consumer start? No.
- Misread danger: if treated as a local zero-velocity theorem, the whole
  participation doctrine is lost.

### 4. Fused SG.4 supplier schema

Surface:
[mpp-fused-sg4-supplier-schema.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-fused-sg4-supplier-schema.md)

- Surface object: interface object connecting the branch-blind CM participation-field record to a
  branch-sensitive readout packet.
- Projection type: export/interface layer.
- Coupling preserved: CM carrier enters as `\mathcal E_J^{cm}` and exported
  error ledgers; branch readout remains separate.
- Coupling discarded: concrete branch geometry until `\mathfrak R_J^{branch}` is
  supplied.
- Earliest admissible constitutive start: `\mathcal E_J^{cm}` plus the
  constitutive split already declared in the schema.
- Consumer start? Partly; this note is the interface start, not a branch-local
  consumer note.
- Misread danger: if treated as though `W_J+\mathcal E_J^{cm}` already
  manufacture the readout, one smuggles geometry out of the wrong fluid.

### 5. Exact-potential witness-to-readout

Surface:
[mpp-exact-potential-witness-to-readout-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-exact-potential-witness-to-readout-theorem.md)

- Surface object: exact-potential/projective branch readout of the CM carrier on
  a transported good family.
- Projection type: branch-specific constitutive precipitating theorem.
- Coupling preserved: packing/coherence/participation survive as CM-paid ledgers
  into the projective branch.
- Coupling discarded: direct whole-fluid semantics after the projection into
  branch projectors.
- Earliest admissible constitutive start: this note itself.
- Consumer start? No; this is the precipitating start for the exact-potential
  branch.
- Misread danger: if skipped, the projective branch looks as though projector
  geometry is primitive.

### 6. Exact-potential angular ledger

Surface:
[exact-potential-angular-ledger-from-selector-strain.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-angular-ledger-from-selector-strain.md)

- Surface object: branch-local projector triangle leading to `\Xi_J^{ang}`.
- Projection type: consumer equation on the exact-potential branch.
- Coupling preserved: only through the imported CM-paid packing/transport
  ledgers.
- Coupling discarded: direct whole-fluid semantics; this note works after the
  readout packet is installed.
- Earliest admissible constitutive start: `EWI.A`, not this note.
- Consumer start? Yes.
- Misread danger: if used as a primitive start, one mistakes a projective
  triangle argument for the source of branch semantics.

### 7. Abstract directional observability

Surface:
[directional-observability-from-projector-identification.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/directional-observability-from-projector-identification.md)

- Surface object: abstract projector-identification consumer equation.
- Projection type: branch-agnostic consumer template.
- Coupling preserved: only via the split
  `Err_id = Err_pack^{cm} + Err_tc^{cm} + Err_cal^{branch}`.
- Coupling discarded: the identity of the actual branch readout packet.
- Earliest admissible constitutive start: a branch-specific witness-to-readout
  theorem such as `EWI.A` or `NWI.A`.
- Consumer start? Yes.
- Misread danger: if taken as a standalone start, the generic `Err_id` becomes a
  fake primitive.

### 8. Normal-covector witness-to-readout

Surface:
[mpp-normal-covector-witness-to-readout-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-normal-covector-witness-to-readout-theorem.md)

- Surface object: normal-covector branch readout of the CM carrier on a
  transported good family.
- Projection type: branch-specific constitutive precipitating theorem.
- Coupling preserved: CM packing/transport/participation exported into
  bundle/covector/moment readout.
- Coupling discarded: direct whole-fluid semantics after the projection into the
  normal observable.
- Earliest admissible constitutive start: this note itself.
- Consumer start? No; this is the precipitating start for the normal-covector
  branch.
- Misread danger: if skipped, the normal-covector branch looks as though bundle
  geometry and windows are primitive.

### 9. `PD.70z` normal-covector route

Surface:
[pd70z-cycle-exact-normal-covector-route.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/pd70z-cycle-exact-normal-covector-route.md)

- Surface object: normal-direction defect and selector-normal moment on the
  cycle-exact branch.
- Projection type: branch-local consumer/geometry packet.
- Coupling preserved: only after importing the normal-covector readout splice.
- Coupling discarded: direct CM semantics; this note studies the projected
  normal observable.
- Earliest admissible constitutive start: `NWI.A`, not this note.
- Consumer start? Yes.
- Misread danger: if read as primitive, one mistakes a projected covector
  observable for a theorem root.

### 10. Cycle-exact angular observability packet

Surface:
[cycle-exact-angular-observability-packet.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/cycle-exact-angular-observability-packet.md)

- Surface object: angular directional ledger on a transported good family.
- Projection type: branch-local consumer packet.
- Coupling preserved: only through whatever CM theorem eventually precipitates
  `TCJ` and the admissible transport/alignment hypotheses.
- Coupling discarded: whole-fluid semantics and branch-blind witness structure.
- Earliest admissible constitutive start: the still-open CM-to-`TCJ`/alignment
  precipitation theorem.
- Consumer start? Yes.
- Misread danger: if read as a primitive theorem start, `TCJ` and `TEA` become
  free miracles.

### 11. Residual pairwise closure

Surfaces:
[exact-potential-residual-pairwise-closure.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-residual-pairwise-closure.md),
[residual-pairwise-closure-from-directional-ledger.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/residual-pairwise-closure-from-directional-ledger.md),
[exact-potential-rpc3-assembly.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-rpc3-assembly.md)

- Surface object: integrated scalar closure of a directional ledger.
- Projection type: downstream consumer/assembly.
- Coupling preserved: only the already-packaged directional ledger and branch
  error budgets.
- Coupling discarded: almost all geometry; this is scalar packaging.
- Earliest admissible constitutive start: a branch directional ledger theorem
  such as `D.7mr2` or the normal-covector analogue.
- Consumer start? Yes, purely.
- Misread danger: if read as a place to rediscover CM semantics, the ontology is
  already too collapsed.

### 12. SG.4 / continuation handoff

Surfaces:
[lower-envelope-sg4-continuation-exact-potential.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/lower-envelope-sg4-continuation-exact-potential.md),
[sg4-and-br-lambda2-handoff.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/sg4-and-br-lambda2-handoff.md)

- Surface object: scalar lower-envelope/continuation consequence.
- Projection type: downstream consequence only.
- Coupling preserved: only through the scalar supplier packet.
- Coupling discarded: all upstream geometry and constitutive semantics.
- Earliest admissible constitutive start: never here; these are terminal
  consequence notes.
- Consumer start? Fully downstream.
- Misread danger: if treated as a place to repair ontology, one is already far
  too late.

## Precision Rules Forced By This Ledger

1. A surface with `consumer start = yes` may not act as a theorem root for the
   branch.
2. If a surface discards CM coupling, it must name the earlier splice that
   already paid for that loss.
3. If a surface still contains a free hypothesis after CM re-rooting, that
   hypothesis must be labeled either:
   `CM-exported consequence` or `earliest open precipitating theorem`.
4. Downstream scalar assembly surfaces are never valid places to repair the
   ontology of the fluid.

## Immediate Use

This ledger gives the exact patch discipline:

1. for each active branch, identify the earliest row where `consumer start = no`
   and the branch becomes specific;
2. treat that row as the real branch start;
3. demote all later rows to consumer/consequence status unless they explicitly
   re-open an earlier constitutive export theorem.
