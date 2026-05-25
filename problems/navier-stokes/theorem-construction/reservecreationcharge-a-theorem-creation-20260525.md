# ReserveCreationCharge.A theorem creation

## Target

- target obligation: ChargeLedgerInjection.A
- target label: every genuinely new terminal reserve birth injects into the charge ledger
- route role: Convert static donor-square reserve into a dynamic law: new terminal reserve is either inherited from Past(W) or paid by Charge_N(W).
- theorem family: reserve-creation-charge

## Created Theorem

ReserveCreationCharge.A. For every admissible terminal heat window W and scale N, the positive first-created square reserve increment is inherited from Past(W) up to declared loss or is paid by Charge_N(W), so [R_N(W) - (1 - delta)R_N(Past(W)) - Loss_N(W)]_+ <= Charge_N(W) + o_N(1).

## Inventive Search

- mode: inventive-right-theorem-selection
- external_resources_used: false
- external_resource_policy: disabled-by-default; external searches may suggest support but may not certify or promote a theorem
- selected_mechanism: parent_or_charge_evolution
- candidate_count: 6
- solver_chain_verdict: open
- selection_reason: This theorem is the right next move because it changes the proof economy: Convert static donor-square reserve into a dynamic law: new terminal reserve is either inherited from Past(W) or paid by Charge_N(W). It is source-backed by 8 local ingredient(s). It deliberately reduces the remaining work to TerminalReserveFirstAppearanceCharge.A rather than pretending the frontier is closed.

### Candidate Theorems

- ReserveCreationCharge.A (parent_or_charge_evolution; score=114)
- AdjointReserveNoFreeCreation.A (adjoint_residual_dualization; score=79)
- WindowwiseReserveCarleson.A (windowwise_carleson_reserve; score=75)
- ChargeLedgerInjection.A (contrapositive_exit; score=88)
- ChargeLedgerInjection.A (compactness_defect_rigidity; score=91)
- ChargeLedgerInjection.A (monotone_budget; score=86)

### Retrieved Ingredients

- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/agent-contract.yaml:175 -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- Pack/Part bridge support

### Recursive Solver Chain

- terminal_verdict: open
- reason: No internal solver mechanism is installed for PositiveRemainderDepletion.A.
- depth 0: ReserveCreationCharge.A via parent_or_charge_evolution -> TerminalReserveFirstAppearanceCharge.A
- depth 1: TerminalReserveFirstAppearanceCharge.A via terminal_birth_charge_injection -> ChargeLedgerInjection.A
- depth 2: ChargeLedgerInjection.A via charge_ledger_injection_to_positive_remainder_depletion -> PositiveRemainderDepletion.A

## Allowed Inputs

- ParentSquareEmbed.A
- WeightedAdjRes.A
- terminal heat-window decomposition
- HeightFluxControl.A. Turn the remaining positive source-reserve birth charge into the first proof-facing sampling theorem: a first large retained height-flux event must create Pack gain, Part/dwell failure, legal Field source charge, or a Zeno terminal residue atom. This supplies the exact noncircular bridge needed for Create the recursive theorem subprimitive HeightFluxControl.A exposed by the previous theorem-creation packet, instead of mutating a neighboring route..
- TerminalSignedSaturationCMFaceReduction.A. In the CM contrapositive route with Exit(Q):=not Member(Q), every failure of TerminalSignedSaturation.A is paid by retained signed partners, legal exits, ASAC pair-weight charge, finite donor balance, or else becomes a terminal zero-radius source residue; that residue is not Pack_Q, or it forces incoming flux, CM envelope blowout, paid exit, and hence Pack/Part/Field witness-face exit. This is a CM face-reduction theorem, not a forward no-free-sink supplier discharge.
- TerminalReserveFirstAppearanceCharge.A. On every admissible terminal heat window W, every square-reserve contribution not already represented in Past(W) either injects into Charge_N(W) or is absorbed by the declared loss ledger.
- ScaleCriticalTreeCarleson.A. The installed reserve, charge, adjoint-tail, and windowwise leakage ledgers sum to the Pack_Q scale-critical donor-refill Carleson bound; an unpaid infinite donor-refill tree is therefore a Pack-face exit witness.
- Part landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- - Before any answer to a CM contrapositive request, classify the bad object as Pack-first
- RetainedFaceAmplitudeGain.A. Any retained field-face amplitude gain admissible for the CM contrapositive route is recorded first as a Pack_Q gain event and transported through Part_{N,Q} without importing Field_{N,r,Q} or Member(Q) as a premise.
- normalized child packet mass
- Pack landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- Field landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- CFI.A. OFP.A together with CFI.B1 and CFI.B2 yields the retained conditional field-integrability package, while End_NS, Field readout, and Member remain downstream consequences.

## Forbidden Imports

- ReserveCreationCharge.A
- every genuinely new terminal reserve birth injects into the charge ledger
- ChargeLedgerInjection.A
- full-MPP closure
- submission readiness
- global smoothness
- ScaleCriticalTreeCarleson.A
- SquareReserveEvolution.A
- free terminal reserve creation

## Proof Attempt

1. Split W by first-appearance time.
2. Separate inherited parent reserve from normalized child residual.
3. Price the non-inherited part by a charge ledger.
4. Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.
5. Recursive solver step for TerminalReserveFirstAppearanceCharge.A: Define the first scale-time at which the square reserve becomes visible on W.
6. Recursive solver step for TerminalReserveFirstAppearanceCharge.A: Split the reserve birth into inherited parent mass and genuinely new child residual.
7. Recursive solver step for TerminalReserveFirstAppearanceCharge.A: Map genuinely new residual birth into Charge_N(W) using the weighted adjoint residual control.
8. Recursive solver step for TerminalReserveFirstAppearanceCharge.A: Prove that uncharged birth would create a forbidden zero-cost packet creation event.
9. Recursive solver step for TerminalReserveFirstAppearanceCharge.A: Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.
10. Recursive solver step for ChargeLedgerInjection.A: Assume a genuinely new terminal reserve birth has no Charge_N ledger injection.
11. Recursive solver step for ChargeLedgerInjection.A: Use first-birth minimality to remove inherited Past(W) mass.
12. Recursive solver step for ChargeLedgerInjection.A: Pair only the ledger-visible child residual with WeightedAdjRes.A.
13. Recursive solver step for ChargeLedgerInjection.A: Reduce the remaining retained positive first-created source carrier to a source depletion theorem instead of declaring a zero-cost contradiction.
14. Recursive solver step for ChargeLedgerInjection.A: Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.

## Circularity Audit

- status: passed
- violations: none

## Solver Verdict

- verdict: new_subprimitive
- certification_level: theorem-creation:new-subprimitive
- rationale: The theorem has been reduced to a smaller noncircular primitive that is not currently installed.
- next subprimitive: PositiveRemainderDepletion.A -- same-ledger depletion/anti-concentration for the minimal retained positive-scale first-created source carrier

## Promotion Plan

- promotion_allowed: false
- recommended_next_cell_type: theorem-creation
