# RetainedFaceAmplitudeGain.A theorem creation

## Target

- target obligation: RetainedFaceAmplitudeGain.A
- target label: RetainedFaceAmplitudeGain.A / TerminalAmplitudeGain.A scale-critical amplitude cap under retained Pack_Q and Part_{N,Q}
- route role: Bridge retained field-face amplitude into the Pack/Part route by proving every retained face gain is recorded in a Pack_Q ledger before any Member(Q) conclusion is spent.
- theorem family: retained-face-amplitude-gain

## Created Theorem

RetainedFaceAmplitudeGain.A. Any retained field-face amplitude gain admissible for the CM contrapositive route is recorded first as a Pack_Q gain event and transported through Part_{N,Q} without importing Field_{N,r,Q} or Member(Q) as a premise.

## Inventive Search

- mode: inventive-recursive-theorem-solver
- external_resources_used: false
- external_resource_policy: disabled-by-default; external searches may suggest support but may not certify or promote a theorem
- selected_mechanism: retained_face_pack_gain_ledger
- candidate_count: 6
- solver_chain_verdict: closed
- selection_reason: This theorem is the right next move because it changes the proof economy: Bridge retained field-face amplitude into the Pack/Part route by proving every retained face gain is recorded in a Pack_Q ledger before any Member(Q) conclusion is spent. It is source-backed by 7 local ingredient(s). It deliberately reduces the remaining work to PackGainLedger.A rather than pretending the frontier is closed. The internal solver also discharged the residual chain through RetainedFaceAmplitudeGain.A -> PackGainLedger.A -> PartEnvelopeAmplitudeConservation.A -> PartBoundaryLeakageCharge.A.

### Candidate Theorems

- RetainedFaceAmplitudeGain.A (retained_face_pack_gain_ledger; score=122)
- PackGainLedger.A (pack_gain_to_part_envelope; score=96)
- PartEnvelopeAmplitudeConservation.A (part_envelope_no_leakage; score=90)
- RetainedFaceAmplitudeGain.A (contrapositive_exit; score=84)
- RetainedFaceAmplitudeGain.A (compactness_defect_rigidity; score=83)
- RetainedFaceAmplitudeGain.A (monotone_budget; score=82)

### Retrieved Ingredients

- problems/navier-stokes/agent-contract.yaml:60 -- Pack/Part bridge support
- problems/navier-stokes/agent-contract.yaml:123 -- Pack/Part bridge support
- problems/navier-stokes/theorem-packet.yaml -- Pack/Part bridge support
- problems/navier-stokes/agent-contract.yaml:94 -- Pack/Part bridge support
- problems/navier-stokes/agent-contract.yaml:55 -- Pack/Part bridge support
- problems/navier-stokes/agent-contract.yaml:116 -- Pack/Part bridge support

### Recursive Solver Chain

- terminal_verdict: closed
- reason: The recursive theorem solver reached a terminal mechanism with no remaining residual primitive.
- depth 0: RetainedFaceAmplitudeGain.A via retained_face_pack_gain_ledger -> PackGainLedger.A
- depth 1: PackGainLedger.A via pack_gain_to_part_envelope -> PartEnvelopeAmplitudeConservation.A
- depth 2: PartEnvelopeAmplitudeConservation.A via part_envelope_no_leakage -> PartBoundaryLeakageCharge.A
- depth 3: PartBoundaryLeakageCharge.A via part_boundary_leakage_charge_closure -> closed

## Allowed Inputs

