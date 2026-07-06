---
theorem_id: forward-gold-c0-c11-metric-tower-or-exit-direct-test-20260706
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 / retained record-edge C11 metric tower-or-exit
status: direct-test-failed-proof-reduces-to-flow-curvature-bill-or-exit
target_object:
  - RetainedRecordEdgeC11MetricTowerOrExit.A
  - RetainedRecordEdgeExactProjectorChartLicense.A
  - ParentOwnedPositiveRecordBillCurrency.A
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
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-exact-projector-chart-license-source-verdict-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-flow-curvature-tower-bill-or-exit-direct-test-20260706.md
completion_truth: >-
  Direct test of the metric half of the retained exact-projector chart license.
  The test does not prove RetainedRecordEdgeC11MetricTowerOrExit.A and does not
  prove or refute NormalizedRelayBillCompactnessRecordPassage.A. It derives the
  exact material-frame derivative equations from the shared flow/tower law and
  identifies the first smaller producer needed for the metric half:
  RetainedFlowCurvatureTowerBillOrExit.A. Finite same-carrier strain/ellipticity
  controls the metric size, but C11 symbol control requires scale-local control
  of material-frame curvature, equivalently the pulled-back second and third
  spatial velocity derivative tower, before record readout. The allowed sources
  contain the tower identities and Field defect-energy law, but not the
  L-infinity/scale-local flow-curvature bill or exit theorem needed to turn those
  identities into C11 exact-projector symbol control.
---

# C11 metric tower-or-exit: direct test

## 1. Object

For one retained future-positive record edge at active shell \(2^j\), the exact
projector uses the material metric

```math
G=A A^\top,
\qquad
A=F^{-1},
\qquad
F=D_aX .
\tag{CMT.1}
```

The metric half of the chart license asks for scale-local symbol control,
schematically

```math
2^{-j}\|D_aG\|_{L^\infty}
+
2^{-2j}\|D_a^2G\|_{L^\infty}
\le C_{\mathrm{edge}},
\tag{CMT.2}
```

where the right side is supplied by the same finite material-frame derivative
tower before the record selector counts the edge, or failure is already legal,
stopped, Field/Pack/Part-routed, or material-service paid.

This is the theorem named in the signed-height source:

```math
\texttt{RetainedRecordEdgeC11MetricTowerOrExit.A}.
\tag{CMT.3}
```

## 2. What the flow law gives

The shared participation law gives

```math
\partial_tX(a,t)=u(X(a,t),t),
\qquad
\partial_tF=(\nabla u)(X,t)F,
\qquad
\det F=1 .
\tag{CMT.4}
```

Hence

```math
\partial_tA=-A(\nabla u)(X,t),
\qquad
\partial_tG=-2A S(X,t)A^\top .
\tag{CMT.5}
```

This is enough for the ellipticity part once the same-carrier strain clock is
finite. It controls the singular values of \(F\) and \(A\). It does not control
the spatial symbol seminorms in `(CMT.2)`.

Differentiating `(CMT.4)` in the material label gives the next two equations:

```math
\partial_t(D_aF)
=
(\nabla^2u)(X)[F,F]
+
(\nabla u)(X)D_aF ,
\tag{CMT.6}
```

and

```math
\partial_t(D_a^2F)
=
(\nabla^3u)(X)[F,F,F]
+
3(\nabla^2u)(X)[D_aF,F]
+
(\nabla u)(X)D_a^2F .
\tag{CMT.7}
```

Algebraically,

```math
D_aA=-A(D_aF)A,
\qquad
D_a^2A
=
A(D_aF)A(D_aF)A
-A(D_a^2F)A
+\text{transpose-index contractions},
\tag{CMT.8}
```

so \(D_aG\) and \(D_a^2G\) are controlled by \(A,D_aA,D_a^2A\), equivalently by
\(F,D_aF,D_a^2F\). Thus `(CMT.2)` needs scale-local control of the pulled-back
curvature of the material frame. In velocity-tower language, it needs the same
record edge to own the relevant \(\nabla^2u\) and \(\nabla^3u\) contributions
before readout.

