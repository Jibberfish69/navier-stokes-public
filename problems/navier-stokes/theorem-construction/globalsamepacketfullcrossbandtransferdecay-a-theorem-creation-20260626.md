# GlobalSamePacketFullCrossBandTransferDecay.A theorem creation

## Target

- target obligation: GlobalSamePacketFullGoodLambdaTail.A.ContractionSubprimitive
- target label: good-lambda contraction for the global same-material no-free-upward-transfer tail
- route role: Prove the original transported smooth history cannot move one-way full same-material action from ratio band L to L+1 with coefficient theta >= 1/2; the high-ratio transfer either descends into the previous band with contraction theta < 1/2 or pays a weighted-summable entrance/legal term.
- theorem family: full-same-material-action

## Created Theorem

GlobalSamePacketFullCrossBandTransferDecay.A. Prove the original transported smooth history cannot move one-way full same-material action from ratio band L to L+1 with coefficient theta >= 1/2; the high-ratio transfer either descends into the previous band with contraction theta < 1/2 or pays a weighted-summable entrance/legal term. This supplies the exact noncircular bridge needed for good-lambda contraction for the global same-material no-free-upward-transfer tail.

## Inventive Search

- mode: inventive-right-theorem-selection
- external_resources_used: false
- external_resource_policy: disabled-by-default; external searches may suggest support but may not certify or promote a theorem
- selected_mechanism: full_same_material_cross_band_transfer_decay
- candidate_count: 1
- solver_chain_verdict: open
- selection_reason: This theorem is the right next move because it changes the proof economy: Prove the original transported smooth history cannot move one-way full same-material action from ratio band L to L+1 with coefficient theta >= 1/2; the high-ratio transfer either descends into the previous band with contraction theta < 1/2 or pays a weighted-summable entrance/legal term. It deliberately reduces the remaining work to GlobalSamePacketFullCrossBandTransferDecay.A.CoreSubprimitive rather than pretending the frontier is closed.

### Candidate Theorems

- GlobalSamePacketFullCrossBandTransferDecay.A (full_same_material_cross_band_transfer_decay; score=124)

### Retrieved Ingredients

- none

### Recursive Solver Chain

- terminal_verdict: open
- reason: No internal solver mechanism is installed for GlobalSamePacketFullCrossBandTransferDecay.A.CoreSubprimitive.
- depth 0: GlobalSamePacketFullCrossBandTransferDecay.A via full_same_material_cross_band_transfer_decay -> GlobalSamePacketFullCrossBandTransferDecay.A.CoreSubprimitive

## Allowed Inputs


## Forbidden Imports

- GlobalSamePacketFullCrossBandTransferDecay.A
- good-lambda contraction for the global same-material no-free-upward-transfer tail
- GlobalSamePacketFullGoodLambdaTail.A.ContractionSubprimitive
- full-MPP closure
- submission readiness
- global smoothness

## Proof Attempt

1. Work directly with the ratio bands E_{j,l} for rho_j=Theta_j^{mat}/2^{2j}.
2. Use the original transported smooth history and the full pressure-viscosity-incompressibility-velocity material coupling.
3. Show high-ratio one-way transfer has cross-band decay strong enough to give N_{L+1} <= theta N_L + B_L with 2theta<1.
4. Keep local finite-depth examples, scalar donor models, and stale proxy readouts as insufficiency tests rather than proof inputs.

## Circularity Audit

- status: passed
- violations: none

## Solver Verdict

- verdict: new_subprimitive
- certification_level: theorem-creation:new-subprimitive
- rationale: The theorem has been reduced to a smaller noncircular primitive that is not currently installed.
- next subprimitive: GlobalSamePacketFullCrossBandTransferDecay.A.CoreSubprimitive -- core original-history cross-band transfer estimate giving the good-lambda contraction

## Promotion Plan

- promotion_allowed: false
- recommended_next_cell_type: theorem-creation