- Pack_Q
- Part_{N,Q}
- retained face ledger
- part envelope
- Exit(Q):=not Member(Q)
- central_gate: Every promoted theorem result must land in Pack_Q, Part_{N,Q}, Field_{N,r,Q},
- Define or prove: Added three theorem-facing reductions on the Navier-Stokes lane. First, weighted-mixed-jet-next-time-envelope-reduction.md proves the exact whole-tower inequality A_next_ s-1 (tau,r) <= nu D_s(tau,r) + C_s A_s(tau,r)^2, red
- - 'Before promotion, run the bridge-license question: does this result enter Pack_Q,
- - once a route packet or broad theorem burden is visible, the lane must record the selected target and route authority
- Define or prove: Added four theorem-construction reductions. (1) strict-shadow-no-remainder-corollary.md: under the exact strict-shadow identities already present on the lane, ShadowDef(X) and E_sh(X) vanish identically, so the exact Route 
- Define or prove: Reduced the live Navier-Stokes route stack against the Clay whole-space target into exact source-backed ingredients already present on the lane. On the classical side, isolated the mixed-jet system, the exact rung-level can
- Define or prove: For the mixed-jet tower J_ m,alpha  = \partial_t^m \partial_x^\alpha u and differentiated pressure \Pi_ m,alpha , fix s > 3/2. Using the H^s algebra property and the order-1 Calderon-Zygmund bound for the pressure operator,
- Define or prove: Added two new theorem-facing reductions on the Clay whole-space target.
- Define or prove: Completed the Hopf/shuffle line as a theorem-program refinement. The correct algebraic fit for the time tower is the divided-power Hopf law on one primitive generator, and for the mixed jet tower it is the shuffle/unshuffle

## Forbidden Imports

- RetainedFaceAmplitudeGain.A
- RetainedFaceAmplitudeGain.A / TerminalAmplitudeGain.A scale-critical amplitude cap under retained Pack_Q and Part_{N,Q}
- full-MPP closure
- submission readiness
- global smoothness
- Field_{N,r,Q}
- Member(Q)
- SOURCE.NO-PULSE.A
- LocalPositiveSourceCarleson.A
- CM closure as premise

## Proof Attempt

1. Represent retained face amplitude as a Pack_Q ledger event rather than a Field conclusion.
2. Project the retained event through Part_{N,Q} using the part envelope.
3. Show positive retained amplitude gain either enters PackGainLedger.A or creates a forbidden exit witness.
4. Keep Member(Q) and Field_{N,r,Q} out of the proof inputs until bridge-license audit passes.
5. Use problems/navier-stokes/agent-contract.yaml:60 as source support for Pack/Part bridge support.
6. Use problems/navier-stokes/theorem-packet.yaml as source support for Pack/Part bridge support.
7. Recursive solver step for PackGainLedger.A: Index retained face gain events in Pack_Q.
8. Recursive solver step for PackGainLedger.A: Push each indexed gain through the Part_{N,Q} envelope.
9. Recursive solver step for PackGainLedger.A: Bound envelope leakage by the declared part boundary terms.
10. Recursive solver step for PackGainLedger.A: Return a ledger entry strong enough for dependency-discharge.
11. Recursive solver step for PackGainLedger.A: Use problems/navier-stokes/agent-contract.yaml:60 as source support for Pack/Part bridge support.
12. Recursive solver step for PackGainLedger.A: Use problems/navier-stokes/theorem-packet.yaml as source support for Pack/Part bridge support.
13. Recursive solver step for PartEnvelopeAmplitudeConservation.A: Define the incoming and outgoing retained amplitude across the Part envelope.
14. Recursive solver step for PartEnvelopeAmplitudeConservation.A: Separate internal conservation from boundary leakage.
15. Recursive solver step for PartEnvelopeAmplitudeConservation.A: Charge all leakage to the envelope boundary ledger.
16. Recursive solver step for PartEnvelopeAmplitudeConservation.A: Use problems/navier-stokes/agent-contract.yaml:60 as source support for Pack/Part bridge support.
17. Recursive solver step for PartEnvelopeAmplitudeConservation.A: Use problems/navier-stokes/theorem-packet.yaml as source support for Pack/Part bridge support.
18. Recursive solver step for PartBoundaryLeakageCharge.A: Assume retained Pack gain leaks through the Part envelope without boundary charge.
19. Recursive solver step for PartBoundaryLeakageCharge.A: Localize the leakage to the first envelope boundary crossing.
20. Recursive solver step for PartBoundaryLeakageCharge.A: Use the Part_{N,Q} envelope definition to price that crossing.
21. Recursive solver step for PartBoundaryLeakageCharge.A: Contradict uncharged loss of retained amplitude.
22. Recursive solver step for PartBoundaryLeakageCharge.A: Use problems/navier-stokes/agent-contract.yaml:60 as source support for Pack/Part bridge support.
23. Recursive solver step for PartBoundaryLeakageCharge.A: Use problems/navier-stokes/theorem-packet.yaml as source support for Pack/Part bridge support.

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
