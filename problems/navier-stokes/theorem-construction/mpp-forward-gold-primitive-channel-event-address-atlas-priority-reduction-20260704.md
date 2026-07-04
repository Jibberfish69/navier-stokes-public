---
theorem_id: forward-gold-primitive-channel-event-address-atlas-priority-reduction-20260704
status: strict-reduction-and-formal-tiebreak-proof-not-event-map-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / primitive event address custody
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - PrimitiveChannelEventAddressMap.A
  - PrimitiveChannelAddressCellCoverage.A
  - PrimitiveChannelAddressPriorityBoundaryLaw.A
role: >-
  Sharpens the event-map producer by separating the formal measurable
  tie-break from the physical PDE burden. Once the parent has a stopped,
  locally finite active address atlas that covers the primitive signed channel
  measure and a pre-readout priority/boundary law for overlaps, the event map
  follows. Current selector-menu and retained-edge custody sources supply
  coordinate support, not this primitive-event atlas.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-face-address-process-event-map-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-channel-address-change-variation-charge-split-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-pre-readout-custody-tuple-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-selector-capture-finite-score-scope-audit-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-record-edge-selector-menu-modulus-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-edge-selector-modulus-same-packet-gate-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-primitive-channel-predictable-trace-custody-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-return-first-face-address-stopping-partition-reduction-20260704.md
completion_truth: >-
  This note does not prove PrimitiveChannelEventAddressMap.A. It proves the
  formal construction of the map from two lower physical inputs: primitive
  address-cell coverage and a parent-announced priority/boundary law. The open
  PDE work remains to build those cells for |Y_{kappa,S}| d sigma dt-a.e.
  primitive event of both signs, not only for retained future-positive edges.
---

# Primitive channel event-address atlas priority reduction

## 1. Physical event before address bookkeeping

The object is one primitive event

\[
z=(\sigma,t,x,\kappa)
\tag{EAP.1}
\]

in the selector-owned signed channel of the same Navier-Stokes packet, measured
by

\[
|Y_{\kappa,S}|\,d\sigma dt .
\tag{EAP.2}
\]

The event has not yet been counted as a positive trace or spent as a negative
return. It is just the same fluid packet under transport, pressure projection,
viscosity, incompressibility, sign, scale, alignment, and time. An address is
physical only when those mechanisms have already put the event under a
parent-known selector record, retained chart/projector coordinate,
detector/service branch, and face address before selected readout.

Thus the event-map burden is not an abstract choice function. It is the claim
that the parent has an active address atlas for the primitive channel measure
before any selected edge or face tries to claim the event.

## 2. What current edge and selector sources supply

The retained-edge custody tuple gives the right coordinate list for one
future-positive retained edge:

\[
\mathfrak T_e=(\mathfrak R_e,\mathfrak X_e,\mathfrak D_e,\mathfrak F_e).
\tag{EAP.3}
\]

The selector-menu reductions sharpen the first coordinate. They say a
future-positive retained edge needs a finite parent-known selector menu before
record readout, and they reduce that menu to a same-record selector modulus or
paid drift law.

That is real support, but its scope is still edge-side. It does not cover
\(|Y_{\kappa,S}|\,d\sigma dt\)-almost every primitive event, it does not attach
the chart/projector, detector/service, and face coordinates to every such event,
and it does not decide what happens when two parent-known cells overlap on the
same primitive return.

So the selector-menu work is one coordinate of the event atlas. It is not the
event atlas itself.

## 3. Two lower physical inputs

The first lower input is address-cell coverage:

\[
\texttt{PrimitiveChannelAddressCellCoverage.A}.
\tag{EAP.4}
\]

For the primitive signed channel at the fixed depth, the parent constructs
before readout a countable, locally finite family of stopped measurable cells

\[
E_a\subset\{z: |Y_{\kappa,S}|(z)>0\},
\qquad
a=(\mathfrak R_a,\mathfrak X_a,\mathfrak D_a,\mathfrak F_a),
\tag{EAP.5}
\]

