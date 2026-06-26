# GlobalSamePacketFullHistoryStorageLowerBound.A theorem creation

## Target

- target obligation: GlobalSamePacketFullGoodLambdaTail.A.ContractionSubprimitive
- target label: good-lambda contraction for the global same-material no-free-upward-transfer tail
- route role: Construct the global same-material history functional whose lower bound prevents high-ratio one-way upward transfer and yields the same good-lambda contraction.
- theorem family: full-same-material-action

## Created Theorem

GlobalSamePacketFullHistoryStorageLowerBound.A. Construct the global same-material history functional whose lower bound prevents high-ratio one-way upward transfer and yields the same good-lambda contraction. This supplies the exact noncircular bridge needed for good-lambda contraction for the global same-material no-free-upward-transfer tail.

## Inventive Search

- mode: inventive-right-theorem-selection
- external_resources_used: false
- external_resource_policy: disabled-by-default; external searches may suggest support but may not certify or promote a theorem
- selected_mechanism: full_same_material_history_storage_lower_bound
- candidate_count: 2
- solver_chain_verdict: open
- selection_reason: This theorem is the right next move because it changes the proof economy: Construct the global same-material history functional whose lower bound prevents high-ratio one-way upward transfer and yields the same good-lambda contraction. It deliberately reduces the remaining work to GlobalSamePacketFullHistoryStorageLowerBound.A.CoreSubprimitive rather than pretending the frontier is closed.

### Candidate Theorems

- GlobalSamePacketFullCrossBandTransferDecay.A (full_same_material_cross_band_transfer_decay; score=124)
- GlobalSamePacketFullHistoryStorageLowerBound.A (full_same_material_history_storage_lower_bound; score=126)

### Retrieved Ingredients

- none

### Recursive Solver Chain

- terminal_verdict: open
- reason: No internal solver mechanism is installed for GlobalSamePacketFullHistoryStorageLowerBound.A.CoreSubprimitive.
- depth 0: GlobalSamePacketFullHistoryStorageLowerBound.A via full_same_material_history_storage_lower_bound -> GlobalSamePacketFullHistoryStorageLowerBound.A.CoreSubprimitive

## Allowed Inputs


## Forbidden Imports

- GlobalSamePacketFullHistoryStorageLowerBound.A
- good-lambda contraction for the global same-material no-free-upward-transfer tail
- GlobalSamePacketFullGoodLambdaTail.A.ContractionSubprimitive
- full-MPP closure
- submission readiness
- global smoothness

## Proof Attempt

1. Use a global original-history functional, not a local current-state primitive.
2. Encode the no-free-upward-transfer effect as the lower-bound mechanism.
3. Derive the contraction N_{L+1} <= theta N_L + B_L from the storage inequality.
4. Reject storages whose paying direction is bounded below only after assuming finite full same-material action.

## Circularity Audit

- status: passed
- violations: none

## Solver Verdict

- verdict: new_subprimitive
- certification_level: theorem-creation:new-subprimitive
- rationale: The theorem has been reduced to a smaller noncircular primitive that is not currently installed.
- next subprimitive: GlobalSamePacketFullHistoryStorageLowerBound.A.CoreSubprimitive -- core original-history lower-bound construction for the good-lambda contraction

## Promotion Plan

- promotion_allowed: false
- recommended_next_cell_type: theorem-creation
