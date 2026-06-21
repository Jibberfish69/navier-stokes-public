# PositiveRemainderDepletion.A theorem creation

## Target

- target obligation: HeightFluxControl.A
- target label: Create the native theorem route HeightFluxControl.A after the supplier chain PositiveRemainderDepletion.A stopped serving the source-reserve CM-exit target.
- route role: The current source-supplier audit keeps PositiveRemainderDepletion.A conditional on SourceWeightedTerminalAngularDepletion.A: the selected terminal positive source carrier must spend drain, legal parent-edge loss, or angular/source-weighted depletion rather than persist as unpaid positive remainder.
- theorem family: reserve-creation-charge

## Created Theorem

PositiveRemainderDepletion.A. On each localized pre-Cauchy source packet, the positive remainder is bounded by a strict fraction of drain plus legal parent-edge loss once SourceWeightedTerminalAngularDepletion.A controls the selected terminal angular source carrier.

## Inventive Search

- mode: inventive-right-theorem-selection
- external_resources_used: false
- external_resource_policy: disabled-by-default; external searches may suggest support but may not certify or promote a theorem
- selected_mechanism: positive_remainder_depletion_to_source_weighted_angular
- candidate_count: 1
- solver_chain_verdict: open
- selection_reason: This theorem is the right next move because it changes the proof economy: The current source-supplier audit keeps PositiveRemainderDepletion.A conditional on SourceWeightedTerminalAngularDepletion.A: the selected terminal positive source carrier must spend drain, legal parent-edge loss, or angular/source-weighted depletion rather than persist as unpaid positive remainder. It is source-backed by 8 local ingredient(s). It deliberately reduces the remaining work to SourceWeightedTerminalAngularDepletion.A rather than pretending the frontier is closed.

### Candidate Theorems

- PositiveRemainderDepletion.A (positive_remainder_depletion_to_source_weighted_angular; score=124)

### Retrieved Ingredients

- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/agent-contract.yaml:58 -- source ingredient
- problems/navier-stokes/agent-contract.yaml:175 -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/agent-contract.yaml:56 -- source ingredient

### Recursive Solver Chain

- terminal_verdict: open
- reason: No internal solver mechanism is installed for SourceWeightedTerminalAngularDepletion.A.
- depth 0: PositiveRemainderDepletion.A via positive_remainder_depletion_to_source_weighted_angular -> SourceWeightedTerminalAngularDepletion.A

## Allowed Inputs

- SourceWeightedTerminalAngularDepletion.A
- positive pre-Cauchy source remainder
- drain
- legal parent-edge loss
- selected active packet
- TerminalSignedSaturationCMFaceReduction.A. In the CM contrapositive route with Exit(Q):=not Member(Q), every failure of TerminalSignedSaturation.A is paid by retained signed partners, legal exits, ASAC pair-weight charge, finite donor balance, or else becomes a terminal zero-radius source residue; that residue is first audited for original participation law status, giving not Part_{N,Q} when same-solution participation remains and true not Pack_Q only when the participation record is absent. This is a CM face-reduction theorem, not a forward no-free-sink supplier discharge.
- theorem-packet.yaml, theorem-repair.yaml, dependency-discharge.yaml.'
- ScaleCriticalTreeCarleson.A. The installed reserve, charge, adjoint-tail, and windowwise leakage ledgers sum to the Pack_Q scale-critical donor-refill Carleson bound; an unpaid infinite donor-refill tree is therefore a Pack-face exit witness.
- - problems/navier-stokes/live-theorem-edge.yaml
- - problems/navier-stokes/theorem-packet.yaml
- ParentSquareEmbed.A
- WeightedAdjRes.A
- terminal heat-window decomposition
- normalized child packet mass

## Forbidden Imports

- PositiveRemainderDepletion.A
- Create the native theorem route HeightFluxControl.A after the supplier chain PositiveRemainderDepletion.A stopped serving the source-reserve CM-exit target.
- HeightFluxControl.A
- full-MPP closure
- submission readiness
- global smoothness
- ScaleCriticalTreeCarleson.A
- SquareReserveEvolution.A
- free terminal reserve creation

## Proof Attempt

1. Decompose the pre-Cauchy source into time derivative, drain, legal divergence/loss, and positive remainder.
2. Use finite donor-balance telescoping for the derivative and legal losses.
3. Reduce the positive remainder to source-weighted terminal angular depletion on the selected active packet.
4. Keep this as positive Pack/source-supplier work; do not promote it directly into Pack, Part, or Field, and keep Member downstream of the CM witness certificate.
5. Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.
6. Use problems/navier-stokes/agent-contract.yaml:175 as source support for installed dynamic support.

## Circularity Audit

- status: passed
- violations: none

## Solver Verdict

- verdict: new_subprimitive
- certification_level: theorem-creation:new-subprimitive
- rationale: The theorem has been reduced to a smaller noncircular primitive that is not currently installed.
- next subprimitive: SourceWeightedTerminalAngularDepletion.A -- source-weighted terminal angular depletion for the selected positive source carrier

## Promotion Plan

- promotion_allowed: false
- recommended_next_cell_type: theorem-creation
