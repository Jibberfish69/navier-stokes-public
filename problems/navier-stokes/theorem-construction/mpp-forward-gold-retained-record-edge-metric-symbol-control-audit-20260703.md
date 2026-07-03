---
theorem_id: forward-gold-retained-record-edge-metric-symbol-control-audit-20260703
status: strict-reduction-not-proof
created: 2026-07-03
problem: navier-stokes
route: forward-gold-signed-height-record-net-work
target_object: RetainedRecordEdgeMetricSymbolControl.A
role: metric-symbol half of retained exact-projector chart license
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-exact-projector-retained-chart-license-audit-20260703.md
  - problems/navier-stokes/theorem-construction/weighted-exact-projection-commutator-theorem-candidate.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyiv-deformation-gradient-return-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-coefficient-frame-clock-absorbed-by-strain-log-storage-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-pressure-operator-variation-is-strain-hessian-clock-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-material-pressure-tower-same-packet-elliptic-readout-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-base-transported-collar-clock-absorbed-by-frame-20260625.md
  - problems/navier-stokes/theorem-construction/mcp-source-packet-nonclosure-and-exact-primitive-boundary-2a4f79a676.md
completion_truth: >-
  This note does not prove RetainedRecordEdgeMetricSymbolControl.A. It separates
  the already-supported ellipticity part from the still-open spatial
  C^{1,1}/symbol-seminorm control part and reduces the latter to a finite
  material-frame derivative tower or pre-readout exit theorem.
---

# Retained record-edge metric symbol control audit

## 1. Physical object

The metric in WEP is not an external coefficient. It is

```math
G=AA^\top,\qquad A=(D_aX)^{-1},
\tag{RMS.1}
```

for the same material map that carries the selected high packet. The exact
projector sees this metric because pressure is the incompressibility constraint
read in the same transported coordinates.

For one retained future-positive record edge at shell \(2^j\), the metric-symbol
question is:

```math
\texttt{RetainedRecordEdgeMetricSymbolControl.A}.
\tag{RMS.2}
```

It asks whether the same packet has the metric regularity needed by WEP:
uniform ellipticity plus enough spatial control of \(G(a)\) for the order-zero
projector symbol \(p_G(a,\xi)\) to have the required shellwise \(S^0\) bounds.

The physical distinction is important. Uniform ellipticity says the transported
packet has not collapsed as a material coordinate system. Symbol control says
the pressure direction does not twist too violently across one high wavelength.
The first is about packet non-collapse. The second is about spatial variation
inside the packet.

## 2. What is already supported

`mpp-forward-gold-bodyiv-deformation-gradient-return-normal-form-20260621.md`
proves the ellipticity component: finite same-carrier strain clock gives

```math
e^{-2\Gamma_{A_0}}|\zeta|^2
\le
\zeta^\top G(a,t)\zeta
\le
e^{2\Gamma_{A_0}}|\zeta|^2 .
\tag{RMS.3}
```

So the metric lower and upper bounds are not the live wall once the same-carrier
strain clock is in force.

`mpp-forward-gold-coefficient-frame-clock-absorbed-by-strain-log-storage-20260625.md`
and
`mpp-forward-gold-material-pressure-operator-variation-is-strain-hessian-clock-20260625.md`
give the correct physical origin of metric variation: \(G\) changes because the
same material frame deforms. In particular,

```math
\dot G=-2ASA^\top .
\tag{RMS.4}
```

This pays the coefficient-frame time clock through the same top-strain storage.
It does not by itself prove the spatial \(C^{1,1}\) bounds in `(WEP.A1)`--`(WEP.A2)`.

`mpp-material-pressure-tower-same-packet-elliptic-readout-20260623.md` gives the
pressure elliptic readout once a uniformly controlled material chart is already
available. Its estimate explicitly depends on \(\|G\|_{W^{N-1,\infty}_a}\).
That is support after metric control, not a proof of metric control.

## 3. What remains open

The spatial symbol control is governed by derivatives such as \(D_aA\),
\(D_a^2A\), and hence \(D_aG,D_a^2G\). The base collar theorem states the same
boundary: base collar motion is paid, but higher collar derivatives contain
these \(D_a^\beta A\) terms and remain in the finite-depth coefficient/velocity/
pressure tower unless separately absorbed.

The source-packet nonclosure note says the same thing from another angle:
finite-frame derivative continuity needs a regular-window \(D_a^2X_t\) or
equivalent \(\nabla^2v_J\) source estimate. A \(C^1\) flow estimate controls the
first material frame, not the second spatial derivative needed for \(C^{1,1}\)
symbol control.

Thus the current non-alias target is:

```math
\texttt{RetainedRecordEdgeC11MetricTowerOrExit.A}.
\tag{RMS.5}
```

For every retained future-positive record edge at shell \(2^j\), prove either

```math
\|G\|_{C_a^{1,1}(\text{retained chart})}
\le
M_{\text{edge}}
\tag{RMS.6}
```

with \(M_{\text{edge}}\) controlled by the same finite material-frame derivative
tower available before record readout, or else show that the failure is already
a legal, stopped, collar/tower, Pack/Part/Field, or material-service exit before
the record counts the edge.

Equivalently, a scale-local version sufficient for the WEP shell is:

```math
2^{-j}\|\nabla_aG\|_{L^\infty}
+
2^{-2j}\|\nabla_a^2G\|_{L^\infty}
\le
C_{\text{edge}},
\tag{RMS.7}
```

with \(C_{\text{edge}}\) paid by the same packet record, and with every failure
typed as a pre-readout exit. The exact norm can be adjusted to the paradifferential
symbol class, but the physical burden cannot be adjusted away: high spatial
twisting of the pressure metric must be paid as material-frame/tower motion.

## 4. Strict reduction

The checked source state gives:

```math
\texttt{FiniteSameCarrierStrainClock.A}
\Longrightarrow
\texttt{RetainedRecordEdgeMetricEllipticity.A}.
\tag{RMS.8}
```

The unproved part is:

```math
\texttt{RetainedRecordEdgeC11MetricTowerOrExit.A}
\Longrightarrow
\texttt{RetainedRecordEdgeMetricSymbolControl.A}.
\tag{RMS.9}
```

Consequently the chart-license chain is now:

```math
\texttt{RetainedRecordEdgeMetricEllipticity.A}
+
\texttt{RetainedRecordEdgeC11MetricTowerOrExit.A}
+
\texttt{RetainedRecordEdgeProjectorEscapePayment.A}
\Longrightarrow
\texttt{RetainedRecordEdgeExactProjectorChartLicense.A}.
\tag{RMS.10}
```

This is a strict reduction, not a proof. It removes one false burden:
ellipticity is not the missing metric theorem. The missing theorem is the
same-packet spatial symbol control, or a proof that failure of that control is
already a material-frame/tower/exit payment before the Gold record can use the
edge.
