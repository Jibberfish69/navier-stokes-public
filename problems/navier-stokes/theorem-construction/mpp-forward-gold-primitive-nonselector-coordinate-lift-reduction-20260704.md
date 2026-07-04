---
theorem_id: forward-gold-primitive-nonselector-coordinate-lift-reduction-20260704
status: strict-reduction-and-scope-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / primitive event address custody
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - PrimitiveStoppedChamberNonselectorCoordinateLift.A
  - PrimitiveStoppedChamberChartProjectorLiftOrPaidExit.A
  - PrimitiveStoppedChamberDetectorChannelLiftOrPaidService.A
  - PrimitiveStoppedChamberFacePolarityLiftOrPaidReturn.A
role: >-
  Reduces nonselector coordinate lift to the three remaining physical
  coordinates on one admitted stopped common-selector chamber: chart/projector,
  detector/channel, and face/polarity. Existing retained-edge chart license,
  detector service, no-detachment, and local face compactness surfaces are
  support until they are stated on the admitted primitive chamber itself before
  selected readout.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-stopped-chamber-selector-normalization-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-channel-address-change-variation-charge-split-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-exact-projector-retained-chart-license-audit-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-menu-pressure-active-silent-service-pre-readout-reserve-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-admission-no-detachment-modulus-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-local-thickness-charge-modulus-reduction-20260704.md
completion_truth: >-
  This note does not prove PrimitiveStoppedChamberNonselectorCoordinateLift.A.
  It proves a strict reduction: once a primitive event is admitted to a stopped
  common-selector chamber, the remaining lift follows from chamber-level
  chart/projector, detector/channel, and face/polarity lift or paid exit
  theorems. The checked obstruction is that current support mostly lives on
  retained future-positive edges or post-map address changes, not on every
  primitive event of both signs inside the admitted chamber.
---

# Primitive nonselector coordinate lift reduction

## 1. The same chamber is the object

After selector normalization, a primitive event \(z\) is already inside a
parent-known stopped common-selector chamber:

\[
z\in C_{\mathfrak R},
\qquad
d\mu_{\kappa,S}=|Y_{\kappa,S}|\,d\sigma dt .
\tag{NCL.1}
\]

The selector owner \(\mathfrak R\) is fixed at chamber admission. The remaining
question is whether this same admitted chamber carries the other three address
coordinates before any positive trace or negative return spends the event:

\[
(\mathfrak X_C,\mathfrak D_C,\mathfrak F_C).
\tag{NCL.2}
\]

Physically, \(\mathfrak X_C\) says which retained chart or exact-projector frame
measures the same transported packet. \(\mathfrak D_C\) says which detector or
signed primitive channel reads its stress. \(\mathfrak F_C\) says which face,
local-thickness/polarity, or return address owns the signed event.

The governing physical test is to follow the same packet through the stopped
time window before selected counting. Transport moves the packet inside or out of
the chamber. Pressure and incompressibility decide which projected stress is
visible in a lawful material frame. Viscosity, scale, and finite service decide
which residues are dissipated or paid. Sign and alignment decide whether the
event is a positive selected-height trace, a negative return, or a cancellation
cost. A valid coordinate lift must place that one event in one chamber frame, one
detector/channel, and one face/polarity address before the event is counted.
Failure of any coordinate lands as physical service, legal stop, exit, or return
for that same packet.

These are not three unrelated support estimates. They must be attached to the
same stopped chamber \(C_{\mathfrak R}\) before readout.

## 2. Three chamber-level inputs

The chart/projector input is:

\[
\texttt{PrimitiveStoppedChamberChartProjectorLiftOrPaidExit.A}.
\tag{NCL.3}
\]

On each admitted stopped common-selector chamber, the same packet has a retained
chart/projector coordinate before readout, or the chamber portion leaves through
chart-transfer, frame-change, projector escape, paid material service, legal,
stop, or exit.

The detector/channel input is:

\[
\texttt{PrimitiveStoppedChamberDetectorChannelLiftOrPaidService.A}.
\tag{NCL.4}
\]

On that same chamber, the primitive signed event has a detector/channel readout
before readout, or the detector-silent, near-silent, selector-channel rotation,
or readout-change portion is already paid by same-packet service, legal, stop,
or exit.

The face/polarity input is:

