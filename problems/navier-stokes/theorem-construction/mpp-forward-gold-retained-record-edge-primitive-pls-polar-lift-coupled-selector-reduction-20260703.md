---
theorem_id: forward-gold-retained-record-edge-primitive-pls-polar-lift-coupled-selector-reduction-20260703
status: strict-reduction-not-proof
created: 2026-07-03
problem: navier-stokes
route: forward-gold-signed-height-record-net-work
target_object: RetainedRecordEdgePrimitivePLSPolarLift.A
role: coupled physical sign/timing reduction for retained record-edge primitive PLS polar lift
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-primitive-pls-driver-admission-proof-pass-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-symbol-kernel-exclusion-counterboundary-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-complete-frame-pressure-probe-demotion-material-service-routing-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-source-to-primitive-half-tail-integration-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-pls-signed-channel-realization-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-selected-primitive-alignment-stopped-selector-cone-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-cone-aperture-consumed-support-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-common-selector-refinement-identity-repair-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-stopped-primitive-channel-admission-lower-face-reduction-20260703.md
completion_truth: >-
  This note does not prove RetainedRecordEdgePrimitivePLSPolarLift.A. It shows
  that the polar lift and stopped-line-before-readout inputs are coupled by the
  stopped selector cone, and reduces both to one pre-readout stopped primitive
  channel admission theorem. The lower-face pass reduces that coupled admission
  to pressure-active-or-silent service routing, retained record-edge common
  selector refinement/no-loss, and retained record-edge primitive-channel
  compatibility.
---

# Retained record-edge primitive PLS polar lift coupled-selector reduction

## 1. Physical question

The retained edge is one high packet in one material history. The previous
admission pass already checked that the higher exact-projector residue is not a
separate force: it is moving pressure/strain service of the same packet. The
remaining question is sign.

For a retained future-positive record edge \(e\), write the surviving
projector-service work as \(\mathcal E_e^{proj}\). The desired polar lift was

```math
[\mathcal E_e^{proj}]_+
\le
C_N
\left[
\left\langle
H_{j,N},
\mathcal M_{<j-C,N}H_{j,N}
\right\rangle
\right]_+dt
+dPaid_e+dExit_e .
\tag{PLR.1}
```

This is not a pure Hodge algebra statement. The record sees a positive scalar
edge after its readout. The primitive driver sees a positive signed channel only
after a stopped material carrier, selector cone, and primitive channel are fixed.
Those are the same physical packet only if the sign is fixed before the record
chooses the edge.

## 2. Raw pressure visibility is not enough

The selected-symbol counterboundary gives the local obstruction. At a frozen
point, the pressure-Hodge scalar symbol sees only

```math
m_{PH}(\xi)Z\simeq {\xi_i\xi_jZ_{ij}\over|\xi|^2}.
\tag{PLR.2}
```

With \(\xi=e_1\), the transverse trace-free tensor

```math
Z=
\begin{pmatrix}
0&0&0\\
0&1&0\\
0&0&-1
\end{pmatrix}
\tag{PLR.3}
```

has \(m_{PH}(e_1)Z=0\) while \(Z\ne0\). So a raw pressure-Hodge detector does
not force an arbitrary selected tensor direction to be pressure-active.

Physically, this means the record-positive work can try to live in a transverse
pressure-silent direction. Such a direction may still be real strain work of the
packet. It is just not visible to the pressure-Hodge coordinate by itself.

## 3. Silent work is not free, but that is a routing theorem

The complete-frame and silent-source surfaces repair the local physical story.
For the primitive packet frame,

```math
[p\cdot Sp]_+
\le
[-\widehat\xi\cdot S\widehat\xi]_+
+
[-n\cdot Sn]_+ .
\tag{PLR.4}
```

A positive primitive pump has same-packet transverse compression. A selected
silent pressure component also reappears in the strain equation:

```math
D_tS+S^2+\Omega^2+\nabla_A^2q
=
\nu\Delta_AS+\text{coefficient/legal terms}.
\tag{PLR.5}
```

Thus a selected pressure-silent part is charged to same-packet
strain/exchange, viscous/radius, collar/frame, or legal routing. This is a real
local orientation and service fact.

It is not the polar lift by itself. For the retained record edge, the silent
component must be routed before the record counts it. That is exactly the
record-menu frozen theorem already isolated as

```math
\texttt{RecordMenuPressureActiveOrSilentService.A}.
\tag{PLR.6}
```

Without `(PLR.6)', the raw transverse mode `(PLR.3)' is the obstruction shape:
a same-packet direction can be invisible to the pressure/root detector while
still carrying positive record work.

## 4. The positive cone comes from the stopped selector

The primitive signed-channel boundary shows the second obstruction. Being on
the same stopped material core is not enough. If \(S_k\) is a fresh selected
increment and \(\Gamma_{\mathfrak R}\) is the stopped signed channel, the needed
coercivity is

