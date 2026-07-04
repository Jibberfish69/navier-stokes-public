---
theorem_id: forward-gold-primitive-channel-address-priority-overlap-boundary-reduction-20260704
status: strict-reduction-and-formal-priority-proof-not-boundary-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / primitive event address custody
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - PrimitiveChannelAddressPriorityBoundaryLaw.A
  - PrimitiveAddressCellOverlapBoundaryCharge.A
role: >-
  Collapses the active-priority half of the primitive event-address map to a
  pre-map overlap-boundary charge. The priority choice is formal once the
  parent has countable locally finite address cells and a parent-fixed order.
  The physical burden is that any overlap of two different address cells is a
  real same-packet selector, chart/projector, detector/channel, or face/polarity
  boundary paid before selected counting.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-channel-event-address-atlas-priority-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-channel-address-cell-coverage-chamber-lift-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-channel-address-change-variation-charge-split-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-admission-no-detachment-modulus-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-local-thickness-charge-modulus-reduction-20260704.md
completion_truth: >-
  This note does not prove PrimitiveChannelAddressPriorityBoundaryLaw.A. It
  proves that parent-fixed priority is a formal measurable construction once
  overlap boundaries are paid. The open physical input is
  PrimitiveAddressCellOverlapBoundaryCharge.A, which is the pre-map overlap
  version of the same four coordinate charges used by address-change variation:
  selector, chart/projector, detector/channel, and face/polarity.
---

# Primitive channel address-priority overlap-boundary reduction

## 1. The physical overlap

After address-cell coverage, a primitive signed-channel event \(z\) may lie in
two parent-known address cells:

\[
z\in E_a\cap E_b,
\qquad
a=(\mathfrak R_a,\mathfrak X_a,\mathfrak D_a,\mathfrak F_a),
\quad
b=(\mathfrak R_b,\mathfrak X_b,\mathfrak D_b,\mathfrak F_b).
\tag{POB.1}
\]

This is one event of the same Navier-Stokes packet, not two events. The packet
has one transported material history, one pressure/incompressibility response,
one viscous/frame motion, one sign, one scale, and one time. If two different
cells claim it, the proof must say which cell is active before selected
counting, or why the second claim is an actual paid boundary of the same
packet.

The priority law is therefore not a new physical source. The physical source is
the boundary between two address claims. In physical terms, the overlap asks:
while following one same-fluid event, did the proof change which stopped
selector owns it, which chart measures it, which detector/channel reads its
stress, or which face/sign of the record is being charged? If none of those
changed, the two labels are the same physical address on the overlap. If one
changed, that change is the event being paid before it is counted.

## 2. Formal priority is cheap after boundary payment

Assume the cells are countable and locally finite as supplied by
`PrimitiveChannelAddressCellCoverage.A`. The parent can fix before readout a
deterministic priority order \(\prec\) on address labels. Define

\[
\mathfrak A(z)=\min_{\prec}\{a:z\in E_a\}
\tag{POB.2}
\]

outside the paid/legal/stop/exit set. Local finiteness makes the fibers

\[
E_a^\circ=E_a\setminus\bigcup_{b\prec a}E_b
\tag{POB.3}
\]

measurable. Since \(\prec\) is fixed before the signs and sizes of the future
record are read, this is not a future argmax.

Thus the only nonformal issue is the losing overlap. For \(b\prec a\), the
piece \(E_a\cap E_b\) cannot become a second free selected-face claim. It must
either be the same physical address or a paid boundary.

## 3. Lower physical input

The lower theorem is:

\[
\texttt{PrimitiveAddressCellOverlapBoundaryCharge.A}.
\tag{POB.4}
\]

For \(d\mu_{\kappa,S}=|Y_{\kappa,S}|\,d\sigma dt\)-almost every overlap
\(E_a\cap E_b\), either \(a=b\) as a same-packet address on that overlap, or
the address difference is paid before readout by one of four coordinate
boundaries:

\[
\begin{array}{ll}
\mathfrak R_a\ne\mathfrak R_b &: \text{selector tie, drift, first exit, or legal/stop/exit},\\
\mathfrak X_a\ne\mathfrak X_b &: \text{chart/projector transfer or frame-change payment},\\
\mathfrak D_a\ne\mathfrak D_b &: \text{detector/channel rotation, silence, or readout-change payment},\\
\mathfrak F_a\ne\mathfrak F_b &: \text{face detachment, local thickness loss, polarity return, or exit}.
\end{array}
\tag{POB.5}
\]

