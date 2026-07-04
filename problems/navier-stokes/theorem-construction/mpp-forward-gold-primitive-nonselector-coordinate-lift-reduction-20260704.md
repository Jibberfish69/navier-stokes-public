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
