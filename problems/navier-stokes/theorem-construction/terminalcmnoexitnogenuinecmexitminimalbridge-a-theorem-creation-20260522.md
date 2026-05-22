# TerminalcmnoexitNogenuinecmexitMinimalBridge.A theorem creation

## Target

- target obligation: terminalcmnoexit-a-nogenuinecmexit-a
- target label: TerminalCMNoExit.A / NoGenuineCMExit.A
- route role: Find the missing local bridge that is strictly weaker than the target but strong enough to feed dependency-discharge.
- theorem family: generic-bridge-theorem

## Created Theorem

TerminalcmnoexitNogenuinecmexitMinimalBridge.A. Find the missing local bridge that is strictly weaker than the target but strong enough to feed dependency-discharge. This supplies the exact noncircular bridge needed for TerminalCMNoExit.A / NoGenuineCMExit.A.

## Inventive Search

- mode: inventive-right-theorem-selection
- external_resources_used: false
- external_resource_policy: disabled-by-default; external searches may suggest support but may not certify or promote a theorem
- selected_mechanism: minimal_bridge
- candidate_count: 4
- solver_chain_verdict: open
- selection_reason: This theorem is the right next move because it changes the proof economy: Find the missing local bridge that is strictly weaker than the target but strong enough to feed dependency-discharge. It is source-backed by 8 local ingredient(s). It deliberately reduces the remaining work to TerminalcmnoexitNogenuinecmexitMinimalBridge.A.CoreSubprimitive rather than pretending the frontier is closed.

### Candidate Theorems

- TerminalcmnoexitNogenuinecmexitMinimalBridge.A (minimal_bridge; score=70)
- TerminalcmnoexitNogenuinecmexitContrapositiveExit.A (contrapositive_exit; score=60)
- TerminalcmnoexitNogenuinecmexitCompactnessDefectRigidity.A (compactness_defect_rigidity; score=63)
- TerminalcmnoexitNogenuinecmexitMonotoneBudget.A (monotone_budget; score=58)

### Retrieved Ingredients

- problems/navier-stokes/agent-contract.yaml:55 -- Pack/Part bridge support
- problems/navier-stokes/agent-contract.yaml:53 -- source ingredient
- problems/navier-stokes/agent-contract.yaml:145 -- installed dynamic support
- problems/navier-stokes/agent-contract.yaml:165 -- Pack/Part bridge support
- problems/navier-stokes/agent-contract.yaml:60 -- Pack/Part bridge support
- problems/navier-stokes/theorem-packet.yaml -- residual control

### Recursive Solver Chain

- terminal_verdict: open
- reason: No internal solver mechanism is installed for TerminalcmnoexitNogenuinecmexitMinimalBridge.A.CoreSubprimitive.
- depth 0: TerminalcmnoexitNogenuinecmexitMinimalBridge.A via minimal_bridge -> TerminalcmnoexitNogenuinecmexitMinimalBridge.A.CoreSubprimitive

## Allowed Inputs

- ScaleCriticalTreeCarleson.A. The installed reserve, charge, adjoint-tail, and windowwise leakage ledgers sum to the Pack_Q scale-critical donor-refill Carleson bound; an unpaid infinite donor-refill tree is therefore a Pack-face exit witness.
- WindowwiseReserveCarleson.A. Replace global reserve accounting by a windowwise Carleson budget that cannot jump at the terminal window. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- AdjointReserveNoFreeCreation.A. Turn the reserve increment into a dual pairing controlled by weighted adjoint residual mass. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- PastWindowReserveSeparation.A. Force every uncharged reserve contribution to have already existed in Past(W), leaving only charge-priced first appearances. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- PastWindowShadowCompleteness.A. Every uncharged terminal reserve contribution has a Past(W) shadow ancestor; any first uncovered contribution injects into Charge_N(W) or is absorbed by the declared loss ledger.
- - problems/navier-stokes/theorem-packet.yaml
- - problems/navier-stokes/live-theorem-edge.yaml
- theorem-packet.yaml, theorem-repair.yaml, dependency-discharge.yaml.'
- - once a route packet or broad theorem burden is visible, the lane must immediately
- central_gate: Every promoted theorem result must land in Pack_Q, Part_{N,Q}, or
- ChargeLedgerInjection.A. Close the terminal reserve birth problem by proving a genuinely new uncharged reserve birth creates a zero-cost packet-creation contradiction. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- ReserveCreationCharge.A. For every admissible terminal heat window W and scale N, the positive first-created square reserve increment is inherited from Past(W) up to declared loss or is paid by Charge_N(W), so [R_N(W) - (1 - delta)R_N(Past(W)) - Loss_N(W)]_+ <= Charge_N(W) + o_N(1).
- TerminalReserveFirstAppearanceCharge.A. On every admissible terminal heat window W, every square-reserve contribution not already represented in Past(W) either injects into Charge_N(W) or is absorbed by the declared loss ledger.
- ParabolicEdgeResistance.A. After signed-current localization and boundary pricing, the cycle heat action controls the parabolic edge resistance required by the live frontier.

## Forbidden Imports

- TerminalcmnoexitNogenuinecmexitMinimalBridge.A
- TerminalCMNoExit.A / NoGenuineCMExit.A
- terminalcmnoexit-a-nogenuinecmexit-a
- full-MPP closure
- submission readiness
- global smoothness

## Proof Attempt

1. Name the strongest installed inputs.
2. State the weakest bridge they imply.
3. Audit that the bridge does not import the target conclusion.
4. Use problems/navier-stokes/agent-contract.yaml:55 as source support for Pack/Part bridge support.
5. Use problems/navier-stokes/agent-contract.yaml:53 as source support for source ingredient.

## Circularity Audit

- status: passed
- violations: none

## Solver Verdict

- verdict: new_subprimitive
- certification_level: theorem-creation:generated-subprimitive-needs-sharpening
- rationale: The theorem has been reduced to a smaller noncircular primitive that is not currently installed.
- next subprimitive: TerminalcmnoexitNogenuinecmexitMinimalBridge.A.CoreSubprimitive -- core noncircular subprimitive for TerminalCMNoExit.A / NoGenuineCMExit.A

## Promotion Plan

- promotion_allowed: false
- recommended_next_cell_type: creative-theorem-search
