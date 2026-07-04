---
theorem_id: forward-gold-primitive-prereturn-address-change-charge-split-20260704
status: strict-reduction-and-checked-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / primitive pre-return address custody
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - PrimitiveChannelPreReturnAddressChangeCharge.A
  - PrimitivePreReturnSelectorChamberVariationCharge.A
  - PrimitivePreReturnChartProjectorTransferCharge.A
  - PrimitivePreReturnDetectorChannelRotationCharge.A
  - PrimitivePreReturnFaceTraceBoundaryCharge.A
role: >-
  Splits the pre-return address-change charge needed by the trace-address
  process into the four physical motions allowed before same-face return opens:
  selector/chamber variation, chart/projector transfer, detector/channel
  rotation, and face-trace boundary loss. It explicitly excludes same-face
  negative return as an input, because that budget is downstream of the
  pre-return trace-address process.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-prereturn-trace-address-process-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-channel-address-change-variation-charge-split-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-stratum-crossing-bv-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-admission-no-detachment-modulus-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-paid-rotation-producer-collapse-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-exact-projector-retained-chart-license-audit-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-overlap-first-difference-charge-reduction-20260704.md
completion_truth: >-
  This note does not prove PrimitiveChannelPreReturnAddressChangeCharge.A. It
  proves a strict reduction and circularity correction: before same-face return
  is available, address changes can only be paid by selector/chamber variation,
  chart/projector transfer, detector/channel rotation, face-trace boundary
  service, legal loss, stop, or exit. The existing selector, chart, detector,
  and face support surfaces remain consumer/support until stated for primitive
  events inside the pre-return trace-address process.
---

# Primitive pre-return address-change charge split

## 1. Physical object

Assume a primitive signed-channel event already has a pre-return trace address

\[
\mathfrak A^{pre}(z)
=
(\mathfrak R(z),\mathfrak X(z),\mathfrak D(z),\mathfrak T(z)),
\tag{PRAC.1}
\]

where \(\mathfrak R\) is the stopped carrier/common-selector owner,
\(\mathfrak X\) is the chart/projector frame, \(\mathfrak D\) is the
detector/channel readout, and \(\mathfrak T\) is the pre-readout face trace.

This is one event of one transported Navier-Stokes packet. If its address
changes before the return account opens, the packet has changed owner, measuring
frame, signed stress channel, or face trace. Those are physical motions of the
same event. They must be paid before counting, or the event has stopped, exited,
or become legal loss.

The proof is not allowed to pay this pre-return motion by same-face negative
return. Same-face return is only meaningful after a face trace owner already
exists.

## 2. Four lower charges

The pre-return address-change theorem splits as:

\[
\begin{aligned}
&\texttt{PrimitivePreReturnSelectorChamberVariationCharge.A}\\
&+\texttt{PrimitivePreReturnChartProjectorTransferCharge.A}\\
&+\texttt{PrimitivePreReturnDetectorChannelRotationCharge.A}\\
&+\texttt{PrimitivePreReturnFaceTraceBoundaryCharge.A}
\end{aligned}
\Longrightarrow
\texttt{PrimitiveChannelPreReturnAddressChangeCharge.A}.
\tag{PRAC.2}
\]

The selector/chamber charge says that an unpaid change of stopped carrier owner
or common selector is bounded by the finite stopped-selector/chamber variation,
or becomes tie, drift, reselection, legal loss, stop, or exit.

The chart/projector charge says that leaving the measuring frame is paid by
C11 metric-tower service, higher projector service, chart transfer, material
service, legal loss, stop, or exit.

The detector/channel charge says that a change in the pressure-visible signed
channel is paid by detector-angle rotation, detector-silent service,
selector-channel service, legal loss, stop, or exit.

The face-trace charge says that leaving the pre-readout face trace is paid by
face detachment, local thickness loss, trace-boundary service, legal loss, stop,
or exit. It does not include same-face negative return.

## 3. Conditional proof

Assume the four lower charges in `(PRAC.2)'. Along the stopped history of one
same-packet event, every change of \(\mathfrak A^{pre}\) changes at least one
coordinate in `(PRAC.1)'. Partition the change set by the first coordinate that
changes in the fixed order

\[
\mathfrak R \prec \mathfrak X \prec \mathfrak D \prec \mathfrak T .
\tag{PRAC.3}
\]

The \(\mathfrak R\)-part is paid by selector/chamber variation. The
\(\mathfrak X\)-part is paid by chart/projector transfer. The \(\mathfrak D\)-part
is paid by detector/channel rotation or service. The \(\mathfrak T\)-part is
paid by face-trace boundary service. Legal, stopped, and exited pieces are
outside unpaid counting.

Therefore the pre-return address variation satisfies

\[
|d\mathfrak A^{pre}|_{\text{same packet}}
\le
dB^{sel}
+dB^{chart}
+dB^{chan}
+dB^{trace}
+dLegal+dStop+dExit,
\tag{PRAC.4}
\]

which is `PrimitiveChannelPreReturnAddressChangeCharge.A`.

## 4. Checked source state

The selector-stratum BV note proves a deterministic BV/coarea crossing estimate
after a finite stopped selector packet exists. It is proof-grade as a consumer,
not as construction of the carrier/common-selector owner for arbitrary primitive
events.

The exact-projector chart audit reduces chart license to same-packet chart
control plus projector escape payment. It is support for the chart/projector
charge after the primitive event has entered the stopped chamber.

The paid-rotation producer collapse shows detector-silent service and
selector/channel rotation both consume the selected-critical fresh source tent
or scale-memory bound. It does not prove that bound; the repeated-core and
shrinking-core branches remain open.

The no-detachment and local-thickness notes name the right face boundary
currencies for a retained record edge. They do not yet prove face-trace boundary
charge for every primitive event before same-face return is available.

Thus the old full address-change split remains downstream support. Its
face/polarity row uses same-face compactness and return ownership. The pre-return
charge here replaces that row by face-trace boundary service only.

## 5. Current proof truth

Installed here:

\[
\text{selector/chamber}
+\text{chart/projector}
+\text{detector/channel}
+\text{face-trace boundary}
\Longrightarrow
\text{pre-return address-change charge}.
\tag{PRAC.5}
\]

Still open:

\[
\begin{array}{c}
\texttt{PrimitivePreReturnSelectorChamberVariationCharge.A},\\
\texttt{PrimitivePreReturnChartProjectorTransferCharge.A},\\
\texttt{PrimitivePreReturnDetectorChannelRotationCharge.A},\\
\texttt{PrimitivePreReturnFaceTraceBoundaryCharge.A}.
\end{array}
\tag{PRAC.6}
\]

This is a strict reduction, not closure. Its value is to keep the physical order
honest: a proof may pay address motion by pre-return ownership/service
currencies, then use stopped return/BV on the owned face trace. It may not use
same-face return to build the address process that makes same-face return
well-defined.
