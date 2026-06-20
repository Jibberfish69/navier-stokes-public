# UniformTemporalSourceIntegrability_p_BASAC.A theorem creation

## Target

- target obligation: UniformTemporalSourceIntegrability_p_BASAC.A
- target label: super-L^1 terminal source-thickness estimate for the produced B_ASAC equality class
- route role: UniformTemporalSourceIntegrability_{p,B_ASAC}.A is not TemporalNonAtomicSource.A and may not assume a temporal-integrability packet as input. The rigid-subclass Liouville note proves that once B_ASAC is upgraded to a reverse-Holder subclass B_ASAC^RH(p), the source residue vanishes by Holder on shrinking terminal windows. The remaining production theorem is therefore BASACReverseHolderProduction.A: produce that super-L^1 temporal thickness from the current B_ASAC equality-class clauses.
- theorem family: generic-bridge-theorem

## Created Theorem

UniformTemporalSourceIntegrability_p_BASAC.A. This is the super-L^1 temporal thickness theorem for the produced B_ASAC class; the rigid-subclass Liouville note reduces it to BASACReverseHolderProduction.A, the production of a reverse-Holder B_ASAC^RH(p) subclass from the current equality-class clauses.

## Inventive Search

- mode: inventive-right-theorem-selection
- external_resources_used: false
- external_resource_policy: disabled-by-default; external searches may suggest support but may not certify or promote a theorem
- selected_mechanism: basac_uniform_temporal_integrability_to_reverse_holder_production
- candidate_count: 1
- solver_chain_verdict: open
- selection_reason: This theorem is the right next move because it changes the proof economy: UniformTemporalSourceIntegrability_{p,B_ASAC}.A is not TemporalNonAtomicSource.A and may not assume a temporal-integrability packet as input. The rigid-subclass Liouville note proves that once B_ASAC is upgraded to a reverse-Holder subclass B_ASAC^RH(p), the source residue vanishes by Holder on shrinking terminal windows. The remaining production theorem is therefore BASACReverseHolderProduction.A: produce that super-L^1 temporal thickness from the current B_ASAC equality-class clauses. It is source-backed by 8 local ingredient(s). It deliberately reduces the remaining work to BASACReverseHolderProduction.A rather than pretending the frontier is closed.

### Candidate Theorems

- UniformTemporalSourceIntegrability_p_BASAC.A (basac_uniform_temporal_integrability_to_reverse_holder_production; score=168)

### Retrieved Ingredients

- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- source ingredient
- problems/navier-stokes/theorem-packet.yaml -- residual control
- problems/navier-stokes/theorem-packet.yaml -- installed dynamic support
- problems/navier-stokes/theorem-packet.yaml -- Pack/Part bridge support

### Recursive Solver Chain

- terminal_verdict: open
- reason: No internal solver mechanism is installed for BASACReverseHolderProduction.A.
- depth 0: UniformTemporalSourceIntegrability_p_BASAC.A via basac_uniform_temporal_integrability_to_reverse_holder_production -> BASACReverseHolderProduction.A

## Allowed Inputs

- B_ASAC^RH(p)
- ZenoResidueLiouville_{B_ASAC^RH(p)}.A
- B_ASAC reverse-holder rigid-subclass Liouville note
- terminal Holder shrinking-window estimate
- BASACReverseHolderProduction.A. Producing a reverse-Holder B_ASAC^RH(p) subclass is quarantined downstream no-pulse/source-control support; the installed B_ASAC equality-class clauses allow finite L^1_t terminal-layer concentration, but this production is not a terminal Zeno CM burden after the zero-radius residue is sorted as Pack/Part witness support by the Pack-before-Part audit.
- ChargeLedgerInjection.A. Close the terminal reserve birth problem by proving a genuinely new uncharged reserve birth creates a zero-cost packet-creation contradiction. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- WindowwiseReserveCarleson.A. Replace global reserve accounting by a windowwise Carleson budget that cannot jump at the terminal window. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- AdjointReserveNoFreeCreation.A. Turn the reserve increment into a dual pairing controlled by weighted adjoint residual mass. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- PastWindowReserveSeparation.A. Force every uncharged reserve contribution to have already existed in Past(W), leaving only charge-priced first appearances. This supplies the exact noncircular bridge needed for ScaleCriticalTreeCarleson.A sharp branch target decomposed from source-wall-root-after-reconcile.
- Part landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- Pack landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- Field landing bridge for TerminalCMNoExit.A / NoGenuineCMExit.A
- CFI.A. OFP.A together with CFI.B1 and CFI.B2 yields the retained conditional field-integrability package, while End_NS, Field readout, and Member remain downstream consequences.
- TemporalNonAtomicSource.A. Every terminal source-residue measure produced by the accepted Zeno compactness extraction is non-atomic at the terminal time slice.

## Forbidden Imports

- UniformTemporalSourceIntegrability_p_BASAC.A
- super-L^1 terminal source-thickness estimate for the produced B_ASAC equality class
- full-MPP closure
- submission readiness
- global smoothness

## Proof Attempt

1. Reject temporal non-atomicity as the target: it is downstream of the super-L^1 estimate, not a proof of it.
2. Use the B_ASAC reverse-holder rigid-subclass Liouville note to isolate the valid conditional closure.
3. Record the remaining burden as production of B_ASAC^RH(p) from the installed B_ASAC clauses.
4. Keep the whole branch supplier-quarantined for the CM route unless a Pack/Part/Field bridge license is separately proved.
5. Use problems/navier-stokes/theorem-packet.yaml as source support for installed dynamic support.

## Circularity Audit

- status: passed
- violations: none

## Solver Verdict

- verdict: new_subprimitive
- certification_level: theorem-creation:new-subprimitive
- rationale: The theorem has been reduced to a smaller noncircular primitive that is not currently installed.
- next subprimitive: BASACReverseHolderProduction.A -- produce a reverse-Holder B_ASAC^RH(p) subclass from the current B_ASAC equality-class clauses

## Promotion Plan

- promotion_allowed: false
- recommended_next_cell_type: theorem-creation
