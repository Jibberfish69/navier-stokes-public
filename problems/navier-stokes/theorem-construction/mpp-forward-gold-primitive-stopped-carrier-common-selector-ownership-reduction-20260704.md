---
theorem_id: forward-gold-primitive-stopped-carrier-common-selector-ownership-reduction-20260704
status: strict-reduction-and-checked-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / primitive event chamber admission
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - PrimitiveStoppedCarrierCommonSelectorOwnershipOrPaidReselection.A
  - PrimitiveStoppedCarrierFiniteCommonSelectorMenu.A
  - PrimitiveStoppedCarrierSelectorChannelLockOrPaidReselection.A
role: >-
  Reduces primitive stopped-carrier common-selector ownership to two physical
  jobs on each surviving stopped carrier: the carrier must have a parent-known
  finite common-selector menu before primitive PLS readout, and the selected
  owner must lock the carrier's sign/polarity/channel alphabet or pay
  reselection, tie, drift, service, stop, legal, or exit.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-event-common-selector-chamber-admission-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-common-selector-refinement-parent-announced-capture-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-selector-capture-finite-score-scope-audit-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-record-edge-selector-menu-modulus-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-finite-score-or-paid-drift-proof-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-selector-primitive-channel-compatibility-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-projector-selector-angle-lock-obstruction-20260704.md
completion_truth: >-
  This note does not prove PrimitiveStoppedCarrierCommonSelectorOwnershipOrPaidReselection.A.
  It proves a strict reduction and a scope obstruction: retained-edge selector
  capture and finite stopped-score support act after a future-positive edge or
  order-locked selector chart is already known. The primitive stopped carrier
  still needs its own pre-readout finite common-selector menu and same-carrier
  selector/channel lock before primitive PLS readout.
---

# Primitive stopped-carrier common-selector ownership reduction

## 1. Physical object

Assume the primitive signed event has already survived the carrier-coverage
face. We now have one stopped material carrier

\[
C
\tag{CSO.1}
\]

containing primitive signed-channel events of the same Navier-Stokes packet.
Transport, pressure, incompressibility, viscosity, scale, sign, and material
collar data are all being read on this carrier before the primitive PLS channel
is allowed to spend the event.

Common-selector ownership asks who owns this carrier. The owner is not a future
positive edge and not a selector chosen after seeing which event is useful. It
is the parent-known stopped selector record that fixes, on \(C\), the order-lock,
sign/polarity convention, primitive-channel alphabet, chart/collar state, and
legal stop/reselection rules before PLS readout.

## 2. Two lower physical jobs

The first lower input is a carrier-level finite menu:

\[
\texttt{PrimitiveStoppedCarrierFiniteCommonSelectorMenu.A}.
\tag{CSO.2}
\]

For every stopped carrier \(C\) surviving coverage, before primitive PLS readout
the parent constructs a finite menu of candidate common selectors

\[
\mathcal S_C=\{\mathfrak R_1,\ldots,\mathfrak R_{M(C)}\}
\tag{CSO.3}
\]

whose records contain the carrier, stopped score, order-lock, sign/polarity
convention, primitive-channel alphabet, chart/collar state, and legal stop data
for that same carrier. Any part of \(C\) outside this menu is selector drift,
tie gap, order-lock loss, collar/geometric loss, donor/reselection loss,
material service, legal loss, stop, or exit before it is counted.

The second lower input is ownership/channel lock:

\[
\texttt{PrimitiveStoppedCarrierSelectorChannelLockOrPaidReselection.A}.
\tag{CSO.4}
\]

Given the menu `(CSO.3)', the parent-fixed priority or stopped score order
chooses one active common selector \(\mathfrak R_C\) on each unpaid part of
\(C\). The primitive signed channel events on that part use the channel alphabet
and sign convention announced by \(\mathfrak R_C\). If another selector or
channel claims the same carrier event, the conflict is paid as a tie, selector
drift, angle/channel rotation, order-lock loss, reselection loss, legal loss,
stop, material service, or exit before PLS readout.

These are not notation. `(CSO.2)' prevents future argmax over selector labels.
`(CSO.4)' prevents a carrier from using one selector to claim the sign and
another primitive channel to spend the event.

## 3. Strict reduction

Assume `(CSO.2)' and `(CSO.4)'. On each surviving stopped carrier \(C\), the
finite menu gives a parent-known list of possible common selector owners before
readout. The ownership/channel-lock theorem chooses one active owner
\(\mathfrak R_C\), modulo the paid/legal/stop/exit pieces.

Define the common-selector chamber

\[
C_{\mathfrak R_C}
:=
C\cap\{\text{active owner is }\mathfrak R_C\}.
\tag{CSO.5}
\]

On the unpaid survivor set, every primitive signed-channel event in \(C\) lies
inside exactly one such chamber. The selector owner, order-lock, sign/polarity
convention, and primitive-channel alphabet are parent-known before primitive PLS
readout. Thus

\[
\texttt{PrimitiveStoppedCarrierFiniteCommonSelectorMenu.A}
+
\texttt{PrimitiveStoppedCarrierSelectorChannelLockOrPaidReselection.A}
\Longrightarrow
\texttt{PrimitiveStoppedCarrierCommonSelectorOwnershipOrPaidReselection.A}.
\tag{CSO.6}
\]

Combined with stopped carrier coverage, this is the selector half of primitive
common-selector chamber admission.

## 4. Checked obstruction to retained-edge selector support

Retained-edge selector capture is narrower. It asks whether an arbitrary
future-positive retained record edge is captured by a finite parent-known
selector menu before the record reads that edge. That is necessary support, but
the primitive carrier can contain negative return events, detector-silent
events, cancellation pieces, and unretained primitive events that are not the
future-positive edge.

Finite stopped-score selector support has a different scope limit. It is
proof-grade after an order-locked retained selector chart already exists. It
pays selector/reset motion inside that chart. It does not prove that a surviving
primitive stopped carrier had a finite common-selector menu before primitive
PLS readout.

Same-packet source identity is also not enough. The Hodge/material-service and
primitive-channel compatibility notes identify pressure/projector residue as
same-packet pressure/strain service. They do not choose the common selector
owner of a stopped carrier, nor do they lock the selector-announced primitive
channel to every signed event on that carrier.

The obstruction is therefore the carrier-level version of the future-selector
defect:

\[
\text{finite stopped scores after capture}
+
\text{same-packet PLS channel identity}
\not\Rightarrow
\text{primitive stopped-carrier common-selector ownership}.
\tag{CSO.7}
\]

## 5. Current proof truth

Installed here:

\[
\text{carrier finite common-selector menu}
+
\text{same-carrier selector/channel lock}
\Longrightarrow
\text{primitive stopped-carrier common-selector ownership}.
\tag{CSO.8}
\]

Still open:

\[
\texttt{PrimitiveStoppedCarrierFiniteCommonSelectorMenu.A}
\quad\text{and}\quad
\texttt{PrimitiveStoppedCarrierSelectorChannelLockOrPaidReselection.A}.
\tag{CSO.9}
\]

This keeps the physical order clean. First the primitive signed event is put in
a stopped carrier. Then the stopped carrier receives one common selector owner.
Only after both are true can the primitive PLS signed-channel decomposition be
read on a stopped common-selector chamber.
