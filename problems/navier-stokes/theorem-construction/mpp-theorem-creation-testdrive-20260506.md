# Theorem Creation Test Drive

## Scope

This note records the first live Navier-Stokes test drive of the backend
`theorem-creation` cell after AUTO BUILD installed the worker and builder.

The test targets were the previous source-wall problems:

1. `source-wall-root-after-reconcile`
2. `SquareReserveEvolution.A / ReserveCreationCharge.A`
3. `TemporalNonAtomicSource.A / ZenoResidueLiouville_B.A`
4. `ParabolicEdgeResistance.A / CycleHeatAction.A`
5. `RetainedFaceAmplitudeGain.A / TerminalAmplitudeGain.A`

## Worker Results

The worker executed successfully and wrote:

1. `problems/navier-stokes/theorem-construction/source-wall-root-after-reconcile-theorem-creation-20260506.md`
2. `problems/navier-stokes/theorem-construction/reservecreationcharge-a-theorem-creation-20260506.md`
3. `problems/navier-stokes/theorem-construction/temporalnonatomicsource-a-theorem-creation-20260506.md`
4. `problems/navier-stokes/theorem-construction/parabolicedgeresistance-a-theorem-creation-20260506.md`
5. `problems/navier-stokes/theorem-construction/retainedfaceamplitudegain-a-theorem-creation-20260506.md`

Every serious source-wall route returned:

```text
verdict: new_subprimitive
promotion_allowed: false
next_cell_type: theorem-creation
```

So the theorem creator is runnable, but it did not discharge any source-wall theorem.

## Exact Reductions Produced

`SquareReserveEvolution.A` reduced to:

```text
TerminalReserveFirstAppearanceCharge.A
```

Meaning: installed `ParentSquareEmbed.A` and `WeightedAdjRes.A` do not yet forbid
first free reserve creation on a terminal heat window.

`TemporalNonAtomicSource.A` reduced to:

```text
TerminalResidueAtomExclusion.A
```

Meaning: Zeno compactness and source-measure construction do not yet rule out a
terminal source-residue time atom.

`ParabolicEdgeResistance.A` reduced to:

```text
LocalizedParabolicResistanceCoercivity.A
```

Meaning: `CycleHeatAction.A` cannot be spent on the unlocalized signed current
without a localized coercivity theorem after boundary pricing.

`RetainedFaceAmplitudeGain.A` fell through the broad theorem family and reduced
only to:

```text
RetainedFaceAmplitudeGain.A.Subprimitive
```

Meaning: the current creator does not yet have a retained-face amplitude theorem
family. It needs a route template for `PackGainLedger.A`, `PartEnvelope.A`, and
the scale-critical amplitude cap.

## Integration Findings

The live automatic route did not initially select `theorem-creation`.

`follow-theorem-crank` routed:

```text
source-wall-root-theorem -> dependency-discharge
```

Direct `theorem-creation` then refused to run until the lane was explicitly queued
for the new cell. That means the machinery exists, but the live Navier-Stokes
routing still leaks the source-wall target into older discharge/debt cells.

The first automatic theorem-creation run also selected the low-information
`theorem-crank` primary target:

```text
source-wall-root-after-reconcile
```

instead of a sharper source-wall primitive. The resulting note was a broad bridge
packet rather than a theorem-facing attack on square reserve, Zeno residue, or
parabolic current.

## Required Machinery Repairs

1. Prefer `source-frontier.first_unresolved_obligation` over low-information
   `theorem-crank.frontier_projection.primary_target` when the crank target is only
   a generic umbrella label.
2. Add an explicit `theorem-creation` target harness or CLI target override, so test
   runs do not require patching the previous `next_subprimitive`.
3. Add a retained-face amplitude theorem family for `RetainedFaceAmplitudeGain.A`,
   `TerminalAmplitudeGain.A`, `PackGainLedger.A`, and `PartEnvelope.A`.
4. Repair theorem-crank follow routing so `frontier-open` / `live-theorem-frontier`
   source-wall targets route directly to `theorem-creation`.
5. Repair the lane daemon `debt-derive` crash observed during the test:

```text
KeyError: key not found: "score"
```

## Math Status After Test Drive

The source-wall remains open. The live theorem creator now sharpens the old source
wall into three concrete next primitives:

```text
TerminalReserveFirstAppearanceCharge.A
TerminalResidueAtomExclusion.A
LocalizedParabolicResistanceCoercivity.A
```

plus the machinery-template gap:

```text
RetainedFaceAmplitudeGain.A theorem family missing
```

## Second Pass After AUTO BUILD Hardening

AUTO BUILD added an inventive theorem-selection layer and refreshed theorem-crank
routing. The second test drive confirms:

```text
source-wall-root-theorem -> theorem-creation
```

