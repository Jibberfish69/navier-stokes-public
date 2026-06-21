# PastWindowShadowCompleteness.A theorem creation

## Target

- target obligation: PastWindowShadowCompleteness.A
- target label: the past-window shadow captures every uncharged reserve contribution
- route role: Close inherited reserve separation by proving every uncharged terminal reserve packet has a past-window shadow ancestor.
- theorem family: reserve-creation-charge

## Created Theorem

PastWindowShadowCompleteness.A. Every uncharged terminal reserve contribution has a Past(W) shadow ancestor; any first uncovered contribution injects into Charge_N(W) or is absorbed by the declared loss ledger.

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
- selected_mechanism: past_window_shadow_completeness_closure
- candidate_count: 5
- solver_chain_verdict: closed inside the local recursive solver only; promotion verdict below remains conditional
- selection_reason: This theorem is the right next move because it changes the proof economy: Close inherited reserve separation by proving every uncharged terminal reserve packet has a past-window shadow ancestor. It is source-backed by 8 local ingredient(s). The internal solver also discharged the residual chain through PastWindowShadowCompleteness.A.

### Candidate Theorems

- PastWindowReserveSeparation.A (past_window_exclusion; score=108)
- PastWindowShadowCompleteness.A (past_window_shadow_completeness_closure; score=116)
- PastWindowShadowCompleteness.A (contrapositive_exit; score=72)
- PastWindowShadowCompleteness.A (compactness_defect_rigidity; score=71)
- PastWindowShadowCompleteness.A (monotone_budget; score=74)

### Retrieved Ingredients

- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/agent-contract.yaml:60 -- Part/Field bridge support
- problems/navier-stokes/agent-contract.yaml:55 -- Part/Field bridge support
- problems/navier-stokes/theorem-packet.yaml -- Part/Field bridge support
- problems/navier-stokes/agent-contract.yaml:172 -- Part/Field bridge support
- problems/navier-stokes/agent-contract.yaml:165 -- Part/Field bridge support

### Recursive Solver Chain

- terminal_verdict: closed inside the local recursive solver only
- reason: The recursive theorem solver reached a terminal mechanism with no remaining residual primitive.
- depth 0: PastWindowShadowCompleteness.A via past_window_shadow_completeness_closure -> closed

## Allowed Inputs

- ChargeLedgerInjection.A
- ParentSquareEmbed.A
- Past(W) shadow tree
- first-uncovered ancestor
- ChargeLedgerInjection.A. Close the terminal reserve birth problem by proving a genuinely new uncharged reserve birth creates a zero-cost packet-creation contradiction. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- central_gate: Every promoted theorem result must land in Pack_Q, Part_{N,Q}, or
- - problems/navier-stokes/theorem-packet.yaml
- Define or prove: Added three theorem-facing reductions on the Navier-Stokes lane. First, weighted-mixed-jet-next-time-envelope-reduction.md proves the exact whole-tower inequality A_next_ s-1 (tau,r) <= nu D_s(tau,r) + C_s A_s(tau,r)^2, red
- - once a route packet or broad theorem burden is visible, the lane must record the selected target and route authority
- TerminalReserveFirstAppearanceCharge.A. On every admissible terminal heat window W, every square-reserve contribution not already represented in Past(W) either injects into Charge_N(W) or is absorbed by the declared loss ledger.
- WeightedAdjRes.A
- terminal heat-window decomposition
- normalized child packet mass
- Define or prove: Reduced the live Navier-Stokes route stack against the Clay whole-space target into exact source-backed ingredients already present on the lane. On the classical side, isolated the mixed-jet system, the exact rung-level can

## Forbidden Imports

- PastWindowShadowCompleteness.A
- the past-window shadow captures every uncharged reserve contribution
- full-MPP closure
- submission readiness
- global smoothness
- ScaleCriticalTreeCarleson.A
- SquareReserveEvolution.A
- free terminal reserve creation

## Proof Attempt

1. Assume an uncharged terminal reserve packet has no Past(W) shadow.
2. Choose the first uncovered scale-time ancestor in the terminal tree.
3. Apply ChargeLedgerInjection.A to that first uncovered birth.
4. Contradict the packet being both uncharged and outside the declared loss ledger.
5. Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.
6. Use problems/navier-stokes/agent-contract.yaml:60 as source support for Part/Field bridge support.

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