## 3. Why TC.18/TC.31 is not already this theorem

The shared Field law gives, for tower increments,

```math
(\partial_t+u(x+h,t)\cdot\nabla)\delta_hU_k
+
(\delta_hu)\cdot\nabla U_k
+
\delta_h\nabla^{k+1}p
-\nu\Delta\delta_hU_k
=
\delta_hB_k .
\tag{CMT.9}
```

After pairing with \(\delta_hU_k\), this gives the Field/coherence defect-energy
identity and the localized scalar estimate. That is the right equation for
neighboring tower coherence. It is not yet `(CMT.2)`, because `(CMT.2)` is an
\(L^\infty\), scale-local, material-frame symbol bound for the coefficient of an
exact divergence-form projector.

The missing conversion is:

```math
\text{tower difference/viscous energy control}
\quad\Longrightarrow\quad
\text{scale-local }L^\infty\text{ control of }D_aG,D_a^2G
\text{ on the same future-positive edge}.
\tag{CMT.10}
```

The allowed sources do not contain this conversion. Chapter 2 closedness passes
legal finite readouts once the readout is already licensed; it does not produce
the metric-symbol license. The signed-height source explicitly leaves the
operator-level chart license open.

## 4. Kinematic countermodel to the tempting shortcut

The shortcut

```math
\text{finite strain/ellipticity}
\Longrightarrow
C^{1,1}\text{ symbol control}
\tag{CMT.11}
```

is false even before the Navier-Stokes dynamics are used. On a periodic material
box, the volume-preserving shear

```math
X_m(a)
=
\big(a_1,\ a_2+\varepsilon m^{-1}\sin(m a_1),\ a_3\big)
\tag{CMT.12}
```

has \(\det D_aX_m=1\) and uniformly bounded \(F_m,A_m,G_m\) for fixed small
\(\varepsilon\), while \(D_a^2G_m\) is of size \(\varepsilon m\). So ellipticity
and volume preservation do not imply the symbol seminorm needed by the exact
projector.

This is not an NS counterexample and not a refutation of `(CMT.3)`. It only
blocks the false proof route from first-gradient packet geometry to C11 chart
control. The Navier-Stokes theorem must price or route the frame curvature.

## 5. Smaller producer exposed

The direct test reduces the metric half to:

```math
\texttt{RetainedFlowCurvatureTowerBillOrExit.A}.
\tag{CMT.13}
```

For every retained future-positive record edge at shell \(2^j\), before record
readout, either

```math
2^{-j}\|D_aA\|_{L^\infty(\mathrm{edge})}
+
2^{-2j}\|D_a^2A\|_{L^\infty(\mathrm{edge})}
\le C_{\mathrm{edge}}
\tag{CMT.14}
```

with \(C_{\mathrm{edge}}\) charged to the same finite material-frame derivative
tower in \(B=dE^{Field}+dA_{4B}+dVisc\) currency, or failure is a pre-readout
legal/stop/Field/Pack/Part/material-service exit.

This is smaller than `(CMT.3)` because it is purely geometric-flow curvature.
Once `(CMT.14)` holds, `(CMT.2)` follows from \(G=AA^\top\) by the product rule,
with constants depending only on the already-supported ellipticity bounds.

Thus the sharp local implication is:

```math
\texttt{RetainedFlowCurvatureTowerBillOrExit.A}
+
\texttt{RetainedRecordEdgeMetricEllipticity.A}
\Longrightarrow
\texttt{RetainedRecordEdgeC11MetricTowerOrExit.A}.
\tag{CMT.15}
```

## 6. Consequence for the active c0 goal

This note does not close the normalized compactness/record-passage theorem. It
shrinks the operator-license half by one layer: the exact projector metric wall
is not "pressure projection" in the abstract; it is the same-fluid material
frame's curvature bill.

Physically, the pressure projector is allowed to follow the packet only when the
packet's material chart bends slowly enough at the active wavelength, or when the
bending itself has already been charged. The current allowed sources prove the
flow/tower identities that describe that bending. They do not yet prove the
bill-or-exit theorem that pays it in the \(c_0\) extraction currency.
