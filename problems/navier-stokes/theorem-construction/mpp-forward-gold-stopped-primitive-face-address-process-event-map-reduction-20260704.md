---
theorem_id: forward-gold-stopped-primitive-face-address-process-event-map-reduction-20260704
status: strict-reduction-and-checked-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / primitive event address custody
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - StoppedPrimitiveFaceAddressProcess.A
  - StoppedPrimitivePreReturnFaceTraceAddressProcess.A
  - PrimitiveChannelEventAddressMap.A
  - PrimitiveChannelPreReturnEventAddressMap.A
  - PrimitiveChannelAddressChangeVariationCharge.A
  - PrimitiveChannelPreReturnAddressChangeCharge.A
role: >-
  Tests whether the installed retained-edge custody surfaces construct the
  stopped primitive face-address process. They do not: they are edge-indexed.
  The process requires an event-indexed address map on the primitive signed
  channel measure, plus finite paid variation for address changes of the same
  packet before selected readout. The trace-before-return refinement splits this
  into a pre-return face-trace address process first, with same-face return
  recovered only after that process exists.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-face-address-process-unification-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-prereturn-trace-address-process-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-pre-readout-custody-tuple-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-admission-no-detachment-modulus-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-stopped-primitive-channel-admission-lower-face-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-selector-primitive-channel-compatibility-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-projector-selector-angle-lock-obstruction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-projector-selector-paid-rotation-split-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-menu-detector-silent-service-pre-readout-reserve-primitive-half-tail-audit-20260703.md
completion_truth: >-
  This note does not prove StoppedPrimitiveFaceAddressProcess.A. It reduces it
  to two lower physical producers: an event-level pre-readout address map on the
  primitive channel measure and a finite original-history charge for address
  changes. The stricter noncircular reading is now pre-return: first build
  StoppedPrimitivePreReturnFaceTraceAddressProcess.A from a pre-return event map
  and pre-return address-change charge, then use stopped return/BV to recover
  same-face negative return. The checked obstruction is that current sources
  prove custody and payment for retained record edges or after parent-known
  selection, not for all primitive channel events before selected-face counting.
---

# Stopped primitive face-address process event-map reduction

## 1. The physical object

The object is one event \(z=(\sigma,t,x,\kappa)\) in the selector-owned primitive
signed channel of the same Navier-Stokes packet:

\[
Y_{\kappa,S}(z)\,d\sigma dt .
\tag{EM.1}
\]

The packet is transported by the flow, pressure acts through the incompressible
projection, viscosity and frame motion change its scale and direction, and the
selector/projector/detector/face coordinates say which parent-known record face
owns the event.

The event-address process asks for those coordinates at the level of \(z\)
itself. It is stronger than saying that each future-positive retained edge has a
custody tuple. A single primitive return event can sit under several lawful
edge-tuples unless the primitive channel measure itself is partitioned by one
active address.

## 2. Lower producers

The stopped address process reduces to two nonduplicate physical producers.

First:

\[
\texttt{PrimitiveChannelEventAddressMap.A}.
\tag{EM.2}
\]

For \(|Y_{\kappa,S}|\,d\sigma dt\)-almost every primitive channel event \(z\),
construct before selected readout a parent-announced address

\[
\mathfrak A(z)
=
(\mathfrak R(z),\mathfrak X(z),\mathfrak D(z),\mathfrak F(z)),
\tag{EM.3}
\]

where \(\mathfrak R\) is the stopped selector record, \(\mathfrak X\) the retained
chart/projector coordinate, \(\mathfrak D\) the detector/service split, and
\(\mathfrak F\) the root/endpoint/full-exchange face address. The fibers of
\(\mathfrak A\) form a stopped measurable partition or laminar active-address
tree of the primitive channel measure.

Second:

\[
\texttt{PrimitiveChannelAddressChangeVariationCharge.A}.
\tag{EM.4}
\]

When \(\mathfrak A\) changes along the same material packet, the change is paid
before readout by selector drift or first exit, chart/projector transfer,
detector/channel rotation, face-address no-detachment charge, local thickness
or same-face return charge, legal loss, stop, or exit. In measure form,

\[
|d\mathfrak A|_{\text{same packet}}
\le
dPaid+dLegal+dStop+dExit
\tag{EM.5}
\]

in the original-history currency appropriate to the fixed continuation depth.

The first producer gives ownership. The second gives lawful re-entry and prevents
a single return event from being charged repeatedly through address changes.

## 3. Strict reduction

Assume `(EM.2)' and `(EM.4)'. Define

\[
\mathfrak A_{\kappa,S}(z):=\mathfrak A(z)
\tag{EM.6}
\]

