# AdjointReserveNoFreeCreation.A theorem creation

## Target

- target obligation: ScaleCriticalTreeCarleson.A
- target label: ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile
- route role: Turn the reserve increment into a dual pairing controlled by weighted adjoint residual mass.
- theorem family: reserve-creation-charge

## Created Theorem

AdjointReserveNoFreeCreation.A. Turn the reserve increment into a dual pairing controlled by weighted adjoint residual mass. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.

## Inventive Search

- mode: inventive-right-theorem-selection
- external_resources_used: false
- external_resource_policy: disabled-by-default; external searches may suggest support but may not certify or promote a theorem
- selected_mechanism: adjoint_residual_dualization
- candidate_count: 5
- solver_chain_verdict: open
- selection_reason: This theorem is the right next move because it changes the proof economy: Turn the reserve increment into a dual pairing controlled by weighted adjoint residual mass. It is source-backed by 7 local ingredient(s). It deliberately reduces the remaining work to AdjointTailSmallness.A rather than pretending the frontier is closed.

### Candidate Theorems

- AdjointReserveNoFreeCreation.A (adjoint_residual_dualization; score=67)
- WindowwiseReserveCarleson.A (windowwise_carleson_reserve; score=63)
- ScaleCriticalTreeCarleson.A (contrapositive_exit; score=39)
- ScaleCriticalTreeCarleson.A (compactness_defect_rigidity; score=38)
- ScaleCriticalTreeCarleson.A (monotone_budget; score=41)

### Retrieved Ingredients

- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/agent-contract.yaml:55 -- Pack/Part bridge support
- problems/navier-stokes/theorem-packet.yaml -- Pack/Part bridge support
- problems/navier-stokes/agent-contract.yaml:53 -- source ingredient
- problems/navier-stokes/agent-contract.yaml:145 -- installed dynamic support

### Recursive Solver Chain

- terminal_verdict: open
- reason: No internal solver mechanism is installed for AdjointTailSmallness.A.
- depth 0: AdjointReserveNoFreeCreation.A via adjoint_residual_dualization -> AdjointTailSmallness.A

## Allowed Inputs

- WeightedAdjRes.A
- adjoint packet normalization
- PastWindowReserveSeparation.A. Force every uncharged reserve contribution to have already existed in Past(W), leaving only charge-priced first appearances. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- ChargeLedgerInjection.A. Close the terminal reserve birth problem by proving a genuinely new uncharged reserve birth creates a zero-cost packet-creation contradiction. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- - problems/navier-stokes/theorem-packet.yaml
- Define or prove: Added three theorem-facing reductions on the Navier-Stokes lane. First, weighted-mixed-jet-next-time-envelope-reduction.md proves the exact whole-tower inequality A_next_ s-1 (tau,r) <= nu D_s(tau,r) + C_s A_s(tau,r)^2, red
- theorem-packet.yaml, theorem-repair.yaml, dependency-discharge.yaml.'
- - once a route packet or broad theorem burden is visible, the lane must immediately
- ReserveCreationCharge.A. For every admissible terminal heat window W and scale N, the positive first-created square reserve increment is inherited from Past(W) up to declared loss or is paid by Charge_N(W), so [R_N(W) - (1 - delta)R_N(Past(W)) - Loss_N(W)]_+ <= Charge_N(W) + o_N(1).
- ParentSquareEmbed.A
- terminal heat-window decomposition
- normalized child packet mass
- Define or prove: Reduced the live Navier-Stokes route stack against the Clay whole-space target into exact source-backed ingredients already present on the lane. On the classical side, isolated the mixed-jet system, the exact rung-level can
- Define or prove: For the mixed-jet tower J_ m,alpha  = \partial_t^m \partial_x^\alpha u and differentiated pressure \Pi_ m,alpha , fix s > 3/2. Using the H^s algebra property and the order-1 Calderon-Zygmund bound for the pressure operator,

## Forbidden Imports

- AdjointReserveNoFreeCreation.A
- ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile
- ScaleCriticalTreeCarleson.A
- full-MPP closure
- submission readiness
- global smoothness
- SquareReserveEvolution.A
- free terminal reserve creation

## Proof Attempt

1. Write the reserve increment as a dual test.
2. Move residual creation onto the weighted adjoint packet.
3. Bound the unmatched tail by a small loss term.
4. Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.

## Circularity Audit

- status: passed
- violations: none

## Solver Verdict

- verdict: new_subprimitive
- certification_level: theorem-creation:new-subprimitive
- rationale: The theorem has been reduced to a smaller noncircular primitive that is not currently installed.
- next subprimitive: AdjointTailSmallness.A -- unmatched adjoint residual tails are small on terminal windows

## Promotion Plan

- promotion_allowed: false
- recommended_next_cell_type: theorem-creation
