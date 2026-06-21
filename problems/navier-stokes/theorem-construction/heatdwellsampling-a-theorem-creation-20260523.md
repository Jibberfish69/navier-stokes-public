# HeatDwellSampling.A theorem creation

## Target

- target obligation: HeatDwellSampling.A
- target label: heat-dwell sampling of a first positive retained height-flux pulse
- route role: Use the audited correction to replace bare heat-dwell sampling by the BV sampling inequality: weighted temporal variation of the sampled low strain must route to Part, Field, Zeno residue, or parabolic-burst inheritance.
- theorem family: generic-bridge-theorem

## Created Theorem

HeatDwellSampling.A. Use the audited correction to replace bare heat-dwell sampling by the BV sampling inequality: weighted temporal variation of the sampled low strain must route to Part, Field, Zeno residue, or parabolic-burst inheritance. This supplies the exact noncircular bridge needed for heat-dwell sampling of a first positive retained height-flux pulse.

## Inventive Search

- mode: inventive-right-theorem-selection
- external_resources_used: false
- external_resource_policy: disabled-by-default; external searches may suggest support but may not certify or promote a theorem
- selected_mechanism: heat_dwell_sampling_to_low_strain_bv_charge
- candidate_count: 1
- solver_chain_verdict: open
- selection_reason: This theorem is the right next move because it changes the proof economy: Use the audited correction to replace bare heat-dwell sampling by the BV sampling inequality: weighted temporal variation of the sampled low strain must route to Part, Field, Zeno residue, or parabolic-burst inheritance. It is source-backed by 8 local ingredient(s). It deliberately reduces the remaining work to LowStrainBVCharge.A rather than pretending the frontier is closed.

### Candidate Theorems

- HeatDwellSampling.A (heat_dwell_sampling_to_low_strain_bv_charge; score=150)

### Retrieved Ingredients

- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- Part/Field bridge support
- problems/navier-stokes/theorem-packet.yaml -- retained-face amplitude support
- problems/navier-stokes/theorem-packet.yaml -- Part/Field bridge support

### Recursive Solver Chain

- terminal_verdict: open
- reason: No internal solver mechanism is installed for LowStrainBVCharge.A.
- depth 0: HeatDwellSampling.A via heat_dwell_sampling_to_low_strain_bv_charge -> LowStrainBVCharge.A

## Allowed Inputs

- same terminal ledger
- retained height-flux pulse
- low-strain temporal BV
- Part_{N,Q}
- Field_{N,r,Q}
- Zeno terminal residue
- TerminalSignedSaturationCMFaceReduction.A. In the CM contrapositive route with Exit(Q):=not Member(Q), every failure of TerminalSignedSaturation.A is paid by retained signed partners, legal exits, ASAC pair-weight charge, finite donor balance, or else becomes a terminal zero-radius source residue; that residue is first audited for original participation law status, giving not Part_{N,Q} when same-solution participation remains and packet/window evidence only when the participation record is absent. This is a CM Part/Field-reduction theorem, not a forward no-free-sink supplier discharge.
- ScaleCriticalTreeCarleson.A. The reserve, charge, adjoint-tail, and windowwise leakage ledgers would sum to the Pack_Q scale-critical donor-refill Carleson bound only after the noncircular Field-window support residual primitive is proved; until then an unpaid infinite donor-refill tree remains a Pack-face exit witness, not a closed no-exit theorem.
- BASACReverseHolderProduction.A. Producing a reverse-Holder B_ASAC^RH(p) subclass is quarantined downstream no-pulse/source-control support; the installed B_ASAC equality-class clauses allow finite L^1_t terminal-layer concentration, but this production is not a terminal Zeno CM burden after the zero-radius residue is sorted as Part/Field witness support by the Pack-out-of-CM audit.
- Pack landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- Part landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- Field landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- CFI.A. OFP.A together with CFI.B1 and CFI.B2 yields the retained conditional field-integrability package, while End_NS, Field readout, and Member remain downstream consequences.
- TemporalNonAtomicSource.A. Every terminal source-residue measure produced by the accepted Zeno compactness extraction is non-atomic at the terminal time slice.

## Forbidden Imports

- HeatDwellSampling.A
- heat-dwell sampling of a first positive retained height-flux pulse
- full-MPP closure
- submission readiness
- global smoothness

## Proof Attempt

1. Sample the retained height-flux pulse on the same terminal ledger and separate low-strain temporal variation from high-rate burst inheritance.
2. Use heat dwell only to locate the sampled window; do not infer net Pack strain from dwell alone.
3. Charge the weighted BV variation of the sampled low strain into Part, licensed Field source charge, Zeno residue, or parabolic-burst inheritance.
4. Reduce the real PDE burden to LowStrainBVCharge.A.
5. Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.

## Circularity Audit

- status: passed
- violations: none

## Solver Verdict

- verdict: new_subprimitive
- certification_level: theorem-creation:new-subprimitive
- rationale: The theorem has been reduced to a smaller noncircular primitive that is not currently installed.
- next subprimitive: LowStrainBVCharge.A -- BV sampling charge for the low-strain part of a retained height-flux pulse

## Promotion Plan

- promotion_allowed: false
- recommended_next_cell_type: theorem-creation