for primitive channel events. Since the fibers of \(\mathfrak A\) form a stopped
partition or active-address tree, every positive or negative event of
\(Y_{\kappa,S}\) has exactly one active parent-announced address, up to paid,
legal, stopped, or exited boundaries.

On a positive event, the address fiber gives the pre-readout face restriction
\[
\mathbf 1_{\{\mathfrak A=a\}}[Y_{\kappa,S}]_+\,d\sigma dt .
\tag{EM.7}
\]

On a negative return event, the same address fiber gives the first active return
face. If another selected face claims that event, it either has the same address
or crosses an address-change boundary. By `(EM.4)', that boundary is paid before
counting.

Therefore

\[
\begin{aligned}
&\texttt{PrimitiveChannelEventAddressMap.A}\\
&+\texttt{PrimitiveChannelAddressChangeVariationCharge.A}
\end{aligned}
\Longrightarrow
\texttt{StoppedPrimitiveFaceAddressProcess.A}.
\tag{EM.8}
\]

This is a construction reduction: the stopped process is exactly the event map
plus the paid variation law.

## 4. Checked obstruction to edge-only custody

The retained-edge custody tuple is necessary but edge-indexed. It constructs
\[
\mathfrak T_e=(\mathfrak R_e,\mathfrak X_e,\mathfrak D_e,\mathfrak F_e)
\tag{EM.9}
\]

for a future-positive retained record edge \(e\). It does not define
\(\mathfrak A(z)\) for every primitive channel event \(z\).

The no-detachment modulus is also edge-indexed. It charges selector, chart,
angle/channel, and face-address drift when a retained positive edge detaches.
It does not prove that all primitive channel events already live in a single
address partition.

Primitive-channel admission is still a retained-edge theorem. It places the
exact-projector residue of one record edge into a selector-owned primitive
channel after parent-announced capture and channel compatibility. It does not
sort the whole signed primitive channel measure into address fibers.

The angle-lock and paid-rotation surfaces identify the right address-change
currencies. They also record their limit: the payments are available after the
same edge has a parent-announced selector/channel, and the producer theorems
remain open for arbitrary retained edges.

Thus the current support can be true while the event map fails. Proof-theoretic
model: two future-positive retained edges \(e_1,e_2\) each have lawful custody
tuples, and their positive subfaces are locally thick. A primitive negative
return event \(z\) lies in both return neighborhoods. Without an event-level
address map, both selected faces can claim \(z\). Edge custody has not chosen the
physical owner of the return.

This is not a Navier-Stokes counterexample. It is the exact proof-state
obstruction:

\[
\text{edge ownership does not imply event ownership.}
\tag{EM.10}
\]

## 5. Current proof truth

This pass is a strict reduction and checked obstruction, not closure.

The lower physical object is now:

\[
\texttt{PrimitiveChannelEventAddressMap.A}
+
\texttt{PrimitiveChannelAddressChangeVariationCharge.A}.
\tag{EM.11}
\]

Proving those two statements would construct the stopped primitive face-address
process. Without them, the repo has coherent edge-custody support and real
payment currencies, but it still lacks the event-level owner map that stops one
same-packet primitive return from being spent on many selected faces.

## 6. Trace-before-return refinement

For the same-face return budget, `(EM.11)' must be read in a stricter order.
The proof cannot use full face/polarity return to build the address map, because
same-face return already needs a stopped face owner.

The noncircular lower object is:

\[
\begin{aligned}
&\texttt{PrimitiveChannelPreReturnEventAddressMap.A}\\
&+\texttt{PrimitiveChannelPreReturnAddressChangeCharge.A}
\end{aligned}
\Longrightarrow
\texttt{StoppedPrimitivePreReturnFaceTraceAddressProcess.A}.
\tag{EM.12}
\]

This process owns the primitive event by stopped carrier, common selector,
chart/projector, detector/channel, and pre-readout face trace, and it pays
pre-return address changes without using the same-face negative-return budget.
Only after `(EM.12)' exists can the return/BV currency be restricted to those
face traces:

\[
\begin{aligned}
&\texttt{StoppedPrimitivePreReturnFaceTraceAddressProcess.A}\\
&+\texttt{StoppedReturnBVFiniteFromOriginalData.A}
\end{aligned}
\Longrightarrow
\texttt{PrimitiveStoppedChamberSameFaceNegativeReturnBudget.A}.
\tag{EM.13}
\]

The full stopped primitive face-address process is therefore downstream of this
pre-return process plus same-face return payment. Edge custody remains support
until it produces the pre-return process on the primitive signed-channel measure.
