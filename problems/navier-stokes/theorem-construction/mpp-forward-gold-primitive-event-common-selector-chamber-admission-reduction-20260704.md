---
theorem_id: forward-gold-primitive-event-common-selector-chamber-admission-reduction-20260704
status: strict-reduction-and-checked-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / primitive event address custody
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - PrimitiveEventStoppedCommonSelectorChamberAdmissionOrPaidEscape.A
  - PrimitiveSignedChannelStoppedCarrierCoverageOrPaidEscape.A
  - PrimitiveStoppedCarrierCommonSelectorOwnershipOrPaidReselection.A
role: >-
  Reduces primitive common-selector chamber admission to two prior physical
  faces on the same signed-channel event: stopped carrier coverage before readout,
  and common-selector ownership on that stopped carrier before the primitive PLS
  channel is read. Current retained-edge selector capture and PLS decomposition
  surfaces are support, not proof of primitive event admission.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-channel-address-cell-coverage-chamber-lift-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-stopped-chamber-selector-normalization-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-pls-signed-channel-decomposition-repair-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-selector-capture-finite-score-scope-audit-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-stopped-primitive-channel-admission-lower-face-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-signed-channel-stopped-carrier-coverage-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-stopped-carrier-common-selector-ownership-reduction-20260704.md
completion_truth: >-
  This note does not prove primitive event common-selector chamber admission. It
  proves a strict reduction: admission follows if the primitive signed-channel
  measure is covered by parent-known stopped carriers before readout, and each
  such carrier has a parent-known common selector owner before the primitive PLS
  channel is read. The checked obstruction is that retained future-positive edge
  capture and PLS decomposition inside already retained stopped chambers do not
  cover every primitive event of both signs.
---

# Primitive event common-selector chamber admission reduction

## 1. Physical admission object

The event is one same-fluid signed-channel event

\[
z=(\sigma,t,x,\kappa),
\qquad
d\mu_{\kappa,S}=|Y_{\kappa,S}|\,d\sigma dt .
\tag{ECA.1}
\]

Admission is not a bookkeeping declaration. Before any selected face, retained
edge, or address map can count \(z\), the parent must already know two physical
facts about the same packet:

\[
\text{stopped carrier of }z
\quad+\quad
\text{common selector owner of that carrier}.
\tag{ECA.2}
\]

The stopped carrier is the material time/scale/chamber in which transport,
pressure, viscosity, incompressibility, scale, sign, and alignment are being
read. The selector owner is the parent-known stopped score or common selector
that says which signed-channel formula is allowed to read that packet. If either
piece is chosen after positive readout, the proof has selected the payer from
the future rather than admitting the physical event before it is spent.

## 2. Two lower physical faces

The first lower face is stopped carrier coverage:

\[
\texttt{PrimitiveSignedChannelStoppedCarrierCoverageOrPaidEscape.A}.
\tag{ECA.3}
\]

For \(d\mu_{\kappa,S}\)-almost every primitive event \(z\), before readout the
parent has a stopped material carrier \(C(z)\) containing the same packet at the
same scale/time, or the event has already been routed to paid material service,
legal stop, selector/chamber boundary, chart/collar transfer, or exit.

The follow-up carrier coverage reduction
`mpp-forward-gold-primitive-signed-channel-stopped-carrier-coverage-reduction-20260704.md`
sharpens `(ECA.3)'. Coverage is not supplied by retained-edge admission or by a
PLS formula inside already retained chambers. It needs two primitive-event
inputs:

\[
\texttt{PrimitiveSignedChannelMaterialCarrierSupport.A}
+
\texttt{PrimitiveSignedChannelPreReadoutStoppingAtlas.A}
\Longrightarrow
\texttt{PrimitiveSignedChannelStoppedCarrierCoverageOrPaidEscape.A}.
\tag{ECA.3a}
\]

The first says the primitive signed density has same-material carrier support.
The second says those carriers form a parent-known stopped atlas before
sign/readout selection, with uncovered or boundary events paid, stopped, legal,
or exited.

The second lower face is common-selector ownership:

\[
\texttt{PrimitiveStoppedCarrierCommonSelectorOwnershipOrPaidReselection.A}.
\tag{ECA.4}
\]

For each stopped carrier that survives `(ECA.3)', the parent assigns before PLS
readout one common selector owner \(\mathfrak R_C\), with stopped score,
order-lock, sign/polarity convention, and primitive-channel alphabet fixed; or
the selector drift, future argmax, tie gap, order-lock loss, collar loss,
reselection loss, legal stop, material service, or exit is already paid.