\[
\texttt{PrimitiveStoppedChamberFacePolarityLiftOrPaidReturn.A}.
\tag{NCL.5}
\]

On that same chamber, the primitive signed event has a face/polarity coordinate
before selected-face counting, or the face detachment, zero-thickness loss,
polarity loss, negative return mismatch, legal, stop, or exit is already paid.

## 3. Strict reduction

Assume `(NCL.3)'--`(NCL.5)'. For each admitted stopped common-selector chamber
\(C_{\mathfrak R}\), define:

\[
\mathfrak A_C
=
(\mathfrak R_C,\mathfrak X_C,\mathfrak D_C,\mathfrak F_C).
\tag{NCL.6}
\]

The selector coordinate \(\mathfrak R_C\) comes from chamber admission. The
three nonselector coordinates come from `(NCL.3)'--`(NCL.5)'. Any part where one
coordinate fails is removed into the corresponding paid/legal/stop/exit
boundary before the primitive event is counted.

Therefore

\[
\begin{aligned}
&\texttt{PrimitiveStoppedChamberChartProjectorLiftOrPaidExit.A}\\
&+\texttt{PrimitiveStoppedChamberDetectorChannelLiftOrPaidService.A}\\
&+\texttt{PrimitiveStoppedChamberFacePolarityLiftOrPaidReturn.A}
\end{aligned}
\Longrightarrow
\texttt{PrimitiveStoppedChamberNonselectorCoordinateLift.A}.
\tag{NCL.7}
\]

Together with selector-normalized chamber admission and first-difference overlap
charge, the event-map branch becomes:

\[
\begin{aligned}
&\texttt{PrimitiveEventStoppedCommonSelectorChamberAdmissionOrPaidEscape.A}\\
&+\texttt{PrimitiveStoppedChamberChartProjectorLiftOrPaidExit.A}\\
&+\texttt{PrimitiveStoppedChamberDetectorChannelLiftOrPaidService.A}\\
&+\texttt{PrimitiveStoppedChamberFacePolarityLiftOrPaidReturn.A}\\
&+\texttt{PrimitiveStoppedCommonSelectorCellOverlapFirstDifferenceCharge.A}
\end{aligned}
\Longrightarrow
\texttt{PrimitiveChannelEventAddressMap.A}.
\tag{NCL.8}
\]

## 4. Scope obstruction in current support

The current chart/projector support is strong after a retained record edge or
retained chart has been selected. It reduces exact-projector work to same-packet
chart license, metric symbol control, and projector escape payment. It does not
yet prove that every primitive event in an admitted chamber has such a chart
coordinate before selected readout.

The current detector/channel support is strong after a frozen retained record
edge has a parent-known detector split. It reduces pressure-active versus
silent service to quotient angle plus detector-silent reserve. It does not yet
prove chamber-level detector/channel lift for every primitive signed event of
both signs.

The current face/polarity support is strong after a record face exists. It
reduces compactness and polarity persistence to same-edge no-detachment,
local thickness-or-charge, and same-face return ownership. It does not yet
assign a face/polarity coordinate to every primitive event in the admitted
chamber before selected-face counting.

The obstruction is therefore the same in all three coordinates:

\[
\text{retained-edge or post-map support}
\not\Rightarrow
\text{primitive chamber-level coordinate lift}.
\tag{NCL.9}
\]

## 5. Current proof truth

This is a strict reduction and scope correction, not proof of the lift. The
remaining chamber-level physical work is to put the same admitted primitive
event into:

\[
\text{one chart/projector frame}
\quad+\quad
\text{one detector/channel readout}
\quad+\quad
\text{one face/polarity coordinate}
\tag{NCL.10}
\]

before the event is counted, or pay the failure on that same chamber. Until that
is proved, the event-address branch has support coordinates but not a completed
primitive event address.

## 6. Chart/projector sub-reduction

