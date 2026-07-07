---
theorem_id: forward-gold-c0-native-menu-positive-selection-storage-countermodel-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / Gate2 / parent-owned positive record / native menu storage
status: checked-nonimplication-finite-menu-admission-does-not-prove-positive-selection-storage
target_object:
  - NormalizedRelayBillCompactnessRecordPassage.A
  - ParentOwnedPositiveRecordBillCurrency.A
  - RecordNativeWorkMenuPositiveSelectionStorage.A
  - RecordMenuRootProjectionFaithfulness.A
  - RecordMenuPressureActiveOrSilentService.A
  - RetainedRecordEdgeExactProjectorChartLicense.A
allowed_source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-epsilon-extraction-direct-proof-pass-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-relay-record-reversibility-kernel-and-epsilon-extraction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-tower-signed-total-exchange-retention-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-chapter2-refereegrade-closedness-limit-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-net-work-admission-proof-pass-20260703.md
  - problems/navier-stokes/spine.md
completion_truth: >-
  Lower-clause proof attempt for the active c_0 goal. This note proves a
  checked non-implication: the finite-truncation native work menu identity and
  one-record admission row do not imply the positive-selection storage needed
  by ParentOwnedPositiveRecordBillCurrency.A. An abstract disjoint-record menu
  model satisfies menu preannouncement and record admission while the
  scale-normalized positive-selection sum diverges. The model is not an actual
  retained Navier-Stokes counterexample to NormalizedRelayBillCompactnessRecordPassage.A.
  It identifies the first lower failed clause inside the parent-owned package:
  RecordNativeWorkMenuPositiveSelectionStorage.A, reduced in the allowed
  signed-height source to RecordMenuRootProjectionFaithfulness.A plus exact
  projector/chart admission and noncircular same-parent bill storage.
---

# Native-menu admission does not prove positive-selection storage

## 1. Physical object

The object is one same-fluid Navier-Stokes history, read before a future
record interval is selected. The signed-height source proves that the nonlinear
production can be decomposed into native work edges of that history:

```math
P(t)\,dt
=
\sum_{e\in{\mathcal E}_P(t)}\omega_e(t)\,dt
+dLegal_P+dStop_P .
\tag{NMS.1}
```

Each edge has a same-fluid address: high packet, low strain/current coefficient,
material time coordinate, and parent charge coordinate. For one record window
\(W=[a,b]\), positive-part subadditivity gives the admission row

```math
R(W)
\le
C\sum_e
\left[\int_{I_e\cap W}\omega_e\right]_+
+Legal(W)+Stop(W).
\tag{NMS.2}
```

This is real progress: the record cannot choose a completely unnamed payer
after the fact. The work is at least written on a preannounced native menu.

The missing step is stronger. The parent-owned bill theorem needs finite
positive selection over all future disjoint record windows:

```math
\sum_j\lambda_j^{-1}
\sum_e
\left[\int_{I_e\cap W_j}\omega_e\right]_+
\le
C_N(u_0)+Paid+Legal+Stop .
\tag{NMS.3}
```

This is `RecordNativeWorkMenuPositiveSelectionStorage.A`.

## 2. Countermodel to the implication from admission to storage

The implication

```math
\text{native menu identity}+\text{one-record admission}
\Longrightarrow
\text{positive-selection storage}
\tag{NMS.4}
```

is false as a matter of bookkeeping, even before any Navier-Stokes difficulty.

Take disjoint record intervals \(W_j\). Let the record height on \(W_j\) be
\(\lambda_j>0\). Put one native edge \(e_j\) on each \(W_j\), and define a
signed work density satisfying

```math
\int_{I_{e_j}\cap W_j}\omega_{e_j}
=
\lambda_j,
\qquad
\int_{I_e\cap W_j}\omega_e=0
\quad(e\ne e_j).
\tag{NMS.5}
```

Then the menu identity and the one-record admission row hold:

```math
R(W_j)\le C\left[\int_{I_{e_j}\cap W_j}\omega_{e_j}\right]_+
=C\lambda_j .
\tag{NMS.6}
```

But the scale-normalized positive-selection storage is

