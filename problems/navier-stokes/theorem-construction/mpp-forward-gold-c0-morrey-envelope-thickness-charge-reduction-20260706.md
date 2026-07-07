---
theorem_id: forward-gold-c0-morrey-envelope-thickness-charge-reduction-20260706
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 / flow-curvature Morrey envelope reduction
status: conditional-reduction-not-proof
target_object:
  - RetainedFlowCurvatureMorreyEnvelopeOrExit.A
  - RetainedFlowCurvatureTowerBillOrExit.A
  - RetainedRecordEdgeC11MetricTowerOrExit.A
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
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-flow-curvature-tower-bill-or-exit-direct-test-20260706.md
completion_truth: >-
  Conditional reduction of RetainedFlowCurvatureMorreyEnvelopeOrExit.A, not a
  proof of it and not a proof or refutation of
  NormalizedRelayBillCompactnessRecordPassage.A. The fixed-rung/band-limited
  compactness language in the relay-record extraction does not by itself produce
  the same-edge pointwise curvature envelope: it applies after a legal h-scale
  retained read is already selected, while the exact-projector coefficient can
  fail through high-frequency coefficient curvature or a low-pass curvature spike
  with too little record-local thickness. The reduction proves the conditional
  implication
  RetainedCurvatureCoefficientLowPassOrHigherServiceExit.A +
  RetainedCurvatureSpikeThicknessOrCharge.A =>
  RetainedFlowCurvatureMorreyEnvelopeOrExit.A. The first clause prevents
  sub-wavelength coefficient curvature from being smuggled into the metric half;
  the second supplies the spatial/material-time density needed for the L2
  Field/viscous bill to control the pointwise envelope.
---

# Morrey envelope: thickness/charge reduction

## 1. Target

The flow-curvature test exposed the endpoint envelope

```math
\texttt{RetainedFlowCurvatureMorreyEnvelopeOrExit.A}.
\tag{MTC.1}
```

For a retained future-positive record edge \(e\) at shell \(2^j\), write the
scale-normalized material curvature seen by the exact-projector metric as

```math
K_j
:=
2^{-j}|\nabla^2u|
+
2^{-2j}|\nabla^3u|
\tag{MTC.2}
```

pulled back to the same material chart. The desired envelope is

```math
\int_{I_e}\|K_j(X(\cdot,t),t)\|_{L^\infty(e)}\,dt
\le C_e,
\tag{MTC.3}
```

with \(C_e\) charged to

```math
B=dE^{Field}+dA_{4B}+dVisc
\tag{MTC.4}
```

before record readout, or failure routed to legal, stop, Field, Pack, Part, or
material-service exit.

## 2. Why fixed-rung compactness is not enough

The relay-record extraction note says fixed-rung \(h\)-scale reads are effectively
band-limited after the retained read is selected. That is useful compactness.
It does not prove `(MTC.3)`.

The exact-projector coefficient is the material metric \(G=AA^\top\). Its
curvature may fail in two ways:

1. **high-frequency coefficient curvature:** the coefficient varies below the
   active wavelength, so it is no longer part of the low-pass metric-symbol
   theorem and must be paid as higher exact-projector service or routed out;
2. **thin low-pass curvature:** even after low-pass projection, a pointwise
   curvature peak may be supported on too little record-local material volume or
   material time for the \(L^2\) Field/viscous bill to see it.

Thus the compactness sentence is a consumer after legal read selection, not the
producer of the endpoint coefficient envelope.

## 3. First required clause: low-pass or higher-service exit

The first needed theorem is

```math
\texttt{RetainedCurvatureCoefficientLowPassOrHigherServiceExit.A}.
\tag{MTC.5}
```

It says: on every retained future-positive exact-projector record edge, before
readout, the coefficient curvature entering \(K_j\) is represented by its
\(<j-C\) material-frequency part for the metric-symbol estimate, or the discarded
\(\ge j-C\) coefficient curvature is charged to higher projector service,
chart-transfer, legal/stop material, or Field/Pack/Part exit.

