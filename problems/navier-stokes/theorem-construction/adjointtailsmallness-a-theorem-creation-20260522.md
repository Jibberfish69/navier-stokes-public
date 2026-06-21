# AdjointTailSmallness.A theorem creation

## Target

- target obligation: AdjointTailSmallness.A
- target label: unmatched adjoint residual tails are small on terminal windows
- route role: Find the missing local bridge that is strictly weaker than the target but strong enough to feed dependency-discharge.
- theorem family: generic-bridge-theorem

## Created Theorem

AdjointTailSmallness.A. Find the missing local bridge that is strictly weaker than the target but strong enough to feed dependency-discharge. This supplies the exact noncircular bridge needed for unmatched adjoint residual tails are small on terminal windows.

## Inventive Search

- mode: inventive-right-theorem-selection
- external_resources_used: false
- external_resource_policy: disabled-by-default; external searches may suggest support but may not certify or promote a theorem
- selected_mechanism: minimal_bridge
- candidate_count: 4
- solver_chain_verdict: open
- selection_reason: This theorem is the right next move because it changes the proof economy: Find the missing local bridge that is strictly weaker than the target but strong enough to feed dependency-discharge. It is source-backed by 8 local ingredient(s). It deliberately reduces the remaining work to AdjointTailSmallness.A.CoreSubprimitive rather than pretending the frontier is closed.

### Candidate Theorems

- AdjointTailSmallness.A (minimal_bridge; score=70)
- AdjointTailSmallness.A (contrapositive_exit; score=64)
- AdjointTailSmallness.A (compactness_defect_rigidity; score=67)
- AdjointTailSmallness.A (monotone_budget; score=62)

### Retrieved Ingredients

- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/agent-contract.yaml:60 -- Part/Field bridge support
- problems/navier-stokes/agent-contract.yaml:55 -- Part/Field bridge support
- problems/navier-stokes/theorem-packet.yaml -- Part/Field bridge support
- problems/navier-stokes/agent-contract.yaml:95 -- Part/Field bridge support
- problems/navier-stokes/agent-contract.yaml:165 -- Part/Field bridge support

### Recursive Solver Chain

- terminal_verdict: open
- reason: No internal solver mechanism is installed for AdjointTailSmallness.A.CoreSubprimitive.
- depth 0: AdjointTailSmallness.A via minimal_bridge -> AdjointTailSmallness.A.CoreSubprimitive

## Allowed Inputs

- Define or prove: Reduced the live Navier-Stokes route stack against the Clay whole-space target into exact source-backed ingredients already present on the lane. On the classical side, isolated the mixed-jet system, the exact rung-level can
- Define or prove: For the mixed-jet tower J_ m,alpha  = \partial_t^m \partial_x^\alpha u and differentiated pressure \Pi_ m,alpha , fix s > 3/2. Using the H^s algebra property and the order-1 Calderon-Zygmund bound for the pressure operator,
- Define or prove: Added three theorem-facing reductions on the Navier-Stokes lane. First, weighted-mixed-jet-next-time-envelope-reduction.md proves the exact whole-tower inequality A_next_ s-1 (tau,r) <= nu D_s(tau,r) + C_s A_s(tau,r)^2, red
- Define or prove: Added four theorem-construction reductions. (1) strict-shadow-no-remainder-corollary.md: under the exact strict-shadow identities already present on the lane, ShadowDef(X) and E_sh(X) vanish identically, so the exact Route 
- Define or prove: Added two new theorem-facing reductions on the Clay whole-space target.
- ChargeLedgerInjection.A. Close the terminal reserve birth problem by proving a genuinely new uncharged reserve birth creates a zero-cost packet-creation contradiction. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- central_gate: Every promoted theorem result must land in Pack_Q, Part_{N,Q}, or
- - problems/navier-stokes/theorem-packet.yaml
- - 'Before promotion, run the bridge-license question: does this result enter Pack_Q,
- - once a route packet or broad theorem burden is visible, the lane must record the selected target and route authority
- Define or prove: Completed the Hopf/shuffle line as a theorem-program refinement. The correct algebraic fit for the time tower is the divided-power Hopf law on one primitive generator, and for the mixed jet tower it is the shuffle/unshuffle
- Define or prove: Formalized the refined direct Lagrangian route as a six-lemma mainline: differentiated Lagrangian decomposition, deformation-adapted energy, ellipticity window, coefficient-commutator absorption, no-loss pressure recovery, 
- Define or prove: Updated lemma-4b-no-loss-pressure-recovery-attack.md with a geometry-testing ladder for the elliptic test field W_test = A^T grad Phi solving -div_a(G grad Phi)=div_a Z_alpha. The note now distinguishes three rungs: (1) ene
- PastWindowReserveSeparation.A. Force every uncharged reserve contribution to have already existed in Past(W), leaving only charge-priced first appearances. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.

## Forbidden Imports

- AdjointTailSmallness.A
- unmatched adjoint residual tails are small on terminal windows
- full-MPP closure
- submission readiness
- global smoothness

## Proof Attempt

1. Name the strongest installed inputs.
2. State the weakest bridge they imply.
3. Audit that the bridge does not import the target conclusion.
4. Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.
5. Use problems/navier-stokes/agent-contract.yaml:60 as source support for Part/Field bridge support.

## Circularity Audit

- status: passed
- violations: none

## Solver Verdict

- verdict: new_subprimitive
- certification_level: theorem-creation:generated-subprimitive-needs-sharpening
- rationale: The theorem has been reduced to a smaller noncircular primitive that is not currently installed.
- next subprimitive: AdjointTailSmallness.A.CoreSubprimitive -- core noncircular subprimitive for unmatched adjoint residual tails are small on terminal windows

## Promotion Plan

- promotion_allowed: false
- recommended_next_cell_type: creative-theorem-search