So the old no-worker source-wall state now routes into the theorem creator instead
of stale `dependency-discharge`.

The theorem creator also now emits an `Inventive Search` block with candidate
theorems, retrieved ingredients, selected mechanism, source policy, and scoring.

### Square Reserve Branch

Input:

```text
SquareReserveEvolution.A / ReserveCreationCharge.A
```

Selected:

```text
ReserveCreationCharge.A
mechanism: parent_or_charge_evolution
score: 109
```

Remaining primitive:

```text
TerminalReserveFirstAppearanceCharge.A
```

Interpretation: the creator now chooses the right theorem shape for the square
reserve branch, but still honestly stops at first free reserve creation.

### Zeno Branch

Input:

```text
TemporalNonAtomicSource.A / ZenoResidueLiouville_B.A
```

Selected:

```text
TemporalNonAtomicSource.A
mechanism: time_atom_evacuation
score: 118
```

Remaining primitive:

```text
TerminalResidueAtomExclusion.A
```

Interpretation: the creator now chooses the right theorem shape for temporal
non-atomicity, but still honestly stops at terminal atom exclusion.

### Signed-Current Branch

Input:

```text
ParabolicEdgeResistance.A / CycleHeatAction.A
```

Selected:

```text
ParabolicEdgeResistance.A
mechanism: localized_cycle_coercivity
score: 116
```

Remaining primitive:

```text
LocalizedParabolicResistanceCoercivity.A
```

Interpretation: the creator now chooses the right localized signed-current theorem
shape, but still honestly stops at the coercivity theorem.

### Retained-Face Amplitude Branch

Input:

```text
RetainedFaceAmplitudeGain.A / TerminalAmplitudeGain.A
```

Selected:

```text
RetainedfaceamplitudegainMinimalBridge.A
mechanism: minimal_bridge
score: 74
```

Remaining primitive:

```text
RetainedfaceamplitudegainMinimalBridge.A.CoreSubprimitive
```

Interpretation: the hardened creator still lacks a retained-face amplitude theorem
family. It does not yet know how to invent through `PackGainLedger.A`,
`PartEnvelope.A`, or the scale-critical packet amplitude cap.

## Second-Pass Machinery Findings

1. The direct-live theorem-crank routing fix works.
2. The new invention layer improves theorem selection for reserve, Zeno, and
   parabolic-current branches.
3. Fresh source-wall root testing is still vulnerable to prior `theorem-creation`
   recursion, because `previous_subprimitive_target` has highest target priority.
4. Retrieved ingredients are sometimes noisy; examples include agent-contract
   status lines appearing as allowed inputs.
5. The retained-face amplitude branch still needs a real theorem family/template.

## Updated Next Targets

The sharpened live mathematical targets are:

```text
TerminalReserveFirstAppearanceCharge.A
TerminalResidueAtomExclusion.A
LocalizedParabolicResistanceCoercivity.A
```

The sharpened machinery targets are:

```text
RetainedFaceAmplitudeGain theorem family
source-frontier target override for fresh root test drives
ingredient retrieval cleanup
```

## Third Pass After Recursive Solver Installation

AUTO BUILD then installed recursive theorem solving and terminal closure mechanisms.
The third isolated test drive ran the four old source-wall targets through the same
`TheoremCreationBuilder` logic while the lane daemon was stopped to avoid interference
from a polluted previous-subprimitive recursion.

### Recursive Closure Results

`SquareReserveEvolution.A` now produces:

```text
theorem: ReserveCreationCharge.A
verdict: conditional
next_cell: dependency-discharge
solver_chain: closed
chain_length: 3
```

Recursive chain:

```text
ReserveCreationCharge.A
-> TerminalReserveFirstAppearanceCharge.A
-> ChargeLedgerInjection.A
-> closed
```

`TemporalNonAtomicSource.A` now produces:

```text
theorem: TerminalResidueAtomExclusion.A
verdict: conditional
next_cell: dependency-discharge
solver_chain: closed
chain_length: 2
```

Recursive chain:

```text
TerminalResidueAtomExclusion.A
-> ShrinkingWindowEvacuation.A
-> closed
```

`ParabolicEdgeResistance.A` now produces:

```text
theorem: ParabolicEdgeResistance.A
verdict: conditional
next_cell: dependency-discharge
solver_chain: closed
chain_length: 3
```

Recursive chain:

```text
ParabolicEdgeResistance.A
-> LocalizedParabolicResistanceCoercivity.A
-> BoundaryPricedCycleCoercivity.A
-> closed
```

`RetainedFaceAmplitudeGain.A` now produces:

```text
theorem: RetainedFaceAmplitudeGain.A
verdict: conditional
next_cell: dependency-discharge
solver_chain: closed
chain_length: 4
```

Recursive chain:

