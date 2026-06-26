# ReserveCreationCharge.A theorem creation

## Target

- target obligation: global-same-packet-full-material-clock
- target label: Refine the stalled dependency-discharge target global-same-packet-full-material-clock: GlobalSamePacketFullClockFromOriginalData.A
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
- selection_reason: This theorem is the right next move because it changes the proof economy: Convert static donor-square reserve into a dynamic law: new terminal reserve is either inherited from Past(W) or paid by Charge_N(W). It is source-backed by 7 local ingredient(s). It deliberately reduces the remaining work to TerminalReserveFirstAppearanceCharge.A rather than pretending the frontier is closed.

### Candidate Theorems

- ReserveCreationCharge.A (parent_or_charge_evolution; score=94)
- AdjointReserveNoFreeCreation.A (adjoint_residual_dualization; score=71)
- WindowwiseReserveCarleson.A (windowwise_carleson_reserve; score=67)
- GlobalSamePacketFullContrapositiveExit.A (contrapositive_exit; score=76)
- GlobalSamePacketFullCompactnessDefectRigidity.A (compactness_defect_rigidity; score=75)
- GlobalSamePacketFullMonotoneBudget.A (monotone_budget; score=74)

### Retrieved Ingredients

- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/agent-contract.yaml:245 -- installed dynamic support

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
- TerminalSignedSaturationCMFaceReduction.A. In the CM contrapositive route with Exit(Q):=not Member(Q), every failure of TerminalSignedSaturation.A is paid by retained signed partners, legal exits, ASAC pair-weight charge, finite donor balance, or else becomes a terminal zero-radius source residue; that residue is first audited for original participation law status, giving not Part_{N,Q} when same-solution participation remains and packet/window evidence only when the participation record is absent. This is a CM Part/Field-reduction theorem, not a forward no-free-sink supplier discharge.
- HeightFluxControl.A. Turn the remaining positive source-reserve birth charge into the first proof-facing sampling theorem: a first large retained height-flux event must create Pack gain, Part/dwell failure, legal Field source charge, or a Zeno terminal residue atom. This supplies the exact noncircular bridge needed for Create the recursive theorem subprimitive HeightFluxControl.A exposed by the previous theorem-creation packet, instead of mutating a neighboring route..
- ActiveHeightFluxTrichotomy.A. A first-created positive square-reserve surplus with zero first moment cannot remain hidden: the signed-pair normal form either exposes same-ledger active height flux, pays by ASAC / positive pair-weight charge, produces a Pack, Part, or licensed Field face through the named same-ledger failure mechanism, or reduces to TerminalSignedSaturation.A, whose failure is already CM Part/Field-reduction support. This supplies the exact noncircular bridge needed for Create the post-activation theorem ActiveHeightFluxTrichotomy.A converting positive square-reserve surplus into active height flux or Pack/that Part/Field failure..
- HeightFluxControl.A. Turn the remaining positive source-reserve birth charge into the first proof-facing sampling theorem: a first large retained height-flux event must create Pack gain, Part/dwell failure, legal Field source charge, or a Zeno terminal residue atom. This supplies the exact noncircular bridge needed for Create the native theorem route HeightFluxControl.A after the supplier chain PositiveRemainderDepletion.A stopped serving the source-reserve CM-exit target..
- SourceReserveBirthHeightFluxActivation.A. A retained positive-scale first-created donor-square reserve surplus cannot remain a static square-reserve surplus after Past(W) and legal loss are removed: it either creates a same-ledger retained positive height-flux pulse controlled by HeightFluxControl.A, or the failure to do so is already Pack gain, Part/dwell failure, legal Field source charge, or terminal Zeno residue. This supplies the exact noncircular bridge needed for Create the bridge theorem SourceReserveBirthHeightFluxActivation.A connecting first-created source-reserve birth to the same-ledger HeightFluxControl.A route..
- - 'Read direct live surfaces first: live-theorem-edge.yaml, source-frontier.yaml,
- RetainedFaceAmplitudeGain.A. Any retained field-face amplitude gain admissible for the CM contrapositive route is recorded first as a Pack_Q gain event and transported through Part_{N,Q} without importing Field_{N,r,Q} or Member(Q) as a premise.
- normalized child packet mass
- CSP.A. On the retained same-fluid collar, LCI.A together with the installed post-LCI source ledger FCI.5f supplies the collar source-pressure package; OFP.A, CFI.A, endpoint readout, and Field remain downstream consumers, with Member following only after the CM witness certificate.
- LCI.A. On a retained same-fluid interval with bounded Pack gauge and the ordered ACT.KX receiver package installed, ACT.X-Readout gives ACT.A, ACT.A gives RCF.A through the transported-center residual package, and ULCI.A/DTC.C yields lower-carrier interval integrability; FCI.5f, CSP.A, OFP.A, CFI.A, endpoint readout, and Field remain downstream consumers, with Member downstream of the CM witness certificate.
- OFP.A. The collar source-pressure package CSP.A propagates the retained one-field package on the same-fluid interval, with CFI.A, endpoint readout, and Field kept downstream; Member is downstream of the CM witness certificate.

## Forbidden Imports

- ReserveCreationCharge.A
- Refine the stalled dependency-discharge target global-same-packet-full-material-clock: GlobalSamePacketFullClockFromOriginalData.A
- global-same-packet-full-material-clock
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
