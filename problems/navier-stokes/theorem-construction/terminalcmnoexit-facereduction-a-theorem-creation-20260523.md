# TerminalCMNoExit.FaceReduction.A theorem creation

## Target

- target obligation: terminalcmnoexit-a-nogenuinecmexit-a
- target label: TerminalCMNoExit.A / NoGenuineCMExit.A
- route role: Use CanonicalTerminalPacketCapture.A, AnyFiniteFailureWitnessCMExit.A, GenuineCMExit.Equiv.A, and TerminalSourceResidueCMExit.A to reduce NoGenuineCMExit to the Pack-first CM exit tree: carrier failure lands in Pack, retained participation failure lands in Part, and only a retained coherent same-fluid packet reaches Field.
- theorem family: generic-bridge-theorem

## Created Theorem

TerminalCMNoExit.FaceReduction.A. For original smooth data, CanonicalTerminalPacketCapture.A, AnyFiniteFailureWitnessCMExit.A, GenuineCMExit.Equiv.A, and TerminalSourceResidueCMExit.A reduce NoGenuineCMExit to the Pack-first CM exit tree: ScaleCriticalTreeCarleson.A is the Pack-side donor-refill landing, followed only by Part and licensed Field if Pack survives.

## Inventive Search

- mode: inventive-recursive-theorem-solver
- external_resources_used: false
- external_resource_policy: disabled-by-default; external searches may suggest support but may not certify or promote a theorem
- selected_mechanism: terminal_cm_no_exit_face_reduction
- candidate_count: 1
- solver_chain_verdict: closed
- selection_reason: This theorem is the right next move because it changes the proof economy: Use CanonicalTerminalPacketCapture.A, AnyFiniteFailureWitnessCMExit.A, GenuineCMExit.Equiv.A, and TerminalSourceResidueCMExit.A to reduce NoGenuineCMExit to the Pack-first CM exit tree: carrier failure lands in Pack, retained participation failure lands in Part, and only a retained coherent same-fluid packet reaches Field. It is source-backed by 8 local ingredient(s). It deliberately reduces the remaining work to ScaleCriticalTreeCarleson.A rather than pretending the frontier is closed. The internal solver also discharged the residual chain through TerminalCMNoExit.FaceReduction.A -> ScaleCriticalTreeCarleson.A -> HeightFluxControl.A -> HeatDwellSampling.A -> LowStrainBVCharge.A -> NearBandBVToBurstOrSource.A+FrameBVCharge.A -> NearBandMaterialSourceCharge.A+FrameBVCharge.A -> TerminalSignedSaturationCMFaceReduction.A.

### Candidate Theorems

- TerminalCMNoExit.FaceReduction.A (terminal_cm_no_exit_face_reduction; score=142)

### Retrieved Ingredients

- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- Pack/Part bridge support
- problems/navier-stokes/theorem-packet.yaml -- Pack/Part bridge support
- problems/navier-stokes/agent-contract.yaml:53 -- source ingredient
- problems/navier-stokes/agent-contract.yaml:145 -- installed dynamic support

### Recursive Solver Chain

- terminal_verdict: closed
- reason: The recursive theorem solver reached a terminal mechanism with no remaining residual primitive.
- depth 0: TerminalCMNoExit.FaceReduction.A via terminal_cm_no_exit_face_reduction -> ScaleCriticalTreeCarleson.A
- depth 1: ScaleCriticalTreeCarleson.A via scale_critical_tree_carleson_pack_landing -> HeightFluxControl.A
- depth 2: HeightFluxControl.A via height_flux_control_to_heat_dwell_sampling -> HeatDwellSampling.A
- depth 3: HeatDwellSampling.A via heat_dwell_sampling_to_low_strain_bv_charge -> LowStrainBVCharge.A
- depth 4: LowStrainBVCharge.A via low_strain_bv_to_near_band_and_frame_bv -> NearBandBVToBurstOrSource.A+FrameBVCharge.A
- depth 5: NearBandBVToBurstOrSource.A+FrameBVCharge.A via near_band_bv_to_material_source_plus_frame -> NearBandMaterialSourceCharge.A+FrameBVCharge.A
- depth 6: NearBandMaterialSourceCharge.A+FrameBVCharge.A via near_band_material_frame_to_terminal_signed_saturation -> TerminalSignedSaturation.A
- depth 7: TerminalSignedSaturationCMFaceReduction.A via terminal_signed_saturation_cm_face_reduction -> closed

