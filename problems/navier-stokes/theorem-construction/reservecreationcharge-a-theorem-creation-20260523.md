# ReserveCreationCharge.A theorem creation

## Target

- target obligation: ScaleCriticalTreeCarleson.A
- target label: Pack-side donor-refill Carleson landing: Pack_Q implies ScaleCriticalTreeCarleson.A, and selected failure is not Pack_Q
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

- ReserveCreationCharge.A (parent_or_charge_evolution; score=98)
- AdjointReserveNoFreeCreation.A (adjoint_residual_dualization; score=67)
- WindowwiseReserveCarleson.A (windowwise_carleson_reserve; score=67)
- ScaleCriticalTreeCarleson.A (contrapositive_exit; score=-4)
- ScaleCriticalTreeCarleson.A (compactness_defect_rigidity; score=-5)
- ScaleCriticalTreeCarleson.A (monotone_budget; score=-10)

### Retrieved Ingredients

- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- Pack/Part bridge support
- problems/navier-stokes/theorem-packet.yaml -- Pack/Part bridge support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support

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
- HeightFluxControl.A. Turn the remaining positive source-reserve birth charge into the first proof-facing sampling theorem: a first large retained height-flux event must create Pack gain, Part/dwell failure, legal Field source charge, or a Zeno terminal residue atom. This supplies the exact noncircular bridge needed for Create the recursive theorem subprimitive HeightFluxControl.A exposed by the previous theorem-creation packet, instead of mutating a neighboring route..
- TerminalSignedSaturationCMFaceReduction.A. In the CM contrapositive route with Exit(Q):=not Member(Q), every failure of TerminalSignedSaturation.A is paid by retained signed partners, legal exits, ASAC pair-weight charge, finite donor balance, or else becomes a terminal zero-radius source residue; that residue is not Pack_Q, or it forces incoming flux, CM envelope blowout, paid exit, and hence Pack/Part/Field witness-face exit. This is a CM face-reduction theorem, not a forward no-free-sink supplier discharge.
- TerminalCMNoExit.FaceReduction.A. For original smooth data, CanonicalTerminalPacketCapture.A, AnyFiniteFailureWitnessCMExit.A, GenuineCMExit.Equiv.A, and TerminalSourceResidueCMExit.A reduce NoGenuineCMExit to the Pack-first CM exit tree: ScaleCriticalTreeCarleson.A is the Pack-side donor-refill landing, followed only by Part and licensed Field if Pack survives.
- BASACReverseHolderProduction.A. Producing a reverse-Holder B_ASAC^RH(p) subclass is the exact remaining forward supplier theorem; the installed B_ASAC equality-class clauses allow finite L^1_t terminal-layer concentration, so this production is not currently discharged and remains supplier-quarantined for the CM route.
- Part landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- RetainedFaceAmplitudeGain.A. Any retained field-face amplitude gain admissible for the CM contrapositive route is recorded first as a Pack_Q gain event and transported through Part_{N,Q} without importing Field_{N,r,Q} or Member(Q) as a premise.
- central_gate: Every promoted theorem result must land in Pack_Q, Part_{N,Q}, or
- normalized child packet mass
- Pack landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- Field landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- CFI.A. OFP.A together with CFI.B1 and CFI.B2 yields the retained conditional field-integrability package, while End_NS, Field readout, and Member remain downstream consequences.

## Forbidden Imports

- ReserveCreationCharge.A
- Pack-side donor-refill Carleson landing: Pack_Q implies ScaleCriticalTreeCarleson.A, and selected failure is not Pack_Q
- ScaleCriticalTreeCarleson.A
- full-MPP closure
- submission readiness
- global smoothness
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
12. Recursive solver step for ChargeLedgerInjection.A: Pair the remaining child residual with WeightedAdjRes.A.
13. Recursive solver step for ChargeLedgerInjection.A: Contradict the existence of positive reserve birth outside Charge_N plus declared loss.
14. Recursive solver step for ChargeLedgerInjection.A: Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.

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
