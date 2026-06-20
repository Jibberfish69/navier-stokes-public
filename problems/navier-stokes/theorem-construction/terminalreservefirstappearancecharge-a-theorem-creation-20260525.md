# TerminalReserveFirstAppearanceCharge.A theorem creation

## Target

- target obligation: TerminalReserveFirstAppearanceCharge.A
- target label: terminal square reserve first-appearance is charged rather than free
- route role: Turn the residual first-appearance burden into a birth-time localization law: terminal reserve born after Past(W) must inject into the charge ledger.
- theorem family: reserve-creation-charge

## Created Theorem

TerminalReserveFirstAppearanceCharge.A. On every admissible terminal heat window W, every square-reserve contribution not already represented in Past(W) either injects into Charge_N(W) or is absorbed by the declared loss ledger.

## Inventive Search

- mode: inventive-recursive-theorem-solver
- external_resources_used: false
- external_resource_policy: disabled-by-default; external searches may suggest support but may not certify or promote a theorem
- selected_mechanism: terminal_birth_charge_injection
- candidate_count: 5
- solver_chain_verdict: closed
- selection_reason: This theorem is the right next move because it changes the proof economy: Turn the residual first-appearance burden into a birth-time localization law: terminal reserve born after Past(W) must inject into the charge ledger. It is source-backed by 8 local ingredient(s). It deliberately reduces the remaining work to ChargeLedgerInjection.A rather than pretending the frontier is closed. The internal solver also discharged the residual chain through TerminalReserveFirstAppearanceCharge.A -> ChargeLedgerInjection.A.

### Candidate Theorems

- TerminalReserveFirstAppearanceCharge.A (terminal_birth_charge_injection; score=128)
- PastWindowReserveSeparation.A (past_window_exclusion; score=84)
- TerminalReserveFirstAppearanceCharge.A (contrapositive_exit; score=92)
- TerminalReserveFirstAppearanceCharge.A (compactness_defect_rigidity; score=95)
- TerminalReserveFirstAppearanceCharge.A (monotone_budget; score=98)

### Retrieved Ingredients

- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/agent-contract.yaml:175 -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- Pack/Part bridge support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support

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
- HeightFluxControl.A. Turn the remaining positive source-reserve birth charge into the first proof-facing sampling theorem: a first large retained height-flux event must create Pack gain, Part/dwell failure, legal Field source charge, or a Zeno terminal residue atom. This supplies the exact noncircular bridge needed for Create the recursive theorem subprimitive HeightFluxControl.A exposed by the previous theorem-creation packet, instead of mutating a neighboring route..
- TerminalSignedSaturationCMFaceReduction.A. In the CM contrapositive route with Exit(Q):=not Member(Q), every failure of TerminalSignedSaturation.A is paid by retained signed partners, legal exits, ASAC pair-weight charge, finite donor balance, or else becomes a terminal zero-radius source residue; that residue is first audited for pointwise Part status, giving not Part_{N,Q} when same-solution participation remains and true not Pack_Q only when the participation record is absent. This is a CM face-reduction theorem, not a forward no-free-sink supplier discharge.
- ScaleCriticalTreeCarleson.A. The installed reserve, charge, adjoint-tail, and windowwise leakage ledgers sum to the Pack_Q scale-critical donor-refill Carleson bound; an unpaid infinite donor-refill tree is therefore a Pack-face exit witness.
- theorem-packet.yaml, theorem-repair.yaml, dependency-discharge.yaml.'
- ReserveCreationCharge.A. For every admissible terminal heat window W and scale N, the positive first-created square reserve increment is inherited from Past(W) up to declared loss or is paid by Charge_N(W), so [R_N(W) - (1 - delta)R_N(Past(W)) - Loss_N(W)]_+ <= Charge_N(W) + o_N(1).
- RetainedFaceAmplitudeGain.A. Any retained field-face amplitude gain admissible for the CM contrapositive route is recorded first as a Pack_Q gain event and transported through Part_{N,Q} without importing Field_{N,r,Q} or Member(Q) as a premise.
- terminal heat-window decomposition
- normalized child packet mass
- Pack landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- Part landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A

## Forbidden Imports

- TerminalReserveFirstAppearanceCharge.A
- terminal square reserve first-appearance is charged rather than free
- full-MPP closure
- submission readiness
- global smoothness
- ScaleCriticalTreeCarleson.A
- SquareReserveEvolution.A
- free terminal reserve creation

## Proof Attempt

1. Define the first scale-time at which the square reserve becomes visible on W.
2. Split the reserve birth into inherited parent mass and genuinely new child residual.
3. Map genuinely new residual birth into Charge_N(W) using the weighted adjoint residual control.
4. Prove that uncharged birth would create a forbidden zero-cost packet creation event.
5. Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.
6. Recursive solver step for ChargeLedgerInjection.A: Assume a genuinely new terminal reserve birth has no Charge_N ledger injection.
7. Recursive solver step for ChargeLedgerInjection.A: Use first-birth minimality to remove inherited Past(W) mass.
8. Recursive solver step for ChargeLedgerInjection.A: Pair the remaining child residual with WeightedAdjRes.A.
9. Recursive solver step for ChargeLedgerInjection.A: Contradict the existence of positive reserve birth outside Charge_N plus declared loss.
10. Recursive solver step for ChargeLedgerInjection.A: Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.

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