```math
\|S_k\|_{sel}
\le
C[\Gamma_{\mathfrak R}(S_k)]_+
+C R_{legal}.
\tag{PLR.7}
```

This is false from same-core identity alone: \(S_k\) can point in a channel
direction orthogonal to \(\Gamma_{\mathfrak R}\), or have the wrong sign.

The stopped selector cone supplies the positive sign, once the record is fixed
before the positive readout:

```math
\mathcal C_{\mathfrak R}^{\theta}
=
\{S:\Gamma_{\mathfrak R}(S)\ge \theta\|S\|_{sel}\},
\qquad \theta>0.
\tag{PLR.8}
```

Inside the stopped-core branch, after common-selector refinement/no-loss, the
retained unpaid selected transaction stays in `(PLR.8)'; otherwise it is a
reset, transfer, legal loss, donor loss, or stopped exit. Therefore

```math
\|S_k\|_{sel}
\le
\theta^{-1}[\Gamma_{\mathfrak R}(S_k)]_+
+R_{legal}.
\tag{PLR.9}
```

This is the physical sign mechanism. The positive cone is not created by the
elliptic projector. It is created by the stopped selector/order-lock choosing a
fixed primitive signed channel before the selected positive transaction is read.

## 5. Coupled reduction

The previous split named two lower inputs:

```math
\texttt{RetainedRecordEdgePrimitivePLSPolarLift.A}
\quad\text{and}\quad
\texttt{RetainedRecordEdgeStoppedLineBeforeReadout.A}.
\tag{PLR.10}
```

This pass shows that they should be attacked as one coupled physical bridge.
The stopped line supplies the selector cone, and the selector cone supplies the
polar sign.

The coupled theorem is:

```math
\texttt{RetainedRecordEdgeStoppedPrimitiveChannelAdmission.A}.
\tag{PLR.11}
```

The lower-face reduction now records the exact physical inputs:

```math
\begin{aligned}
&\texttt{RecordMenuPressureActiveOrSilentService.A}\\
&+\texttt{RetainedRecordEdgeCommonSelectorRefinementNoLoss.A}\\
&+\texttt{RetainedRecordEdgePrimitiveChannelCompatibility.A}\\
&\Longrightarrow
\texttt{RetainedRecordEdgeStoppedPrimitiveChannelAdmission.A}.
\end{aligned}
\tag{PLR.11a}
```

The common-selector face is now lower again:

```math
\texttt{RetainedRecordEdgeParentAnnouncedSelectorCapture.A}
+\texttt{stopped-selector variation/payment support}
\Longrightarrow
\texttt{RetainedRecordEdgeCommonSelectorRefinementNoLoss.A}.
\tag{PLR.11b}
```

It has three clauses for every retained future-positive exact-projector record
edge:

1. pressure-active-or-silent service: the frozen edge either lies in the
   pressure-active primitive symbol direction, or its pressure/root-silent part
   is already routed to same-packet service, legal, stop, or exit before
   readout;
2. stopped common-selector refinement: the record edge is refined onto one
   parent-known stopped carrier, selector cone, order-lock, polarity, and
   primitive channel before the positive record readout, with label changes paid;
3. primitive channel compatibility: on that stopped channel,
   \(\mathcal E_e^{proj}\) is the signed primitive channel increment, up to the
   base projector, collar/frame, high-high, legal, stop, and material-service
   pieces already routed by the projector-escape audit.

From these three clauses, the proof is direct. The silent part is paid or exits
by clause 1. The remaining pressure-active retained increment lies in the fixed
selector cone by clause 2. Cone coercivity gives `(PLR.9)'. Channel
compatibility identifies \(\Gamma_{\mathfrak R}(S_e)\) with the primitive PLS
coordinate of the same packet. Hence `(PLR.1)' holds, and the same construction
also supplies the stopped line before readout.

Thus

```math
\texttt{RetainedRecordEdgeStoppedPrimitiveChannelAdmission.A}
\Longrightarrow
\texttt{RetainedRecordEdgePrimitivePLSPolarLift.A}
+
\texttt{RetainedRecordEdgeStoppedLineBeforeReadout.A}.
\tag{PLR.12}
```

Together with the previous admission pass,

```math
\texttt{RetainedRecordEdgeStoppedPrimitiveChannelAdmission.A}
\Longrightarrow
\texttt{RetainedRecordEdgePrimitivePLSDriverAdmission.A}.
\tag{PLR.13}
```

## 6. Current truth state

This is a strict reduction, not a proof of the polar lift. The raw polar theorem
is false as a standalone Hodge statement because of pressure-Hodge-null
transverse modes. The local complete-frame and silent-source notes show those
modes are same-packet service, not detached ghosts, but the record edge still
needs the pre-readout routing theorem `(PLR.6)'.

The useful simplification is that the sign and timing burdens are one physical
act. The lower-face pass makes the remaining unpaid work explicit: prove
pressure-active-or-silent service, prove retained record-edge common selector
refinement/no-loss, and prove primitive-channel compatibility for the exact
projector residue, all before the record reads the edge.
