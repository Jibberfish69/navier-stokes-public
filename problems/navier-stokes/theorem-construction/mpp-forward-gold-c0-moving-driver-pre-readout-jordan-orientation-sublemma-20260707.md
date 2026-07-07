---
theorem_id: forward-gold-c0-moving-driver-pre-readout-jordan-orientation-sublemma-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / moving low-high driver / pre-readout orientation
status: checked-positive-sublemma-fixed-chart-orientation-paid; strict-reduction-to-parent-owned-event-admission
ontology_lock:
  fluid_field_object: one same-fluid incompressible viscous dissipative pressure-constrained irreversible Navier-Stokes history
  reversible: false
  adiabatic: false
  compressible: false
  corrected_terms:
    - incompressible
    - viscous
    - dissipative
    - pressure-constrained
    - irreversible
target_object:
  - MovingDriverFixedChartJordanOrientationAllocation.A
  - MovingDriverPreEnvelopeSignedCurrentRetention.A
  - FullTowerPositiveChannelThreeMeasureAdmission.A
  - ParentOwnedPositiveRecordBillCurrency.A
terminology_lock:
  active_terms:
    - selected positive-part readout
    - pre-readout signed current
    - selected positive extraction
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-orientation-allocation-jordan-split-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyii-participation-exchange-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-raw-material-channel-formula-fixed-chart-proof-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-signed-channel-material-carrier-support-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-primitive-pls-driver-admission-proof-pass-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-edge-no-detachment-producer-topology-synthesis-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-moving-driver-positive-envelope-orientation-retention-audit-20260707.md
completion_truth: >-
  Positive sublemma, not c_0 closure. On a fixed material chart and parent-known
  raw moving-driver channel, the signed throughput density has an ordinary
  Hahn-Jordan decomposition before selected positive-part readout. This supplies
  the positive leg, negative partner, and signed current as submeasures of the
  same raw event-space throughput. Thus pure sign orientation is not the hard
  wall after the raw event is owned. The remaining wall is custody: the raw
  moving-driver event must be represented from the original packet, parent
  announced before readout, chart licensed, stopped-line compatible, no-recount,
  and closed under the compactness passage with the first-ratio/tower tail in
  bill currency. No c_0 closure is claimed.
---

# Moving-driver Jordan orientation sublemma

## 1. Physical object

The object is one transported Navier-Stokes packet. The moving low-high driver
is not a detached source; it is the signed pressure/strain/coefficient interface
of that packet.

On a fixed material chart the primitive driver has the raw form

```math
\left\langle
H_{j,N},
\mathcal M_{<j-C,N}H_{j,N}
\right\rangle ,
\tag{MJO.1}
```

where \(H_{j,N}\) is the high packet of the same material history and
\(\mathcal M_{<j-C,N}\) is the lower same-material coefficient containing the
strain, pressure-Hessian, coefficient/frame, projector, collar, annular
interface, viscous graph, and low-high commutator pieces.

The fixed-chart formula decomposes this raw channel into a finite same-packet
signed family:

```math
\left\langle
H_{j,N},
\mathcal M_{<j-C,N}H_{j,N}
\right\rangle
=
\sum_{\kappa\in\mathcal K_N^{raw}}Y_\kappa^{raw}
+R_{chart}^{paid}.
\tag{MJO.2}
```

The support-reduction note identifies the needed support tuple for almost every
primitive event:

```math
K(z)=
(
X(a,t),
H_{j,N},
\mathcal M_{<j-C,N},
\psi,
\mathbb P_A,
j,\kappa
).
\tag{MJO.3}
```

Thus, once `(MJO.3)' is present, the moving-driver event has a parent-known raw
material address before selected positive-part readout.

## 2. Fixed-chart signed current

Fix a compact stopped material chart, a finite depth \(N\), a shell \(j\), and a
raw channel \(\kappa\). Define the signed throughput measure

```math
d\nu_{j,\kappa}
:=
w_jY_{j,\kappa}^{raw}(a,t)\,da\,dt
\tag{MJO.4}
```

on the parent-known event space where the tuple `(MJO.3)' is defined. Also set

```math
d\mu_{j,\kappa}:=|d\nu_{j,\kappa}|.
\tag{MJO.5}
```

