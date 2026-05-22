# ScaleCriticalTreeCarleson.A theorem creation

## Target

- target obligation: ScaleCriticalTreeCarleson.A
- target label: ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile
- route role: Close the Pack_Q donor-refill Carleson bound by summing the installed reserve, charge, adjoint-tail, and windowwise leakage controls across the terminal scale tree.
- theorem family: reserve-creation-charge

## Created Theorem

ScaleCriticalTreeCarleson.A. The installed reserve, charge, adjoint-tail, and windowwise leakage ledgers sum to the Pack_Q scale-critical donor-refill Carleson bound; an unpaid infinite donor-refill tree is therefore a Pack-face exit witness.

## Inventive Search

- mode: inventive-recursive-theorem-solver
- external_resources_used: false
- external_resource_policy: disabled-by-default; external searches may suggest support but may not certify or promote a theorem
- selected_mechanism: scale_critical_tree_carleson_pack_landing
- candidate_count: 4
- solver_chain_verdict: closed
- selection_reason: This theorem is the right next move because it changes the proof economy: Close the Pack_Q donor-refill Carleson bound by summing the installed reserve, charge, adjoint-tail, and windowwise leakage controls across the terminal scale tree. It is source-backed by 8 local ingredient(s). The internal solver also discharged the residual chain through ScaleCriticalTreeCarleson.A.

### Candidate Theorems

- ScaleCriticalTreeCarleson.A (scale_critical_tree_carleson_pack_landing; score=55)
- ScaleCriticalTreeCarleson.A (contrapositive_exit; score=39)
- ScaleCriticalTreeCarleson.A (compactness_defect_rigidity; score=38)
- ScaleCriticalTreeCarleson.A (monotone_budget; score=41)

### Retrieved Ingredients

- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- source ingredient
- problems/navier-stokes/theorem-packet.yaml -- residual control
- problems/navier-stokes/agent-contract.yaml:55 -- Pack/Part bridge support
- problems/navier-stokes/agent-contract.yaml:53 -- source ingredient

### Recursive Solver Chain

- terminal_verdict: closed
- reason: The recursive theorem solver reached a terminal mechanism with no remaining residual primitive.
- depth 0: ScaleCriticalTreeCarleson.A via scale_critical_tree_carleson_pack_landing -> closed

## Allowed Inputs

- ReserveCreationCharge.A
- TerminalReserveFirstAppearanceCharge.A
- ChargeLedgerInjection.A
- PastWindowReserveSeparation.A
- AdjointReserveNoFreeCreation.A
- WindowwiseReserveCarleson.A
- PastWindowReserveSeparation.A. Force every uncharged reserve contribution to have already existed in Past(W), leaving only charge-priced first appearances. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- ChargeLedgerInjection.A. Close the terminal reserve birth problem by proving a genuinely new uncharged reserve birth creates a zero-cost packet-creation contradiction. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- WindowwiseReserveCarleson.A. Replace global reserve accounting by a windowwise Carleson budget that cannot jump at the terminal window. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- AdjointReserveNoFreeCreation.A. Turn the reserve increment into a dual pairing controlled by weighted adjoint residual mass. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- ParentSquareEmbed.A
- WeightedAdjRes.A
- terminal heat-window decomposition
- normalized child packet mass

## Forbidden Imports

- ScaleCriticalTreeCarleson.A
- ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile
- full-MPP closure
- submission readiness
- global smoothness
- SquareReserveEvolution.A
- free terminal reserve creation

## Proof Attempt

1. Use WindowwiseReserveCarleson.A to localize reserve increments to terminal heat windows.
2. Use ReserveCreationCharge.A and TerminalReserveFirstAppearanceCharge.A to split inherited reserve from first appearances.
3. Use ChargeLedgerInjection.A, PastWindowReserveSeparation.A, and AdjointReserveNoFreeCreation.A to price every non-inherited contribution.
4. Sum the windowwise finite-overlap estimates to obtain the scale-critical donor-refill Carleson bound required by Pack_Q.
5. Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.

## Circularity Audit

- status: passed
- violations: none

## Solver Verdict

- verdict: conditional
- certification_level: theorem-creation:conditional
- rationale: The proof attempt is noncircular but still needs downstream audit before promotion.

## Promotion Plan

- promotion_allowed: false
- recommended_next_cell_type: dependency-discharge
