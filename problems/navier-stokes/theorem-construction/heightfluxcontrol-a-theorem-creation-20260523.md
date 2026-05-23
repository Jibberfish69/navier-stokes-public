# HeightFluxControl.A theorem creation

## Target

- target obligation: HeatDwellSampling.A
- target label: heat-dwell sampling of a first positive retained height-flux pulse
- route role: Turn the remaining positive source-reserve birth charge into the first proof-facing sampling theorem: a first large retained height-flux event must create Pack gain, Part/dwell failure, legal Field source charge, or a Zeno terminal residue atom.
- theorem family: generic-bridge-theorem

## Created Theorem

HeightFluxControl.A. Turn the remaining positive source-reserve birth charge into the first proof-facing sampling theorem: a first large retained height-flux event must create Pack gain, Part/dwell failure, legal Field source charge, or a Zeno terminal residue atom. This supplies the exact noncircular bridge needed for heat-dwell sampling of a first positive retained height-flux pulse.

## Inventive Search

- mode: inventive-right-theorem-selection
- external_resources_used: false
- external_resource_policy: disabled-by-default; external searches may suggest support but may not certify or promote a theorem
- selected_mechanism: height_flux_control_to_heat_dwell_sampling
- candidate_count: 1
- solver_chain_verdict: open
- selection_reason: This theorem is the right next move because it changes the proof economy: Turn the remaining positive source-reserve birth charge into the first proof-facing sampling theorem: a first large retained height-flux event must create Pack gain, Part/dwell failure, legal Field source charge, or a Zeno terminal residue atom. It is source-backed by 8 local ingredient(s). It deliberately reduces the remaining work to HeatDwellSampling.A rather than pretending the frontier is closed.

### Candidate Theorems

- HeightFluxControl.A (height_flux_control_to_heat_dwell_sampling; score=160)

### Retrieved Ingredients

- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- Pack/Part bridge support
- problems/navier-stokes/theorem-packet.yaml -- Pack/Part bridge support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/agent-contract.yaml:145 -- installed dynamic support

### Recursive Solver Chain

- terminal_verdict: open
- reason: No internal solver mechanism is installed for HeatDwellSampling.A.
- depth 0: HeightFluxControl.A via height_flux_control_to_heat_dwell_sampling -> HeatDwellSampling.A

## Allowed Inputs

- Pack_Q
- Part_{N,Q}
- Field_{N,r,Q}
- same terminal ledger
- retained height-flux pulse
- source-reserve birth charge
- ScaleCriticalTreeCarleson.A. The reserve, charge, adjoint-tail, and windowwise leakage ledgers would sum to the Pack_Q scale-critical donor-refill Carleson bound only after the noncircular Pack-side residual primitive is proved; until then an unpaid infinite donor-refill tree remains a Pack-face exit witness, not a closed no-exit theorem.
- PastWindowReserveSeparation.A. Force every uncharged reserve contribution to have already existed in Past(W), leaving only charge-priced first appearances. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- Part landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- Pack landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- Field landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- TerminalCMNoExit.FaceReduction.A. For original smooth data, CanonicalTerminalPacketCapture.A, AnyFiniteFailureWitnessCMExit.A, GenuineCMExit.Equiv.A, and TerminalSourceResidueCMExit.A reduce NoGenuineCMExit to the Pack-first CM exit tree: ScaleCriticalTreeCarleson.A is the Pack-side donor-refill landing, followed only by Part and licensed Field if Pack survives.
- BASACReverseHolderProduction.A. Producing a reverse-Holder B_ASAC^RH(p) subclass is the exact remaining forward supplier theorem; the installed B_ASAC equality-class clauses allow finite L^1_t terminal-layer concentration, so this production is not currently discharged and remains supplier-quarantined for the CM route.
- CFI.A. OFP.A together with CFI.B1 and CFI.B2 yields the retained conditional field-integrability package, while End_NS, Field readout, and Member remain downstream consequences.

## Forbidden Imports

- HeightFluxControl.A
- heat-dwell sampling of a first positive retained height-flux pulse
- HeatDwellSampling.A
- full-MPP closure
- submission readiness
- global smoothness

## Proof Attempt

1. Work inside the retained CM witness-face packet and keep the claim supplier-quarantined until Pack/Part/Field landing is separately certified.
2. Localize the first positive height-flux pulse to a heat-dwell window on the same terminal ledger.
3. Split the sampled pulse into Pack gain, Part/dwell failure, legal Field source charge, or Zeno terminal residue atom.
4. Reduce non-tautological HeightFluxControl.A to the heat-dwell sampling theorem instead of spending scalar damping or generic reserve bookkeeping.
5. Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.

## Circularity Audit

- status: passed
- violations: none

## Solver Verdict

- verdict: new_subprimitive
- certification_level: theorem-creation:new-subprimitive
- rationale: The theorem has been reduced to a smaller noncircular primitive that is not currently installed.
- next subprimitive: HeatDwellSampling.A -- heat-dwell sampling of a first positive retained height-flux pulse

## Promotion Plan

- promotion_allowed: false
- recommended_next_cell_type: theorem-creation
