---
theorem_id: forward-gold-c0-normalized-passage-gate3-source-strict-verdict-20260706
status: failed-gate3-relay-record-no-loss-passage-open
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 epsilon extraction / NormalizedRelayBillCompactnessRecordPassage.A
target_object:
  - NormalizedRelayBillCompactnessRecordPassage.A
  - Gate3.RelayRecordNoLossPassage
  - TowerRecordPassage.A
  - Chapter2ClosednessFiniteReadout
allowed_source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-epsilon-extraction-direct-proof-pass-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-relay-record-reversibility-kernel-and-epsilon-extraction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-chapter2-refereegrade-closedness-limit-20260705.md
completion_truth: >-
  Source-strict Gate 3 verdict for the edited objective. This does not install
  or refute NormalizedRelayBillCompactnessRecordPassage.A. The allowed
  chapter-2 source proves a finite-readout cone closedness theorem for defect
  measure pairs by weak-star passage of linear half-space inequalities. It
  explicitly carries the infinite-readout complement elsewhere and is not a
  tower-record passage theorem for dR_N^+. The c_0 extraction source says the
  needed implication is R(W_j)=1 -> R(W_*)>=1 and that weak-star compactness of
  adjacent defect measures does not supply it without no-loss/tight passage of
  the selected positive record and preservation of the same selected source
  address. Ordinary lower semicontinuity of total variation is the wrong
  direction for this use: it can bound the limit record by the approximating
  variation, not force the approximating unit record to survive in the limit.
  Therefore Gate 3 is open. The exact escape mechanism
  is selected-positive record loss under weak convergence: the signed/defect
  measures may pass while the positive record selector, sign, or source
  coordinate oscillates, concentrates, or changes, leaving no positive retained
  record in the limit.
---

# Source-strict Gate 3 verdict for normalized relay passage

## 1. Target

Gate 3 is the record-passage implication inside
`NormalizedRelayBillCompactnessRecordPassage.A`:

```math
R(W_j)=1
\quad\Longrightarrow\quad
R(W_*)\ge1 .
\tag{G3S.1}
```

The compactness theorem needs this after extracting a zero-bill limit from
\(B(W_j)\to0\). It is not enough for some defect measures to have weak-star
limits; the one-way relay record itself must survive as the same retained
record.

## 2. Checked source fact

The chapter-2 source proves a finite-readout cone theorem. On
\(\{\bar\kappa<\infty\}\), the defect pair lies in the cone

```math
K(\bar\kappa)=\{(e,h): e\ge0,\ |h|\le\bar\kappa e\}
\tag{G3S.2}
```

by testing fixed half-space inequalities and passing them to weak-star limits of
measures. The source explicitly states that the theorem is finite-readout only:
the infinite-readout complement is routed elsewhere rather than included in the
cone theorem.

The c_0 direct proof pass states the missing record step separately:

```math
R(W_j)=1
\quad\Longrightarrow\quad
R(W_*)\ge1,
\tag{G3S.3}
```

and says weak-star compactness of adjacent defect measures does not supply
`(G3S.3)' unless the selected positive record has no-loss/tight passage in the
selected topology and the selected source address remains the same. Ordinary
lower semicontinuity of total variation is not enough here: weak-star limits
can satisfy

```math
R(W_*)\le \liminf_{j\to\infty}R(W_j),
\tag{G3S.3a}
```

which still allows \(R(W_*)=0\) when the approximating positive records cancel,
oscillate, concentrate, or lose their selector. The c_0 extraction needs the
opposite no-loss conclusion for the normalized selected records.

## 3. Why weak-star closedness is weaker than record passage

Chapter-2 closedness passes linear inequalities for a fixed cone after the
readout is localized. The relay record is a positive selected functional. The
positive selector can change with \(j\), and positive part is not a linear
weak-star observable.

The elementary model is a sequence of signed densities \(f_j\) with

```math
f_j\rightharpoonup0
\quad\text{weakly as measures/distributions,}
\tag{G3S.4}
```

but

```math
\int (f_j)_+ = 1
\qquad\text{for all }j.
\tag{G3S.5}
```

For instance, normalized high-frequency sign oscillations have zero weak limit
while retaining fixed positive variation. Linear weak-star tests see the
cancellation in `(G3S.4)'; the selected positive record sees `(G3S.5)'.

This is not a Navier-Stokes counterexample. It is the exact compactness
obstruction: a positive record readout can be lost when only signed or paired
defect measures are passed to the limit.

## 4. Physical meaning

Physically, the same velocity field may have real one-way relay episodes in the
approximating packets, but the selected positive leg can move among signs,
native coordinates, material subwindows, or source addresses as \(j\) changes.
The weak limit then retains only the averaged signed defect information. The
record can vanish as a selected positive event even though each approximating
window had \(R=1\).

So the missing theorem is not generic compactness. It is no-loss passage of the
same retained one-way record:

```math
\texttt{TowerRecordNoLossPassage.A}.
\tag{G3S.6}
```

Statement. Under the compactness topology supplied by the Field/viscous/four-
body bills, and after legal symmetries, recentering, and critical rescaling, the
selected relay-record measure \(dR_N^+\) is tight and passes to the retained
limit with no loss of total positive record. The needed direction is

```math
R(W_*)\ge\limsup_{j\to\infty}R(W_j)
\quad\text{for normalized retained record sequences,}
\tag{G3S.7}
```

or, equivalently for \(R(W_j)=1\),

```math
R(W_*)\ge1.
\tag{G3S.8}
```

This requires the positive selector/source address to be fixed or admitted as a
retained positive measure before the weak limit is taken.

## 5. Consequence for the active c_0 objective

Gate 3 is open under the allowed sources. Chapter 2 gives finite-readout defect
cone closedness, not relay-record no-loss passage. The relay-record kernel
then has no zero-bill positive-record profile to contradict unless `(G3S.6)' is
proved.

Gate 1 remains the first failed gate for the normalized passage theorem. Gate 2
is the next checked failure. Gate 3 adds the third precise escape: the record
can be lost as a selected positive functional even when the underlying signed
defect measures have weak-star limits.
