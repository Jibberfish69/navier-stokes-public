# ReserveCreationCharge.A theorem creation

## Target

- target obligation: SquareReserveEvolution.A
- target label: SquareReserveEvolution.A / ReserveCreationCharge.A for first-time terminal square reserve creation
- route role: Convert static donor-square reserve into a dynamic law: new terminal reserve is either inherited from Past(W) or paid by Charge_N(W).
- theorem family: reserve-creation-charge

## Created Theorem

ReserveCreationCharge.A. For every admissible terminal heat window W and scale N, the positive first-created square reserve increment is inherited from Past(W) up to declared loss or is paid by Charge_N(W), so [R_N(W) - (1 - delta)R_N(Past(W)) - Loss_N(W)]_+ <= Charge_N(W) + o_N(1).

## Inventive Search

- mode: inventive-recursive-theorem-solver
- external_resources_used: false
- external_resource_policy: disabled-by-default; external searches may suggest support but may not certify or promote a theorem
- selected_mechanism: parent_or_charge_evolution
- candidate_count: 6
- solver_chain_verdict: closed
- selection_reason: This theorem is the right next move because it changes the proof economy: Convert static donor-square reserve into a dynamic law: new terminal reserve is either inherited from Past(W) or paid by Charge_N(W). It is source-backed by 7 local ingredient(s). It deliberately reduces the remaining work to TerminalReserveFirstAppearanceCharge.A rather than pretending the frontier is closed. The internal solver also discharged the residual chain through ReserveCreationCharge.A -> TerminalReserveFirstAppearanceCharge.A -> ChargeLedgerInjection.A.

### Candidate Theorems

- ReserveCreationCharge.A (parent_or_charge_evolution; score=118)
- AdjointReserveNoFreeCreation.A (adjoint_residual_dualization; score=79)
- WindowwiseReserveCarleson.A (windowwise_carleson_reserve; score=75)
- SquarereserveevolutionContrapositiveExit.A (contrapositive_exit; score=72)
- SquarereserveevolutionCompactnessDefectRigidity.A (compactness_defect_rigidity; score=71)
- SquarereserveevolutionMonotoneBudget.A (monotone_budget; score=74)

### Retrieved Ingredients

- problems/navier-stokes/theorem-packet.yaml -- Part/Field bridge support
- problems/navier-stokes/agent-contract.yaml:60 -- Part/Field bridge support
- problems/navier-stokes/agent-contract.yaml:55 -- Part/Field bridge support
- problems/navier-stokes/agent-contract.yaml:123 -- Part/Field bridge support
- problems/navier-stokes/theorem-packet.yaml -- Part/Field bridge support
- problems/navier-stokes/theorem-packet.yaml -- Part/Field bridge support

### Recursive Solver Chain

- terminal_verdict: closed
- reason: The recursive theorem solver reached a terminal mechanism with no remaining residual primitive.
- depth 0: ReserveCreationCharge.A via parent_or_charge_evolution -> TerminalReserveFirstAppearanceCharge.A
- depth 1: TerminalReserveFirstAppearanceCharge.A via terminal_birth_charge_injection -> ChargeLedgerInjection.A
- depth 2: ChargeLedgerInjection.A via charge_ledger_injection_closure -> closed

## Allowed Inputs

