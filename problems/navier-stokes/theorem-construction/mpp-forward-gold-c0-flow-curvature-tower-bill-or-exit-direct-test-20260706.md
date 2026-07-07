---
theorem_id: forward-gold-c0-flow-curvature-tower-bill-or-exit-direct-test-20260706
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 / retained flow-curvature tower bill-or-exit
status: direct-test-failed-proof-reduces-to-curvature-morrey-envelope-or-exit
target_object:
  - RetainedFlowCurvatureTowerBillOrExit.A
  - RetainedRecordEdgeC11MetricTowerOrExit.A
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
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-c11-metric-tower-or-exit-direct-test-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-morrey-envelope-thickness-charge-reduction-20260706.md
completion_truth: >-
  Direct test of RetainedFlowCurvatureTowerBillOrExit.A from the allowed
  Field/tower sources. The test does not prove the theorem and does not prove or
  refute NormalizedRelayBillCompactnessRecordPassage.A. The flow derivative
  equations show that the C11 metric chart needs time-integrated, scale-local
  L-infinity control of pulled-back ∇²u and ∇³u along the same future-positive
  edge. TC.18/TC.31 provide an L2 defect-energy and viscous tower bill for
  finite differences, not the endpoint Morrey/pointwise envelope needed by the
  exact projector coefficient. The sharp smaller missing input is
  RetainedFlowCurvatureMorreyEnvelopeOrExit.A: either the same edge has a
  scale-local curvature envelope strong enough to integrate the D_aF and D_a²F
  equations, charged in B-currency before readout, or the envelope failure is a
  pre-readout Field/Pack/Part/legal/stop/material-service exit.
---

# Flow-curvature tower bill-or-exit: direct test

## 1. Target

The previous metric test reduced the exact-projector C11 half to

```math
\texttt{RetainedFlowCurvatureTowerBillOrExit.A}.
\tag{FCT.1}
```

For a retained future-positive record edge at active shell \(2^j\), this means:
before the record selector counts the edge, either

```math
2^{-j}\|D_aA\|_{L^\infty(e)}
+
2^{-2j}\|D_a^2A\|_{L^\infty(e)}
\le C_e
\tag{FCT.2}
```

with \(C_e\) charged to the same finite material-frame derivative tower in

```math
B=dE^{Field}+dA_{4B}+dVisc
\tag{FCT.3}
```

currency, or the failure has already routed out through legal, stop,
Field/Pack/Part, chart-transfer, or material-service payment.

## 2. Exact flow equations

The shared flow law gives

```math
\partial_tF=(\nabla u)(X,t)F,
\qquad
\partial_tA=-A(\nabla u)(X,t).
\tag{FCT.4}
```

Differentiating in material labels:

```math
\partial_t(D_aF)
=
(\nabla^2u)(X)[F,F]+(\nabla u)(X)D_aF,
\tag{FCT.5}
```

and

```math
\partial_t(D_a^2F)
=
(\nabla^3u)(X)[F,F,F]
+3(\nabla^2u)(X)[D_aF,F]
+(\nabla u)(X)D_a^2F.
\tag{FCT.6}
```

So `(FCT.2)` follows from Gronwall once the same edge has a pointwise material
curvature envelope of the form

```math
\int_{I_e}
\left(
2^{-j}|\nabla^2u(X(a,t),t)|
+2^{-2j}|\nabla^3u(X(a,t),t)|
\right)\,dt
\le C_e
\tag{FCT.7}
```

with the quadratic term

```math
\int_{I_e}2^{-2j}|\nabla^2u(X,t)|\,|D_aF|\,dt
\tag{FCT.8}
```

absorbed by the same bootstrap envelope or routed out as material-frame service.

This is still one-fluid physics: the pressure projector needs the same material
chart to avoid bending faster than the active wavelength while the record edge
is being read.

## 3. What TC.18/TC.31 supplies

For \(U_k=\nabla^ku\), the allowed tower source gives

