# GlobalPressureStrainPartnerRetention.A theorem creation

## Target

- target obligation: GlobalPressureStrainPartnerRetention.A
- target label: prove finite total same-material pressure/strain partner service
- route role: The direct pressure/strain partner-service attempt identifies the same-material carrier but does not prove finite positive work. Pressure-Hessian partner retention gives signed classification, and annular stress-work gives attachment, but the active all-scale term is the moving low-high pressure/strain pump immediately below each terminal shell. Finite work of that pump is continuation-strength and is the exact remaining primitive.
- theorem family: full-same-material-action

## Created Theorem

GlobalPressureStrainPartnerRetention.A. The direct pressure/strain partner-service attempt identifies the same-material carrier but does not prove finite positive work. Pressure-Hessian partner retention gives signed classification, and annular stress-work gives attachment, but the active all-scale term is the moving low-high pressure/strain pump immediately below each terminal shell. Finite work of that pump is continuation-strength and is the exact remaining primitive. This supplies the exact noncircular bridge needed for prove finite total same-material pressure/strain partner service.

## Inventive Search

- mode: inventive-right-theorem-selection
- external_resources_used: false
- external_resource_policy: disabled-by-default; external searches may suggest support but may not certify or promote a theorem
- selected_mechanism: global_pressure_strain_partner_retention_to_moving_low_high_pump_finite_work
- candidate_count: 1
- solver_chain_verdict: open
- selection_reason: This theorem is the right next move because it changes the proof economy: The direct pressure/strain partner-service attempt identifies the same-material carrier but does not prove finite positive work. Pressure-Hessian partner retention gives signed classification, and annular stress-work gives attachment, but the active all-scale term is the moving low-high pressure/strain pump immediately below each terminal shell. Finite work of that pump is continuation-strength and is the exact remaining primitive. It deliberately reduces the remaining work to MovingLowHighPressureStrainPumpFiniteWork.A rather than pretending the frontier is closed.

### Candidate Theorems

- GlobalPressureStrainPartnerRetention.A (global_pressure_strain_partner_retention_to_moving_low_high_pump_finite_work; score=190)

### Retrieved Ingredients

- none

### Recursive Solver Chain

- terminal_verdict: open
- reason: No internal solver mechanism is installed for MovingLowHighPressureStrainPumpFiniteWork.A.
- depth 0: GlobalPressureStrainPartnerRetention.A via global_pressure_strain_partner_retention_to_moving_low_high_pump_finite_work -> MovingLowHighPressureStrainPumpFiniteWork.A

## Allowed Inputs


## Forbidden Imports

- GlobalPressureStrainPartnerRetention.A
- prove finite total same-material pressure/strain partner service
- full-MPP closure
- submission readiness
- global smoothness

## Proof Attempt

1. Start from the original smooth material history and the transported annular carrier.
2. Do not use a local bounded-below Cauchy-Green, tail, or X_comm primitive as the proof.
3. Use pressure-Hessian partner retention and annular stress-work only as carrier identification, not finite-work proof.
4. Keep the active coefficient as the moving low-high pump below each active shell, not a fixed low-mode or high-high absorption term.
5. Prove finite work of that moving pump, or leave the finite Theta_N theorem open.

## Circularity Audit

- status: passed
- violations: none

## Solver Verdict

- verdict: new_subprimitive
- certification_level: theorem-creation:new-subprimitive
- rationale: The theorem has been reduced to a smaller noncircular primitive that is not currently installed.
- next subprimitive: MovingLowHighPressureStrainPumpFiniteWork.A -- prove finite work of the moving low-high same-material pressure/strain pump

## Promotion Plan

- promotion_allowed: false
- recommended_next_cell_type: theorem-creation
