# PositiveRemainderDepletion.A theorem creation

## Target

- target obligation: PositiveRemainderDepletion.A
- target label: packetwise positive source remainder depletion on the localized pre-Cauchy source carrier
- route role: The current source-supplier audit keeps PositiveRemainderDepletion.A conditional on SourceWeightedTerminalAngularDepletion.A: the selected terminal positive source carrier must spend drain, legal parent-edge loss, or angular/source-weighted depletion rather than persist as unpaid positive remainder.
- theorem family: generic-bridge-theorem

## Created Theorem

PositiveRemainderDepletion.A. On each localized pre-Cauchy source packet, the positive remainder is bounded by a strict fraction of drain plus legal parent-edge loss once SourceWeightedTerminalAngularDepletion.A controls the selected terminal angular source carrier.

## Inventive Search

- mode: inventive-right-theorem-selection
- external_resources_used: false
- external_resource_policy: disabled-by-default; external searches may suggest support but may not certify or promote a theorem
- selected_mechanism: positive_remainder_depletion_to_source_weighted_angular
- candidate_count: 4
- solver_chain_verdict: open
- selection_reason: This theorem is the right next move because it changes the proof economy: The current source-supplier audit keeps PositiveRemainderDepletion.A conditional on SourceWeightedTerminalAngularDepletion.A: the selected terminal positive source carrier must spend drain, legal parent-edge loss, or angular/source-weighted depletion rather than persist as unpaid positive remainder. It is source-backed by 8 local ingredient(s). It deliberately reduces the remaining work to SourceWeightedTerminalAngularDepletion.A rather than pretending the frontier is closed.

### Candidate Theorems

- PositiveRemainderDepletion.A (positive_remainder_depletion_to_source_weighted_angular; score=140)
- PositiveRemainderDepletion.A (contrapositive_exit; score=68)
- PositiveRemainderDepletion.A (compactness_defect_rigidity; score=71)
- PositiveRemainderDepletion.A (monotone_budget; score=70)

### Retrieved Ingredients

- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- source ingredient
- problems/navier-stokes/theorem-packet.yaml -- residual control
- problems/navier-stokes/agent-contract.yaml:145 -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support

### Recursive Solver Chain

- terminal_verdict: open
- reason: No internal solver mechanism is installed for SourceWeightedTerminalAngularDepletion.A.
- depth 0: PositiveRemainderDepletion.A via positive_remainder_depletion_to_source_weighted_angular -> SourceWeightedTerminalAngularDepletion.A

## Allowed Inputs

- SourceWeightedTerminalAngularDepletion.A
- positive pre-Cauchy source remainder
- drain
- legal parent-edge loss
- selected active packet
- PastWindowReserveSeparation.A. Force every uncharged reserve contribution to have already existed in Past(W), leaving only charge-priced first appearances. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- ChargeLedgerInjection.A. Close the terminal reserve birth problem by proving a genuinely new uncharged reserve birth creates a zero-cost packet-creation contradiction. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- WindowwiseReserveCarleson.A. Replace global reserve accounting by a windowwise Carleson budget that cannot jump at the terminal window. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- AdjointReserveNoFreeCreation.A. Turn the reserve increment into a dual pairing controlled by weighted adjoint residual mass. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- theorem-packet.yaml, theorem-repair.yaml, dependency-discharge.yaml.'
- CFI.A. OFP.A together with CFI.B1 and CFI.B2 yields the retained conditional field-integrability package, while End_NS, Field readout, and Member remain downstream consequences.
- OFP.A. The collar source-pressure package CSP.A propagates the retained one-field package on the same-fluid interval, with CFI.A, endpoint readout, and Field kept downstream, with Member following only after the CM witness certificate.
- CSP.A. On the retained same-fluid collar, LCI.A together with the installed post-LCI source ledger FCI.5f supplies the collar source-pressure package; OFP.A, CFI.A, endpoint readout, and Field remain downstream consumers, with Member following only after the CM witness certificate.
- LCI.A. On a retained same-fluid interval with bounded Pack gauge and the ordered ACT.KX receiver package installed, ACT.X-Readout gives ACT.A, ACT.A gives RCF.A through the transported-center residual package, and ULCI.A/DTC.C yields lower-carrier interval integrability; FCI.5f, CSP.A, OFP.A, CFI.A, endpoint readout, and Field remain downstream consumers, with Member following only after the CM witness certificate.

## Forbidden Imports

- PositiveRemainderDepletion.A
- packetwise positive source remainder depletion on the localized pre-Cauchy source carrier
- full-MPP closure
- submission readiness
- global smoothness

## Proof Attempt

1. Decompose the pre-Cauchy source into time derivative, drain, legal divergence/loss, and positive remainder.
2. Use finite donor-balance telescoping for the derivative and legal losses.
3. Reduce the positive remainder to source-weighted terminal angular depletion on the selected active packet.
4. Keep this as positive Pack/source-supplier work; do not promote it directly into Part or Field, and keep Member downstream of the CM witness certificate.
5. Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.

## Circularity Audit

- status: passed
- violations: none

## Solver Verdict

- verdict: new_subprimitive
- certification_level: theorem-creation:new-subprimitive
- rationale: The theorem has been reduced to a smaller noncircular primitive that is not currently installed.
- next subprimitive: SourceWeightedTerminalAngularDepletion.A -- source-weighted terminal angular depletion for the selected positive source carrier

## Promotion Plan

- promotion_allowed: false
- recommended_next_cell_type: theorem-creation
