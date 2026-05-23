# BASACTerminalSourceAntiConcentration.A theorem creation

## Target

- target obligation: BASACTerminalSourceAntiConcentration.A
- target label: forward positive-supplier theorem excluding terminal zero-thickness native source concentration in the produced B_ASAC equality class
- route role: Find the missing local bridge that is strictly weaker than the target but strong enough to feed dependency-discharge.
- theorem family: generic-bridge-theorem

## Created Theorem

BASACTerminalSourceAntiConcentration.A. Find the missing local bridge that is strictly weaker than the target but strong enough to feed dependency-discharge. This supplies the exact noncircular bridge needed for forward positive-supplier theorem excluding terminal zero-thickness native source concentration in the produced B_ASAC equality class.

## Inventive Search

- mode: inventive-right-theorem-selection
- external_resources_used: false
- external_resource_policy: disabled-by-default; external searches may suggest support but may not certify or promote a theorem
- selected_mechanism: minimal_bridge
- candidate_count: 4
- solver_chain_verdict: open
- selection_reason: This theorem is the right next move because it changes the proof economy: Find the missing local bridge that is strictly weaker than the target but strong enough to feed dependency-discharge. It is source-backed by 8 local ingredient(s). It deliberately reduces the remaining work to BASACTerminalSourceAntiConcentration.A.CoreSubprimitive rather than pretending the frontier is closed.

### Candidate Theorems

- BASACTerminalSourceAntiConcentration.A (minimal_bridge; score=74)
- BASACTerminalSourceAntiConcentration.A (contrapositive_exit; score=68)
- BASACTerminalSourceAntiConcentration.A (compactness_defect_rigidity; score=71)
- BASACTerminalSourceAntiConcentration.A (monotone_budget; score=66)

### Retrieved Ingredients

- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- source ingredient
- problems/navier-stokes/theorem-packet.yaml -- residual control
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/agent-contract.yaml:145 -- installed dynamic support
- problems/navier-stokes/agent-contract.yaml:148 -- source ingredient

### Recursive Solver Chain

- terminal_verdict: open
- reason: No internal solver mechanism is installed for BASACTerminalSourceAntiConcentration.A.CoreSubprimitive.
- depth 0: BASACTerminalSourceAntiConcentration.A via minimal_bridge -> BASACTerminalSourceAntiConcentration.A.CoreSubprimitive

## Allowed Inputs

- CFI.A. OFP.A together with CFI.B1 and CFI.B2 yields the retained conditional field-integrability package, while End_NS, Field readout, and Member remain downstream consequences.
- OFP.A. The collar source-pressure package CSP.A propagates the retained one-field package on the same-fluid interval, with CFI.A, endpoint readout, Field, and Member kept downstream.
- CSP.A. On the retained same-fluid collar, LCI.A together with the installed post-LCI source ledger FCI.5f supplies the collar source-pressure package; OFP.A, CFI.A, endpoint readout, Field, and Member remain downstream consumers.
- LCI.A. On a retained same-fluid interval with bounded Pack gauge and the ordered ACT.KX receiver package installed, ACT.X-Readout gives ACT.A, ACT.A gives RCF.A through the transported-center residual package, and ULCI.A/DTC.C yields lower-carrier interval integrability; FCI.5f, CSP.A, OFP.A, CFI.A, endpoint readout, Field, and Member remain downstream consumers.
- ScaleCriticalTreeCarleson.A. The installed reserve, charge, adjoint-tail, and windowwise leakage ledgers sum to the Pack_Q scale-critical donor-refill Carleson bound; an unpaid infinite donor-refill tree is therefore a Pack-face exit witness.
- ChargeLedgerInjection.A. Close the terminal reserve birth problem by proving a genuinely new uncharged reserve birth creates a zero-cost packet-creation contradiction. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- WindowwiseReserveCarleson.A. Replace global reserve accounting by a windowwise Carleson budget that cannot jump at the terminal window. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- AdjointReserveNoFreeCreation.A. Turn the reserve increment into a dual pairing controlled by weighted adjoint residual mass. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- PastWindowReserveSeparation.A. Force every uncharged reserve contribution to have already existed in Past(W), leaving only charge-priced first appearances. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- theorem-packet.yaml, theorem-repair.yaml, dependency-discharge.yaml.'
- PastWindowShadowCompleteness.A. Every uncharged terminal reserve contribution has a Past(W) shadow ancestor; any first uncovered contribution injects into Charge_N(W) or is absorbed by the declared loss ledger.
- ReserveCreationCharge.A. For every admissible terminal heat window W and scale N, the positive first-created square reserve increment is inherited from Past(W) up to declared loss or is paid by Charge_N(W), so [R_N(W) - (1 - delta)R_N(Past(W)) - Loss_N(W)]_+ <= Charge_N(W) + o_N(1).
- TerminalReserveFirstAppearanceCharge.A. On every admissible terminal heat window W, every square-reserve contribution not already represented in Past(W) either injects into Charge_N(W) or is absorbed by the declared loss ledger.

## Forbidden Imports

- BASACTerminalSourceAntiConcentration.A
- forward positive-supplier theorem excluding terminal zero-thickness native source concentration in the produced B_ASAC equality class
- full-MPP closure
- submission readiness
- global smoothness

## Proof Attempt

1. Name the strongest installed inputs.
2. State the weakest bridge they imply.
3. Audit that the bridge does not import the target conclusion.
4. Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.
5. Use problems/navier-stokes/theorem-packet.yaml as source support for source ingredient.

## Circularity Audit

- status: passed
- violations: none

## Solver Verdict

- verdict: new_subprimitive
- certification_level: theorem-creation:generated-subprimitive-needs-sharpening
- rationale: The theorem has been reduced to a smaller noncircular primitive that is not currently installed.
- next subprimitive: BASACTerminalSourceAntiConcentration.A.CoreSubprimitive -- core noncircular subprimitive for forward positive-supplier theorem excluding terminal zero-thickness native source concentration in the produced B_ASAC equality class

## Promotion Plan

- promotion_allowed: false
- recommended_next_cell_type: creative-theorem-search