```text
RetainedFaceAmplitudeGain.A
-> PackGainLedger.A
-> PartEnvelopeAmplitudeConservation.A
-> PartBoundaryLeakageCharge.A
-> closed
```

### Third-Pass Status

The theorem creator no longer stops at `new_subprimitive` on the four tested old
source-wall problems. It now creates conditional theorem packets with closed
internal solver chains and routes them to `dependency-discharge`.

This is not promotion. It is conditional theorem-creation output awaiting
dependency discharge, bridge-license audit, and promotion checks.

### Remaining Machinery Issue

The live lane daemon was repeatedly rerunning theorem-creation on a polluted generic
previous-subprimitive target of the form:

```text
Sourcewallrootafter...CoreSubprimitiveMinimalBridge.A.CoreSubprimitive
```

That loop overwrote clean test artifacts until the daemon was stopped for isolation.
So the recursive solver is useful, but the live worker still needs a guard against
generic-subprimitive recursion / previous-target contamination during fresh
source-wall root runs.

### Dependency-Discharge Gate Test

After restoring the clean conditional theorem-creation artifact, a problem-specific
`dependency-discharge` run did not consume the new theorem-creation packet.

It skipped with:

```text
event_type: dependency_discharge_skipped
reason: proof assembly exposes no dischargeable target
next_cell_type: debt-extract
```

The discharge target remained the older CM witness bridge item rather than
the conditional theorem-creation output.

Interpretation: recursive theorem creation now produces conditional source-wall
proof packets, but the promotion/discharge layer is not yet wired to spend or audit
those theorem-creation packets. That is a machinery integration blocker, not a new
math obstruction.

The live post-test state is therefore:

```text
theorem-creation: conditional packet present
dependency-discharge: skipped; no theorem-creation target consumed
lane daemon: stopped for isolation
```

### Governance Escalation

Because the blocker is shared-runner plumbing rather than a lane-local theorem
write, the issue was recorded as:

```text
problems/navier-stokes/governance-escalation.yaml
```

The escalation asks shared governance to wire `dependency-discharge` to consume
conditional theorem-creation recursive chains, and to guard theorem-creation
target selection against polluted generic previous-subprimitive recursion.

The live pipeline state now records:

```text
current_stage: governance-escalation-issued
next_cell_type: governance-escalation
owner_cell: shared-governance-handoff
```

## Fourth Pass After Typed Proof-Object Handoff

AUTO BUILD then added a typed `proof_object` edge from `theorem-creation` into
`dependency-discharge`.

### Receiver Edge Test

Using the existing legacy theorem-creation artifact and an in-memory
`theorem-creation-conditional -> dependency-discharge` workflow state, the new
`DependencyDischargeBuilder` does consume the packet:

```text
target: RetainedFaceAmplitudeGain.A
source_class: theorem-creation-proof-object
status_after: structurally-supported
outcome: theorem-creation-proof-object-ingested
matched_theorem_creation: true
proof_schema: research-os-typed-theorem-proof-object-v1
```

That means the old `proof assembly exposes no dischargeable target` failure is
fixed at the receiver edge.

However, because the tested artifact was generated before the typed
`proof_object` schema existed, the builder synthesized a compatibility proof
object. The synthesized bridge landing is:

```text
cm_role: supplier-support
faces: nil
```

So this path proves ingestion, not CM-face promotion quality.

### Fresh Selector Test

Running the current `TheoremCreationBuilder` logic in-memory from the live lane
state still selects the umbrella target:

```text
target: source-wall-root-after-reconcile
theorem: SourceWallRootAfterMinimalBridge.A
verdict: new_subprimitive
next: theorem-creation
recursive: open
promotion: blocked:new-subprimitive
direct_residual: SourceWallRootAfterMinimalBridge.A.CoreSubprimitive
```

So the compiler edge is real, but the live route can still feed the creator a
low-information umbrella target instead of the sharper source-wall branch objects.

### Fourth-Pass Verdict

The latest AUTO BUILD patch fixes one important seam:

```text
conditional theorem-creation packet -> dependency-discharge ingestion
```

It does not yet make the whole system genius-level, because a fresh live
theorem-creation run can still choose the wrong target family:

```text
source-wall-root-after-reconcile
-> SourceWallRootAfterMinimalBridge.A
-> SourceWallRootAfterMinimalBridge.A.CoreSubprimitive
```

The remaining system refinement is therefore not just receiver wiring. It is a
frontier-selection discipline:

```text
generic umbrella source-wall roots must be decomposed into the sharp branch targets
before theorem-creation runs.
```

For this lane, the sharp targets remain the tested branch objects:

```text
ReserveCreationCharge.A
TerminalResidueAtomExclusion.A
ParabolicEdgeResistance.A
RetainedFaceAmplitudeGain.A
```

Only those branch-level theorem-creation packets should be eligible for
dependency-discharge and bridge-license audit.
