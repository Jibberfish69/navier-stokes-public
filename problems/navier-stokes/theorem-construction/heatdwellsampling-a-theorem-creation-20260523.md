# HeatDwellSampling.A theorem creation

## Target

- target obligation: HeatDwellSampling.A
- target label: heat-dwell sampling of a first positive retained height-flux pulse
- route role: Find the missing local bridge that is strictly weaker than the target but strong enough to feed dependency-discharge.
- theorem family: generic-bridge-theorem

## Created Theorem

HeatDwellSampling.A. Find the missing local bridge that is strictly weaker than the target but strong enough to feed dependency-discharge. This supplies the exact noncircular bridge needed for heat-dwell sampling of a first positive retained height-flux pulse.

## Inventive Search

- mode: inventive-right-theorem-selection
- external_resources_used: false
- external_resource_policy: disabled-by-default; external searches may suggest support but may not certify or promote a theorem
- selected_mechanism: minimal_bridge
- candidate_count: 4
- solver_chain_verdict: open
- selection_reason: This theorem is the right next move because it changes the proof economy: Find the missing local bridge that is strictly weaker than the target but strong enough to feed dependency-discharge. It is source-backed by 8 local ingredient(s). It deliberately reduces the remaining work to HeatDwellSampling.A.CoreSubprimitive rather than pretending the frontier is closed.

### Candidate Theorems

- HeatDwellSampling.A (minimal_bridge; score=74)
- HeatDwellSampling.A (contrapositive_exit; score=64)
- HeatDwellSampling.A (compactness_defect_rigidity; score=67)
- HeatDwellSampling.A (monotone_budget; score=66)

### Retrieved Ingredients

- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- Pack/Part bridge support
- problems/navier-stokes/theorem-packet.yaml -- Pack/Part bridge support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/agent-contract.yaml:145 -- installed dynamic support

### Recursive Solver Chain

- terminal_verdict: open
- reason: No internal solver mechanism is installed for HeatDwellSampling.A.CoreSubprimitive.
- depth 0: HeatDwellSampling.A via minimal_bridge -> HeatDwellSampling.A.CoreSubprimitive

## Allowed Inputs

- Pack landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- Part landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- Field landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- TerminalCMNoExit.FaceReduction.A. For original smooth data, CanonicalTerminalPacketCapture.A, AnyFiniteFailureWitnessCMExit.A, GenuineCMExit.Equiv.A, and TerminalSourceResidueCMExit.A reduce NoGenuineCMExit to the Pack-first CM exit tree: ScaleCriticalTreeCarleson.A is the Pack-side donor-refill landing, followed only by Part and licensed Field if Pack survives.
- BASACReverseHolderProduction.A. Producing a reverse-Holder B_ASAC^RH(p) subclass is the exact remaining forward supplier theorem; the installed B_ASAC equality-class clauses allow finite L^1_t terminal-layer concentration, so this production is not currently discharged and remains supplier-quarantined for the CM route.
- ScaleCriticalTreeCarleson.A. The reserve, charge, adjoint-tail, and windowwise leakage ledgers would sum to the Pack_Q scale-critical donor-refill Carleson bound only after the noncircular Pack-side residual primitive is proved; until then an unpaid infinite donor-refill tree remains a Pack-face exit witness, not a closed no-exit theorem.
- PastWindowReserveSeparation.A. Force every uncharged reserve contribution to have already existed in Past(W), leaving only charge-priced first appearances. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- theorem-packet.yaml, theorem-repair.yaml, dependency-discharge.yaml.'
- RetainedFaceAmplitudeGain.A. Any retained field-face amplitude gain admissible for the CM contrapositive route is recorded first as a Pack_Q gain event and transported through Part_{N,Q} without importing Field_{N,r,Q} or Member(Q) as a premise.
- AdjointReserveNoFreeCreation.A. Turn the reserve increment into a dual pairing controlled by weighted adjoint residual mass. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- CFI.A. OFP.A together with CFI.B1 and CFI.B2 yields the retained conditional field-integrability package, while End_NS, Field readout, and Member remain downstream consequences.
- TemporalNonAtomicSource.A. Every terminal source-residue measure produced by the accepted Zeno compactness extraction is non-atomic at the terminal time slice.
- OFP.A. The collar source-pressure package CSP.A propagates the retained one-field package on the same-fluid interval, with CFI.A, endpoint readout, and Field kept downstream, with Member following only after the CM witness certificate.
- CSP.A. On the retained same-fluid collar, LCI.A together with the installed post-LCI source ledger FCI.5f supplies the collar source-pressure package; OFP.A, CFI.A, endpoint readout, and Field remain downstream consumers, with Member following only after the CM witness certificate.

## Forbidden Imports

- HeatDwellSampling.A
- heat-dwell sampling of a first positive retained height-flux pulse
- full-MPP closure
- submission readiness
- global smoothness

## Proof Attempt

1. Name the strongest installed inputs.
2. State the weakest bridge they imply.
3. Audit that the bridge does not import the target conclusion.
4. Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.

## Circularity Audit

- status: passed
- violations: none

## Solver Verdict

- verdict: new_subprimitive
- certification_level: theorem-creation:generated-subprimitive-needs-sharpening
- rationale: The theorem has been reduced to a smaller noncircular primitive that is not currently installed.
- next subprimitive: HeatDwellSampling.A.CoreSubprimitive -- core noncircular subprimitive for heat-dwell sampling of a first positive retained height-flux pulse

## Promotion Plan

- promotion_allowed: false
- recommended_next_cell_type: creative-theorem-search
