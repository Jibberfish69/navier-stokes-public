# ReserveCreationCharge.A theorem creation

## Target

- target obligation: ScaleCriticalTreeCarleson.A
- target label: Pack-side donor-refill Carleson landing: Pack_Q implies ScaleCriticalTreeCarleson.A, and selected failure is not Pack_Q
- route role: Convert static donor-square reserve support into contractive parent-or-charge evolution.
- theorem family: reserve-creation-charge

## Created Theorem

ReserveCreationCharge.A. For every admissible terminal heat window W and scale N, the newly created square reserve satisfies [R_N(W) - (1 - delta) R_N(Past(W)) - Loss_N(W)]_+ <= Charge_N(W) + o_N(1), using only installed parent-square embedding and weighted adjoint residual controls.

## Inventive Search

- mode: inventive-right-theorem-selection
- external_resources_used: false
- external_resource_policy: disabled-by-default; external searches may suggest support but may not certify or promote a theorem
- selected_mechanism: 
- candidate_count: 0

### Candidate Theorems


### Retrieved Ingredients

- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- Pack/Part bridge support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- Pack/Part bridge support

## Allowed Inputs

- ParentSquareEmbed.A
- WeightedAdjRes.A
- terminal heat-window decomposition
- normalized child packet mass
- Pack landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- Part landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- Field landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- ReserveCreationCharge.A. For every admissible terminal heat window W and scale N, the positive first-created square reserve increment is inherited from Past(W) up to declared loss or is paid by Charge_N(W), so [R_N(W) - (1 - delta)R_N(Past(W)) - Loss_N(W)]_+ <= Charge_N(W) + o_N(1).
- HeightFluxControl.A. Turn the remaining positive source-reserve birth charge into the first proof-facing sampling theorem: a first large retained height-flux event must create Pack gain, Part/dwell failure, legal Field source charge, or a Zeno terminal residue atom. This supplies the exact noncircular bridge needed for Create the recursive theorem subprimitive HeightFluxControl.A exposed by the previous theorem-creation packet, instead of mutating a neighboring route..
- TerminalSignedSaturationCMFaceReduction.A. In the CM contrapositive route with Exit(Q):=not Member(Q), every failure of TerminalSignedSaturation.A is paid by retained signed partners, legal exits, ASAC pair-weight charge, finite donor balance, or else becomes a terminal zero-radius source residue; that residue is first audited for pointwise Part status, giving not Part_{N,Q} when same-solution participation remains and true not Pack_Q only when the participation record is absent. This is a CM face-reduction theorem, not a forward no-free-sink supplier discharge.
- BASACReverseHolderProduction.A. Producing a reverse-Holder B_ASAC^RH(p) subclass is quarantined downstream no-pulse/source-control support; the installed B_ASAC equality-class clauses allow finite L^1_t terminal-layer concentration, but this production is not a terminal Zeno CM burden after the zero-radius residue lands as not Pack_Q.
- CFI.A. OFP.A together with CFI.B1 and CFI.B2 yields the retained conditional field-integrability package, while End_NS, Field readout, and Member remain downstream consequences.

## Forbidden Imports

- ReserveCreationCharge.A
- Pack-side donor-refill Carleson landing: Pack_Q implies ScaleCriticalTreeCarleson.A, and selected failure is not Pack_Q
- ScaleCriticalTreeCarleson.A
- full-MPP closure
- submission readiness
- global smoothness
- SquareReserveEvolution.A
- free terminal reserve creation

## Proof Attempt

1. Localize the terminal heat window W and split the square reserve increment into inherited parent reserve, normalized child residual, and declared loss.
2. Use ParentSquareEmbed.A to price the inherited diffuse parent cloud against the existing square reserve.
3. Use WeightedAdjRes.A to price normalized child packet residual creation.
4. Reduce the remaining positive part to a first-appearance charge bound for terminal reserve that was not present in Past(W).

## Circularity Audit

- status: passed
- violations: none

## Solver Verdict

- verdict: new_subprimitive
- certification_level: theorem-creation:new-subprimitive
- rationale: The theorem has been reduced to a smaller noncircular primitive that is not currently installed.
- next subprimitive: TerminalReserveFirstAppearanceCharge.A -- terminal square reserve first-appearance is charged rather than free

## Promotion Plan

- promotion_allowed: false
- recommended_next_cell_type: theorem-creation
