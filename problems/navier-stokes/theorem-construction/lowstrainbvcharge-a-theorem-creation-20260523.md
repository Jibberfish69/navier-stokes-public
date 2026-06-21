# LowStrainBVCharge.A theorem creation

## Target

- target obligation: LowStrainBVCharge.A
- target label: BV sampling charge for the low-strain part of a retained height-flux pulse
- route role: Use the direct BV attempt: far-low temporal BV has a parabolic scale-separation gain, so the remaining subwall is the near-neighbor low-strain material/source variation together with retained packet frame rotation at the high heat rate.
- theorem family: reserve-creation-charge

## Created Theorem

LowStrainBVCharge.A. Use the direct BV attempt: far-low temporal BV has a parabolic scale-separation gain, so the remaining subwall is the near-neighbor low-strain material/source variation together with retained packet frame rotation at the high heat rate. This supplies the exact noncircular bridge needed for BV sampling charge for the low-strain part of a retained height-flux pulse.

## Inventive Search

- mode: inventive-right-theorem-selection
- external_resources_used: false
- external_resource_policy: disabled-by-default; external searches may suggest support but may not certify or promote a theorem
- selected_mechanism: low_strain_bv_to_near_band_and_frame_bv
- candidate_count: 1
- solver_chain_verdict: open
- selection_reason: This theorem is the right next move because it changes the proof economy: Use the direct BV attempt: far-low temporal BV has a parabolic scale-separation gain, so the remaining subwall is the near-neighbor low-strain material/source variation together with retained packet frame rotation at the high heat rate. It is source-backed by 8 local ingredient(s). It deliberately reduces the remaining work to NearBandBVToBurstOrSource.A+FrameBVCharge.A rather than pretending the frontier is closed.

### Candidate Theorems

- LowStrainBVCharge.A (low_strain_bv_to_near_band_and_frame_bv; score=136)

### Retrieved Ingredients

- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/agent-contract.yaml:145 -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- retained-face amplitude support
- problems/navier-stokes/theorem-packet.yaml -- Part/Field bridge support

### Recursive Solver Chain

- terminal_verdict: open
- reason: No internal solver mechanism is installed for NearBandBVToBurstOrSource.A+FrameBVCharge.A.
- depth 0: LowStrainBVCharge.A via low_strain_bv_to_near_band_and_frame_bv -> NearBandBVToBurstOrSource.A+FrameBVCharge.A

## Allowed Inputs

- low-strain temporal BV
- parabolic scale separation
- near-band material derivative
- retained packet frame rotation
- TerminalSignedSaturationCMFaceReduction.A. In the CM contrapositive route with Exit(Q):=not Member(Q), every failure of TerminalSignedSaturation.A is paid by retained signed partners, legal exits, ASAC pair-weight charge, finite donor balance, or else becomes a terminal zero-radius source residue; that residue is first audited for original participation law status, giving not Part_{N,Q} when same-solution participation remains and packet/window evidence only when the participation record is absent. This is a CM Part/Field-reduction theorem, not a forward no-free-sink supplier discharge.
- ScaleCriticalTreeCarleson.A. The reserve, charge, adjoint-tail, and windowwise leakage ledgers would sum to the Pack_Q scale-critical donor-refill Carleson bound only after the noncircular Field-window support residual primitive is proved; until then an unpaid infinite donor-refill tree remains a Pack-face exit witness, not a closed no-exit theorem.
- BASACReverseHolderProduction.A. Producing a reverse-Holder B_ASAC^RH(p) subclass is quarantined downstream no-pulse/source-control support; the installed B_ASAC equality-class clauses allow finite L^1_t terminal-layer concentration, but this production is not a terminal Zeno CM burden after the zero-radius residue is sorted as Part/Field witness support by the Pack-out-of-CM audit.
- theorem-packet.yaml, theorem-repair.yaml, dependency-discharge.yaml.'
- RetainedFaceAmplitudeGain.A. Any retained field-face amplitude gain admissible for the CM contrapositive route is recorded first as a Pack_Q gain event and transported through Part_{N,Q} without importing Field_{N,r,Q} or Member(Q) as a premise.
- SameLedgerConcordance.A. If localized Part and Field support share the same carrier class, Q, depth, compatible terminal-window lineage, FaceRestrictionHeredity.A, and a positive Field synchronization scale, then they restrict to one retained same-fluid witness ledger on which Part_{N,Q} and Field_{N,r,Q}; Pack_Q only as Field window evidence hold together.
- ParentSquareEmbed.A
- WeightedAdjRes.A
- terminal heat-window decomposition
- normalized child packet mass

## Forbidden Imports

- LowStrainBVCharge.A
- BV sampling charge for the low-strain part of a retained height-flux pulse
- full-MPP closure
- submission readiness
- global smoothness
- ScaleCriticalTreeCarleson.A
- SquareReserveEvolution.A
- free terminal reserve creation

## Proof Attempt

1. Decompose the sampled low-strain temporal variation into far-low, near-band, and moving-frame components.
2. Absorb the far-low term by the parabolic scale-separation gain.
3. Route the surviving near-band material/source variation to NearBandBVToBurstOrSource.A.
4. Route the moving retained-frame variation to FrameBVCharge.A.
5. Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.

## Circularity Audit

- status: passed
- violations: none

## Solver Verdict

- verdict: new_subprimitive
- certification_level: theorem-creation:new-subprimitive
- rationale: The theorem has been reduced to a smaller noncircular primitive that is not currently installed.
- next subprimitive: NearBandBVToBurstOrSource.A+FrameBVCharge.A -- near-band BV burst/source control plus retained frame BV charge

## Promotion Plan

- promotion_allowed: false
- recommended_next_cell_type: theorem-creation
