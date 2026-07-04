---
theorem_id: forward-gold-primitive-channel-address-cell-coverage-chamber-lift-reduction-20260704
status: strict-reduction-and-checked-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / primitive event address custody
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - PrimitiveChannelAddressCellCoverage.A
  - PrimitiveEventStoppedChamberAdmissionOrPaidEscape.A
  - PrimitiveStoppedChamberAddressCoordinateLift.A
role: >-
  Reduces primitive address-cell coverage to the physical step that current
  PLS and retained-edge sources do not supply: every primitive signed-channel
  event must first enter a parent-known stopped chamber or be paid/escaped, and
  that chamber must carry the full selector/chart/detector/face coordinate
  tuple before readout.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-channel-event-address-atlas-priority-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-pls-signed-channel-decomposition-repair-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-stopped-primitive-channel-admission-lower-face-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-pre-readout-custody-tuple-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-primitive-channel-predictable-trace-custody-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-local-signed-channel-primitive-ownership-reduction-20260704.md
completion_truth: >-
  This note does not prove PrimitiveChannelAddressCellCoverage.A. It proves a
  strict reduction: primitive address-cell coverage follows from event-level
  stopped chamber admission plus full address-coordinate lift on those chambers.
  The checked obstruction is that PrimitivePLSSignedChannelDecomposition.A works
  inside already retained stopped chambers, while RetainedRecordEdgePreReadoutCustodyTuple.A
  works for retained future-positive edges; neither covers every primitive
  event of both signs.
---

# Primitive channel address-cell coverage chamber-lift reduction

## 1. Physical order

The primitive signed-channel event comes first:

\[
z=(\sigma,t,x,\kappa),
\qquad
d\mu_{\kappa,S}=|Y_{\kappa,S}|\,d\sigma dt .
\tag{CCL.1}
\]

The event is one piece of the same evolving Navier-Stokes packet. Transport
moves the material label, pressure and incompressibility set the projected
direction, viscosity and frame motion change the retained scale, and the sign
of the channel is read only after those physical coordinates exist.

An address cell is lawful only when the event is already inside a stopped
parent-known chamber and that chamber already carries all four address
coordinates: selector record, retained chart/projector coordinate,
detector/service branch, and face address. A channel formula without chamber
ownership is not an address. A retained edge tuple without event coverage is
not an address cell for the primitive measure.

## 2. What the PLS decomposition supplies

`PrimitivePLSSignedChannelDecomposition.A` supplies the correct channel
alphabet on each retained stopped common-selector chamber:

\[
d\Omega_S^{PLS,primitive,+}
\le
C_N\sum_{\kappa\in\mathcal K_N}
[Y_{\kappa,S}]_+\,d\sigma dt
+dR_S^{paid}.
\tag{CCL.2}
\]

The important phrase is "on each retained stopped common-selector chamber."
The decomposition says what the signed channel is once the chamber is present.
It does not prove that every primitive event of both signs belongs to a
parent-known chamber before selected readout.

The retained-edge custody tuple supplies the correct coordinate list for one
future-positive retained edge:

\[
(\mathfrak R_e,\mathfrak X_e,\mathfrak D_e,\mathfrak F_e).
\tag{CCL.3}
\]

Again, the scope is edge-side. It does not say that the whole primitive channel
measure has been covered by such coordinate cells.

## 3. Lower producers

The first lower producer is event-level chamber admission:

\[
\texttt{PrimitiveEventStoppedChamberAdmissionOrPaidEscape.A}.
\tag{CCL.4}
\]

For \(d\mu_{\kappa,S}\)-almost every primitive event \(z\), the parent has
before readout a stopped chamber \(C(z)\) containing \(z\), or the event is
already routed to paid, legal, stop, material-service, chart-transfer,
selector-drift, detector-silent service, face-detachment, or exit. In measure
form,

\[
d\mu_{\kappa,S}
\left(
\{z:z\notin\bigcup_C C\}
\right)
\le
dPaid+dLegal+dStop+dExit .
\tag{CCL.5}
\]

The second lower producer is address-coordinate lift:

\[
\texttt{PrimitiveStoppedChamberAddressCoordinateLift.A}.
\tag{CCL.6}
\]

For each admitted stopped chamber \(C\), the parent assigns before readout a
same-packet coordinate tuple

