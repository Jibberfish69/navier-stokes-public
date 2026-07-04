---
theorem_id: forward-gold-primitive-signed-channel-stopped-carrier-coverage-reduction-20260704
status: strict-reduction-and-checked-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / primitive event chamber admission
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - PrimitiveSignedChannelStoppedCarrierCoverageOrPaidEscape.A
  - PrimitiveSignedChannelMaterialCarrierSupport.A
  - PrimitiveSignedChannelPreReadoutStoppingAtlas.A
role: >-
  Reduces primitive signed-channel stopped carrier coverage to two physical
  jobs on the same signed-channel event: the primitive signed density must have
  a same-material carrier support from the Navier-Stokes packet, and those
  carriers must form a parent-known stopped atlas before sign/readout selection.
  Retained-edge admission and PLS decomposition inside retained chambers remain
  support because they do not cover every primitive event of both signs.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-event-common-selector-chamber-admission-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-channel-address-cell-coverage-chamber-lift-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-stopped-primitive-channel-admission-lower-face-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-primitive-pls-driver-admission-proof-pass-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-pls-signed-channel-decomposition-repair-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-local-active-density-witness-cover-proof-pass-20260703.md
completion_truth: >-
  This note does not prove PrimitiveSignedChannelStoppedCarrierCoverageOrPaidEscape.A.
  It proves a strict reduction: carrier coverage follows only after the
  primitive signed channel measure itself has same-material carrier support and
  a pre-readout stopped carrier atlas covering both positive and negative
  primitive events, modulo paid/legal/stop/exit escape. Existing retained-edge
  and PLS surfaces are checked support, not proof of this primitive-event
  coverage.
---

# Primitive signed-channel stopped-carrier coverage reduction

## 1. Physical object

The event is one primitive signed-channel point

\[
z=(\sigma,t,x,\kappa),
\qquad
d\mu_{\kappa,S}=|Y_{\kappa,S}|\,d\sigma dt .
\tag{SCC.1}
\]

It is one event of the same Navier-Stokes packet. Transport has carried the
material history, pressure and incompressibility have chosen the projected
stress, viscosity and frame motion have changed the scale and direction, and
the primitive signed channel is about to read a positive trace, negative return,
or cancellation cost.

Stopped carrier coverage asks for a parent-known material carrier for \(z\)
before that sign is read. The carrier is not a label after the event is useful.
It is the stopped time/scale/material chamber in which the same packet's
pressure, strain, collar, projector, sign, scale, and service are allowed to be
read.

## 2. Lower physical jobs

The first lower input is carrier support:

\[
\texttt{PrimitiveSignedChannelMaterialCarrierSupport.A}.
\tag{SCC.2}
\]

For \(|Y_{\kappa,S}|\,d\sigma dt\)-almost every primitive event, the same
Navier-Stokes participation law supplies a material carrier support
\[
K(z)=(\text{high packet},\text{low coefficient},\text{material window},
\text{scale},\text{collar/projector state})
\tag{SCC.3}
\]
for the signed channel density. Events outside such support are already
pressure-silent service, material/collar transfer, legal, stopped, or exited.

The second lower input is the stopping atlas:

\[
\texttt{PrimitiveSignedChannelPreReadoutStoppingAtlas.A}.
\tag{SCC.4}
\]

The carriers \(K(z)\) are organized, before sign/readout selection, into a
locally finite stopped atlas \(\{C_\alpha\}\) with parent-known scale, time,
carrier, and boundary rules:

\[
d\mu_{\kappa,S}
\left(\{z:z\notin \bigcup_\alpha C_\alpha\}\right)
\le
dPaid+dLegal+dStop+dExit .
\tag{SCC.5}
\]

Any event lying on an atlas boundary is not silently promoted into a later
selected chamber; it is charged as material service, chart/collar transfer,
selector/chamber boundary, legal loss, stop, or exit before counting.

## 3. Strict reduction

Assume `(SCC.2)' and `(SCC.4)'. For a primitive event \(z\), `(SCC.2)' says
that \(z\) belongs to the material support of the same packet's signed channel,
unless the event has already escaped into paid/legal/stop/exit service. On the
survivor set, `(SCC.4)' assigns that support to one parent-known stopped
carrier \(C_\alpha\), up to locally finite overlaps and paid boundary pieces.

Define \(C(z)\) to be the active stopped carrier from the parent-fixed atlas
priority. Then

\[
z\in C(z)
\tag{SCC.6}
\]

for \(d\mu_{\kappa,S}\)-almost every unpaid primitive event. Hence

\[
\texttt{PrimitiveSignedChannelMaterialCarrierSupport.A}
+
\texttt{PrimitiveSignedChannelPreReadoutStoppingAtlas.A}
\Longrightarrow
\texttt{PrimitiveSignedChannelStoppedCarrierCoverageOrPaidEscape.A}.
\tag{SCC.7}
\]

This is the coverage half of primitive chamber admission. It gives a stopped
carrier only. Common-selector ownership on that carrier remains a separate
input.

## 4. Checked obstruction to retained-edge substitutes

The retained record-edge stopped-channel admission surfaces prove a narrower
thing. They ask whether one future-positive exact-projector record edge can be
placed on a stopped primitive signed channel after pressure-active/silent
service, common-selector refinement, and primitive-channel compatibility are
supplied.

That does not cover the primitive signed-channel measure. The primitive measure
contains negative return events, detector-silent events, cancellation pieces,
and primitive events that are not yet retained positive record edges. A future
positive edge can have a lawful stopped carrier while a negative return event of
the same primitive channel has no parent-known carrier before selected-face
counting.

The primitive PLS signed-channel decomposition has the opposite scope limit. It
supplies the channel alphabet inside an already retained stopped
common-selector chamber. It says what \(Y_{\kappa,S}\) is once the chamber is
present. It does not prove that every \(d\mu_{\kappa,S}\)-event has entered a
stopped chamber.

The active-density witness-cover pass exposes the same time-order defect in
signed-height language: a scalar positive trace is not a parent-announced source
until it is admitted before readout. Here the same defect is carrier-theoretic:
a primitive event is not covered by a stopped carrier just because a later
record edge or later chamber formula can describe the event.

## 5. Current proof truth

Installed here:

\[
\text{same-material primitive carrier support}
+
\text{pre-readout stopped carrier atlas}
\Longrightarrow
\text{primitive stopped carrier coverage}.
\tag{SCC.8}
\]

Still open:

\[
\texttt{PrimitiveSignedChannelMaterialCarrierSupport.A}
\quad\text{and}\quad
\texttt{PrimitiveSignedChannelPreReadoutStoppingAtlas.A}.
\tag{SCC.9}
\]

This is a strict reduction, not Gold closure. It keeps the physical order
honest: first the primitive signed event must belong to a same-material carrier,
then that carrier must be stopped and parent-known, and only then can
common-selector ownership and nonselector coordinates turn it into an address
cell for signed-height Gold.
