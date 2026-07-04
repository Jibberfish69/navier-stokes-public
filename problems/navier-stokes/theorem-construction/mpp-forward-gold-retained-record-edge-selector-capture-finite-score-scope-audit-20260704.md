---
theorem_id: forward-gold-retained-record-edge-selector-capture-finite-score-scope-audit-20260704
status: strict-reduction-and-checked-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-height record-net work / pre-readout selector capture
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - RetainedRecordEdgeParentAnnouncedSelectorCapture.A
  - FiniteParentKnownRecordEdgeSelectorMenu.A
role: >
  Audits the scope of the installed finite stopped-score selector theorem. It
  separates proof after an order-locked retained selector chart exists from the
  still-open retained record-edge capture theorem: every future-positive record
  edge must enter a parent-known finite selector menu before readout, or the
  uncaptured part must be paid, stopped, legal, or exited.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-common-selector-refinement-parent-announced-capture-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-finite-score-or-paid-drift-proof-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-stopped-score-selector-realization-pivot-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-transition-continuity-announceable-reset-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-selector-kinematic-realization-direct-test-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-order-locked-selector-variation-bridge-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-pre-readout-custody-tuple-reduction-20260704.md
completion_truth: >-
  This note does not prove RetainedRecordEdgeParentAnnouncedSelectorCapture.A or
  Navier-Stokes smoothness. It proves a scope correction and strict reduction:
  StoppedSelectorFiniteScoreOrPaidDrift.A is proof-grade only after the retained
  order-locked selector transaction is already parent-known. The open producer
  is a finite parent-known record-edge selector menu/capture theorem before
  future-positive record readout.
---

# Retained record-edge selector capture finite-score scope audit

## 1. Same physical edge before readout

The object is one future-positive retained record edge of the same
Navier-Stokes velocity field:

\[
e=(\text{high packet},\text{low pressure/strain coefficient},
\text{material time window},\text{signed polarity}).
\tag{SCF.1}
\]

For root projection faithfulness, the parent must already know the selector
record that carries this edge before the signed-height record reads it as
positive. That selector record must include the carrier, order-lock, polarity,
primitive channel, chart/collar state, and material window of the same edge.

So the selector question is not whether a finite stopped score can pay motion
after the edge has been retained. The question is whether the edge has been
retained by a parent-announced finite score before future positive readout.

## 2. What the finite-score theorem proves

The installed finite-score theorem is real in its own scope. At fixed
continuation depth and fixed retained packet type, an order-locked selector
chart gives a finite parent-known score family. Along the same smooth material
history, each score is absolutely continuous in log scale, and a strict reset
is the first exit of finitely many stopped inequalities.

In that setting,

\[
\texttt{StoppedSelectorFiniteScoreOrPaidDrift.A}
\tag{SCF.2}
\]

proves that a retained selector transaction is one of two things:

\[
\text{finite parent-known stopped-score first exit}
\quad\text{or}\quad
\text{paid selector/collar/order-lock/legal/donor/reselection drift}.
\tag{SCF.3}
\]

This is proof-grade after the selector transaction is already in a
parent-known retained chart. It supplies reset endpoints, selector transition
continuity, and the no-third-branch conclusion for order-locked Gold selectors.

## 3. What it does not prove

The live retained-record theorem has a prior burden. It must show that an
arbitrary future-positive record edge is already represented by such a finite
parent-known stopped score before the record exposes the positive edge.

Without that prior capture, the finite-score proof can be imported circularly:

\[
\text{future-positive edge is retained}
\Longrightarrow
\text{finite stopped score pays it},
\tag{SCF.4}
\]

while the first implication is exactly
\(\texttt{RetainedRecordEdgeParentAnnouncedSelectorCapture.A}\).

The obstruction is the moving selector model already present in the older
selector notes. Let a continuum or large finite label family carry disjoint
spikes:

\[
s(a,t)=\sum_n A_n\phi_n(a)\psi_n(t),
\tag{SCF.5}
\]

with disjoint label-time supports. Any fixed finite parent menu sees only
finitely many selected spikes. A future argmax or best-descendant selector can
follow the active tail and keep finding new positive record edges outside that
menu.

Physically, the same fluid packet has not been captured by the parent selector.
The future readout is choosing the payer after seeing where the positive work
appears. That is the same post-selection defect in selector language.

## 4. Strict reduction

The missing input is the pre-readout menu theorem:

\[
\texttt{FiniteParentKnownRecordEdgeSelectorMenu.A}.
\tag{SCF.6}
\]

Statement. Before signed-height record readout, the parent constructs a finite
stopped score menu for every retained record-menu edge at the fixed depth and
packet type under consideration. Every future-positive edge is either captured
by one score record in this menu, with carrier, order-lock, polarity, primitive
channel, chart/collar state, and material window fixed, or the uncaptured part
is paid as selector drift, tie gap, order-lock partner deficit,
collar/geometric loss, donor/reselection loss, legal loss, stop, material
service, or exit.

Then the installed finite-score theorem can be used noncircularly:

\[
\begin{aligned}
&\texttt{FiniteParentKnownRecordEdgeSelectorMenu.A}\\
&+\texttt{StoppedSelectorFiniteScoreOrPaidDrift.A}
\end{aligned}
\Longrightarrow
\texttt{RetainedRecordEdgeParentAnnouncedSelectorCapture.A}.
\tag{SCF.7}
\]

This is smaller than root projection faithfulness. It is the selector-capture
producer inside the same-edge custody tuple.

## 5. Current truth state

Installed proof:

\[
\text{finite stopped scores pay selector/reset motion after an order-locked
retained chart exists.}
\tag{SCF.8}
\]

Checked obstruction:

\[
\text{a future argmax or moving supremal selector can follow positive spikes
outside any fixed finite parent menu.}
\tag{SCF.9}
\]

Open producer:

\[
\boxed{\texttt{FiniteParentKnownRecordEdgeSelectorMenu.A}}
\tag{SCF.10}
\]

derived from the original same-fluid Navier-Stokes history before positive
record readout.

Thus `StoppedSelectorFiniteScoreOrPaidDrift.A' should not be used as proof of
retained record-edge capture by itself. It is the payment theorem after
capture. The proof still owes the parent-known finite record-edge selector menu
or a same-packet paid/stop/legal/exit classification for every edge outside
that menu.