where each coordinate is parent-announced and has the same-packet meaning:
selector record, retained chart/projector, detector/service branch, and
root/endpoint/full-exchange face. The cells cover the primitive channel
measure up to legal, stopped, exited, or already paid boundary pieces:

\[
|Y_{\kappa,S}|
\left(
\{z\}-\bigcup_aE_a
\right)
\le
dLegal+dStop+dExit+dPaid .
\tag{EAP.6}
\]

The second lower input is the active-priority and boundary law:

\[
\texttt{PrimitiveChannelAddressPriorityBoundaryLaw.A}.
\tag{EAP.7}
\]

The parent fixes before readout a stopped active priority, or a laminar active
tree, on the cells. If \(E_a\cap E_b\) contains primitive channel measure, then
the overlap is resolved by that parent-fixed active priority, or the overlap is
a paid address boundary: selector tie/drift, chart transfer, detector/channel
rotation, face-address detachment, local thickness loss, legal loss, stop, or
exit. The priority is not allowed to depend on the sign or size revealed by the
future selected record.

## 4. Formal tie-break construction

Assume `(EAP.4)' and `(EAP.7)'. Enumerate the locally finite parent-known
address cells in the fixed active-priority order. For a primitive event outside
the paid/legal/stop/exit boundary, define

\[
\mathfrak A(z)
=
\min_{\prec}\{a:z\in E_a\}.
\tag{EAP.8}
\]

Because the cell family is countable and locally finite, the fibers

\[
\mathcal E_a
=
E_a\setminus\bigcup_{b\prec a}E_b
\tag{EAP.9}
\]

are measurable. Because the order is parent-announced before readout, the
choice in `(EAP.8)' is a stopped address choice, not a future positive argmax.
Because `(EAP.7)' pays or stops genuine address overlaps, the losing address on
an overlap is not a second free selected-face claim.

The fibers form a stopped partition of the primitive channel measure modulo the
declared boundary:

\[
|Y_{\kappa,S}|
\left(
\{z\}-\bigsqcup_a\mathcal E_a
\right)
\le
dLegal+dStop+dExit+dPaid .
\tag{EAP.10}
\]

Therefore

\[
\begin{aligned}
&\texttt{PrimitiveChannelAddressCellCoverage.A}\\
&+\texttt{PrimitiveChannelAddressPriorityBoundaryLaw.A}
\end{aligned}
\Longrightarrow
\texttt{PrimitiveChannelEventAddressMap.A}.
\tag{EAP.11}
\]

This proves the formal measurable tie-break part. The proof cost is entirely in
constructing the physical cells and the pre-readout overlap law.

## 5. Checked obstruction to current support

Coverage without active priority is not enough. Two parent-known cells can both
contain the same negative return event. A deterministic tie-break chosen after
the event is seen would only rename the double claim. It would not show why the
second selected face is inactive, paid, stopped, legal, or exited.

Active priority without coverage is also not enough. A perfect priority rule on
future-positive retained edges still leaves primitive negative return events
outside the atlas, and those are exactly the events the same-face return budget
tries to spend.

The current record-edge selector menu is therefore a coordinate producer, not a
proof of `(EAP.4)'. It helps build the selector coordinate for retained
future-positive edges. The event map needs the whole address cell
\((\mathfrak R,\mathfrak X,\mathfrak D,\mathfrak F)\) for almost every
primitive event of both signs.

This is the proof-state obstruction:

\[
\text{finite selector capture for retained edges does not imply primitive
event ownership.}
\tag{EAP.12}
\]

## 6. Current proof truth

This pass is a strict reduction and a formal tie-break proof, not Gold closure.

The lower physical burden under `PrimitiveChannelEventAddressMap.A` is now:

\[
\texttt{PrimitiveChannelAddressCellCoverage.A}
+
\texttt{PrimitiveChannelAddressPriorityBoundaryLaw.A}.
\tag{EAP.13}
\]

The physical story is one event first, bookkeeping second. The same packet must
already carry a parent-known selector/chart/detector/face address cell, and the
parent must already know which overlapping cell is active, before a positive
trace or negative return ledger may count that event.
