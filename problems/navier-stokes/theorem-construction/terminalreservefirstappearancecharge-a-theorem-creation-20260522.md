# TerminalReserveFirstAppearanceCharge.A theorem creation

## Target

- target obligation: ScaleCriticalTreeCarleson.A
- target label: ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile
- route role: Turn the residual first-appearance burden into a birth-time localization law: terminal reserve born after Past(W) must inject into the charge ledger.
- theorem family: reserve-creation-charge

## Created Theorem

TerminalReserveFirstAppearanceCharge.A. On every admissible terminal heat window W, every square-reserve contribution not already represented in Past(W) either injects into Charge_N(W) or is absorbed by the declared loss ledger.

## Inventive Search

- mode: inventive-recursive-theorem-solver
- external_resources_used: false
- external_resource_policy: disabled-by-default; external searches may suggest support but may not certify or promote a theorem
- selected_mechanism: terminal_birth_charge_injection
- candidate_count: 6
- solver_chain_verdict: closed
- selection_reason: This theorem is the right next move because it changes the proof economy: Turn the residual first-appearance burden into a birth-time localization law: terminal reserve born after Past(W) must inject into the charge ledger. It is source-backed by 8 local ingredient(s). It deliberately reduces the remaining work to ChargeLedgerInjection.A rather than pretending the frontier is closed. The internal solver also discharged the residual chain through TerminalReserveFirstAppearanceCharge.A -> ChargeLedgerInjection.A.

### Candidate Theorems

- TerminalReserveFirstAppearanceCharge.A (terminal_birth_charge_injection; score=92)
- PastWindowReserveSeparation.A (past_window_exclusion; score=76)
- AdjointReserveNoFreeCreation.A (adjoint_residual_dualization; score=67)
- WindowwiseReserveCarleson.A (windowwise_carleson_reserve; score=40)
- ScaleCriticalTreeCarleson.A (contrapositive_exit; score=39)
- ScaleCriticalTreeCarleson.A (compactness_defect_rigidity; score=38)

### Retrieved Ingredients

- problems/navier-stokes/agent-contract.yaml:55 -- Part/Field bridge support
- problems/navier-stokes/agent-contract.yaml:53 -- source ingredient
- problems/navier-stokes/theorem-packet.yaml -- Part/Field bridge support
- problems/navier-stokes/agent-contract.yaml:145 -- installed dynamic support
- problems/navier-stokes/agent-contract.yaml:58 -- source ingredient
- problems/navier-stokes/agent-contract.yaml:172 -- Part/Field bridge support

### Recursive Solver Chain

- terminal_verdict: closed
- reason: The recursive theorem solver reached a terminal mechanism with no remaining residual primitive.
- depth 0: TerminalReserveFirstAppearanceCharge.A via terminal_birth_charge_injection -> ChargeLedgerInjection.A
- depth 1: ChargeLedgerInjection.A via charge_ledger_injection_closure -> closed

## Allowed Inputs

- ParentSquareEmbed.A
- WeightedAdjRes.A
- terminal birth-time decomposition
- Charge_N ledger
- - problems/navier-stokes/theorem-packet.yaml
- - problems/navier-stokes/live-theorem-edge.yaml
- Define or prove: Added three theorem-facing reductions on the Navier-Stokes lane. First, weighted-mixed-jet-next-time-envelope-reduction.md proves the exact whole-tower inequality A_next_ s-1 (tau,r) <= nu D_s(tau,r) + C_s A_s(tau,r)^2, red
- theorem-packet.yaml, theorem-repair.yaml, dependency-discharge.yaml.'
- - problems/navier-stokes/creative-theorem-search.yaml
- exhaust the exact local theorem packets it implies, publish the resulting local
- terminal heat-window decomposition
- normalized child packet mass
- Define or prove: Reduced the live Navier-Stokes route stack against the Clay whole-space target into exact source-backed ingredients already present on the lane. On the classical side, isolated the mixed-jet system, the exact rung-level can
- Define or prove: For the mixed-jet tower J_ m,alpha  = \partial_t^m \partial_x^\alpha u and differentiated pressure \Pi_ m,alpha , fix s > 3/2. Using the H^s algebra property and the order-1 Calderon-Zygmund bound for the pressure operator,

## Forbidden Imports

- TerminalReserveFirstAppearanceCharge.A
- ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile
- ScaleCriticalTreeCarleson.A
- full-MPP closure
- submission readiness
- global smoothness
- SquareReserveEvolution.A
- free terminal reserve creation

## Proof Attempt

1. Define the first scale-time at which the square reserve becomes visible on W.
2. Split the reserve birth into inherited parent mass and genuinely new child residual.
3. Map genuinely new residual birth into Charge_N(W) using the weighted adjoint residual control.
4. Prove that uncharged birth would create a forbidden zero-cost packet creation event.
5. Use problems/navier-stokes/agent-contract.yaml:55 as source support for Part/Field bridge support.
6. Use problems/navier-stokes/agent-contract.yaml:53 as source support for source ingredient.
7. Recursive solver step for ChargeLedgerInjection.A: Assume a genuinely new terminal reserve birth has no Charge_N ledger injection.
8. Recursive solver step for ChargeLedgerInjection.A: Use first-birth minimality to remove inherited Past(W) mass.
9. Recursive solver step for ChargeLedgerInjection.A: Pair the remaining child residual with WeightedAdjRes.A.
10. Recursive solver step for ChargeLedgerInjection.A: Contradict the existence of positive reserve birth outside Charge_N plus declared loss.
11. Recursive solver step for ChargeLedgerInjection.A: Use problems/navier-stokes/agent-contract.yaml:55 as source support for Part/Field bridge support.
12. Recursive solver step for ChargeLedgerInjection.A: Use problems/navier-stokes/theorem-packet.yaml as source support for Part/Field bridge support.

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
