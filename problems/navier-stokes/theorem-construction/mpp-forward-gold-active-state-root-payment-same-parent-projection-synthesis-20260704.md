---
theorem_id: forward-gold-active-state-root-payment-same-parent-projection-synthesis-20260704
status: strict-synthesis-and-checked-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / parent active-state capacity
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - ParentKnownPreReadoutActiveStateCapacityOrPaidBoundary.A
  - OriginalHistoryRecordResetRootPayment.A
  - RecordAdmittedActiveFullExchangeCoupledStorage.A
role: >-
  Identifies the relation between the parent active-state capacity wall and the
  selected-root record/reset root-payment wall. They are not two independent
  physical roofs. Parent active-state capacity is the whole pre-readout state
  space of the original packet; original-history record/reset root payment is
  its signed-height selected-critical root-payment face. Current repo sources do
  not prove either face from original data.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-raw-active-state-parent-capacity-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-known-active-state-capacity-half-tail-pressure-test-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-root-record-reset-single-geometry-synthesis-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-payment-predictable-weight-causality-collapse-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-root-payment-physical-spine-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-predictable-root-weight-martingale-realization-closure-20260627.md
completion_truth: >-
  This note does not prove parent active-state capacity, root payment, or
  signed-height peak control. It is a role correction: the root-payment theorem
  is the record-selected critical face of the parent active-state capacity
  package, and a proof of either name must still build the pre-readout
  same-packet state/currency from original Navier-Stokes data.
---

# Active-state/root-payment same-parent projection synthesis

## 1. Same parent packet

The object is still one Navier-Stokes velocity field and one stopped parent
material history. The parent state is

```math
Z_P(t)
=
\bigl(
G_P,\ \mathsf H_P,\ \Sigma_P,\ \mathsf C_P,\ \mathsf T_P,\ \mathsf m_P
\bigr)(t),
\tag{ASP.1}
```

with material metric, pressure-Hodge/projector frame, stress coefficient,
collar/normal state, turnstile/exchange, and admitted current.

The signed-height record is a projection of the same packet:

```math
\int_a^bP(t)\,dt
=
H(b)-H(a)+\nu\int_a^bD(t)\,dt
\ge \lambda .
\tag{ASP.2}
```

So the physical question is not whether the repo should pursue an active-state
route or a root-payment route. The question is whether the same parent packet
can own, before readout, both the active state where selected events live and
the selected-critical root currency that pays the record-relevant events.

## 2. Projection roles

The all-event active-state theorem is:

```math
\texttt{ParentKnownPreReadoutActiveStateCapacityOrPaidBoundary.A}.
\tag{ASP.3}
```

It asks for a parent-known accessible state space and bounded-below
capacity/storage for `(ASP.1)' before stopped, selector, child, or record
readout. Its primitive face gives first active scale/collar/projector addresses.
Its deletion face pays later active-state transitions.

The signed-height selected-root theorem is:

```math
\texttt{OriginalHistoryRecordResetRootPayment.A}.
\tag{ASP.4}
```

It asks for the selected-critical root-payment face of that same state space:
parent-predictable root geometry, signed primitive return BV, and critical
weighted reset current from original history. Its repeated-core face pays reuse
of an inherited material score; its shrinking-core face pays genuinely fresh
parent-child reset innovation.

The record-admitted storage theorem is:

```math
\texttt{RecordAdmittedActiveFullExchangeCoupledStorage.A}.
\tag{ASP.5}
```

It asks that the signed-height record work from `(ASP.2)' enter the same parent
active/full-exchange carrier before readout and then be absorbed by a strict
same-parent feedback matrix.

These are three projections of one parent object:

```math
\begin{array}{lll}
\text{active-state capacity} &:& \text{where selected events live},\\
\text{root payment} &:& \text{which selected-critical currency pays them},\\
\text{record admission/storage} &:& \text{which signed-height record event is paid}.
\end{array}
\tag{ASP.6}
```

## 3. Why the projections cannot be separated

The active-state half-tail pressure test shows that raw cost can shrink while
selected critical action stays unit-sized:

```math
R_{\rm raw}(Q_r)\sim r,
\qquad
A_{\rm sel}(Q_r)\sim1.
\tag{ASP.7}
```

Thus a parent state without selected-critical root currency can still miss the
Gold half-tail.

The selected-root record/reset synthesis shows the reverse boundary. Root
payment without the parent active state and record-admission row can pay the
wrong selected transition. Under the signed-height restart, a root-payment
theorem has Gold force only where its paid edge is the edge carrying the record
work in `(ASP.2)'.

So the lawful reading is:

```math
\texttt{OriginalHistoryRecordResetRootPayment.A}
\quad\text{is the signed-height selected-critical face of}\quad
\texttt{ParentKnownPreReadoutActiveStateCapacityOrPaidBoundary.A}.
\tag{ASP.8}
```

It is not a sibling producer, and it is not a replacement for record admission.

## 4. Checked obstruction in current sources

The predictable-root realization attempt is not a proof. It imports the two
objects the theorem must produce:

```text
parent-predictable root weight / Hilbert geometry
selected-critical reset/root currency.
```

That failed closure is exactly the same missing physical object seen from the
root-payment side.

From the active-state side, fixed chart formulas, pressure-Hodge attachment,
collar service, reset overlap, and TFE storage rows still act after a parent
state or selected ledger exists. They do not construct the pre-readout active
state or selected-critical currency from the original coupled packet.

Therefore the current repo proves neither

```math
\texttt{ParentKnownPreReadoutActiveStateCapacityOrPaidBoundary.A}
\tag{ASP.9}
```

nor

```math
\texttt{OriginalHistoryRecordResetRootPayment.A}.
\tag{ASP.10}
```

The useful consolidation is that their missing source is one same-parent
construction, not two unrelated walls.

## 5. Current strict synthesis

For primitive channelization, the existing strict reduction remains:

```math
\texttt{ParentKnownPreReadoutActiveStateCapacityOrPaidBoundary.A}
\Longrightarrow
\texttt{PrimitiveRawActiveStateFirstAddressOrPaidTransition.A}
\Longrightarrow
\texttt{PrimitiveRawMaterialChannelAtlasFiniteOverlapOrPaidBoundary.A}.
\tag{ASP.11}
```

For signed-height Gold, the record-relevant projection is:

```math
\begin{aligned}
&\texttt{OriginalHistoryRecordResetRootPayment.A}\\
&+\texttt{RecordAdmittedActiveFullExchangeCoupledStorage.A}\\
&+\text{local same-face thickness/charge and no-cancellation}
\end{aligned}
\Longrightarrow
\texttt{SignedCriticalHeightSignPersistenceOrPeakBound.A}.
\tag{ASP.12}
```

This is a strict synthesis, not closure. The remaining proof work is to build
one pre-readout same-packet object that supplies active-state location,
selected-critical root currency, and record-admitted coupled storage from the
original pressure-viscosity-incompressibility-velocity history.

## 6. Proof classification

Proof installed here: none.

Strict reduction installed here: the active-state wall and the root-payment wall
are one parent-object problem with different projections.

Checked obstruction installed here: any proof of root payment that imports
parent-predictable root weight or selected-critical currency is circular; any
proof of active-state capacity that only measures raw residence misses the
selected-critical half-tail.

Open object:

```text
construct the pre-readout same-parent active state/root currency/record-storage
package from original Navier-Stokes data.
```
