---
theorem_id: forward-gold-primitive-channel-return-face-finite-multiplicity-first-address-reduction-20260704
status: strict-reduction-and-checked-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / primitive return face multiplicity
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - PrimitiveChannelReturnFaceFiniteMultiplicity.A
  - PrimitiveReturnFirstFaceAddressOrPaidReentry.A
role: >-
  Sharpens PrimitiveChannelReturnFaceFiniteMultiplicity.A to the physical
  first-address burden. A primitive negative return event of the selector-owned
  channel must have a parent-announced first selected face address before any
  selected-face budget counts it. Extra face claims are lawful only through
  same-packet stopped re-entry, paid defect, legal loss, stop, or exit.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-channel-return-face-no-duplication-boundary-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-channel-selected-face-negative-return-budget-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-primitive-channel-predictable-trace-custody-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-finite-score-or-paid-drift-proof-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-reset-witness-interval-bounded-overlap-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-announceable-active-weight-reset-carleson-cauchy-reduction-20260627.md
completion_truth: >-
  This note does not prove PrimitiveChannelReturnFaceFiniteMultiplicity.A. It
  reduces it to PrimitiveReturnFirstFaceAddressOrPaidReentry.A plus the already
  installed finite stopped-score/reset packing support. The checked obstruction
  is that finite overlap of reset witness slabs counts primitive return only
  after the return event is shown to enter those slabs through the same
  pre-readout face history.
---

# Primitive-channel return-face finite-multiplicity first-address reduction

## 1. Physical object

Fix a primitive negative return event

\[
z=(\sigma,t,x,\kappa)
\]

inside the selector-owned channel of one retained Navier-Stokes packet. This is
one physical event in the same evolving velocity field: the same material packet
is transported, pressure couples it nonlocally, viscosity dissipates it,
incompressibility fixes the admissible projection, and the signed channel turns
negative on the traced primitive face.

The finite-multiplicity question is therefore concrete. When that one event
returns negatively, which selected face is it returning through? The selected
budget may count it only through a face address already present in the stopped
history of the same packet. A face created after seeing the negative lobe would
spend one physical return many times.

## 2. First-address theorem

The smaller producer is:

\[
\texttt{PrimitiveReturnFirstFaceAddressOrPaidReentry.A}.
\tag{FM.1}
\]

Statement. For \(d\mu^{ret,-}\)-almost every primitive return event \(z\), either:

1. \(z\) has a parent-announced first selected face address
   \(\alpha(z)\) in the pre-readout traced primitive channel; and
2. every later selected face that also claims \(z\) is reached from
   \(\alpha(z)\) by a same-packet stopped selector re-entry, chart/channel
   re-entry, or face-address re-entry;

or the extra claim is charged to paid selector drift, tie gap, collar/geometric
loss, heat-scale return loss, order-lock partner deficit, donor/reselection loss,
legal loss, stop, or exit.

This is the physical content missing from the no-duplication boundary. It says a
negative return event has one first address in the same-fluid history, and later
addresses must be actual re-entry events rather than retroactive bookkeeping.

## 3. Strict reduction

Assume:

\[
\texttt{RecordFacePrimitiveChannelPredictableTrace.A},
\tag{FM.2}
\]

so the selected faces are pre-readout traces of the selector-owned primitive
channel;

\[
\texttt{PrimitiveReturnFirstFaceAddressOrPaidReentry.A},
\tag{FM.3}
\]

so each primitive return event has a first selected face address and extra claims
are same-packet re-entries or paid defects; and the installed stopped selector
packing support

\[
\texttt{StoppedSelectorFiniteScoreOrPaidDrift.A}
+
\texttt{ResetWitnessIntervalBoundedOverlap.A}.
\tag{FM.4}
\]

Then every uncharged extra claim of \(z\) passes through a parent-announced
finite-score first-exit slab in the same material history. The reset witness
overlap theorem applies to the primitive return density only after this
subordination is known. Integrating the bounded overlap against
\(d\mu^{ret,-}\) gives

\[
\sum_e \mathbf 1_{F_e}\,d\mu_{\kappa_e}^{ret,-}
\le
M_N\,d\mu^{ret,-}
+dPaid+dLegal+dStop+dExit .
\tag{FM.5}
\]

This is exactly

\[
\texttt{PrimitiveChannelReturnFaceFiniteMultiplicity.A}.
\tag{FM.6}
\]

Therefore

\[
\texttt{RecordFacePrimitiveChannelPredictableTrace.A}
+
\texttt{PrimitiveReturnFirstFaceAddressOrPaidReentry.A}
+
\texttt{StoppedSelectorFiniteScoreOrPaidDrift.A}
+
\texttt{ResetWitnessIntervalBoundedOverlap.A}
\Longrightarrow
\texttt{PrimitiveChannelReturnFaceFiniteMultiplicity.A}.
\tag{FM.7}
\]

## 4. Checked obstruction

The finite-score/reset sources prove a different physical fact. They prove that
an order-locked selector transaction has finitely many parent-known stopped
scores, that a strict reset is a parent-announced first exit, and that maximal
first-exit slabs pack with bounded overlap in the retained material tree.

That support does not itself attach a primitive negative return event to a first
selected face. A return event can still be claimed by nested selected faces in
selector label, chart, primitive channel, or face-address coordinates unless the
first-address/re-entry theorem identifies those claims inside the same packet
history before the return is counted.

The reset packing may be used with the primitive return density \(d\mu^{ret,-}\)
only after the claim relation has been physically subordinated to those stopped
first-exit slabs.

## 5. Current proof truth

This pass is a strict reduction, not closure. The live lower object is
`PrimitiveReturnFirstFaceAddressOrPaidReentry.A`.

Proving it means constructing, from the original same-fluid history, the first
selected face address of each primitive negative return event, and proving that
every additional selected-face claim is either a same-packet stopped re-entry or
an already named paid/legal/stop/exit residue.
