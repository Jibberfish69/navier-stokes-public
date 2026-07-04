---
theorem_id: forward-gold-primitive-prereturn-trace-address-process-reduction-20260704
status: strict-reduction-and-circularity-correction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / primitive event address custody
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - StoppedPrimitivePreReturnFaceTraceAddressProcess.A
  - PrimitiveChannelPreReturnEventAddressMap.A
  - PrimitiveChannelPreReturnAddressChangeCharge.A
  - PrimitiveStoppedChamberPreReturnCoordinateLift.A
  - PrimitiveStoppedChamberSameFaceNegativeReturnBudget.A
role: >-
  Splits the primitive event-address branch at the physical time-order where it
  was at risk of becoming circular. The address process needed to pay same-face
  negative return must be built from carrier, selector, chart/projector,
  detector/channel, and face-trace ownership before using any same-face return
  budget. Full face/polarity return is downstream of that pre-return trace
  address process, not an input to it.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-current-signed-height-same-parent-state-currency-storage-synthesis-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-face-address-process-event-map-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-nonselector-coordinate-lift-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-overlap-first-difference-charge-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-channel-address-change-variation-charge-split-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-prereturn-address-change-charge-split-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-chamber-face-polarity-lift-proof-pass-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-chamber-face-local-signed-channel-construction-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-chamber-same-face-negative-return-budget-reduction-20260704.md
completion_truth: >-
  This note proves no Navier-Stokes estimate and does not close Gold. It proves
  a strict noncircularity correction: the primitive stopped face-address process
  must be decomposed into a pre-return face-trace address process plus a
  downstream same-face negative-return budget. Any proof that builds the event
  map using full face/polarity return has fed the desired return ownership back
  into its own source.
---

# Primitive pre-return trace-address process reduction

## 1. Physical object

The object is one primitive signed-channel event of one smooth Navier-Stokes
velocity field:

\[
z=(\sigma,t,x,\kappa),
\qquad
d\mu_{\kappa,S}=|Y_{\kappa,S}|\,d\sigma dt .
\tag{PRTA.1}
\]

Transport carries the same material packet. Pressure and incompressibility
choose the projected stress in a lawful frame. Viscosity, scale, and finite
service decide what can be dissipated or paid. Sign and alignment decide later
whether this event is positive record trace, negative return, or cancellation
cost.

The important word is later. Before same-face return can pay anything, the event
must already have a parent-known trace address. The proof may know which stopped
carrier owns the event, which selector owns that carrier, which chart and
detector read it, and which pre-readout face trace contains it. It may not yet
use the fact that lost positive sign is paid by negative return on that same
face, because that is the payment the address process is supposed to make
lawful.

## 2. The circular reading to block

The older shorthand says:

\[
\texttt{PrimitiveChannelEventAddressMap.A}
+
\texttt{PrimitiveChannelAddressChangeVariationCharge.A}
\Longrightarrow
\texttt{StoppedPrimitiveFaceAddressProcess.A}.
\tag{PRTA.2}
\]

That is safe only when the address map and address-change charge are understood
before return payment. The unsafe reading expands the map through full
face/polarity lift and expands face/polarity lift through same-face negative
return:

\[
\begin{array}{c}
\text{event map}\\
\Longrightarrow
\text{stopped face-address process}\\
\Longrightarrow
\text{same-face negative-return budget}\\
\Longrightarrow
\text{full face/polarity lift}\\
\Longrightarrow
\text{event map}.
\end{array}
\tag{PRTA.3}
\]

This is not a harmless dependency order. Physically it says the event is allowed
to choose its face owner using the return payment that only exists after the
face owner has already been chosen.

## 3. Pre-return coordinate lift

The coordinate lift used to build the event map must stop before return:

\[
\begin{aligned}
&\texttt{PrimitiveStoppedChamberChartProjectorLiftOrPaidExit.A}\\
&+\texttt{PrimitiveStoppedChamberDetectorChannelLiftOrPaidService.A}\\
&+\texttt{PrimitiveStoppedChamberFaceTraceFiberOrPaidDetachment.A}
\end{aligned}
\Longrightarrow
\texttt{PrimitiveStoppedChamberPreReturnCoordinateLift.A}.
\tag{PRTA.4}
\]

The first coordinate chooses the lawful material frame and exact pressure
projector. The second chooses the signed stress readout or pays detector/channel
service. The third chooses the pre-readout face trace or pays detachment,
zero-thickness loss, legal loss, stop, service, or exit.