- ParentSquareEmbed.A
- WeightedAdjRes.A
- terminal heat-window decomposition
- Define or prove: Added three theorem-facing reductions on the Navier-Stokes lane. First, weighted-mixed-jet-next-time-envelope-reduction.md proves the exact whole-tower inequality A_next_ s-1 (tau,r) <= nu D_s(tau,r) + C_s A_s(tau,r)^2, red
- central_gate: Every promoted theorem result must land in Pack_Q, Part_{N,Q}, Field_{N,r,Q},
- Member-direction audit for Prove the cross-face CM bridge-license synthesis theorem that converts same-ledger Part/Field face support into the aggregate CM bridge toward Member without importing supplier-only aliases.
- Part landing bridge for Prove the cross-face CM bridge-license synthesis theorem that converts same-ledger Part/Field face support into the aggregate CM bridge toward Member without importing supplier-only aliases.
- Field landing bridge for Prove the cross-face CM bridge-license synthesis theorem that converts same-ledger Part/Field face support into the aggregate CM bridge toward Member without importing supplier-only aliases.
- Pack landing bridge for Prove the cross-face CM bridge-license synthesis theorem that converts same-ledger Part/Field face support into the aggregate CM bridge toward Member without importing supplier-only aliases.
- Define or prove: Completed the Hopf/shuffle line as a theorem-program refinement. The correct algebraic fit for the time tower is the divided-power Hopf law on one primitive generator, and for the mixed jet tower it is the shuffle/unshuffle
- normalized child packet mass
- Define or prove: Reduced the live Navier-Stokes route stack against the Clay whole-space target into exact source-backed ingredients already present on the lane. On the classical side, isolated the mixed-jet system, the exact rung-level can
- Define or prove: For the mixed-jet tower J_ m,alpha  = \partial_t^m \partial_x^\alpha u and differentiated pressure \Pi_ m,alpha , fix s > 3/2. Using the H^s algebra property and the order-1 Calderon-Zygmund bound for the pressure operator,
- Define or prove: Added four theorem-construction reductions. (1) strict-shadow-no-remainder-corollary.md: under the exact strict-shadow identities already present on the lane, ShadowDef(X) and E_sh(X) vanish identically, so the exact Route 

## Forbidden Imports

- ReserveCreationCharge.A
- SquareReserveEvolution.A / ReserveCreationCharge.A for first-time terminal square reserve creation
- SquareReserveEvolution.A
- full-MPP closure
- submission readiness
- global smoothness
- ScaleCriticalTreeCarleson.A
- free terminal reserve creation

## Proof Attempt

1. Split W by first-appearance time.
2. Separate inherited parent reserve from normalized child residual.
3. Price the non-inherited part by a charge ledger.
4. Use problems/navier-stokes/theorem-packet.yaml as source support for Part/Field bridge support.
5. Use problems/navier-stokes/agent-contract.yaml:60 as source support for Part/Field bridge support.
6. Recursive solver step for TerminalReserveFirstAppearanceCharge.A: Define the first scale-time at which the square reserve becomes visible on W.
7. Recursive solver step for TerminalReserveFirstAppearanceCharge.A: Split the reserve birth into inherited parent mass and genuinely new child residual.
8. Recursive solver step for TerminalReserveFirstAppearanceCharge.A: Map genuinely new residual birth into Charge_N(W) using the weighted adjoint residual control.
9. Recursive solver step for TerminalReserveFirstAppearanceCharge.A: Prove that uncharged birth would create a forbidden zero-cost packet creation event.
10. Recursive solver step for TerminalReserveFirstAppearanceCharge.A: Use problems/navier-stokes/theorem-packet.yaml as source support for Part/Field bridge support.
11. Recursive solver step for TerminalReserveFirstAppearanceCharge.A: Use problems/navier-stokes/agent-contract.yaml:60 as source support for Part/Field bridge support.
12. Recursive solver step for ChargeLedgerInjection.A: Assume a genuinely new terminal reserve birth has no Charge_N ledger injection.
13. Recursive solver step for ChargeLedgerInjection.A: Use first-birth minimality to remove inherited Past(W) mass.
14. Recursive solver step for ChargeLedgerInjection.A: Pair the remaining child residual with WeightedAdjRes.A.
15. Recursive solver step for ChargeLedgerInjection.A: Contradict the existence of positive reserve birth outside Charge_N plus declared loss.
16. Recursive solver step for ChargeLedgerInjection.A: Use problems/navier-stokes/theorem-packet.yaml as source support for Part/Field bridge support.
17. Recursive solver step for ChargeLedgerInjection.A: Use problems/navier-stokes/agent-contract.yaml:55 as source support for Part/Field bridge support.

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
