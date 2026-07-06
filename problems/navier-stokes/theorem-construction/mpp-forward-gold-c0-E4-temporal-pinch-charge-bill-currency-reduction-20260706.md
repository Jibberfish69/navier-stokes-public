---
theorem_id: forward-gold-c0-E4-temporal-pinch-charge-bill-currency-reduction-20260706
status: checked-temporal-pinch-reduces-to-record-charge-bill-currency-storage-open
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 epsilon extraction / E4 temporal concentration
target_object:
  - NormalizedRelayBillCompactnessRecordPassage.A
  - E4.TemporalPinch
  - TemporalRecordThicknessChargeBillCurrency.A
  - SignedHeightRecordNetWorkAdmission.A
  - SameParentRecordPositiveSelectionStorage.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-epsilon-extraction-direct-proof-pass-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-relay-record-reversibility-kernel-and-epsilon-extraction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-net-work-admission-proof-pass-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-E4-record-closedness-compensated-compactness-20260706.md
completion_truth: >-
  E4 temporal-pinch proof pass. A unit record concentrated into vanishing
  material time is exactly the thin-record case of the signed-height
  record-upcrossing machinery. The allowed sources give the scalar record-work
  identity and, at finite truncation, a native work-menu admission row:
  lambda <= sum_e [int_{I_e cap [a,b]} omega_e]_+ + Legal + Stop. Therefore
  a temporal Dirac cannot be dismissed as spatial weak-continuity failure; it
  must be either legal/stop, parentless after-readout scalar spike, or finite
  same-fluid native charge. The missing step is bill currency: prove that this
  finite native positive-selection charge is controlled by
  B=dE_Field+dA_4B+dVisc on retained relay windows. Current allowed sources
  explicitly leave the positive-selection storage/bill-currency theorem open.
  Thus temporal pinch is reduced to SameParentRecordPositiveSelectionStorage.A
  / TemporalRecordThicknessChargeBillCurrency.A; it is not independently closed.
---

# E4 temporal pinch: reduced to charge, not yet to bill

## 1. Gate being tested

The record-passage theorem needs to exclude this escape:

```math
R(W_j)=1,\qquad B(W_j)\to0,
\qquad
\text{the record measure of }W_j\text{ concentrates in material time.}
\tag{TP.1}
```

Spatial compensated compactness does not see `(TP.1)`. A Jacobian may pass in
space while the time measure converges to a Dirac.

The physical question is whether a unit scale-translation event squeezed into
vanishing material time has a retained same-fluid price. If the same packet
really performs that record in less time, the packet must either post fast
native work/acceleration, or the event is only a scalar readout after the
parent has been lost.

## 2. Installed record-work input

The signed-height record note supplies the relevant thin-record form. For a
record upcrossing \([a,b]\),

```math
\lambda
\le
C_N
\sum_{W\in{\mathcal W}_{[a,b]}}
\left[\int_{I_W}\omega_W\right]_+
+Legal([a,b])+Stop([a,b]).
\tag{TP.2}
```

Each native work form must have the same physical address:

```math
\text{same high packet, same low coefficient/current, same material interval,}
\quad
\text{same parent charge coordinate.}
\tag{TP.3}
```

The later finite-truncation menu identity gives the sharper row

```math
P(t)\,dt
=
\sum_{e\in{\mathcal E}_P(t)}\omega_e(t)\,dt
+dLegal_P+dStop_P,
\tag{TP.4}
```

and hence, for the record interval,

```math
\lambda
\le
\sum_e
\left[\int_{I_e\cap[a,b]}\omega_e\right]_+
+Legal([a,b])+Stop([a,b]).
\tag{TP.5}
```

So the temporal pinch is not a free scalar event once the same-fluid menu is
kept. It becomes finite native positive-selection charge.

## 3. Direct proof attempt

To close temporal concentration for `NormalizedRelayBillCompactnessRecordPassage.A`,
one needs the bill-currency implication

```math
\sum_e
\left[\int_{I_e\cap[a,b]}\omega_e\right]_+
\le
C\,B(W)+o(1),
\qquad
B=dE_{N,h}^{Field}+dA_{4B,N}+dVisc_{N,h},
\tag{TP.6}
```

on retained relay windows, after legal/stop exits have been removed.

The allowed sources do not prove `(TP.6)`. The signed-height note states that
the scalar signed-height equation proves positive net work, and that the
finite-truncation algebra supplies native work coordinates. It then explicitly
leaves the storage of positive selections from those coordinates across future
records open.

That open storage law is the temporal-pinch bill-currency law.

## 4. Countermodel to the unsupported inference

The logical obstruction is the standard temporal impulse. Let

```math
P_j(t)=\tau_j^{-1}\mathbf 1_{[0,\tau_j]}(t),
\qquad
\tau_j\downarrow0.
\tag{TP.7}
```

Then

```math
\int P_j(t)\,dt=1,
\qquad
P_j(t)\,dt\rightharpoonup \delta_0.
\tag{TP.8}
```

No spatial concentration is involved. Spatial Jacobian compactness can be
perfect while the time measure becomes a Dirac. A proof that sees only the
scalar record integral can keep the unit record and still fail to identify
which retained parent edge paid it.

This is not a Navier-Stokes counterexample. It is a countermodel to the
inference

```math
\text{spatial record closedness}+\text{scalar record work}
\quad\Longrightarrow\quad
\text{temporal record passage in }B\text{ currency.}
\tag{TP.9}
```

The inference becomes valid only after `(TP.6)` is proved, or after a temporal
Dirac is typed as legal/stop/parentless and removed from the retained relay
class.

## 5. Verdict

The temporal pinch reduces to one exact theorem:

```math
\boxed{
\texttt{TemporalRecordThicknessChargeBillCurrency.A}
}
\tag{TP.10}
```

Statement. For any retained same-fluid relay record family with unit record on
material intervals whose time length tends to zero, one of the following holds:

```math
\begin{array}{ll}
\text{bill branch:}
& \text{the native positive-selection charge is bounded below in }
  dE^{Field}+dA_{4B}+dVisc\text{ currency},\\[1mm]
\text{legal/stop branch:}
& \text{the temporal Dirac exits through legal or stop material},\\[1mm]
\text{parentless branch:}
& \text{the event is a post-readout scalar spike and is not a retained relay record.}
\end{array}
\tag{TP.11}
```

Using `(TP.5)`, the only non-formal row is the bill branch:

```math
\texttt{SameParentRecordPositiveSelectionStorage.A}
\quad\Rightarrow\quad
\texttt{TemporalRecordThicknessChargeBillCurrency.A}.
\tag{TP.12}
```

Thus E4 temporal concentration is not an additional independent wall after the
signed-height record admission note. It is the thin-time face of the same
positive-selection storage and same-parent charge problem.

## 6. Consequence for c_0

This pass does not prove `NormalizedRelayBillCompactnessRecordPassage.A`.
It strictly reduces one escape: a temporal Dirac can survive a vanishing-bill
limit only by becoming legal/stop, parentless, or an unpaid same-parent
positive-selection charge. The first two are not retained unit records. The
third is precisely the remaining same-parent storage/bill-currency theorem.
