---
theorem_id: forward-gold-primitive-stopped-chamber-selector-normalization-reduction-20260704
status: strict-reduction-and-branch-normalization-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / primitive event address custody
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - PrimitiveEventStoppedChamberAdmissionOrPaidEscape.A
  - PrimitiveStoppedChamberAddressCoordinateLift.A
  - PrimitiveEventStoppedCommonSelectorChamberAdmissionOrPaidEscape.A
  - PrimitiveStoppedChamberNonselectorCoordinateLift.A
role: >-
  Normalizes the chamber/lift split under the primitive event-address branch.
  A stopped chamber that can support the primitive PLS signed-channel formula is
  already a parent-known common-selector chamber. Selector ownership belongs in
  event-level chamber admission; coordinate lift then adds only chart/projector,
  detector/channel, and face/polarity on that same chamber before readout.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-channel-address-cell-coverage-chamber-lift-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-pls-signed-channel-decomposition-repair-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-stopped-primitive-channel-admission-lower-face-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-face-address-process-event-map-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-channel-address-priority-overlap-boundary-reduction-20260704.md
completion_truth: >-
  This note does not prove primitive event chamber admission or coordinate lift.
  It proves a strict normalization: the previous two-input coverage burden is
  implied by common-selector chamber admission plus nonselector coordinate lift.
  The remaining open physical work is to admit every primitive event of both
  signs to a parent-known stopped common-selector chamber, then lift chart,
  detector/channel, and face/polarity coordinates on that same chamber.
---

# Primitive stopped-chamber selector normalization reduction

## 1. Physical reason for the normalization

The primitive event is one same-fluid signed-channel event

\[
z=(\sigma,t,x,\kappa),
\qquad
d\mu_{\kappa,S}=|Y_{\kappa,S}|\,d\sigma dt .
\tag{CSN.1}
\]

Before any selected face counts it, the event has one material history, one
pressure/incompressibility projection, one viscous and frame evolution, one
scale, one sign, and one time. A stopped chamber is not just a geometric box
around that event. For the primitive PLS formula to apply, the chamber must
already be a retained stopped common-selector chamber: the parent knows which
selector history owns the same packet before the channel is read.

That means the selector coordinate is not a second object to be recovered later
inside address-coordinate lift. If the parent does not know the stopped selector
owning \(z\), then \(z\) has not been admitted to a lawful primitive chamber.
If the parent does know that selector, then the selector coordinate
\(\mathfrak R_C\) is already part of the chamber admission.

## 2. Normalized lower objects

The first normalized input is:

\[
\texttt{PrimitiveEventStoppedCommonSelectorChamberAdmissionOrPaidEscape.A}.
\tag{CSN.2}
\]

For \(d\mu_{\kappa,S}\)-almost every primitive event \(z\), before readout the
parent has a stopped common-selector chamber \(C_{\mathfrak R}(z)\) containing
\(z\), with selector owner \(\mathfrak R_C\), or \(z\) is already paid, legal,
stopped, or exited. In measure form,

\[
d\mu_{\kappa,S}
\left(
\{z:z\notin\bigcup_{\mathfrak R,C}C_{\mathfrak R}\}
\right)
\le
dPaid+dLegal+dStop+dExit .
\tag{CSN.3}
\]

The second normalized input is:

\[
\texttt{PrimitiveStoppedChamberNonselectorCoordinateLift.A}.
\tag{CSN.4}
\]

On each admitted stopped common-selector chamber \(C_{\mathfrak R}\), the parent
lifts before readout the remaining three address coordinates:

\[
(\mathfrak X_C,\mathfrak D_C,\mathfrak F_C),
\tag{CSN.5}
\]

where \(\mathfrak X_C\) is the retained chart/projector coordinate,
\(\mathfrak D_C\) is the detector/channel readout, and \(\mathfrak F_C\) is the
root/endpoint/full-exchange face or polarity coordinate. Failure of any of
these three coordinates is paid, stopped, legal, or exited before the primitive
event is counted.

## 3. Strict reduction

Assume `(CSN.2)' and `(CSN.4)'. The older event-level chamber admission follows
immediately from `(CSN.2)' because a stopped common-selector chamber is a
stopped chamber:

\[
\texttt{PrimitiveEventStoppedCommonSelectorChamberAdmissionOrPaidEscape.A}
\Longrightarrow
\texttt{PrimitiveEventStoppedChamberAdmissionOrPaidEscape.A}.
\tag{CSN.6}
\]

For each admitted chamber, define the full address tuple by

\[
\mathfrak A_C
=
(\mathfrak R_C,\mathfrak X_C,\mathfrak D_C,\mathfrak F_C).
\tag{CSN.7}
\]

Here \(\mathfrak R_C\) comes from the admitted common-selector chamber, and
\((\mathfrak X_C,\mathfrak D_C,\mathfrak F_C)\) comes from `(CSN.4)'. Thus

