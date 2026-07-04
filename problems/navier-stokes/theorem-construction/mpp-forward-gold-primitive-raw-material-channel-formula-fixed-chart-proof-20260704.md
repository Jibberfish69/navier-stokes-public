---
theorem_id: forward-gold-primitive-raw-material-channel-formula-fixed-chart-proof-20260704
status: fixed-chart-formula-proof-and-atlas-boundary-reduction-not-partition-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / primitive material channelization
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - PrimitiveSignedChannelPreReadoutMaterialChannelizationPartition.A
  - PrimitiveRawMaterialChannelFormulaOnFixedChart.A
  - PrimitiveRawMaterialChannelAtlasFiniteOverlapOrPaidBoundary.A
role: >-
  Proves the fixed-chart physical formula face of pre-readout material
  channelization and isolates the remaining global atlas/boundary burden. On a
  fixed smooth material chart/window, the primitive raw channel alphabet is an
  explicit finite expression of the original Navier-Stokes participation law.
  What remains open is covering the whole primitive signed-channel measure by a
  parent-known finite-overlap raw material-channel atlas before readout, with
  boundary/off-chart/off-channel mass paid.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-signed-channel-pre-readout-material-channelization-partition-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-signed-channel-material-carrier-support-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-pls-signed-channel-decomposition-repair-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-hodge-projection-commutator-pressure-operator-reduction-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-service-variation-direct-calculation-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-service-variation-coercivity-split-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-free-material-graph-driver-direct-attack-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-channel-address-cell-coverage-chamber-lift-reduction-20260704.md
completion_truth: >-
  This note proves only the fixed-chart formula face:
  PrimitiveRawMaterialChannelFormulaOnFixedChart.A. It does not prove
  PrimitiveSignedChannelPreReadoutMaterialChannelizationPartition.A. The
  remaining open input is the atlas/boundary theorem that turns fixed-chart
  formulas into a parent-known pre-readout partition of the whole primitive
  signed-channel measure.
---

# Primitive raw material channel formula on a fixed chart

## 1. Physical object

Work in one smooth material chart of the original Navier-Stokes history:

```math
x=X(a,t),
\qquad
v(a,t)=u(X(a,t),t),
\qquad
A=(D_aX)^{-1},
\qquad
G=AA^\top .
\tag{RCF.1}
```

Fix a material window/collar \(\psi\), a finite continuation depth \(N\), a
scale \(j\), a high packet \(H_{j,N}\), and the moving material Hodge projector
\(\mathbb P_A\). On this fixed chart, the question is not which stopped selector
will later own the event. The question is simpler: does the raw primitive
channel formula come from the same Navier-Stokes packet?

Here the answer is yes. The material equation is

```math
\partial_t v+A^\top\nabla_a q
=
\nu\,\operatorname{div}_a(G\nabla_a v),
\qquad
\operatorname{div}_a(Av)=0 .
\tag{RCF.2}
```

Pressure is fixed by the same material elliptic operator

```math
L_G=-\operatorname{div}_a(G\nabla_a),
\qquad
L_Gq=
-A_{\ell i}A_{kj}(\partial_\ell v_j)(\partial_kv_i).
\tag{RCF.3}
```

The coefficient motion is

```math
\dot A=-A(\nabla_xu\circ X),
\qquad
\dot G=-2ASA^\top.
\tag{RCF.4}
```

These identities put transport, pressure, incompressibility, viscosity,
coefficient motion, and collar/projector motion on one material packet.

## 2. Fixed-chart formula proof

The primitive low-high pressure/strain driver on the fixed chart has the form

```math
d\Omega_N^{PLS,primitive}
\simeq
\sum_j w_j
\left[
\left\langle
H_{j,N},
\mathcal M_{<j-C,N}H_{j,N}
\right\rangle
\right]_+dt
+dR_N^{paid}.
\tag{RCF.5}
```

The lower material coefficient \(\mathcal M_{<j-C,N}\) is not a free symbol. By
`(RCF.2)'--`(RCF.4)' and the installed Hodge and material-service calculations,
its finite channel alphabet is:

```text
strain/top-eigenframe,
pressure-Hessian through the material pressure equation,
Hodge/Stokes projector motion,
coefficient/frame motion,
transported collar motion,
annular interface stress work,
viscous/radius graph service,
low-high transport commutator.
```

Therefore, on this fixed material chart, the raw primitive channel density is a
finite same-packet signed family:

```math
\left\langle
H_{j,N},
\mathcal M_{<j-C,N}H_{j,N}
\right\rangle
=
\sum_{\kappa\in\mathcal K_N^{raw}}
Y_{\kappa}^{raw}
+R^{paid}_{chart}.
\tag{RCF.6}
```

Each \(Y_\kappa^{raw}\) is made from the same tuple