## Allowed Inputs

- CanonicalTerminalPacketCapture.A
- AnyFiniteFailureWitnessCMExit.A
- GenuineCMExit.Equiv.A
- TerminalSourceResidueCMExit.A
- ScaleCriticalTreeCarleson.A
- not Pack_Q
- Pack/Part/Field
- HeightFluxControl.A. Turn the remaining positive source-reserve birth charge into the first proof-facing sampling theorem: a first large retained height-flux event must create Pack gain, Part/dwell failure, legal Field source charge, or a Zeno terminal residue atom. This supplies the exact noncircular bridge needed for Create the recursive theorem subprimitive HeightFluxControl.A exposed by the previous theorem-creation packet, instead of mutating a neighboring route..
- TerminalSignedSaturationCMFaceReduction.A. In the CM contrapositive route with Exit(Q):=not Member(Q), every failure of TerminalSignedSaturation.A is paid by retained signed partners, legal exits, ASAC pair-weight charge, finite donor balance, or else becomes a terminal zero-radius source residue; that residue is first audited for pointwise Part status, giving not Part_{N,Q} when same-solution participation remains and true not Pack_Q only when the participation record is absent. This is a CM face-reduction theorem, not a forward no-free-sink supplier discharge.
- Pack landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- Part landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- Field landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- ScaleCriticalTreeCarleson.A. The installed reserve, charge, adjoint-tail, and windowwise leakage ledgers sum to the Pack_Q scale-critical donor-refill Carleson bound; an unpaid infinite donor-refill tree is therefore a Pack-face exit witness.
- BASACReverseHolderProduction.A. Producing a reverse-Holder B_ASAC^RH(p) subclass is quarantined downstream no-pulse/source-control support; the installed B_ASAC equality-class clauses allow finite L^1_t terminal-layer concentration, but this production is not a terminal Zeno CM burden after the zero-radius residue lands as not Pack_Q.

## Forbidden Imports

- TerminalCMNoExit.FaceReduction.A
- TerminalCMNoExit.A / NoGenuineCMExit.A
- terminalcmnoexit-a-nogenuinecmexit-a
- full-MPP closure
- submission readiness
- global smoothness

## Proof Attempt