\[
\begin{aligned}
&\texttt{PrimitiveEventStoppedCommonSelectorChamberAdmissionOrPaidEscape.A}\\
&+\texttt{PrimitiveStoppedChamberNonselectorCoordinateLift.A}
\end{aligned}
\Longrightarrow
\begin{aligned}
&\texttt{PrimitiveEventStoppedChamberAdmissionOrPaidEscape.A}\\
&+\texttt{PrimitiveStoppedChamberAddressCoordinateLift.A}.
\end{aligned}
\tag{CSN.8}
\]

Combining `(CSN.8)' with the installed chamber-lift reduction gives:

\[
\begin{aligned}
&\texttt{PrimitiveEventStoppedCommonSelectorChamberAdmissionOrPaidEscape.A}\\
&+\texttt{PrimitiveStoppedChamberNonselectorCoordinateLift.A}
\end{aligned}
\Longrightarrow
\texttt{PrimitiveChannelAddressCellCoverage.A}.
\tag{CSN.9}
\]

With the installed overlap-priority reduction, the event-map branch becomes:

\[
\begin{aligned}
&\texttt{PrimitiveEventStoppedCommonSelectorChamberAdmissionOrPaidEscape.A}\\
&+\texttt{PrimitiveStoppedChamberNonselectorCoordinateLift.A}\\
&+\texttt{PrimitiveAddressCellOverlapBoundaryCharge.A}
\end{aligned}
\Longrightarrow
\texttt{PrimitiveChannelEventAddressMap.A}.
\tag{CSN.10}
\]

## 4. Checked obstruction removed

The old split had a small ambiguity. It could be read as:

\[
\text{generic stopped chamber}
\quad+\quad
\text{later selector coordinate}.
\tag{CSN.11}
\]

That reading is physically wrong for the primitive PLS route. The PLS
decomposition is stated on retained stopped common-selector chambers. A generic
stopped chamber without parent-known selector ownership does not license the
same signed-channel formula, and a selector chosen later would be a
post-readout owner rather than a stopped physical address.

The normalized split removes that ambiguity. Selector ownership is paid or
admitted at the chamber-entry step. Chart/projector, detector/channel, and
face/polarity lift are then required on the same chamber. If the selector owner
changes between two chambers, that is not hidden inside coordinate lift; it is
handled by the overlap-boundary or later address-change charge.

## 5. Current proof truth

This is proof progress only as a strict reduction and duplicate-collapse. It
does not prove the normalized inputs.

The remaining physical work is:

\[
\text{admit every primitive event to a stopped common-selector chamber}
\tag{CSN.12}
\]

or pay/stop/legal/exit it, and then prove on that same chamber:

\[
\text{chart/projector coordinate}
\quad+\quad
\text{detector/channel coordinate}
\quad+\quad
\text{face/polarity coordinate}.
\tag{CSN.13}
\]

That is the honest lower branch. The same fluid event must be owned first; only
then may the proof attach the remaining address coordinates and count it.

## 6. Nonselector lift refinement

The follow-up nonselector coordinate lift reduction
`mpp-forward-gold-primitive-nonselector-coordinate-lift-reduction-20260704.md`
sharpens `(CSN.13)'. Once selector ownership is inside chamber admission, the
remaining coordinate lift is exactly three chamber-level jobs on the same
admitted stopped common-selector chamber:

\[
\begin{aligned}
&\texttt{PrimitiveStoppedChamberChartProjectorLiftOrPaidExit.A}\\
&+\texttt{PrimitiveStoppedChamberDetectorChannelLiftOrPaidService.A}\\
&+\texttt{PrimitiveStoppedChamberFacePolarityLiftOrPaidReturn.A}
\end{aligned}
\Longrightarrow
\texttt{PrimitiveStoppedChamberNonselectorCoordinateLift.A}.
\tag{CSN.14}
\]

Retained-edge chart, detector, and face surfaces are support for those three
jobs until they are stated on every primitive event inside the admitted chamber
before selected readout.

## 7. Admission sub-reduction

The follow-up common-selector chamber admission reduction
`mpp-forward-gold-primitive-event-common-selector-chamber-admission-reduction-20260704.md`
sharpens `(CSN.12)'. Admission has two prior physical faces on the same primitive
event:

\[
\begin{aligned}
&\texttt{PrimitiveSignedChannelStoppedCarrierCoverageOrPaidEscape.A}\\
&+\texttt{PrimitiveStoppedCarrierCommonSelectorOwnershipOrPaidReselection.A}
\end{aligned}
\Longrightarrow
\texttt{PrimitiveEventStoppedCommonSelectorChamberAdmissionOrPaidEscape.A}.
\tag{CSN.15}
\]

The first face covers the primitive signed-channel measure by parent-known
stopped carriers before readout. The second gives each surviving carrier its
common selector owner before the primitive PLS channel is read. Retained-edge
selector capture and PLS decomposition inside already retained stopped chambers
remain support until they prove those two primitive-event faces.
