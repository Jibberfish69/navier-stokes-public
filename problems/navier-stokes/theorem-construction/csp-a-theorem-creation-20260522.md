# CSP.A theorem creation

## Target

- target obligation: CSP.A
- target label: Create the sharp CM branch theorem CSP.A from the live source-wall authority, keeping supplier/readout material quarantined until it lands in Part or Field.
- route role: Use the installed post-LCI source ledger FCI.5f together with LCI.A on the retained same-fluid collar to obtain the collar source-pressure package CSP.A; keep OFP.A, CFI.A, endpoint readout, and Field downstream, with Member following only after the CM witness certificate.
- theorem family: generic-bridge-theorem

## Created Theorem

CSP.A. On the retained same-fluid collar, LCI.A together with the installed post-LCI source ledger FCI.5f supplies the collar source-pressure package; OFP.A, CFI.A, endpoint readout, and Field remain downstream consumers, with Member following only after the CM witness certificate.

## Inventive Search

- mode: inventive-recursive-theorem-solver
- external_resources_used: false
- external_resource_policy: disabled-by-default; external searches may suggest support but may not certify or promote a theorem
- selected_mechanism: post_lci_csp_bridge
- candidate_count: 4
- solver_chain_verdict: closed
- selection_reason: This theorem is the right next move because it changes the proof economy: Use the installed post-LCI source ledger FCI.5f together with LCI.A on the retained same-fluid collar to obtain the collar source-pressure package CSP.A; keep OFP.A, CFI.A, endpoint readout, and Field downstream, with Member following only after the CM witness certificate. It is source-backed by 8 local ingredient(s). The internal solver also discharged the residual chain through CSP.A.

### Candidate Theorems

- CSP.A (post_lci_csp_bridge; score=152)
- CSP.A (contrapositive_exit; score=52)
- CSP.A (compactness_defect_rigidity; score=55)
- CSP.A (monotone_budget; score=54)

### Retrieved Ingredients

- problems/navier-stokes/theorem-packet.yaml -- residual control
- problems/navier-stokes/theorem-packet.yaml -- source ingredient
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/agent-contract.yaml:55 -- Pack/Part bridge support
- problems/navier-stokes/agent-contract.yaml:60 -- Pack/Part bridge support

### Recursive Solver Chain

- terminal_verdict: closed
- reason: The recursive theorem solver reached a terminal mechanism with no remaining residual primitive.
- depth 0: CSP.A via post_lci_csp_bridge -> closed

## Allowed Inputs

- LCI.A
- FCI.5f
- retained same-fluid collar
- post-LCI source ledger
- AdjointReserveNoFreeCreation.A. Turn the reserve increment into a dual pairing controlled by weighted adjoint residual mass. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- WindowwiseReserveCarleson.A. Replace global reserve accounting by a windowwise Carleson budget that cannot jump at the terminal window. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- PastWindowReserveSeparation.A. Force every uncharged reserve contribution to have already existed in Past(W), leaving only charge-priced first appearances. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- ChargeLedgerInjection.A. Close the terminal reserve birth problem by proving a genuinely new uncharged reserve birth creates a zero-cost packet-creation contradiction. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- - 'Before promotion, run the bridge-license question: does this result enter Pack_Q,
- - If generated surfaces disagree with live-theorem-edge.yaml or source-frontier.yaml,
- LCI.A. On a retained same-fluid interval with bounded Pack gauge and the ordered ACT.KX receiver package installed, ACT.X-Readout gives ACT.A, ACT.A gives RCF.A through the transported-center residual package, and ULCI.A/DTC.C yields lower-carrier interval integrability; FCI.5f, CSP.A, OFP.A, CFI.A, endpoint readout, and Field remain downstream consumers, with Member following only after the CM witness certificate.
- ScaleCriticalTreeCarleson.A. The installed reserve, charge, adjoint-tail, and windowwise leakage ledgers sum to the Pack_Q scale-critical donor-refill Carleson bound; an unpaid infinite donor-refill tree is therefore a Pack-face exit witness.
- PastWindowShadowCompleteness.A. Every uncharged terminal reserve contribution has a Past(W) shadow ancestor; any first uncovered contribution injects into Charge_N(W) or is absorbed by the declared loss ledger.
- ReserveCreationCharge.A. For every admissible terminal heat window W and scale N, the positive first-created square reserve increment is inherited from Past(W) up to declared loss or is paid by Charge_N(W), so [R_N(W) - (1 - delta)R_N(Past(W)) - Loss_N(W)]_+ <= Charge_N(W) + o_N(1).

## Forbidden Imports

- CSP.A
- Create the sharp CM branch theorem CSP.A from the live source-wall authority, keeping supplier/readout material quarantined until it lands in Part or Field.
- full-MPP closure
- submission readiness
- global smoothness

## Proof Attempt

1. Start from the retained same-fluid LCI.A lower-carrier output.
2. Use the post-LCI source ledger FCI.5f, supplied by the frozen source-side branch, as the only source spend.
3. Build the collar source-pressure package on the same retained interval without importing OFP.A, CFI.A, Field, endpoint readout, or Member.
4. Record CSP.A as supplier support for the one-field and endpoint spine, not as CM authority by itself.
5. Use problems/navier-stokes/theorem-packet.yaml as source support for residual control.
6. Use problems/navier-stokes/theorem-packet.yaml as source support for source ingredient.

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