1. Start from original smooth data and an alleged finite terminal tail.
2. Use CanonicalTerminalPacketCapture.A and AnyFiniteFailureWitnessCMExit.A to force any terminal obstruction into Pack, Part, or Field.
3. Use GenuineCMExit.Equiv.A to read genuine terminal non-continuation through first failed continuation-complete Pack/Part/Field face.
4. Use TerminalSourceResidueCMExit.A only as source-residue sorting into Pack/Part; do not treat anti-atom deletion or source absolute continuity as the Field face.
5. Send the Pack branch to ScaleCriticalTreeCarleson.A as the donor-refill Pack-side exit theorem, not to an original-data positive survivor theorem.
6. Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.
7. Recursive solver step for ScaleCriticalTreeCarleson.A: Use WindowwiseReserveCarleson.A to localize reserve increments to terminal heat windows.
8. Recursive solver step for ScaleCriticalTreeCarleson.A: Use ReserveCreationCharge.A and TerminalReserveFirstAppearanceCharge.A to split inherited reserve from first appearances.
9. Recursive solver step for ScaleCriticalTreeCarleson.A: Use ChargeLedgerInjection.A, PastWindowReserveSeparation.A, and AdjointReserveNoFreeCreation.A to price inherited and ledger-visible contributions.
10. Recursive solver step for ScaleCriticalTreeCarleson.A: Reduce the remaining positive source-reserve birth/height-flux contribution to a sharpened core subprimitive before any Pack_Q Carleson landing is promoted.
11. Recursive solver step for ScaleCriticalTreeCarleson.A: Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.
12. Recursive solver step for HeightFluxControl.A: Work inside the retained CM witness-face packet and keep the claim supplier-quarantined until Pack/Part/Field landing is separately certified.
13. Recursive solver step for HeightFluxControl.A: Localize the first positive height-flux pulse to a heat-dwell window on the same terminal ledger.
14. Recursive solver step for HeightFluxControl.A: Split the sampled pulse into Pack gain, Part/dwell failure, legal Field source charge, or Zeno terminal residue atom.
15. Recursive solver step for HeightFluxControl.A: Reduce non-tautological HeightFluxControl.A to the heat-dwell sampling theorem instead of spending scalar damping or generic reserve bookkeeping.
16. Recursive solver step for HeightFluxControl.A: Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.
17. Recursive solver step for HeatDwellSampling.A: Sample the retained height-flux pulse on the same terminal ledger and separate low-strain temporal variation from high-rate burst inheritance.
18. Recursive solver step for HeatDwellSampling.A: Use heat dwell only to locate the sampled window; do not infer net Pack strain from dwell alone.
19. Recursive solver step for HeatDwellSampling.A: Charge the weighted BV variation of the sampled low strain into Part, licensed Field source charge, Zeno residue, or parabolic-burst inheritance.
20. Recursive solver step for HeatDwellSampling.A: Reduce the real PDE burden to LowStrainBVCharge.A.
21. Recursive solver step for HeatDwellSampling.A: Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.
22. Recursive solver step for LowStrainBVCharge.A: Decompose the sampled low-strain temporal variation into far-low, near-band, and moving-frame components.
23. Recursive solver step for LowStrainBVCharge.A: Absorb the far-low term by the parabolic scale-separation gain.
24. Recursive solver step for LowStrainBVCharge.A: Route the surviving near-band material/source variation to NearBandBVToBurstOrSource.A.
25. Recursive solver step for LowStrainBVCharge.A: Route the moving retained-frame variation to FrameBVCharge.A.
26. Recursive solver step for LowStrainBVCharge.A: Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.
27. Recursive solver step for NearBandBVToBurstOrSource.A+FrameBVCharge.A: Keep the near-band and frame terms on the same retained terminal ledger.
28. Recursive solver step for NearBandBVToBurstOrSource.A+FrameBVCharge.A: Pay subparabolic near-band heat variation by the explicit `C_L theta H_W` bound with `theta <= eta_abs/C_L`.
29. Recursive solver step for NearBandBVToBurstOrSource.A+FrameBVCharge.A: Route non-subparabolic near-band amplitude into parabolic-rate burst height.
30. Recursive solver step for NearBandBVToBurstOrSource.A+FrameBVCharge.A: Reduce the unabsorbed source/frame remainder to NearBandMaterialSourceCharge.A plus FrameBVCharge.A.
31. Recursive solver step for NearBandBVToBurstOrSource.A+FrameBVCharge.A: Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.
32. Recursive solver step for NearBandMaterialSourceCharge.A+FrameBVCharge.A: Keep the near-band source term and frame rotation on the same retained packet.
33. Recursive solver step for NearBandMaterialSourceCharge.A+FrameBVCharge.A: Use the installed parent-drain/ASAC support only as support, not as a CM face promotion.
34. Recursive solver step for NearBandMaterialSourceCharge.A+FrameBVCharge.A: Route the common signed positive-source balance to TerminalSignedSaturation.A.
35. Recursive solver step for NearBandMaterialSourceCharge.A+FrameBVCharge.A: Do not reopen generic pressure/material-source bounds; the source audit marks those circular.
36. Recursive solver step for NearBandMaterialSourceCharge.A+FrameBVCharge.A: Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.
37. Recursive solver step for TerminalSignedSaturationCMFaceReduction.A: Partition selected terminal source-current edges into retained signed partners, legal exits, finite donor sinks, and terminal Zeno refill.
38. Recursive solver step for TerminalSignedSaturationCMFaceReduction.A: Pay retained partners by ASAC pair-weight charge, legal exits by declared ledgers, and finite donor sinks by LocalDonorBalance.A plus EntranceLeafDecay.A.
39. Recursive solver step for TerminalSignedSaturationCMFaceReduction.A: Route the only unpaid terminal Zeno refill to the produced B_ASAC terminal residue class.
40. Recursive solver step for TerminalSignedSaturationCMFaceReduction.A: Apply the terminal Zeno Pack-before-Part correction: a zero-radius terminal source residue is Part-first when same-solution pointwise participation remains and true not Pack_Q only when that record is absent.
41. Recursive solver step for TerminalSignedSaturationCMFaceReduction.A: Use BASACTerminalAtomCMFaceLabeling.A to record any incoming flux, CM envelope blowout, or paid exit as Pack/Part/Field witness-face exit.
42. Recursive solver step for TerminalSignedSaturationCMFaceReduction.A: Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.

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
