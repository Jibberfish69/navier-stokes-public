# TerminalCMNoExit.FaceReduction.A theorem creation

## Target

- target obligation: terminalcmnoexit-a-nogenuinecmexit-a
- target label: TerminalCMNoExit.A / NoGenuineCMExit.A
- route role: Use CanonicalTerminalPacketCapture.A, AnyFiniteFailureWitnessCMExit.A, GenuineCMExit.Equiv.A, and TerminalSourceResidueCMExit.A to reduce NoGenuineCMExit to three positive survivor faces: Pack positive-scale/strain-integrability no-exit, Part tower/readout closedness no-exit, and licensed Field coherence no-exit after Part.
- theorem family: generic-bridge-theorem

## Created Theorem

TerminalCMNoExit.FaceReduction.A. For original smooth data, CanonicalTerminalPacketCapture.A, AnyFiniteFailureWitnessCMExit.A, GenuineCMExit.Equiv.A, and TerminalSourceResidueCMExit.A reduce NoGenuineCMExit to exactly three positive survivor faces: TerminalPackStrainIntegrabilityNoExit.A, TerminalPartClosednessInputNoExit.A, and TerminalLicensedFieldCoherenceNoExit.A.

## Inventive Search

- mode: inventive-right-theorem-selection
- external_resources_used: false
- external_resource_policy: disabled-by-default; external searches may suggest support but may not certify or promote a theorem
- selected_mechanism: terminal_cm_no_exit_face_reduction
- candidate_count: 1
- solver_chain_verdict: open
- selection_reason: This theorem is the right next move because it changes the proof economy: Use CanonicalTerminalPacketCapture.A, AnyFiniteFailureWitnessCMExit.A, GenuineCMExit.Equiv.A, and TerminalSourceResidueCMExit.A to reduce NoGenuineCMExit to three positive survivor faces: Pack positive-scale/strain-integrability no-exit, Part tower/readout closedness no-exit, and licensed Field coherence no-exit after Part. It is source-backed by 8 local ingredient(s). It deliberately reduces the remaining work to TerminalPackStrainIntegrabilityNoExit.A rather than pretending the frontier is closed.

### Candidate Theorems

- TerminalCMNoExit.FaceReduction.A (terminal_cm_no_exit_face_reduction; score=142)

### Retrieved Ingredients

- problems/navier-stokes/theorem-packet.yaml -- Pack/Part bridge support
- problems/navier-stokes/agent-contract.yaml:53 -- source ingredient
- problems/navier-stokes/theorem-packet.yaml -- Pack/Part bridge support
- problems/navier-stokes/agent-contract.yaml:145 -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- residual control
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support

### Recursive Solver Chain

- terminal_verdict: open
- reason: No internal solver mechanism is installed for TerminalPackStrainIntegrabilityNoExit.A.
- depth 0: TerminalCMNoExit.FaceReduction.A via terminal_cm_no_exit_face_reduction -> TerminalPackStrainIntegrabilityNoExit.A

## Allowed Inputs

- CanonicalTerminalPacketCapture.A
- AnyFiniteFailureWitnessCMExit.A
- GenuineCMExit.Equiv.A
- TerminalSourceResidueCMExit.A
- TerminalPackStrainIntegrabilityNoExit.A
- TerminalPartClosednessInputNoExit.A
- TerminalLicensedFieldCoherenceNoExit.A
- Pack landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- - problems/navier-stokes/live-theorem-edge.yaml
- Part landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- Field landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- BASACReverseHolderProduction.A. Producing a reverse-Holder B_ASAC^RH(p) subclass is the exact remaining forward supplier theorem; the installed B_ASAC equality-class clauses allow finite L^1_t terminal-layer concentration, so this production is not currently discharged and remains supplier-quarantined for the CM route.
- CFI.A. OFP.A together with CFI.B1 and CFI.B2 yields the retained conditional field-integrability package, while End_NS, Field readout, and Member remain downstream consequences.
- TemporalNonAtomicSource.A. Every terminal source-residue measure produced by the accepted Zeno compactness extraction is non-atomic at the terminal time slice.

## Forbidden Imports

- TerminalCMNoExit.FaceReduction.A
- TerminalCMNoExit.A / NoGenuineCMExit.A
- terminalcmnoexit-a-nogenuinecmexit-a
- full-MPP closure
- submission readiness
- global smoothness

## Proof Attempt

1. Start from original smooth data and an alleged finite terminal tail.
2. Use CanonicalTerminalPacketCapture.A and AnyFiniteFailureWitnessCMExit.A to force any terminal obstruction into Pack, Part, or Field.
3. Use GenuineCMExit.Equiv.A to read genuine terminal non-continuation as loss of every continuation-complete Pack/Part/Field packet.
4. Use TerminalSourceResidueCMExit.A only as source-residue sorting into Pack/Part; do not treat anti-atom deletion or source absolute continuity as the Field face.
5. Conclude that TerminalCMNoExit.A is exactly the conjunction of Pack no-exit, Part no-exit, and licensed Field no-exit; leave those analytic faces as the residual theorem.
6. Use problems/navier-stokes/theorem-packet.yaml as source support for Pack/Part bridge support.
7. Use problems/navier-stokes/agent-contract.yaml:53 as source support for source ingredient.

## Circularity Audit

- status: passed
- violations: none

## Solver Verdict

- verdict: new_subprimitive
- certification_level: theorem-creation:new-subprimitive
- rationale: The theorem has been reduced to a smaller noncircular primitive that is not currently installed.
- next subprimitive: TerminalPackStrainIntegrabilityNoExit.A -- positive terminal carrier/scale survival from original smooth data, equivalently OriginalSmoothData implies ScaleCriticalTreeCarleson.A or an equivalent no-zero-scale-ancestry theorem

## Promotion Plan

- promotion_allowed: false
- recommended_next_cell_type: theorem-creation
