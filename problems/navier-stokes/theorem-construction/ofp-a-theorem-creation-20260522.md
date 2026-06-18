# OFP.A theorem creation

## Target

- target obligation: OFP.A
- target label: Create the sharp CM branch theorem OFP.A from the live source-wall authority, keeping supplier/readout material quarantined until it lands in Pack, Part, or Field.
- route role: Use CSP.A on the retained same-fluid collar, with the post-LCI source ledger kept explicit, to propagate the one-field package OFP.A without importing CFI.A, endpoint readout, or Field; Member is downstream of the CM witness certificate.
- theorem family: generic-bridge-theorem

## Created Theorem

OFP.A. The collar source-pressure package CSP.A propagates the retained one-field package on the same-fluid interval, with CFI.A, endpoint readout, and Field kept downstream; Member is downstream of the CM witness certificate.

## Inventive Search

- mode: inventive-recursive-theorem-solver
- external_resources_used: false
- external_resource_policy: disabled-by-default; external searches may suggest support but may not certify or promote a theorem
- selected_mechanism: post_lci_ofp_bridge
- candidate_count: 4
- solver_chain_verdict: closed
- selection_reason: This theorem is the right next move because it changes the proof economy: Use CSP.A on the retained same-fluid collar, with the post-LCI source ledger kept explicit, to propagate the one-field package OFP.A without importing CFI.A, endpoint readout, or Field; Member is downstream of the CM witness certificate. It is source-backed by 8 local ingredient(s). The internal solver also discharged the residual chain through OFP.A.

### Candidate Theorems

- OFP.A (post_lci_ofp_bridge; score=138)
- OFP.A (contrapositive_exit; score=52)
- OFP.A (compactness_defect_rigidity; score=55)
- OFP.A (monotone_budget; score=54)

### Retrieved Ingredients

- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- residual control
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- source ingredient
- problems/navier-stokes/agent-contract.yaml:55 -- Pack/Part bridge support
- problems/navier-stokes/agent-contract.yaml:58 -- source ingredient

### Recursive Solver Chain

- terminal_verdict: closed
- reason: The recursive theorem solver reached a terminal mechanism with no remaining residual primitive.
- depth 0: OFP.A via post_lci_ofp_bridge -> closed

## Allowed Inputs

- CSP.A
- FCI.5f
- retained same-fluid collar
- one-field propagation
- ChargeLedgerInjection.A. Close the terminal reserve birth problem by proving a genuinely new uncharged reserve birth creates a zero-cost packet-creation contradiction. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- AdjointReserveNoFreeCreation.A. Turn the reserve increment into a dual pairing controlled by weighted adjoint residual mass. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- PastWindowReserveSeparation.A. Force every uncharged reserve contribution to have already existed in Past(W), leaving only charge-priced first appearances. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- WindowwiseReserveCarleson.A. Replace global reserve accounting by a windowwise Carleson budget that cannot jump at the terminal window. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- - 'Before promotion, run the bridge-license question: does this result enter Pack_Q,
- - once a route packet or broad theorem burden is visible, the lane must record the selected target and route authority
- CSP.A. On the retained same-fluid collar, LCI.A together with the installed post-LCI source ledger FCI.5f supplies the collar source-pressure package; OFP.A, CFI.A, endpoint readout, and Field remain downstream consumers, with Member following only after the CM witness certificate.
- LCI.A. On a retained same-fluid interval with bounded Pack gauge and the ordered ACT.KX receiver package installed, ACT.X-Readout gives ACT.A, ACT.A gives RCF.A through the transported-center residual package, and ULCI.A/DTC.C yields lower-carrier interval integrability; FCI.5f, CSP.A, OFP.A, CFI.A, endpoint readout, and Field remain downstream consumers, with Member following only after the CM witness certificate.
- ScaleCriticalTreeCarleson.A. The installed reserve, charge, adjoint-tail, and windowwise leakage ledgers sum to the Pack_Q scale-critical donor-refill Carleson bound; an unpaid infinite donor-refill tree is therefore a Pack-face exit witness.
- PastWindowShadowCompleteness.A. Every uncharged terminal reserve contribution has a Past(W) shadow ancestor; any first uncovered contribution injects into Charge_N(W) or is absorbed by the declared loss ledger.

## Forbidden Imports

- OFP.A
- Create the sharp CM branch theorem OFP.A from the live source-wall authority, keeping supplier/readout material quarantined until it lands in Pack, Part, or Field.
- full-MPP closure
- submission readiness
- global smoothness

## Proof Attempt

1. Take CSP.A as the collar source-pressure package on the retained interval.
2. Keep FCI.5f visible as the source spend already used to obtain CSP.A.
3. Propagate the one-field package along the same-fluid collar.
4. Leave CFI.A, endpoint readout, and Field as downstream consumers, with Member following only after the CM witness certificate.
5. Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.
6. Use problems/navier-stokes/theorem-packet.yaml as source support for residual control.

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