```math
(\partial_t+u(x+h,t)\cdot\nabla)\delta_hU_k
+(\delta_hu)\cdot\nabla U_k
+\delta_h\nabla^{k+1}p
-\nu\Delta\delta_hU_k
=\delta_hB_k.
\tag{FCT.9}
```

Its localized scalar estimate controls

```math
E_{N,h,\phi}
\quad\text{and}\quad
\nu\int\phi^2|\nabla\delta_hU_k|^2.
\tag{FCT.10}
```

At \(h\sim2^{-j}\), this is an \(L^2\)-type control of finite differences of the
velocity derivative tower. It is the correct Field/coherence bill. It does not
itself give `(FCT.7)`, which is an \(L^1_tL^\infty_a\)-type pointwise envelope
along the same selected edge.

The missing conversion is the endpoint step

```math
\text{finite-difference }L^2\text{ tower bill}
\Longrightarrow
\text{scale-local material curvature envelope on the selected edge}.
\tag{FCT.11}
```

The allowed sources do not contain that endpoint theorem.

## 4. Why this endpoint cannot be inferred formally

The failure is already visible at the level of functions. Let

```math
q_m(x)=m^{-2+\alpha}\phi(m(x-x_0)),
\qquad 0<\alpha<\tfrac32,
\tag{FCT.12}
```

with fixed smooth compactly supported \(\phi\). Then

```math
\|D^2q_m\|_{L^\infty}\simeq m^\alpha,
\qquad
\|D^2q_m\|_{L^2}\simeq m^{\alpha-3/2}\to0 .
\tag{FCT.13}
```

Thus an \(L^2\) curvature bill can vanish while the pointwise curvature needed by
the coefficient chart diverges on a shrinking set. This is not a Navier--Stokes
counterexample, and it does not refute `(FCT.1)`. It refutes the proof shortcut
from the Field defect-energy estimate alone to the exact-projector coefficient
envelope.

Physically, a tiny region of material-frame bending can be invisible to an
averaged defect bill while still being large enough to rotate the exact pressure
projector on the active wavelength. The theorem must show that such bending
either is not retained as the same record edge, or it posts a bill before the
record is counted.

## 5. Smaller input exposed

The direct test reduces `(FCT.1)` to:

```math
\texttt{RetainedFlowCurvatureMorreyEnvelopeOrExit.A}.
\tag{FCT.14}
```

For every retained future-positive record edge \(e\) at shell \(2^j\), before
readout, either the pulled-back velocity tower satisfies the scale-local endpoint
envelope `(FCT.7)` plus the bootstrap absorption of `(FCT.8)`, with the envelope
charged to \(B\)-currency, or failure of that envelope is already a
Field/Pack/Part/legal/stop/material-service exit.

The implication is direct:

```math
\texttt{RetainedFlowCurvatureMorreyEnvelopeOrExit.A}
\Longrightarrow
\texttt{RetainedFlowCurvatureTowerBillOrExit.A}
\Longrightarrow
\texttt{RetainedRecordEdgeC11MetricTowerOrExit.A}.
\tag{FCT.15}
```

The first arrow integrates `(FCT.5)`--`(FCT.6)` and uses the ellipticity bounds
for \(F,A\). The second arrow is the product-rule reduction already filed in the
C11 metric test.

## 6. Consequence for the active c0 goal

This is still not a proof or refutation of
`NormalizedRelayBillCompactnessRecordPassage.A`. It identifies a sharper
operator-side escape for the positive-record bill-currency route: a sequence may
keep the averaged Field/viscous tower bill small while the exact-projector chart
fails through concentrated material-frame curvature, unless the new Morrey
envelope-or-exit theorem is proved.

So the active Gate 2 lower entrance is now sharper on this branch:

```math
\texttt{RetainedFlowCurvatureMorreyEnvelopeOrExit.A}
+
\texttt{RetainedRecordEdgeHigherProjectorServiceOrExit.A}
\Longrightarrow
\texttt{RetainedRecordEdgeExactProjectorChartLicense.A}
\tag{FCT.16}
```

modulo the already-supported ellipticity and standard parametrix calculus.