This clause prevents a sub-wavelength coefficient spike from being silently
treated as a harmless \(S^0\) symbol coefficient.

## 4. Second required clause: thickness or charge

The second needed theorem is

```math
\texttt{RetainedCurvatureSpikeThicknessOrCharge.A}.
\tag{MTC.6}
```

For the low-pass part \(K_j^{lo}\), it says: whenever a level \(\lambda\) of
\(K_j^{lo}\) is selected by the same future-positive record edge, either the
superlevel set has active spatial thickness and material-time thickness at the
record scale, or the absence of that thickness is already a charge/exit before
readout.

One concrete sufficient form is:

```math
\begin{aligned}
&\|K_j^{lo}(\cdot,t)\|_{L^\infty(e)}\ge\lambda\\
&\qquad\Longrightarrow\qquad
| \{a\in e_t:K_j^{lo}(a,t)\ge\lambda/2\} |
\ge c\,2^{-3j}
\end{aligned}
\tag{MTC.7}
```

for record-relevant times, with the corresponding material-time persistence or
with a temporal charge in \(B\)-currency. The constants are allowed to depend on
the retained packet aperture and finite depth, but not on the terminal sequence.

## 5. Conditional proof of the Morrey envelope

Assume `(MTC.5)` and `(MTC.6)`. On the low-pass retained branch, `(MTC.7)` gives

```math
\|K_j^{lo}(\cdot,t)\|_{L^\infty(e)}^2
\lesssim
2^{3j}\int_{e_t}|K_j^{lo}(a,t)|^2\,da
\tag{MTC.8}
```

at record-relevant times. The material-time thickness/charge clause lets this
be integrated over \(I_e\) without losing the record into a time atom. The
right-hand side is precisely the scale-normalized curvature part of the
finite-difference tower/viscous bill after \(h\sim2^{-j}\), up to the lower
order terms already assigned to legal, stop, and higher-service channels.

Therefore

```math
\int_{I_e}\|K_j^{lo}\|_{L^\infty(e)}\,dt
\le
C\,B(e)+Legal(e)+Stop(e)+HigherService(e).
\tag{MTC.9}
```

The high-frequency coefficient branch is handled by `(MTC.5)`. Hence

```math
\boxed{
\texttt{RetainedCurvatureCoefficientLowPassOrHigherServiceExit.A}
+
\texttt{RetainedCurvatureSpikeThicknessOrCharge.A}
\Longrightarrow
\texttt{RetainedFlowCurvatureMorreyEnvelopeOrExit.A}.
}
\tag{MTC.10}
```

This is a proof of the displayed implication, not a proof of either input.

## 6. Consequence for the active c0 goal

The operator-side branch has now split into the two physical facts that an exact
projector coefficient needs before it can follow the same packet:

```math
\text{coefficient curvature is low-pass at the active shell}
\quad\text{and}\quad
\text{record-relevant curvature has thickness/density}.
\tag{MTC.11}
```

Without the first fact, the metric half is actually higher-projector service.
Without the second, the averaged Field/viscous bill can vanish while the
pointwise coefficient envelope fails on a thin selected set.

So this note does not close `NormalizedRelayBillCompactnessRecordPassage.A`.
It gives the next strict route for this operator branch:

```math
\begin{aligned}
&\texttt{RetainedCurvatureCoefficientLowPassOrHigherServiceExit.A}\\
&+\texttt{RetainedCurvatureSpikeThicknessOrCharge.A}\\
&+\texttt{RetainedRecordEdgeHigherProjectorServiceOrExit.A}\\
&\Longrightarrow
\texttt{RetainedRecordEdgeExactProjectorChartLicense.A},
\end{aligned}
\tag{MTC.12}
```

modulo the already-supported ellipticity and standard exact-projector
parametrix calculus.