```math
\sum_j\lambda_j^{-1}
\sum_e
\left[\int_{I_e\cap W_j}\omega_e\right]_+
=
\sum_j 1
=\infty .
\tag{NMS.7}
```

Nothing in `(NMS.1)'--`(NMS.2)' forbids this, because each record draws its
positive work from a different legal native edge. The signed menu can be
perfectly preannounced and still have no finite reserve controlling all future
positive selections.

This is not a Navier-Stokes counterexample. It is the exact logical gap in the
current proof attempt: finite menu admission does not stop an arbitrarily thin
record sequence from reading positive work out of fresh menu coordinates unless
the parent packet also supplies a storage law for the whole menu.

## 3. What the failed implication says physically

The fluid can write the production \(P(t)\) as a sum of native same-fluid work
edges. That only says where work could have occurred. It does not say that the
future-positive part of those edges has already entered a finite parent reserve.

For the c0 Gate2 wall, this matters because \(dR_N^+\) is one-way. The record
counts the positive leg of the menu. A later negative leg or a different stored
edge does not pay the selected positive record unless the proof ties the
positive edge to its parent root/full-exchange detector or to bill currency
before readout.

So the first lower failed clause inside
`ParentOwnedPositiveRecordBillCurrency.A` is:

```math
\boxed{\texttt{RecordNativeWorkMenuPositiveSelectionStorage.A}.}
\tag{NMS.8}
```

## 4. Reduction supplied by the signed-height source

The signed-height source already lowers `(NMS.8)' to a visibility-and-storage
entrance. Every future-positive menu edge must first enter one of the parent
critical/root/full-exchange faces before the record interval is used as a
selector:

```math
\texttt{RecordMenuCriticalFaceAdmission.A}
+\texttt{noncircular same-parent coupled storage}
\Longrightarrow
\texttt{RecordNativeWorkMenuPositiveSelectionStorage.A}.
\tag{NMS.9}
```

The entrance to those faces is root/full-exchange detector faithfulness:

```math
\texttt{RecordMenuRootProjectionFaithfulness.A}
+\texttt{selected-critical face split}
\Longrightarrow
\texttt{RecordMenuCriticalFaceAdmission.A}.
\tag{NMS.10}
```

At the frozen-symbol level this becomes the detector test:

```math
\ker D_{e,a,\xi}\subseteq\ker w_{rec}(a,\xi),
\tag{NMS.11}
```

with detector-silent work already paid, routed out, or converted to service
before readout. The full retained edge theorem also needs the exact-projector
chart license:

```math
\texttt{RecordMenuPressureActiveOrSilentService.A}
+
\texttt{RetainedRecordEdgeExactProjectorChartLicense.A}
\Longrightarrow
\texttt{RecordMenuRootProjectionFaithfulness.A}.
\tag{NMS.12}
```

The currently exposed c0 lower stack is therefore:

```math
\texttt{RecordMenuPressureActiveOrSilentService.A}
+
\texttt{RetainedRecordEdgeExactProjectorChartLicense.A}
+
\texttt{noncircular same-parent bill storage}
\Longrightarrow
\texttt{RecordNativeWorkMenuPositiveSelectionStorage.A}
\Longrightarrow
\texttt{ParentOwnedPositiveRecordBillCurrency.A}.
\tag{NMS.13}
```

The first arrow is open. The countermodel above proves why `(NMS.1)'--`(NMS.2)'
cannot replace it.

## 5. Consequence for the active goal

This note does not install `NormalizedRelayBillCompactnessRecordPassage.A` and
does not refute it. It proves that one tempting lower shortcut is invalid:
finite native menu admission cannot be used as positive record storage.

The active first failed gate remains Gate2 positive-record ownership. Inside
the parent-owned package, the first lower failed clause is the menu's
positive-selection storage, with the smallest visible entrance:

```math
\texttt{RecordMenuRootProjectionFaithfulness.A}
+
\texttt{RetainedRecordEdgeExactProjectorChartLicense.A}
+
\texttt{noncircular same-parent bill storage.}
\tag{NMS.14}
```

Proving that entrance would give the native-menu storage clause, then
`ParentOwnedPositiveRecordBillCurrency.A`, then the stronger coercive form
\(B\ge cR\), which immediately implies the normalized relay passage theorem.
