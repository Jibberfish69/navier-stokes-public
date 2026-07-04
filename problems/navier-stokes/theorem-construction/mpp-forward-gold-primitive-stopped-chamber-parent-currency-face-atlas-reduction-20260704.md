---
theorem_id: forward-gold-primitive-stopped-chamber-parent-currency-face-atlas-reduction-20260704
status: strict-reduction-and-checked-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / primitive parent-currency face atlas
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - PrimitiveStoppedChamberPreReadoutFaceAtlasOrPaidDetachment.A
  - PrimitiveStoppedChamberParentCurrencyFaceAdmissionOrPaidService.A
  - PrimitiveStoppedChamberParentCurrencyFaceBoundaryLaw.A
role: >-
  Reduces the pre-readout face atlas to the parent-currency face projection of
  the same parent active-state/root-payment/storage object. The face labels are
  not free geometry: each primitive event must enter a positive-baseline root/log
  face, zero-baseline endpoint-seed face, active full-exchange face, or paid
  service/legal/stop/exit before selected sign or return is counted.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-stopped-chamber-face-trace-fiber-atlas-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-active-state-root-payment-same-parent-projection-synthesis-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-raw-active-state-parent-capacity-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-net-work-selected-meter-aligned-current-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-menu-root-projection-faithfulness-producer-classification-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-pre-readout-custody-tuple-reduction-20260704.md
completion_truth: >-
  This note does not prove PrimitiveStoppedChamberPreReadoutFaceAtlasOrPaidDetachment.A.
  It proves a strict reduction and checked obstruction: record-menu critical
  face admission and retained-edge custody support the face labels, but they do
  not cover |Y_{kappa,C}| d sigma dt-a.e. primitive chamber events of both signs.
---

# Primitive stopped-chamber parent-currency face atlas reduction

## 1. Physical object

Work inside one admitted stopped common-selector chamber \(C_{\mathfrak R}\).
The primitive event measure is

\[
d\mu_{\kappa,C}=|Y_{\kappa,C}|\,d\sigma dt .
\tag{PCFA.1}
\]

A face cell is not merely a geometric side of the chamber. It is the parent
currency row that can lawfully receive or pay the same primitive event before
selected sign or same-face return is counted:

\[
\text{positive-baseline root/log}
\quad\text{or}\quad
\text{zero-baseline endpoint seed}
\quad\text{or}\quad
\text{active full-exchange}.
\tag{PCFA.2}
\]

These are the same rows used by the signed-height parent state/root
payment/storage package. The face atlas asks for those rows on the whole
primitive event measure, not only on the future-positive retained record edge.

## 2. Lower inputs

The first lower input is all-event parent-currency face admission:

\[
\texttt{PrimitiveStoppedChamberParentCurrencyFaceAdmissionOrPaidService.A}.
\tag{PCFA.3}
\]

It says that every unpaid primitive event of \(d\mu_{\kappa,C}\) enters before
readout one of the parent currency faces in `(PCFA.2)', or is routed to detector
silent service, chart/projector service, material service, legal loss, stop, or
exit.

The second lower input is a boundary law for those currency faces:

\[
\texttt{PrimitiveStoppedChamberParentCurrencyFaceBoundaryLaw.A}.
\tag{PCFA.4}
\]

It says that overlaps and transitions between root/log, endpoint, and
full-exchange faces are parent-announced before readout, or the transition is
charged as face boundary, selected-critical reset/root payment, active-state
transition, service, legal loss, stop, or exit.

## 3. Strict reduction

Assume `(PCFA.3)' and `(PCFA.4)'. Let \(F_\alpha\) be the pre-readout sets on
which the event is admitted to one of the faces in `(PCFA.2)'. The boundary law
removes or prioritizes overlaps before the event is used as a selected positive
trace or negative return. The paid/service/legal/stop/exit pieces are outside
unpaid face ownership.

Thus the surviving family \(\{F_\alpha\}\) is a locally finite parent-known face
atlas for \(d\mu_{\kappa,C}\)-almost every primitive event. Therefore

\[
\begin{aligned}
&\texttt{PrimitiveStoppedChamberParentCurrencyFaceAdmissionOrPaidService.A}\\
&+\texttt{PrimitiveStoppedChamberParentCurrencyFaceBoundaryLaw.A}
\end{aligned}
\Longrightarrow
\texttt{PrimitiveStoppedChamberPreReadoutFaceAtlasOrPaidDetachment.A}.
\tag{PCFA.5}
\]

## 4. Relation to the parent active-state roof

The parent active-state/root-payment synthesis already says the parent object is
one same-packet construction with three projections:

\[
\begin{array}{lll}
\text{active-state capacity} &:& \text{where selected events live},\\
\text{root payment} &:& \text{which selected-critical currency pays them},\\
\text{record storage} &:& \text{which signed-height record event is paid}.
\end{array}
\tag{PCFA.6}
\]

The present face-atlas theorem is the face projection of that same construction.
It asks which parent currency face owns each primitive event before readout.
It cannot be replaced by active-state first address alone, because an active
scale/collar/projector state is not yet a root/log, endpoint, or full-exchange
payment face. It also cannot be replaced by record-menu face admission alone,
because record-menu admission is future-positive edge scoped.

## 5. Checked obstruction

The retained-record and record-menu notes prove the right physical face list:
positive-baseline log/root, zero-baseline endpoint seed, and active
full-exchange. Their scope is the record edge that later reads positive work.

The primitive face atlas has a larger domain. A negative return event, a
detector-silent service event, or an overlap event inside the same chamber can
belong to \(d\mu_{\kappa,C}\) without being a retained future-positive record
edge. If the proof only builds faces for future-positive edges, that event can
still be claimed later by the wrong selected face.

Thus

\[
\text{record-menu critical face admission}
\not\Rightarrow
\text{primitive chamber face atlas}.
\tag{PCFA.7}
\]

The missing theorem is the all-event parent-currency face admission on the same
stopped chamber.

## 6. Current proof truth

Installed here:

\[
\text{all-event parent-currency face admission}
+\text{parent-currency face boundary law}
\Longrightarrow
\text{pre-readout face atlas}.
\tag{PCFA.8}
\]

Still open:

\[
\texttt{PrimitiveStoppedChamberParentCurrencyFaceAdmissionOrPaidService.A},
\qquad
\texttt{PrimitiveStoppedChamberParentCurrencyFaceBoundaryLaw.A}.
\tag{PCFA.9}
\]

This keeps the physical story under one roof: the same parent state that gives
active location and selected-critical root currency must also give the face cell
that owns each primitive event before sign selection or return accounting.