The follow-up common-selector ownership reduction
`mpp-forward-gold-primitive-stopped-carrier-common-selector-ownership-reduction-20260704.md`
sharpens `(ECA.4)'. The stopped carrier needs its own parent-known finite common
selector menu and a same-carrier selector/channel lock:

\[
\texttt{PrimitiveStoppedCarrierFiniteCommonSelectorMenu.A}
+
\texttt{PrimitiveStoppedCarrierSelectorChannelLockOrPaidReselection.A}
\Longrightarrow
\texttt{PrimitiveStoppedCarrierCommonSelectorOwnershipOrPaidReselection.A}.
\tag{ECA.4a}
\]

Retained-edge selector capture and finite stopped-score payment are support
only here because they act after a future-positive edge or an order-locked
selector chart is already known. They do not by themselves assign an owner to
every primitive stopped carrier before PLS readout.

## 3. Strict reduction

Assume `(ECA.3)' and `(ECA.4)'. On the survivor set of `(ECA.3)', every primitive
event \(z\) has a stopped carrier \(C(z)\). On the survivor set of `(ECA.4)',
that same carrier has one parent-known common selector owner. Define

\[
C_{\mathfrak R}(z):=C(z)\cap\{ \mathfrak R_C=\mathfrak R\}.
\tag{ECA.5}
\]

The failures from carrier coverage and selector ownership are already assigned
to paid/legal/stop/service/exit measures before readout. Therefore, modulo those
paid pieces,

\[
z\in C_{\mathfrak R}(z)
\tag{ECA.6}
\]

for \(d\mu_{\kappa,S}\)-almost every primitive event. Hence

\[
\begin{aligned}
&\texttt{PrimitiveSignedChannelStoppedCarrierCoverageOrPaidEscape.A}\\
&+\texttt{PrimitiveStoppedCarrierCommonSelectorOwnershipOrPaidReselection.A}
\end{aligned}
\Longrightarrow
\texttt{PrimitiveEventStoppedCommonSelectorChamberAdmissionOrPaidEscape.A}.
\tag{ECA.7}
\]

With the installed selector-normalization reduction, the event-map branch now
has the lower reading:

\[
\begin{aligned}
&\texttt{PrimitiveSignedChannelStoppedCarrierCoverageOrPaidEscape.A}\\
&+\texttt{PrimitiveStoppedCarrierCommonSelectorOwnershipOrPaidReselection.A}\\
&+\texttt{PrimitiveStoppedChamberNonselectorCoordinateLift.A}\\
&+\texttt{PrimitiveStoppedCommonSelectorCellOverlapFirstDifferenceCharge.A}
\end{aligned}
\Longrightarrow
\texttt{PrimitiveChannelEventAddressMap.A}.
\tag{ECA.8}
\]

## 4. Checked obstruction to current support

`PrimitivePLSSignedChannelDecomposition.A` has the correct same-packet channel
alphabet, but its statement is inside retained stopped common-selector chambers.
It says what the channel is after admission, not that every primitive signed
event has been admitted.

`RetainedRecordEdgeParentAnnouncedSelectorCapture.A` and the finite stopped-score
selector surfaces are also scoped after a retained future-positive edge or
order-locked selector transaction is already under discussion. They support the
selector-ownership face, but they do not cover primitive negative events,
detector-silent events, returning events, or events outside future-positive
retained record chambers.

The shortcut obstruction is therefore:

\[
\text{retained-edge selector capture}
+
\text{PLS formula inside retained chambers}
\not\Rightarrow
\text{primitive common-selector chamber admission}.
\tag{ECA.9}
\]

The physical failure is post-selection. A future-positive record edge can be
captured by a parent-known finite score while the primitive signed measure still
contains same-packet events whose stopped carrier or selector owner was never
known before readout.

## 5. Current proof truth

This is a strict reduction and scope obstruction, not proof of admission. The
carrier-coverage half is now reduced to same-material primitive carrier support
plus a pre-readout stopped carrier atlas. The common-selector half is reduced to
a primitive stopped-carrier finite common-selector menu plus same-carrier
selector/channel lock before the primitive PLS channel is read.
