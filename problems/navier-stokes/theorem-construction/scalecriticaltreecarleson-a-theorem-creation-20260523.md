# ScaleCriticalTreeCarleson.A theorem creation

## Target

- target obligation: ScaleCriticalTreeCarleson.A
- target label: Pack-side donor-refill Carleson landing: Pack_Q implies ScaleCriticalTreeCarleson.A, and selected failure is not Pack_Q
- route role: Prove the target by showing every counterexample creates a forbidden exit witness visible to the current packet.
- theorem family: reserve-creation-charge

## Created Theorem

ScaleCriticalTreeCarleson.A. The conditional reserve, charge, adjoint-tail, and windowwise leakage ledgers support the Pack_Q scale-critical donor-refill Carleson bound; an unpaid infinite donor-refill tree remains a Pack-face exit witness.

## Inventive Search

- mode: inventive-right-theorem-selection
- external_resources_used: false
- external_resource_policy: disabled-by-default; external searches may suggest support but may not certify or promote a theorem
- selected_mechanism: contrapositive_exit
- candidate_count: 3
- solver_chain_verdict: open
- selection_reason: This theorem is the right next move because it changes the proof economy: Prove the target by showing every counterexample creates a forbidden exit witness visible to the current packet. It is source-backed by 8 local ingredient(s). It deliberately reduces the remaining work to ScaleCriticalTreeCarleson.A.CoreSubprimitive rather than pretending the frontier is closed.

### Candidate Theorems

- ScaleCriticalTreeCarleson.A (contrapositive_exit; score=-4)
- ScaleCriticalTreeCarleson.A (compactness_defect_rigidity; score=-5)
- ScaleCriticalTreeCarleson.A (monotone_budget; score=-10)

### Retrieved Ingredients

- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- source ingredient
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- residual control
- problems/navier-stokes/theorem-packet.yaml -- Pack/Part bridge support

### Recursive Solver Chain

- terminal_verdict: open
- reason: No internal solver mechanism is installed for ScaleCriticalTreeCarleson.A.CoreSubprimitive.
- depth 0: ScaleCriticalTreeCarleson.A via contrapositive_exit -> ScaleCriticalTreeCarleson.A.CoreSubprimitive

## Allowed Inputs

- Pack landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- Part landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- Field landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- TerminalCMNoExit.FaceReduction.A. For original smooth data, CanonicalTerminalPacketCapture.A, AnyFiniteFailureWitnessCMExit.A, GenuineCMExit.Equiv.A, and TerminalSourceResidueCMExit.A reduce NoGenuineCMExit to the Pack-first CM exit tree: ScaleCriticalTreeCarleson.A is the Pack-side donor-refill landing, followed only by Part and licensed Field if Pack survives.
- ChargeLedgerInjection.A. Close the terminal reserve birth problem by proving a genuinely new uncharged reserve birth creates a zero-cost packet-creation contradiction. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- WindowwiseReserveCarleson.A. Replace global reserve accounting by a windowwise Carleson budget that cannot jump at the terminal window. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- PastWindowReserveSeparation.A. Force every uncharged reserve contribution to have already existed in Past(W), leaving only charge-priced first appearances. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- AdjointReserveNoFreeCreation.A. Turn the reserve increment into a dual pairing controlled by weighted adjoint residual mass. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- theorem-packet.yaml, theorem-repair.yaml, dependency-discharge.yaml.'
- ParentSquareEmbed.A
- WeightedAdjRes.A
- terminal heat-window decomposition
- normalized child packet mass
- BASACReverseHolderProduction.A. Producing a reverse-Holder B_ASAC^RH(p) subclass is the exact remaining forward supplier theorem; the installed B_ASAC equality-class clauses allow finite L^1_t terminal-layer concentration, so this production is not currently discharged and remains supplier-quarantined for the CM route.

## Forbidden Imports

- ScaleCriticalTreeCarleson.A
- Pack-side donor-refill Carleson landing: Pack_Q implies ScaleCriticalTreeCarleson.A, and selected failure is not Pack_Q
- full-MPP closure
- submission readiness
- global smoothness
- SquareReserveEvolution.A
- free terminal reserve creation

## Proof Attempt

1. Assume the target fails.
2. Extract the witness forced by failure.
3. Push that witness into an already forbidden packet class.
4. Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.
5. Use problems/navier-stokes/theorem-packet.yaml as source support for source ingredient.

## Circularity Audit

- status: passed
- violations: none

## Solver Verdict

- verdict: new_subprimitive
- certification_level: theorem-creation:generated-subprimitive-needs-sharpening
- rationale: The theorem has been reduced to a smaller noncircular primitive that is not currently installed.
- next subprimitive: ScaleCriticalTreeCarleson.A.CoreSubprimitive -- core noncircular subprimitive for Pack-side donor-refill Carleson landing: Pack_Q implies ScaleCriticalTreeCarleson.A, and selected failure is not Pack_Q

## Promotion Plan

- promotion_allowed: false
- recommended_next_cell_type: creative-theorem-search