No negative-return budget appears in `(PRTA.4)'. Face trace is ownership. Return
is payment after ownership.

## 4. Pre-return event address map

With that weaker coordinate lift, the address map becomes:

\[
\begin{aligned}
&\texttt{PrimitiveSignedChannelStoppedCarrierCoverageOrPaidEscape.A}\\
&+\texttt{PrimitiveStoppedCarrierCommonSelectorOwnershipOrPaidReselection.A}\\
&+\texttt{PrimitiveStoppedChamberPreReturnCoordinateLift.A}\\
&+\texttt{PrimitiveStoppedCommonSelectorCellOverlapFirstDifferenceCharge.A}
\end{aligned}
\Longrightarrow
\texttt{PrimitiveChannelPreReturnEventAddressMap.A}.
\tag{PRTA.5}
\]

This map assigns each unpaid primitive event one stopped carrier, one common
selector owner, one chart/projector frame, one detector/channel readout, and one
pre-readout face trace. The overlap input prevents the same event from being
owned twice: if two candidate cells claim \(z\), their first physical
difference is paid as selector/chamber change, chart/projector transfer,
detector/channel rotation, face-trace detachment/thickness loss, legal loss,
stop, or exit before an address is used.

## 5. Pre-return address-change charge

The map must be paired with a pre-return address-change charge:

\[
\begin{aligned}
&\texttt{PrimitiveChannelPreReturnEventAddressMap.A}\\
&+\texttt{PrimitiveChannelPreReturnAddressChangeCharge.A}
\end{aligned}
\Longrightarrow
\texttt{StoppedPrimitivePreReturnFaceTraceAddressProcess.A}.
\tag{PRTA.6}
\]

The allowed pre-return address changes are the physical motions of the same
packet before the return account opens:

\[
\begin{array}{ll}
\text{selector/chamber} &: \text{owner tie, stopped first exit, selector drift, or reselection payment},\\
\text{chart/projector} &: \text{frame transfer, projector escape, or material service},\\
\text{detector/channel} &: \text{angle rotation, detector silence, or channel service},\\
\text{face trace} &: \text{detachment, local thickness loss, trace-boundary service, stop, or exit}.
\end{array}
\tag{PRTA.7}
\]

Same-face negative return is excluded from `(PRTA.7)'. Once the proof uses
same-face return to pay face-trace address changes, it has already assumed the
same-face ownership that this process is meant to create.

The dedicated pre-return address-change split now sharpens this input:

\[
\begin{aligned}
&\texttt{PrimitivePreReturnSelectorChamberVariationCharge.A}\\
&+\texttt{PrimitivePreReturnChartProjectorTransferCharge.A}\\
&+\texttt{PrimitivePreReturnDetectorChannelRotationCharge.A}\\
&+\texttt{PrimitivePreReturnFaceTraceBoundaryCharge.A}
\end{aligned}
\Longrightarrow
\texttt{PrimitiveChannelPreReturnAddressChangeCharge.A}.
\tag{PRTA.7a}
\]

The fourth row is face-trace boundary service only. It is not same-face return.

## 6. Downstream return payment

After the pre-return process exists, same-face return becomes a consequence:

\[
\begin{aligned}
&\texttt{StoppedPrimitivePreReturnFaceTraceAddressProcess.A}\\
&+\texttt{StoppedReturnBVFiniteFromOriginalData.A}
\end{aligned}
\Longrightarrow
\texttt{PrimitiveStoppedChamberSameFaceNegativeReturnBudget.A}.
\tag{PRTA.8}
\]

Now the negative part of the primitive signed channel can be restricted to the
already-owned face trace. It cannot jump to a different face or be spent by
several selected faces, because `(PRTA.6)' has already fixed pre-return event
ownership and paid pre-return address changes.

The full face/polarity lift then follows by the existing conditional face pass:

\[
\begin{aligned}
&\texttt{PrimitiveStoppedChamberFaceTraceFiberOrPaidDetachment.A}\\
&+\texttt{PrimitiveStoppedChamberSameFaceSignedReturnBudgetOrPaidPolarity.A}
\end{aligned}
\Longrightarrow
\texttt{PrimitiveStoppedChamberFacePolarityLiftOrPaidReturn.A}.
\tag{PRTA.9}
\]

## 7. Current proof truth

Installed here is a strict reduction and circularity correction:

\[
\begin{array}{c}
\text{carrier coverage}\\
+\text{common selector ownership}\\
+\text{chart/projector, detector/channel, face-trace lift}\\
+\text{pre-map overlap first difference}\\
+\text{pre-return address-change charge}\\
\Longrightarrow
\text{pre-return trace-address process}.
\end{array}
\tag{PRTA.10}
\]

Then:

\[
\text{pre-return trace-address process}
+\text{same-channel stopped return/BV}
\Longrightarrow
\text{same-face negative-return budget}.
\tag{PRTA.11}
\]

Still open are the actual PDE producers: all-event material carrier support,
pre-readout stopped atlas, carrier-level selector menu and selector/channel
lock, chamber-level chart/projector and detector/channel lifts, pre-readout face
trace fiber, overlap first-difference charge, and pre-return address-change
charge. This note does not prove those producers. It prevents the Gold route
from buying them with the same-face return budget they are supposed to make
lawful.