\[
\mathfrak A_C
=
(\mathfrak R_C,\mathfrak X_C,\mathfrak D_C,\mathfrak F_C),
\tag{CCL.7}
\]

where \(\mathfrak R_C\) is the stopped selector record,
\(\mathfrak X_C\) is the retained chart/projector coordinate,
\(\mathfrak D_C\) is the detector/service split, and \(\mathfrak F_C\) is the
root/endpoint/full-exchange face. If any coordinate cannot be lifted on \(C\),
the failed portion of \(C\) is paid, stopped, legal, service-routed, or exited
before the primitive event is counted.

These are distinct jobs. `(CCL.4)' says the event is inside a stopped chamber.
`(CCL.6)' says that chamber has the full address needed by the event map.

## 4. Strict reduction

Assume `(CCL.4)' and `(CCL.6)'. For every admitted stopped chamber \(C\), define
the address cell

\[
E_{\mathfrak A_C}:=C\cap\{z:|Y_{\kappa,S}|(z)>0\}.
\tag{CCL.8}
\]

Local finiteness is inherited from the fixed-depth stopped chamber family and
the finite primitive-channel index set \(\mathcal K_N\). The PLS decomposition
then gives the signed channel measure on each admitted cell, and `(CCL.6)'
attaches the selector/chart/detector/face address to that same cell.

The cells cover the primitive channel measure modulo the paid/legal/stop/exit
part from `(CCL.5)' and the coordinate-lift failures from `(CCL.7)'. Hence

\[
\texttt{PrimitiveEventStoppedChamberAdmissionOrPaidEscape.A}
+
\texttt{PrimitiveStoppedChamberAddressCoordinateLift.A}
\Longrightarrow
\texttt{PrimitiveChannelAddressCellCoverage.A}.
\tag{CCL.9}
\]

This is the coverage half only. It still needs the separate active-priority and
boundary law to prevent overlapping cells from double-spending one event.

## 5. Checked obstruction to shortcuts

PLS decomposition alone can be true while coverage fails. It decomposes the
primitive driver inside chambers that have already been retained. A primitive
negative return event can lie outside every retained positive-edge chamber and
still be part of the signed channel measure that the return budget later tries
to spend.

The retained-edge tuple alone can also be true while coverage fails. It gives
one tuple to one future-positive edge. It does not cover primitive events that
are negative, silent, returning, or sitting in an overlap of several selected
face neighborhoods.

Combining those two supports without `(CCL.4)' would repeat the same physical
mistake: recognizing a channel formula and a retained edge coordinate after the
event has already been selected, then pretending the parent owned the event
before readout.

The obstruction is:

\[
\text{channel identity inside retained chambers}
+
\text{edge custody}
\not\Rightarrow
\text{primitive event coverage.}
\tag{CCL.10}
\]

## 6. Current proof truth

This pass is a strict reduction and checked obstruction, not closure.

The lower physical burden under `PrimitiveChannelAddressCellCoverage.A` is now:

\[
\texttt{PrimitiveEventStoppedChamberAdmissionOrPaidEscape.A}
+
\texttt{PrimitiveStoppedChamberAddressCoordinateLift.A}.
\tag{CCL.11}
\]

The proof must put each primitive signed-channel event into a stopped
parent-known chamber first, and only then let the PLS signed-channel formula
and retained-coordinate tuple become an address cell for that event.

## 7. Selector-normalized reading

The follow-up selector-normalization reduction
`mpp-forward-gold-primitive-stopped-chamber-selector-normalization-reduction-20260704.md`
removes the duplicate selector burden in `(CCL.11)'. A chamber that can support
`PrimitivePLSSignedChannelDecomposition.A` is already a retained stopped
common-selector chamber, so selector ownership belongs in event admission.
Coordinate lift then means only the nonselector coordinates on that same
chamber: chart/projector, detector/channel, and face/polarity.

Thus the coverage half should now be read as:

\[
\begin{aligned}
&\texttt{PrimitiveEventStoppedCommonSelectorChamberAdmissionOrPaidEscape.A}\\
&+\texttt{PrimitiveStoppedChamberNonselectorCoordinateLift.A}
\end{aligned}
\Longrightarrow
\texttt{PrimitiveChannelAddressCellCoverage.A}.
\tag{CCL.12}
\]
