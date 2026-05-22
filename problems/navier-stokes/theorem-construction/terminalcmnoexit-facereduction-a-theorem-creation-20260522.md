# TerminalCMNoExit.FaceReduction.A theorem creation

## Target

- target obligation: terminalcmnoexit-a-nogenuinecmexit-a
- target label: TerminalCMNoExit.A / NoGenuineCMExit.A
- route role: Use CanonicalTerminalPacketCapture.A, AnyFiniteFailureWitnessCMExit.A, GenuineCMExit.Equiv.A, and TerminalSourceResidueCMExit.A to reduce NoGenuineCMExit to three positive survivor faces: Pack positive-scale/strain-integrability no-exit, Part tower/readout closedness no-exit, and licensed Field coherence no-exit after Part.
- theorem family: generic-bridge-theorem

## Created Theorem

TerminalCMNoExit.FaceReduction.A. For original smooth data, CanonicalTerminalPacketCapture.A, AnyFiniteFailureWitnessCMExit.A, GenuineCMExit.Equiv.A, and TerminalSourceResidueCMExit.A reduce NoGenuineCMExit to exactly three positive survivor faces: Pack no-exit, Part no-exit, and licensed Field no-exit.

## Inventive Search

- mode: inventive-right-theorem-selection
- external_resources_used: false
- external_resource_policy: disabled-by-default; external searches may suggest support but may not certify or promote a theorem
- selected_mechanism: terminal_cm_no_exit_face_reduction
- candidate_count: 4
- solver_chain_verdict: open
- selection_reason: This theorem is the right next move because it changes the proof economy: Use CanonicalTerminalPacketCapture.A, AnyFiniteFailureWitnessCMExit.A, GenuineCMExit.Equiv.A, and TerminalSourceResidueCMExit.A to reduce NoGenuineCMExit to three positive survivor faces: Pack positive-scale/strain-integrability no-exit, Part tower/readout closedness no-exit, and licensed Field coherence no-exit after Part. It is source-backed by 8 local ingredient(s). It deliberately reduces the remaining work to TerminalCMNoExit.PositiveNoExitFaces.A rather than pretending the frontier is closed.

### Candidate Theorems

- TerminalCMNoExit.FaceReduction.A (terminal_cm_no_exit_face_reduction; score=142)
- TerminalcmnoexitNogenuinecmexitContrapositiveExit.A (contrapositive_exit; score=60)
- TerminalcmnoexitNogenuinecmexitCompactnessDefectRigidity.A (compactness_defect_rigidity; score=63)
- TerminalcmnoexitNogenuinecmexitMonotoneBudget.A (monotone_budget; score=58)

### Retrieved Ingredients

- problems/navier-stokes/agent-contract.yaml:53 -- source ingredient
- problems/navier-stokes/agent-contract.yaml:145 -- installed dynamic support
- problems/navier-stokes/agent-contract.yaml:55 -- source ingredient
- problems/navier-stokes/agent-contract.yaml:56 -- source ingredient
- problems/navier-stokes/agent-contract.yaml:101 -- source ingredient
- problems/navier-stokes/agent-contract.yaml:144 -- retained-face amplitude support

### Recursive Solver Chain

- terminal_verdict: open
- reason: No internal solver mechanism is installed for TerminalCMNoExit.PositiveNoExitFaces.A.
- depth 0: TerminalCMNoExit.FaceReduction.A via terminal_cm_no_exit_face_reduction -> TerminalCMNoExit.PositiveNoExitFaces.A

## Allowed Inputs

- CanonicalTerminalPacketCapture.A
- AnyFiniteFailureWitnessCMExit.A
- GenuineCMExit.Equiv.A
- TerminalSourceResidueCMExit.A
- Pack no-exit
- Part no-exit
- licensed Field no-exit
- - problems/navier-stokes/live-theorem-edge.yaml
- theorem-packet.yaml, theorem-repair.yaml, dependency-discharge.yaml.'
- - problems/navier-stokes/theorem-packet.yaml
- CFI.A. OFP.A together with CFI.B1 and CFI.B2 yields the retained conditional field-integrability package, while End_NS, Field readout, and Member remain downstream consequences.
- OFP.A. The collar source-pressure package CSP.A propagates the retained one-field package on the same-fluid interval, with CFI.A, endpoint readout, Field, and Member kept downstream.
- CSP.A. On the retained same-fluid collar, LCI.A together with the installed post-LCI source ledger FCI.5f supplies the collar source-pressure package; OFP.A, CFI.A, endpoint readout, Field, and Member remain downstream consumers.
- LCI.A. On a retained same-fluid interval with bounded Pack gauge and the ordered ACT.KX receiver package installed, ACT.X-Readout gives ACT.A, ACT.A gives RCF.A through the transported-center residual package, and ULCI.A/DTC.C yields lower-carrier interval integrability; FCI.5f, CSP.A, OFP.A, CFI.A, endpoint readout, Field, and Member remain downstream consumers.

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
3. Use GenuineCMExit.Equiv.A to read genuine terminal non-continuation as loss of every continuation-complete Pack/Part/Field packet.
4. Use TerminalSourceResidueCMExit.A only as source-residue sorting into Pack/Part; do not treat anti-atom deletion or source absolute continuity as the Field face.
5. Conclude that TerminalCMNoExit.A is exactly the conjunction of Pack no-exit, Part no-exit, and licensed Field no-exit; leave those analytic faces as the residual theorem.
6. Use problems/navier-stokes/agent-contract.yaml:53 as source support for source ingredient.
7. Use problems/navier-stokes/agent-contract.yaml:145 as source support for installed dynamic support.

## Circularity Audit

- status: passed
- violations: none

## Solver Verdict

- verdict: new_subprimitive
- certification_level: theorem-creation:new-subprimitive
- rationale: The theorem has been reduced to a smaller noncircular primitive that is not currently installed.
- next subprimitive: TerminalCMNoExit.PositiveNoExitFaces.A -- positive no-exit across Pack strain-integrability/positive-scale carrier, Part tower/readout closedness, and licensed Field coherence

## Promotion Plan

- promotion_allowed: false
- recommended_next_cell_type: theorem-creation