In measure form, the nonactive overlap satisfies

\[
d\mu_{\kappa,S}(E_a\cap E_b\cap\{b\prec a\})
\le
dB^{sel}_{ab}
+dB^{chart}_{ab}
+dB^{chan}_{ab}
+dB^{face}_{ab}
+dLegal+dStop+dExit .
\tag{POB.6}
\]

Here the four terms are not bookkeeping names. The selector term is the cost of
changing which stopped material chamber owns the event. The chart term is the
cost of measuring the same transported packet in a different local frame or
projector. The detector/channel term is the cost of rotating which signed stress
readout is being used for that packet. The face term is the cost of changing
which sign, local-thickness face, or polarity return is being charged. These
are physical motions of the same event before they are measures in the proof.

These are the same physical coordinates as the address-change variation split.
The difference is timing. Here they are read before the event map is built, on
overlaps of candidate cells. After the event map exists, the same four
currencies become the variation charges for address changes along the selected
same-packet history.

## 4. Strict reduction

Assume `(POB.4)'. Use the parent-fixed priority order to define the active
fibers `(POB.3)'. Coverage gives every nonboundary primitive event at least one
cell. The priority gives exactly one active cell. The overlap theorem says any
lost competing cell is either the same address or paid/legal/stopped/exited
before selected counting.

Therefore

\[
\texttt{PrimitiveAddressCellOverlapBoundaryCharge.A}
\Longrightarrow
\texttt{PrimitiveChannelAddressPriorityBoundaryLaw.A}
\tag{POB.7}
\]

relative to `PrimitiveChannelAddressCellCoverage.A`.

This is a construction reduction. It proves that priority is not an additional
source theorem once the overlap boundary is paid.

## 5. Checked obstruction

The post-map address-change theorem cannot be used to prove `(POB.4)' directly.
That would be circular: address-change variation assumes an event map, while
the priority boundary is one input used to construct the event map.

The correct relation is:

\[
\text{pre-map overlap boundary charge}
\quad\text{and}\quad
\text{post-map address-change variation}
\tag{POB.8}
\]

are two readings of the same four physical coordinate motions. The first
prevents double ownership while the map is being built. The second pays later
re-entry once the map exists.

Thus current selector BV, chart license, paid rotation, and same-face
compactness sources are support here only after they are stated on overlaps of
candidate primitive address cells. Edge-level no-detachment or post-map
variation language does not by itself decide the active owner of an overlap.

## 6. Current proof truth

This pass is a strict reduction and duplicate-collapse, not proof of the
boundary charge.

The event-address branch now reads:

\[
\begin{aligned}
&\texttt{PrimitiveEventStoppedChamberAdmissionOrPaidEscape.A}\\
&+\texttt{PrimitiveStoppedChamberAddressCoordinateLift.A}\\
&+\texttt{PrimitiveAddressCellOverlapBoundaryCharge.A}
\end{aligned}
\Longrightarrow
\texttt{PrimitiveChannelEventAddressMap.A}.
\tag{POB.9}
\]

The remaining physical work is not an abstract priority rule. It is to show
that every primitive event is in a parent-known stopped address cell, and that
any competing address cell is a real same-packet coordinate boundary already
paid, stopped, legal, or exited before the event is counted.

## 7. First-difference refinement

The follow-up first-difference reduction
`mpp-forward-gold-primitive-overlap-first-difference-charge-reduction-20260704.md`
sharpens `(POB.4)' after selector normalization. On normalized stopped
common-selector candidate cells, two unequal labels have a first physical
coordinate where they differ: selector/chamber owner, chart/projector,
detector/channel, or face/polarity. Charging that first disagreement before
readout implies the full overlap-boundary charge without using the post-map
address-change theorem.

Thus the overlap input may now be replaced by:

\[
\texttt{PrimitiveStoppedCommonSelectorCellOverlapFirstDifferenceCharge.A}
\Longrightarrow
\texttt{PrimitiveAddressCellOverlapBoundaryCharge.A}.
\tag{POB.10}
\]
