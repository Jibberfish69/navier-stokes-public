# PastWindowReserveSeparation.A theorem creation

## Target

- target obligation: ScaleCriticalTreeCarleson.A
- target label: ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile
- route role: Force every uncharged reserve contribution to have already existed in Past(W), leaving only charge-priced first appearances.
- theorem family: reserve-creation-charge

## Created Theorem

PastWindowReserveSeparation.A. Force every uncharged reserve contribution to have already existed in Past(W), leaving only charge-priced first appearances. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.

## Promotion Boundary

This is reserve-branch scaffolding only. It does not prove
`ScaleCriticalTreeCarleson.A`, `SourcePulseExclusion.A`, Full Clay, global
smoothness, or submission readiness. It cannot be spent downstream until
`promotion_allowed: true` after dependency-discharge. The source-wall obstruction
remains `NativeSourceAC.A` / `mu_*^sing=0`, equivalently
`HeightFluxControl.A` on the direct reserve branch or
`BASACTerminalSourceAntiConcentration.A` on the B_ASAC branch.

## Inventive Search

- mode: inventive-recursive-theorem-solver
- external_resources_used: false
- external_resource_policy: disabled-by-default; external searches may suggest support but may not certify or promote a theorem
- selected_mechanism: past_window_exclusion
- candidate_count: 6
- solver_chain_verdict: closed inside the local recursive solver only; promotion verdict below remains conditional
- selection_reason: This theorem is the right next move because it changes the proof economy: Force every uncharged reserve contribution to have already existed in Past(W), leaving only charge-priced first appearances. It is source-backed by 7 local ingredient(s). It deliberately reduces the remaining work to PastWindowShadowCompleteness.A rather than pretending the frontier is closed. The internal solver also discharged the residual chain through PastWindowReserveSeparation.A -> PastWindowShadowCompleteness.A.

### Candidate Theorems

- PastWindowReserveSeparation.A (past_window_exclusion; score=76)
- AdjointReserveNoFreeCreation.A (adjoint_residual_dualization; score=67)
- WindowwiseReserveCarleson.A (windowwise_carleson_reserve; score=62)
- ScaleCriticalTreeCarleson.A (contrapositive_exit; score=39)
- ScaleCriticalTreeCarleson.A (compactness_defect_rigidity; score=38)
- ScaleCriticalTreeCarleson.A (monotone_budget; score=41)

### Retrieved Ingredients

- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/agent-contract.yaml:55 -- Part/Field bridge support
- problems/navier-stokes/theorem-packet.yaml -- Part/Field bridge support
- problems/navier-stokes/agent-contract.yaml:53 -- source ingredient
- problems/navier-stokes/agent-contract.yaml:145 -- installed dynamic support
- problems/navier-stokes/agent-contract.yaml:99 -- retained-face amplitude support

### Recursive Solver Chain

- terminal_verdict: closed inside the local recursive solver only
- reason: The recursive theorem solver reached a terminal mechanism with no remaining residual primitive.
- depth 0: PastWindowReserveSeparation.A via past_window_exclusion -> PastWindowShadowCompleteness.A
- depth 1: PastWindowShadowCompleteness.A via past_window_shadow_completeness_closure -> closed

## Allowed Inputs

- ParentSquareEmbed.A
- Past(W) reserve shadow
- ChargeLedgerInjection.A. Close the terminal reserve birth problem by proving a genuinely new uncharged reserve birth creates a zero-cost packet-creation contradiction. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- Define or prove: Added three theorem-facing reductions on the Navier-Stokes lane. First, weighted-mixed-jet-next-time-envelope-reduction.md proves the exact whole-tower inequality A_next_ s-1 (tau,r) <= nu D_s(tau,r) + C_s A_s(tau,r)^2, red
- exhaust the exact local theorem packets it implies, publish the resulting local
- central_gate: Every promoted theorem result must land in Pack_Q, Part_{N,Q}, or
- - 'Read direct live surfaces first: live-theorem-edge.yaml, source-frontier.yaml,
- mcp_response_rule: Every Navier-Stokes MCP frontier, leading-edge, or theorem-target
- default_rewrite: 'Compile every Navier-Stokes theorem/frontier/next-action/promotion
- WeightedAdjRes.A
- terminal heat-window decomposition
- normalized child packet mass
- Define or prove: Reduced the live Navier-Stokes route stack against the Clay whole-space target into exact source-backed ingredients already present on the lane. On the classical side, isolated the mixed-jet system, the exact rung-level can
- Define or prove: For the mixed-jet tower J_ m,alpha  = \partial_t^m \partial_x^\alpha u and differentiated pressure \Pi_ m,alpha , fix s > 3/2. Using the H^s algebra property and the order-1 Calderon-Zygmund bound for the pressure operator,

## Forbidden Imports

- PastWindowReserveSeparation.A
- ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile
- ScaleCriticalTreeCarleson.A
- full-MPP closure
- submission readiness
- global smoothness
- SquareReserveEvolution.A
- free terminal reserve creation

## Proof Attempt

1. Construct the Past(W) shadow reserve.
2. Compare terminal packets to their past parent cloud.
3. Show the unmatched terminal cloud is exactly the charge-bearing piece.
4. Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.
5. Use problems/navier-stokes/theorem-packet.yaml as source support for Part/Field bridge support.
6. Recursive solver step for PastWindowShadowCompleteness.A: Assume an uncharged terminal reserve packet has no Past(W) shadow.
7. Recursive solver step for PastWindowShadowCompleteness.A: Choose the first uncovered scale-time ancestor in the terminal tree.
8. Recursive solver step for PastWindowShadowCompleteness.A: Apply ChargeLedgerInjection.A to that first uncovered birth.
9. Recursive solver step for PastWindowShadowCompleteness.A: Contradict the packet being both uncharged and outside the declared loss ledger.
10. Recursive solver step for PastWindowShadowCompleteness.A: Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.
11. Recursive solver step for PastWindowShadowCompleteness.A: Use problems/navier-stokes/agent-contract.yaml:55 as source support for Part/Field bridge support.

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
