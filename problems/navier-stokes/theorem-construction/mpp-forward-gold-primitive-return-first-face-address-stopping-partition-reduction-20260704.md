---
theorem_id: forward-gold-primitive-return-first-face-address-stopping-partition-reduction-20260704
status: strict-reduction-and-checked-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / primitive return first-address custody
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - PrimitiveReturnFirstFaceAddressOrPaidReentry.A
  - PrimitiveReturnFaceAddressStoppingPartition.A
  - PrimitiveReturnFaceAddressChangePaidOrExit.A
role: >-
  Reduces the primitive return first-address theorem to a stopped partition and
  paid re-entry law for the same returned packet event. A pre-readout trace for
  each selected face is not enough: the primitive negative return must belong to
  one active face address in the stopped same-packet history, and any additional
  selected-face claim must be a real stopped address change or a paid/legal/stop
  / exit defect.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-channel-return-face-finite-multiplicity-first-address-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-primitive-channel-predictable-trace-custody-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fixed-stopped-score-return-bv-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-core-positive-variation-record-return-payment-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-face-partner-return-localization-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-face-signed-channel-localization-proof-20260704.md
completion_truth: >-
  This note does not prove PrimitiveReturnFirstFaceAddressOrPaidReentry.A. It
  proves the conditional partition implication and records the checked
  obstruction: current sources prove pre-readout trace support and stopped
  return/BV currency, but they do not prove that primitive return events are
  sorted by a single stopped face-address partition before selected-face
  bookkeeping counts them.
---

# Primitive return first-face address stopping-partition reduction

## 1. Physical object

Fix one primitive negative return event \(z\) of the selector-owned channel.
This is one same-fluid packet event: the packet has been transported, pressure
has acted through the incompressible projection, viscosity has dissipated or
rotated the local record, and the selected signed channel has gone negative at a
scale-time point.

The first-address question is not whether many selected faces can be named near
\(z\). It is whether the stopped same-packet history already contains one active
face address for \(z\) before the selected-face budget tries to spend the return.

If two face labels are both invented after \(z\) is seen, there is no physical
first address. If two parent-announced faces both contain \(z\), the proof still
needs the stopped rule that says which address is active there, or why the
second claim is an actual re-entry, tie, chart/channel change, legal loss, stop,
or exit.

## 2. The nonduplicate lower producers

The first-address theorem splits into two physical jobs.

First:

\[
\texttt{PrimitiveReturnFaceAddressStoppingPartition.A}.
\tag{FA.1}
\]

For \(d\mu^{ret,-}\)-almost every primitive return event \(z\), the
parent-announced face addresses of the same selector-owned primitive channel
define a stopped partition, or a stopped laminar tree with a distinguished
active address \(\alpha(z)\), before the return is counted.

Second:

\[
\texttt{PrimitiveReturnFaceAddressChangePaidOrExit.A}.
\tag{FA.2}
\]

If a later selected face also claims \(z\) outside the active address
\(\alpha(z)\), then the same packet has crossed a stopped address-change event:
selector tie/drift, chart transfer, primitive-channel change, face-address
detachment, collar/geometric loss, heat-scale return loss, order-lock partner
deficit, donor/reselection loss, legal loss, stop, or exit.

These jobs are not aliases. A partition chooses the first active address. The
change theorem says why any extra claim is physical re-entry rather than double
spending.

## 3. Strict reduction

Assume `(FA.1)' and `(FA.2)'. For a primitive return event \(z\), define
\(\alpha(z)\) to be the stopped active face address supplied by the partition.
Then \(z\) has a parent-announced first selected face address before selected
bookkeeping.

Let another selected face \(F'\) claim \(z\). If \(F'\) has the same active
address, there is no new claim. If \(F'\) has a different address, `(FA.2)' says
the address difference is produced by a stopped same-packet re-entry or by one
of the paid/legal/stop/exit defects. Therefore every later claim is either
inside the first address or paid before it is counted.

Thus

\[
\begin{aligned}
&\texttt{PrimitiveReturnFaceAddressStoppingPartition.A}\\
&+\texttt{PrimitiveReturnFaceAddressChangePaidOrExit.A}
\end{aligned}
\Longrightarrow
\texttt{PrimitiveReturnFirstFaceAddressOrPaidReentry.A}.
\tag{FA.3}
\]

This is a strict reduction of the first-address producer. It preserves the
physical object: one return event of one packet, one active stopped face address,
and actual same-packet address changes for every extra claim.

## 4. Checked obstruction to current support

The current pre-readout trace theorem is not enough. It can make each face
lawful before readout, but separate lawful faces can still overlap at one return
event unless the face addresses form a stopped partition of that event.

The stopped return/BV theorem is not enough. It makes negative variation finite
for a pre-existing stopped score, but it does not say which selected face owns a
given negative lobe.

The same-face signed-channel localization theorem is not enough. It proves the
formal measure step after a face-local signed channel is constructed, but it
assumes the face index \(e\) is already the physical owner of that channel.

Finite stopped-score/reset packing is support only here. It bounds stopped
first-exit slabs after a return claim has been subordinated to a stopped address
history. It does not create the address history.

So the physical wall is not "find more return." It is:

\[
\text{sort the same negative return event into one stopped face-address history
before any selected face can spend it.}
\tag{FA.4}
\]

## 5. Current proof truth

This pass is a strict reduction and checked obstruction. The live lower objects
are `PrimitiveReturnFaceAddressStoppingPartition.A` and
`PrimitiveReturnFaceAddressChangePaidOrExit.A`.

Proving them would turn the primitive negative return measure into a genuine
same-packet address tree. Then the existing finite-score/reset overlap support
can be applied to extra address changes without laundering one physical return
into many selected-face payments.