The follow-up chart/projector lift reduction
`mpp-forward-gold-primitive-chamber-chart-projector-lift-reduction-20260704.md`
sharpens the first coordinate in `(NCL.10)'. On an admitted stopped
common-selector chamber:

\[
\begin{aligned}
&\texttt{PrimitiveStoppedChamberC11MetricTowerOrExit.A}\\
&+\texttt{PrimitiveStoppedChamberHigherProjectorServiceOrExit.A}
\end{aligned}
\Longrightarrow
\texttt{PrimitiveStoppedChamberChartProjectorLiftOrPaidExit.A}.
\tag{NCL.11}
\]

This is the chamber-level analogue of the retained-edge exact-projector
chart-license split. Retained-edge chart license remains support until the
metric tower and higher projector service are proved for primitive events in
the admitted chamber before selected readout.

## 7. Detector/channel physical reduction

The detector/channel coordinate is the same packet seen through the pressure
detector and the selector-announced signed channel. Pressure visibility alone
does not make the selector channel positive. A trace-free increment can be
visible to the pressure-Hodge/root detector while lying outside the selected
channel, and detector-silent or near-silent components can still feed strain.

The chamber-level detector lift therefore reduces to two physical inputs:

\[
\begin{aligned}
&\texttt{PrimitiveStoppedChamberPressureActiveAngleLockOrPaidRotation.A}\\
&+\texttt{PrimitiveStoppedChamberDetectorSilentReserveOrPaidService.A}
\end{aligned}
\Longrightarrow
\texttt{PrimitiveStoppedChamberDetectorChannelLiftOrPaidService.A}.
\tag{NCL.12}
\]

The first input says the pressure-visible residue is angle-locked to the
selector-announced channel, or the same packet pays the channel rotation before
readout. The second input says detector-silent and detector-near-silent work is
already assigned to finite same-material service, legal stop, or exit before it
can be counted as selected work.

The checked physical obstruction is the half-tail reserve: local silent-source
routing shows where the detector-silent stress goes inside the same packet, but
it does not prove a finite pre-readout reserve for arbitrary primitive chamber
events. Current retained-edge detector notes are support until these two inputs
are proved on the admitted chamber itself.

## 8. Face/polarity physical reduction

The face/polarity coordinate is the same signed work restricted to one
pre-readout face of the same packet. A chamber-level negative ledger is too
coarse: it can pay a negative lobe on a different face while the selected
positive face loses its sign without same-face return.

The chamber-level face lift therefore reduces to a trace fiber and a same-face
return budget:

\[
\begin{aligned}
&\texttt{PrimitiveStoppedChamberFaceTraceFiberOrPaidDetachment.A}\\
&+\texttt{PrimitiveStoppedChamberSameFaceSignedReturnBudgetOrPaidPolarity.A}
\end{aligned}
\Longrightarrow
\texttt{PrimitiveStoppedChamberFacePolarityLiftOrPaidReturn.A}.
\tag{NCL.13}
\]

The trace-fiber input says the selected positive face is already a lawful
pre-readout face of the selector-owned primitive signed channel, with
no-detachment and local thickness/charge preserving the carrier. The same-face
return input says lost positive sign is paid by the negative part of that same
face-local signed channel, or by physical return, rotation, diffusion, legal
reselection, stop, or exit.

The repo now has a formal same-face localization proof once the face-local
signed channel exists. It does not yet construct that channel from the
Navier-Stokes packet before aggregation. Current record-face compactness,
no-detachment, and local thickness notes are support until they prove `(NCL.13)'
for primitive chamber events before selected-face counting.

## 9. Why face/polarity is the direct signed-height feed

The event-address branch does not control signed height merely by assigning
labels. Its physical job is to let the positive trace and negative return of the
same primitive signed channel be restricted to the same pre-readout face of the
same packet.

The downstream spine is:

\[
\begin{aligned}
&\texttt{PrimitiveChannelEventAddressMap.A}\\
&+\texttt{PrimitiveChannelAddressChangeVariationCharge.A}
\Longrightarrow
\texttt{StoppedPrimitiveFaceAddressProcess.A}\\
&\Longrightarrow
\text{same-face positive trace and negative return}\\
&\Longrightarrow
\text{finite same-fluid charge for thin signed-height records}.
\end{aligned}
\tag{NCL.14}
\]

Thus chart/projector and detector/channel are necessary custody coordinates, and
overlap priority prevents double spending, but the coordinate that directly
touches `SignedCriticalHeightSignPersistenceOrPeakBound.A' is face/polarity.
The closest noncircular event-address theorem for the signed-height wall is
therefore still `(NCL.13)': construct the trace fiber and same-face signed return
budget inside the admitted primitive chamber before selected-face counting.
