# WindowwiseReserveCarleson.A theorem creation

## Target

- target obligation: ScaleCriticalTreeCarleson.A
- target label: ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile
- route role: Replace global reserve accounting by a windowwise Carleson budget that cannot jump at the terminal window.
- theorem family: reserve-creation-charge

## Created Theorem

WindowwiseReserveCarleson.A. Replace global reserve accounting by a windowwise Carleson budget that cannot jump at the terminal window. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.

## Inventive Search

- mode: inventive-recursive-theorem-solver
- external_resources_used: false
- external_resource_policy: disabled-by-default; external searches may suggest support but may not certify or promote a theorem
- selected_mechanism: windowwise_carleson_reserve
- candidate_count: 4
- solver_chain_verdict: closed
- selection_reason: This theorem is the right next move because it changes the proof economy: Replace global reserve accounting by a windowwise Carleson budget that cannot jump at the terminal window. It is source-backed by 3 local ingredient(s). It deliberately reduces the remaining work to WindowPackingLeakage.A rather than pretending the frontier is closed. The internal solver also discharged the residual chain through WindowwiseReserveCarleson.A -> WindowPackingLeakage.A.

### Candidate Theorems

- WindowwiseReserveCarleson.A (windowwise_carleson_reserve; score=63)
- ScaleCriticalTreeCarleson.A (contrapositive_exit; score=39)
- ScaleCriticalTreeCarleson.A (compactness_defect_rigidity; score=38)
- ScaleCriticalTreeCarleson.A (monotone_budget; score=41)

### Retrieved Ingredients

- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- residual control
- problems/navier-stokes/agent-contract.yaml:55 -- Part/Field bridge support
- problems/navier-stokes/theorem-packet.yaml -- Part/Field bridge support
- problems/navier-stokes/agent-contract.yaml:53 -- source ingredient

### Recursive Solver Chain

- terminal_verdict: closed
- reason: The recursive theorem solver reached a terminal mechanism with no remaining residual primitive.
- depth 0: WindowwiseReserveCarleson.A via windowwise_carleson_reserve -> WindowPackingLeakage.A
- depth 1: WindowPackingLeakage.A via window_packing_leakage_closure -> closed

## Allowed Inputs

- ParentSquareEmbed.A
- windowwise Carleson packing
- PastWindowReserveSeparation.A. Force every uncharged reserve contribution to have already existed in Past(W), leaving only charge-priced first appearances. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- ChargeLedgerInjection.A. Close the terminal reserve birth problem by proving a genuinely new uncharged reserve birth creates a zero-cost packet-creation contradiction. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- AdjointReserveNoFreeCreation.A. Turn the reserve increment into a dual pairing controlled by weighted adjoint residual mass. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- WeightedAdjRes.A
- terminal heat-window decomposition
- normalized child packet mass
- Define or prove: Reduced the live Navier-Stokes route stack against the Clay whole-space target into exact source-backed ingredients already present on the lane. On the classical side, isolated the mixed-jet system, the exact rung-level can
- Define or prove: For the mixed-jet tower J_ m,alpha  = \partial_t^m \partial_x^\alpha u and differentiated pressure \Pi_ m,alpha , fix s > 3/2. Using the H^s algebra property and the order-1 Calderon-Zygmund bound for the pressure operator,
- Define or prove: Added three theorem-facing reductions on the Navier-Stokes lane. First, weighted-mixed-jet-next-time-envelope-reduction.md proves the exact whole-tower inequality A_next_ s-1 (tau,r) <= nu D_s(tau,r) + C_s A_s(tau,r)^2, red
- Define or prove: Added four theorem-construction reductions. (1) strict-shadow-no-remainder-corollary.md: under the exact strict-shadow identities already present on the lane, ShadowDef(X) and E_sh(X) vanish identically, so the exact Route 
- Define or prove: Added two new theorem-facing reductions on the Clay whole-space target.
- Define or prove: Completed the Hopf/shuffle line as a theorem-program refinement. The correct algebraic fit for the time tower is the divided-power Hopf law on one primitive generator, and for the mixed jet tower it is the shuffle/unshuffle

## Forbidden Imports

- WindowwiseReserveCarleson.A
- ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile
- ScaleCriticalTreeCarleson.A
- full-MPP closure
- submission readiness
- global smoothness
- SquareReserveEvolution.A
- free terminal reserve creation

## Proof Attempt

1. Decompose the scale tree into heat windows.
2. Apply the reserve budget on each window.
3. Sum the leakage through a Carleson packing estimate.
4. Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.
5. Recursive solver step for WindowPackingLeakage.A: Decompose leakage events by maximal terminal heat windows.
6. Recursive solver step for WindowPackingLeakage.A: Use ParentSquareEmbed.A to assign each child packet to its parent square reserve.
7. Recursive solver step for WindowPackingLeakage.A: Use PastWindowReserveSeparation.A and AdjointReserveNoFreeCreation.A to charge non-inherited leakage.
8. Recursive solver step for WindowPackingLeakage.A: Apply finite-overlap of maximal windows so the charged leakage sums across the terminal scale tree.
9. Recursive solver step for WindowPackingLeakage.A: Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.

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
