# ProjectedStrainMetricCarleson.A theorem creation

## Target

- target obligation: ProjectedStrainMetricCarleson.A
- target label: prove the projected strain-metric Carleson capacity that gives a noncircular bounded-below Phi_metric
- route role: ProjectedStrainMetricCarleson.A is the analytic form of the metric/coefficient exchange wall. It must produce a bounded-below same-carrier Phi_metric from projected strain/metric geometry, not from the material record it is supposed to control.
- theorem family: full-same-material-action

## Created Theorem

ProjectedStrainMetricCarleson.A. ProjectedStrainMetricCarleson.A is the analytic form of the metric/coefficient exchange wall. It must produce a bounded-below same-carrier Phi_metric from projected strain/metric geometry, not from the material record it is supposed to control. This supplies the exact noncircular bridge needed for prove the projected strain-metric Carleson capacity that gives a noncircular bounded-below Phi_metric.

## Inventive Search

- mode: inventive-right-theorem-selection
- external_resources_used: false
- external_resource_policy: disabled-by-default; external searches may suggest support but may not certify or promote a theorem
- selected_mechanism: projected_strain_metric_carleson_to_bounded_capacity
- candidate_count: 1
- solver_chain_verdict: open
- selection_reason: This theorem is the right next move because it changes the proof economy: ProjectedStrainMetricCarleson.A is the analytic form of the metric/coefficient exchange wall. It must produce a bounded-below same-carrier Phi_metric from projected strain/metric geometry, not from the material record it is supposed to control. It deliberately reduces the remaining work to MetricCoefficientBoundedBelowCapacity.A rather than pretending the frontier is closed.

### Candidate Theorems

- ProjectedStrainMetricCarleson.A (projected_strain_metric_carleson_to_bounded_capacity; score=174)

### Retrieved Ingredients

- none

### Recursive Solver Chain

- terminal_verdict: open
- reason: No internal solver mechanism is installed for MetricCoefficientBoundedBelowCapacity.A.
- depth 0: ProjectedStrainMetricCarleson.A via projected_strain_metric_carleson_to_bounded_capacity -> MetricCoefficientBoundedBelowCapacity.A

## Allowed Inputs


## Forbidden Imports

- ProjectedStrainMetricCarleson.A
- prove the projected strain-metric Carleson capacity that gives a noncircular bounded-below Phi_metric
- full-MPP closure
- submission readiness
- global smoothness

## Proof Attempt

1. Use dot G=-2ASA^T to isolate metric deformation from pure rotation gauge.
2. Project onto the strain/metric modes that actually change the transported material geometry.
3. Build Phi_metric from a bounded-below capacity of those projected modes, not from -log(1+P_N^mat).
4. Show the positive metric/coefficient channel enters the G-to-S exchange as E_{34}-dPhi_metric plus legal summable residual.
5. Keep pressure/Hodge and endpoint trace surfaces closed; they are not the live obstruction.

## Circularity Audit

- status: passed
- violations: none

## Solver Verdict

- verdict: new_subprimitive
- certification_level: theorem-creation:new-subprimitive
- rationale: The theorem has been reduced to a smaller noncircular primitive that is not currently installed.
- next subprimitive: MetricCoefficientBoundedBelowCapacity.A -- construct the bounded-below same-carrier metric capacity Phi_metric

## Promotion Plan

- promotion_allowed: false
- recommended_next_cell_type: theorem-creation
