# LCI.A theorem creation

## Target

- target obligation: LCI.A
- target label: Create the sharp CM branch theorem LCI.A from the live source-wall authority, keeping supplier/readout material quarantined until it lands in Part or Field.
- route role: Use the retained same-fluid receiver package: ordered ACT.KX and its readout feed ACT.A, then RCF.A, and the uniform lower-carrier/transported-center package supplies the LCI.A lower-carrier interval-integrability conclusion without spending CSP.A, OFP.A, or Field; Member is downstream of the CM witness certificate.
- theorem family: generic-bridge-theorem

## Created Theorem

LCI.A. On a retained same-fluid interval with bounded Pack gauge and the ordered ACT.KX receiver package installed, ACT.X-Readout gives ACT.A, ACT.A gives RCF.A through the transported-center residual package, and ULCI.A/DTC.C yields lower-carrier interval integrability; FCI.5f, CSP.A, OFP.A, CFI.A, endpoint readout, and Field remain downstream consumers, with Member downstream of the CM witness certificate.

## Inventive Search

- mode: inventive-recursive-theorem-solver
- external_resources_used: false
- external_resource_policy: disabled-by-default; external searches may suggest support but may not certify or promote a theorem
- selected_mechanism: lci_receiver_chain_closure
- candidate_count: 4
- solver_chain_verdict: closed
- selection_reason: This theorem is the right next move because it changes the proof economy: Use the retained same-fluid receiver package: ordered ACT.KX and its readout feed ACT.A, then RCF.A, and the uniform lower-carrier/transported-center package supplies the LCI.A lower-carrier interval-integrability conclusion without spending CSP.A, OFP.A, or Field; Member is downstream of the CM witness certificate. It is source-backed by 8 local ingredient(s). The internal solver also discharged the residual chain through LCI.A.

### Candidate Theorems

- LCI.A (lci_receiver_chain_closure; score=94)
- LCI.A (contrapositive_exit; score=84)
- LCI.A (compactness_defect_rigidity; score=87)
- LCI.A (monotone_budget; score=86)

### Retrieved Ingredients

- problems/navier-stokes/theorem-packet.yaml -- source ingredient
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- residual control
- problems/navier-stokes/agent-contract.yaml:55 -- Pack/Part bridge support
- problems/navier-stokes/agent-contract.yaml:60 -- Pack/Part bridge support

### Recursive Solver Chain

- terminal_verdict: closed
- reason: The recursive theorem solver reached a terminal mechanism with no remaining residual primitive.
- depth 0: LCI.A via lci_receiver_chain_closure -> closed

## Allowed Inputs

- ACT.KX ordered receiver package
- ACT.X-Readout
- ACT.A
- RCF.A
- ULCI.A
- DTC.C
- bounded Pack gauge
- retained same-fluid interval
- WindowwiseReserveCarleson.A. Replace global reserve accounting by a windowwise Carleson budget that cannot jump at the terminal window. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- PastWindowReserveSeparation.A. Force every uncharged reserve contribution to have already existed in Past(W), leaving only charge-priced first appearances. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- ScaleCriticalTreeCarleson.A. The installed reserve, charge, adjoint-tail, and windowwise leakage ledgers sum to the Pack_Q scale-critical donor-refill Carleson bound; an unpaid infinite donor-refill tree is therefore a Pack-face exit witness.
- AdjointReserveNoFreeCreation.A. Turn the reserve increment into a dual pairing controlled by weighted adjoint residual mass. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- PastWindowShadowCompleteness.A. Every uncharged terminal reserve contribution has a Past(W) shadow ancestor; any first uncovered contribution injects into Charge_N(W) or is absorbed by the declared loss ledger.
- ChargeLedgerInjection.A. Close the terminal reserve birth problem by proving a genuinely new uncharged reserve birth creates a zero-cost packet-creation contradiction. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.

## Forbidden Imports

- LCI.A
- Create the sharp CM branch theorem LCI.A from the live source-wall authority, keeping supplier/readout material quarantined until it lands in Part or Field.
- full-MPP closure
- submission readiness
- global smoothness

## Proof Attempt

1. Restrict to the retained same-fluid interval with bounded Pack gauge and finite required receiver parameters.
2. Use the ordered ACT.KX package and ACT.X-Readout to obtain ACT.A on the transported-center receiver packet.
3. Use ACT.A and the transported-center residual package to obtain RCF.A.
4. Apply the uniform lower-carrier closure ULCI.A/DTC.C package to conclude the required lower-carrier interval integrability.
5. Keep FCI.5f, CSP.A, OFP.A, CFI.A, endpoint readout, and Field as downstream consumers, with Member following only after the CM witness certificate rather than proof inputs.
6. Use problems/navier-stokes/theorem-packet.yaml as source support for source ingredient.
7. Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.

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
