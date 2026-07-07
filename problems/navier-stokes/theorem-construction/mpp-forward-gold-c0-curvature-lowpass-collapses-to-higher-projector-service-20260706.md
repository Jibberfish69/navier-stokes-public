---
theorem_id: forward-gold-c0-curvature-lowpass-collapses-to-higher-projector-service-20260706
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 / curvature low-pass branch collapse
status: conditional-implication-proved-not-c0-closure
target_object:
  - RetainedCurvatureCoefficientLowPassOrHigherServiceExit.A
  - RetainedRecordEdgeHigherProjectorServiceOrExit.A
  - RetainedFlowCurvatureMorreyEnvelopeOrExit.A
  - RetainedRecordEdgeExactProjectorChartLicense.A
  - NormalizedRelayBillCompactnessRecordPassage.A
allowed_source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-epsilon-extraction-direct-proof-pass-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-relay-record-reversibility-kernel-and-epsilon-extraction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-shared-participation-and-tower-coherence-law.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-tower-signed-total-exchange-retention-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-chapter2-refereegrade-closedness-limit-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-net-work-admission-proof-pass-20260703.md
  - problems/navier-stokes/spine.md
derived_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-morrey-envelope-thickness-charge-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-exact-projector-chart-license-source-verdict-20260706.md
completion_truth: >-
  Conditional implication proved inside the operator branch. The low-pass
  coefficient-curvature clause is not an independent new c0 wall once
  RetainedRecordEdgeHigherProjectorServiceOrExit.A is assumed: high-frequency
  curvature of the material metric cannot be used as an S0 metric coefficient
  for the retained shell; it appears as moving-chart exact-projector residue,
  finite-depth tower residue, chart-transfer, or higher material service. Those
  are precisely inside RetainedRecordEdgeHigherProjectorServiceOrExit.A. Thus
  RetainedRecordEdgeHigherProjectorServiceOrExit.A implies
  RetainedCurvatureCoefficientLowPassOrHigherServiceExit.A. This does not prove
  the higher-projector service theorem, does not prove the curvature spike
  thickness theorem, and does not prove or refute
  NormalizedRelayBillCompactnessRecordPassage.A.
---

# Curvature low-pass collapses to higher-projector service

## 1. Target

The Morrey-envelope reduction introduced the clause

```math
\texttt{RetainedCurvatureCoefficientLowPassOrHigherServiceExit.A}.
\tag{CLC.1}
```

For a retained future-positive exact-projector edge at shell \(2^j\), it says
that the coefficient curvature used by the metric-symbol estimate is represented
by its \(<j-C\) material-frequency part, or the discarded \(\ge j-C\) part is
paid as higher projector service, chart-transfer, legal/stop material, or
Field/Pack/Part exit before record readout.

The question is whether `(CLC.1)` is independent of the already-open operator
row

```math
\texttt{RetainedRecordEdgeHigherProjectorServiceOrExit.A}.
\tag{CLC.2}
```

It is not independent.

## 2. Physical reason

The exact pressure projector is the same material elliptic constraint

```math
L_G=-\operatorname{div}_a(G\nabla_a),
\qquad
G=AA^\top .
\tag{CLC.3}
```

At active shell \(2^j\), only the material-frequency \(<j-C\) part of \(G\) and
its derivatives can serve as the retained \(S^0\) metric coefficient. If the
curvature of \(G\) lives at \(\ge j-C\), it is not a legal frozen/low metric
symbol for that shell. It enters through one of the exact-projector residues:

```math
[\Delta_j,\Pi_G^{ex}],
\qquad
R_{G,j},
\qquad
\text{moving-chart parametrix remainders}.
\tag{CLC.4}
```

Those are not a separate physical force. They are the same moving pressure/RHS,
annular-stress, higher-collar, finite-depth tower, and moving-chart service
already named in the higher-projector row.

## 3. Proof of the implication

Decompose the material metric curvature entering the Morrey envelope as

```math
K_j
=
P_{<j-C}^{mat}K_j
+
P_{\ge j-C}^{mat}K_j .
\tag{CLC.5}
```

The first term is the low-pass metric coefficient used by the C11 symbol theorem.
The second term cannot be inserted into the low-order symbol without changing
the shell. In the exact projector expansion, \(P_{\ge j-C}^{mat}K_j\) contributes
only through the shell-changing commutator, the variable-coefficient remainder,
or the moving-chart parametrix residue.

The checked operator verdict states that the higher-projector input must pay or
route out:

```math
\text{pressure/RHS, annular-stress, higher-collar, finite-depth tower, and
moving-chart exact-projector residues}.
\tag{CLC.6}
```

Therefore, assuming `(CLC.2)`, every high-frequency coefficient-curvature
contribution in `(CLC.5)` is already finite same-material service, legal/stop
material, chart-transfer, or Field/Pack/Part exit before the record reads the
edge. The low-frequency contribution remains the retained metric coefficient.
This is exactly `(CLC.1)`.

Hence

```math
\boxed{
\texttt{RetainedRecordEdgeHigherProjectorServiceOrExit.A}
\Longrightarrow
\texttt{RetainedCurvatureCoefficientLowPassOrHigherServiceExit.A}.
}
\tag{CLC.7}
```

## 4. Consequence for the Morrey branch

Combining `(CLC.7)` with the Morrey-envelope reduction gives the sharper
operator-side implication:

```math
\boxed{
\texttt{RetainedRecordEdgeHigherProjectorServiceOrExit.A}
+
\texttt{RetainedCurvatureSpikeThicknessOrCharge.A}
\Longrightarrow
\texttt{RetainedFlowCurvatureMorreyEnvelopeOrExit.A}.
}
\tag{CLC.8}
```

Then the previous flow-curvature and C11 metric reductions give

```math
\texttt{RetainedRecordEdgeHigherProjectorServiceOrExit.A}
+
\texttt{RetainedCurvatureSpikeThicknessOrCharge.A}
\Longrightarrow
\texttt{RetainedRecordEdgeC11MetricTowerOrExit.A}.
\tag{CLC.9}
```

Together with the same higher-projector row, this supplies the retained
exact-projector chart license:

```math
\texttt{RetainedRecordEdgeHigherProjectorServiceOrExit.A}
+
\texttt{RetainedCurvatureSpikeThicknessOrCharge.A}
\Longrightarrow
\texttt{RetainedRecordEdgeExactProjectorChartLicense.A},
\tag{CLC.10}
```

modulo the already-supported ellipticity and standard exact-projector parametrix
calculus.

## 5. What remains open

This note proves a conditional collapse only. It does not prove
`RetainedRecordEdgeHigherProjectorServiceOrExit.A`, whose current lower face is
the stopped primitive record/return package after record-edge admission. It also
does not prove `RetainedCurvatureSpikeThicknessOrCharge.A`, the remaining
same-edge density/thickness theorem needed for low-pass curvature spikes.

Thus this is not a proof or refutation of
`NormalizedRelayBillCompactnessRecordPassage.A`. It removes one artificial
operator sub-branch and leaves the metric-side residue at a single physical
size question: record-relevant low-pass curvature must have thickness or charge.
