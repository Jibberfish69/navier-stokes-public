# TerminalCMNoExit.FaceReduction.A theorem creation

## Target

- target obligation: terminalcmnoexit-a-nogenuinecmexit-a
- target label: TerminalCMNoExit.A / NoGenuineCMExit.A
- route role: Use CanonicalTerminalPacketCapture.A, AnyFiniteFailureWitnessCMExit.A, GenuineCMExit.Equiv.A, and TerminalSourceResidueCMExit.A to reduce NoGenuineCMExit to the Pack-first CM exit tree: carrier failure lands in Pack, retained participation failure lands in Part, and only a retained coherent same-fluid packet reaches Field.
- theorem family: generic-bridge-theorem

## Created Theorem

TerminalCMNoExit.FaceReduction.A. For original smooth data, CanonicalTerminalPacketCapture.A, AnyFiniteFailureWitnessCMExit.A, GenuineCMExit.Equiv.A, and TerminalSourceResidueCMExit.A reduce NoGenuineCMExit to the Pack-first CM exit tree: ScaleCriticalTreeCarleson.A is the Pack-side donor-refill landing, followed only by Part and licensed Field if Pack survives.

## Inventive Search

- mode: inventive-right-theorem-selection
- external_resources_used: false
- external_resource_policy: disabled-by-default; external searches may suggest support but may not certify or promote a theorem
- selected_mechanism: terminal_cm_no_exit_face_reduction
- candidate_count: 1
- solver_chain_verdict: open
- selection_reason: This theorem is the right next move because it changes the proof economy: Use CanonicalTerminalPacketCapture.A, AnyFiniteFailureWitnessCMExit.A, GenuineCMExit.Equiv.A, and TerminalSourceResidueCMExit.A to reduce NoGenuineCMExit to the Pack-first CM exit tree: carrier failure lands in Pack, retained participation failure lands in Part, and only a retained coherent same-fluid packet reaches Field. It is source-backed by 8 local ingredient(s). It deliberately reduces the remaining work to ScaleCriticalTreeCarleson.A rather than pretending the frontier is closed.

### Candidate Theorems

- TerminalCMNoExit.FaceReduction.A (terminal_cm_no_exit_face_reduction; score=142)

### Retrieved Ingredients

- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- Pack/Part bridge support
- problems/navier-stokes/theorem-packet.yaml -- Pack/Part bridge support
- problems/navier-stokes/agent-contract.yaml:53 -- source ingredient
- problems/navier-stokes/agent-contract.yaml:145 -- installed dynamic support

### Recursive Solver Chain

- terminal_verdict: open
- reason: No internal solver mechanism is installed for ScaleCriticalTreeCarleson.A.CoreSubprimitive.
- depth 0: TerminalCMNoExit.FaceReduction.A via terminal_cm_no_exit_face_reduction -> ScaleCriticalTreeCarleson.A
- depth 1: ScaleCriticalTreeCarleson.A via scale_critical_tree_carleson_pack_landing -> ScaleCriticalTreeCarleson.A.CoreSubprimitive

## Allowed Inputs

- CanonicalTerminalPacketCapture.A
- AnyFiniteFailureWitnessCMExit.A
- GenuineCMExit.Equiv.A
- TerminalSourceResidueCMExit.A
- ScaleCriticalTreeCarleson.A
- not Pack_Q
- Pack/Part/Field
- TerminalSignedSaturationCMFaceReduction.A. In the CM contrapositive route with Exit(Q):=not Member(Q), every failure of TerminalSignedSaturation.A is paid by retained signed partners, legal exits, ASAC pair-weight charge, finite donor balance, or else becomes a terminal zero-radius source residue; that residue is not Pack_Q, or it forces incoming flux, CM envelope blowout, paid exit, and hence Pack/Part/Field witness-face exit. This is a CM face-reduction theorem, not a forward no-free-sink supplier discharge.
- ScaleCriticalTreeCarleson.A. The reserve, charge, adjoint-tail, and windowwise leakage ledgers would sum to the Pack_Q scale-critical donor-refill Carleson bound only after the noncircular Pack-side residual primitive is proved; until then an unpaid infinite donor-refill tree remains a Pack-face exit witness, not a closed no-exit theorem.
- Part landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- Pack landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- Field landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- BASACReverseHolderProduction.A. Producing a reverse-Holder B_ASAC^RH(p) subclass is the exact remaining forward supplier theorem; the installed B_ASAC equality-class clauses allow finite L^1_t terminal-layer concentration, so this production is not currently discharged and remains supplier-quarantined for the CM route.
- CFI.A. OFP.A together with CFI.B1 and CFI.B2 yields the retained conditional field-integrability package, while End_NS, Field readout, and Member remain downstream consequences.

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
3. Use GenuineCMExit.Equiv.A to read genuine terminal non-continuation through first failed continuation-complete Pack/Part/Field face.
4. Use TerminalSourceResidueCMExit.A only as source-residue sorting into Pack/Part; do not treat anti-atom deletion or source absolute continuity as the Field face.
5. Send the Pack branch to ScaleCriticalTreeCarleson.A as the donor-refill Pack-side exit theorem, not to an original-data positive survivor theorem.
6. Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.
7. Recursive solver step for ScaleCriticalTreeCarleson.A: Use WindowwiseReserveCarleson.A to localize reserve increments to terminal heat windows.
8. Recursive solver step for ScaleCriticalTreeCarleson.A: Use ReserveCreationCharge.A and TerminalReserveFirstAppearanceCharge.A to split inherited reserve from first appearances.
9. Recursive solver step for ScaleCriticalTreeCarleson.A: Use ChargeLedgerInjection.A, PastWindowReserveSeparation.A, and AdjointReserveNoFreeCreation.A to price inherited and ledger-visible contributions.
10. Recursive solver step for ScaleCriticalTreeCarleson.A: Reduce the remaining positive source-reserve birth/height-flux contribution to a sharpened core subprimitive before any Pack_Q Carleson landing is promoted.
11. Recursive solver step for ScaleCriticalTreeCarleson.A: Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.

## Circularity Audit

- status: passed
- violations: none

## Solver Verdict

- verdict: new_subprimitive
- certification_level: theorem-creation:generated-subprimitive-needs-sharpening
- rationale: The theorem has been reduced to a smaller noncircular primitive that is not currently installed.
- next subprimitive: ScaleCriticalTreeCarleson.A.CoreSubprimitive -- core noncircular subprimitive for TerminalCMNoExit.A / NoGenuineCMExit.A

## Promotion Plan

- promotion_allowed: false
- recommended_next_cell_type: creative-theorem-search
