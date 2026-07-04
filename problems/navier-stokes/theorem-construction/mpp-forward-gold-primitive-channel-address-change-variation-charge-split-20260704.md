---
theorem_id: forward-gold-primitive-channel-address-change-variation-charge-split-20260704
status: strict-reduction-and-checked-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / primitive event address custody
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - PrimitiveChannelAddressChangeVariationCharge.A
  - PrimitiveEventSelectorAddressVariationCharge.A
  - PrimitiveEventChartProjectorTransferCharge.A
  - PrimitiveEventDetectorChannelRotationCharge.A
  - PrimitiveEventFacePolarityReturnCharge.A
role: >-
  Splits the address-change half of the stopped primitive face-address process
  into the four physical ways the same packet can change address: selector,
  chart/projector, detector/channel, and face/polarity. It records which current
  support is proof-grade after an event map and which parts still require the
  selected-critical original-history payment or local same-face compactness.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-face-address-process-event-map-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-admission-no-detachment-modulus-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-stratum-crossing-bv-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-projector-selector-paid-rotation-split-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-paid-rotation-producer-collapse-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-local-thickness-charge-modulus-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-face-signed-channel-localization-proof-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-exact-projector-retained-chart-license-audit-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-projector-escape-payment-audit-20260703.md
completion_truth: >-
  This note does not prove PrimitiveChannelAddressChangeVariationCharge.A. It
  decomposes it into four address-change charges and records the obstruction:
  current sources prove several BV/no-detachment/payment mechanisms only after
  parent-known edge capture or an event address map. The detector/channel and
  selector-motion branches still consume the selected-critical fresh source tent
  / scale-memory bound; the face branch still needs local same-face compactness
  and return ownership.
---

# Primitive channel address-change variation charge split

## 1. Physical object

Assume for the moment that the primitive signed channel has an event address map
\[
\mathfrak A(z)=(\mathfrak R(z),\mathfrak X(z),\mathfrak D(z),\mathfrak F(z)).
\tag{AC.1}
\]

The address of a same-packet event can change in only four physical ways:

1. the stopped selector record changes;
2. the retained chart or exact-projector coordinate changes;
3. the detector/channel angle changes;
4. the face address, local thickness, or signed polarity changes.

There is no fifth bookkeeping change. A new selected-face claim must be one of
these motions of the same packet, or it is legal, stopped, exited, or not a
lawful retained event.

## 2. Four lower charges

The address-change theorem splits as:

\[
\begin{aligned}
&\texttt{PrimitiveEventSelectorAddressVariationCharge.A}\\
&+\texttt{PrimitiveEventChartProjectorTransferCharge.A}\\
&+\texttt{PrimitiveEventDetectorChannelRotationCharge.A}\\
&+\texttt{PrimitiveEventFacePolarityReturnCharge.A}
\end{aligned}
\Longrightarrow
\texttt{PrimitiveChannelAddressChangeVariationCharge.A}.
\tag{AC.2}
\]

The selector charge is the event-level version of stopped selector stratum BV.
Once an event is in a finite parent-known stopped selector packet, unpaid
selector chamber crossings are bounded by same-packet selector variation:

\[
R_{\rm stop}^{unpaid}
\le
C_N\operatorname{Var}(Y)+R_{\rm legal}.
\tag{AC.3}
\]

The chart/projector charge is the event-level version of exact-projector chart
license and projector escape payment. Leaving the retained chart must be C11
metric/tower service, higher projector service, chart-transfer, material service,
legal, stop, or exit.

The detector/channel charge is the event-level version of paid rotation. If the
pressure/projector active functional and selector-announced primitive channel are
not angle-locked, the mismatch is either detector-silent/near-silent service or
selector/order-lock/channel rotation. Current sources collapse both payments to
the selected-critical fresh source tent / scale-memory bound after parent
capture.

The face/polarity charge is the local same-face compactness row. If a positive
address fiber loses thickness or sign, the loss must be paid on that same face
by local thickness-or-charge and same-face partner return.

## 3. Conditional proof

Assume the four lower charges. Let \(z\) be a primitive channel event and let
\(\mathfrak A\) change along its same-packet stopped history. The change is a
change in one coordinate of `(AC.1)' or a combination of such changes.

Selector-coordinate changes are charged by
`PrimitiveEventSelectorAddressVariationCharge.A`. Chart/projector changes are
charged by `PrimitiveEventChartProjectorTransferCharge.A`. Detector/channel
changes are charged by `PrimitiveEventDetectorChannelRotationCharge.A`.
Face/polarity changes are charged by `PrimitiveEventFacePolarityReturnCharge.A`.
Legal, stop, and exit boundaries are already outside retained unpaid counting.

Therefore the total same-packet address variation satisfies

\[
|d\mathfrak A|_{\text{same packet}}
\le
dPaid+dLegal+dStop+dExit,
\tag{AC.4}
\]

which is `PrimitiveChannelAddressChangeVariationCharge.A`.

## 4. Checked obstruction

The selector-stratum BV lemma is proof-grade only after a stopped selector packet
exists. It does not construct the event address map or the parent-known selector
for arbitrary future-selected events.

The paid-rotation split is a consumer chain. Near-silent service and
selector/channel rotation both require the same selected-critical original-history
payment after parent capture. Local silent routing, selector BV, and raw
strain/viscosity ledgers are compatible with the half-tail profile, so they do
not prove the detector/channel charge for arbitrary retained events.

The chart/projector and face/polarity charges are also event-level only after
the primitive channel event has an address. Edge-level chart license and local
face thickness do not decide which address owns a primitive return event.

Thus current support has the correct physical currencies but not the full charge
theorem. The missing mechanism is:

\[
\text{event address map}
+
\text{selected-critical payment for selector/channel motion}
+
\text{local same-face compactness and return ownership}.
\tag{AC.5}
\]

## 5. Current proof truth

This pass reduces `PrimitiveChannelAddressChangeVariationCharge.A`; it does not
prove it. The useful simplification is that address-change debt has only four
physical coordinates, and two of them share the same nonduplicate source burden:
the selected-critical fresh source tent / scale-memory payment from original
history. The face coordinate remains the local same-face compactness and
partner-return row. The chart coordinate remains exact-projector chart/escape
service before readout.