Because the packet is smooth at the finite preterminal level and the chart is
fixed, \(Y_{j,\kappa}^{raw}\) is a measurable scalar density on the event
space. The sets

```math
E^+_{j,\kappa}:=\{Y_{j,\kappa}^{raw}>0\},
\qquad
E^-_{j,\kappa}:=\{Y_{j,\kappa}^{raw}<0\}
\tag{MJO.6}
```

are measurable.

Define

```math
d\mu^A_{j,\kappa}:=\mathbf 1_{E^+_{j,\kappa}}\,d\mu_{j,\kappa},
\qquad
d\mu^N_{j,\kappa}:=\mathbf 1_{E^-_{j,\kappa}}\,d\mu_{j,\kappa},
\qquad
d\mu^J_{j,\kappa}:=d\nu_{j,\kappa}.
\tag{MJO.7}
```

Then

```math
d\mu^J_{j,\kappa}
=
d\mu^A_{j,\kappa}-d\mu^N_{j,\kappa}.
\tag{MJO.8}
```

This is exactly the Hahn-Jordan decomposition of the raw moving-driver current
on the fixed parent-known event space.

## 3. What this proves

The following sublemma is paid:

```math
\texttt{PrimitiveSignedChannelDirectMaterialRepresentation.A}
+\texttt{fixed-chart finite raw throughput}
\Longrightarrow
\texttt{MovingDriverFixedChartJordanOrientationAllocation.A}.
\tag{MJO.9}
```

It supplies the three orientation rows for the raw moving-driver event:

```math
(\mu^A,\mu^N,\mu^J)
\quad\text{on the same fixed event space.}
\tag{MJO.10}
```

Physically: the sign is not a new payer. It is the orientation of a raw
same-fluid transfer event. Once that event is actually owned on the material
chart, its positive leg and negative partner are already two faces of the same
signed current.

## 4. What this does not prove

This does not prove `MovingDriverPreEnvelopeSignedCurrentRetention.A`.

First, the event-space split is fixed-chart and fixed-depth. It does not supply
the retained exact-projector chart license through the moving chart or the
compactness limit.

Second, it does not choose the record edge before readout. Parent-announced
selector capture is still required so the selected positive event is not a
future extremizer chosen after the raw current has already been summed.

Third, it does not prove stopped-line compatibility. The pressure/strain burst
must belong to the same stopped material ancestry line before the record reads
the edge.

Fourth, it does not prove no-recount. A negative partner found by Jordan
splitting is a current opposite leg, not yet a historically paired return or a
single-use debt object.

Fifth, it does not provide the first-ratio/tower-tail summability needed by
the c0 bill currency. Finite fixed-chart throughput is not the same as the
uniform continuation-depth record bound.

## 5. Sharpened remaining theorem

The remaining theorem is now smaller and better typed:

```math
\begin{aligned}
&\texttt{PrimitiveSignedChannelDirectMaterialRepresentation.A}\\
&+\texttt{PrimitiveSignedChannelOffCarrierServiceCharge.A}\\
&+\texttt{RetainedRecordEdgeParentAnnouncedSelectorCapture.A}\\
&+\texttt{RetainedRecordEdgeExactProjectorChartLicense.A}\\
&+\texttt{RetainedRecordEdgeStoppedLineBeforeReadout.A}\\
&+\texttt{same-event no-recount / no-delamination / first-ratio bill currency}
\end{aligned}
\Longrightarrow
\texttt{MovingDriverPreEnvelopeSignedCurrentRetention.A}.
\tag{MJO.11}
```

If the support tuple `(MJO.3)' is absent, the support-reduction theorem routes
that mass to paid, legal, stop, or exit. If the tuple is present, `(MJO.7)'--`(MJO.8)'
pay the sign orientation. Thus the surviving unpaid part is not orientation
splitting. It is same-edge custody through parent address, chart license,
stopped ancestry, no-recount, and compactness passage.

Therefore the c0 epsilon-extraction wall has one less ambiguity: orientation
allocation is a fixed-event measure-theoretic fact once the raw moving-driver
event is owned; the open producer is ownership/admission of that event before
selected positive-part readout and through the normalized bill-record limit.