```math
(
X(a,t),
H_{j,N},
\mathcal M_{<j-C,N},
\psi,
\mathbb P_A,
j,\kappa
).
\tag{RCF.7}
```

This proves the fixed-chart formula input:

```math
\texttt{PrimitiveRawMaterialChannelFormulaOnFixedChart.A}.
\tag{RCF.8}
```

The proof uses only the original smooth material Navier-Stokes equation and the
already checked same-packet Hodge/service identities. It does not use a
future-positive record edge or a post-selected stopped chamber.

## 3. What the proof does not give

The fixed-chart formula is not the full pre-readout partition. The partition
theorem needs a parent-known raw atlas over the whole primitive signed-channel
measure:

```math
\texttt{PrimitiveRawMaterialChannelAtlasFiniteOverlapOrPaidBoundary.A}.
\tag{RCF.9}
```

This atlas theorem must choose before readout a locally finite family of raw
material charts/windows/scales/projector states whose fixed-chart channel
formulas cover \(d\mu_{\kappa,S}\), with uncovered or multiply claimed mass paid
as pressure-silent service, chart/projector/collar transfer, channel rotation,
material service, legal loss, stop, or exit:

```math
d\mu_{\kappa,S}
\left(
\{z:z\ \text{is not covered by a raw material channel chart}\}
\right)
\le
dPaid+dLegal+dStop+dExit .
\tag{RCF.10}
```

and every genuine overlap or boundary must be resolved before readout:

```math
d\mu_{\kappa,S}^{overlap/bdry}
\le
dPaid^{chart/proj/collar}
+dPaid^{rotation}
+dPaid^{material}
+dLegal+dStop+dExit .
\tag{RCF.11}
```

The physical reason is simple. A local formula says what the packet is on a
chosen chart. It does not prove that the parent has chosen a finite-overlap
chart family covering every primitive event before the event is useful.

## 4. Strict reduction to the partition theorem

Assume `(RCF.8)' and `(RCF.9)'. Use the atlas in `(RCF.9)' and apply the
fixed-chart formula `(RCF.8)' on each chart. The represented pieces define
\(d\mu_{\kappa,S}^{mat}\) with support tuples `(RCF.7)'. The uncovered,
boundary, overlap, chart-transfer, channel-rotation, and service pieces are
charged by `(RCF.10)'--`(RCF.11)' and define \(d\mu_{\kappa,S}^{off}\).

Thus

```math
\texttt{PrimitiveRawMaterialChannelFormulaOnFixedChart.A}
+
\texttt{PrimitiveRawMaterialChannelAtlasFiniteOverlapOrPaidBoundary.A}
\Longrightarrow
\texttt{PrimitiveSignedChannelPreReadoutMaterialChannelizationPartition.A}.
\tag{RCF.12}
```

Together with the previous note, this implies material carrier support:

```math
\texttt{PrimitiveSignedChannelPreReadoutMaterialChannelizationPartition.A}
\Longrightarrow
\texttt{PrimitiveSignedChannelMaterialCarrierSupport.A}.
\tag{RCF.13}
```

## 5. Checked obstruction to using later chambers

The primitive event-address chain starts too late for `(RCF.9)'. It assumes the
primitive event has already entered a stopped common-selector chamber or an
address cell, then lifts chart/projector, detector/channel, and face/polarity
coordinates on that admitted chamber.

The raw material channelization partition is upstream of that. It must create
the material channel support before the stopped chamber exists. A stopped
common-selector chamber can refine a raw material channel event, but it cannot
be used to prove that the raw event existed in the first place without
circularity.

So the current obstruction is:

```math
\text{fixed-chart channel formula}
+
\text{post-admission chamber/address support}
\not\Rightarrow
\text{pre-readout raw channel atlas}.
\tag{RCF.14}
```

The missing theorem is not Hodge algebra, pressure attachment, or the channel
alphabet. It is parent-known finite-overlap raw material atlas custody before
readout.

## 6. Current proof truth

Proved here:

```math
\texttt{PrimitiveRawMaterialChannelFormulaOnFixedChart.A}.
\tag{RCF.15}
```

Strictly reduced here:

```math
\texttt{PrimitiveRawMaterialChannelAtlasFiniteOverlapOrPaidBoundary.A}
\Longrightarrow
\texttt{PrimitiveSignedChannelPreReadoutMaterialChannelizationPartition.A}
\tag{RCF.16}
```

using the fixed-chart formula proved above.

Still open:

```math
\texttt{PrimitiveRawMaterialChannelAtlasFiniteOverlapOrPaidBoundary.A}.
\tag{RCF.17}
```

This is the next cleaner physical target under carrier support: build a
parent-known raw material-channel atlas before stopped/selector readout, with
finite overlap and paid boundary/service/rotation/off-chart residue for the
whole primitive signed-channel measure.
