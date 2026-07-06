---
theorem_id: forward-gold-c0-gate3-record-no-loss-direct-attempt-20260706
status: direct-attempt-fails-record-no-loss-not-supplied-by-finite-readout-closedness
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 epsilon extraction / Gate 3 record no-loss passage
target_object:
  - NormalizedRelayBillCompactnessRecordPassage.A
  - TowerRecordNoLossPassage.A
  - SelectedRelayRecordTightNoLossAdmission.A
allowed_source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-epsilon-extraction-direct-proof-pass-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-relay-record-reversibility-kernel-and-epsilon-extraction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-chapter2-refereegrade-closedness-limit-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-net-work-admission-proof-pass-20260703.md
depends_on_first_failed_gate:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate1-owned-pressure-carleson-direct-attempt-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate1-nonsublinear-pressure-routeout-verdict-20260706.md
depends_on_gate2_failure:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate2-positive-record-retention-source-strict-20260706.md
proved_inputs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-normalized-passage-gate3-source-strict-verdict-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-E4-temporal-pinch-charge-bill-currency-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-E4-delamination-same-parent-storage-obstruction-20260706.md
completion_truth: >-
  Gate 3 direct attempt for the c_0 normalized passage objective. This does not
  install or refute NormalizedRelayBillCompactnessRecordPassage.A. Gate 1 remains
  the first exact failed gate and Gate 2 remains the next independent failure.
  This note proves that the allowed finite-readout closedness technology is not
  enough to pass the selected relay record: it passes linear cone inequalities
  for defect measure pairs on fixed finite-readout regions, while the needed
  statement is no-loss/tight passage of a selected positive one-way record with
  its source address preserved. The direct attempt fails by three mechanisms:
  selector/sign oscillation can erase positive record in weak limits; temporal
  pinch can concentrate a unit record into vanishing material time unless charged
  in B currency; and same-parent delamination can leave a positive record as a
  free defect measure without parent-owned storage. Gate 3 reduces to
  SelectedRelayRecordTightNoLossAdmission.A: the selected positive record measure
  must be tight, temporally thick or bill-charged, and admitted to the same
  retained parent before weak passage.
---

# Gate 3 record no-loss direct attempt

## 1. Target

The compactness step in the normalized passage theorem needs

```math
R(W_j)=1
\quad\Longrightarrow\quad
R(W_*)\ge1 .
\tag{G3D.1}
```

This is not ordinary weak compactness. It is no-loss passage of the selected
positive relay record \(dR_N^+\) to the retained same-fluid limit.

The direct theorem being tested is:

```math
\texttt{TowerRecordNoLossPassage.A}.
\tag{G3D.2}
```

## 2. What finite-readout closedness gives

The chapter-2 source proves a finite-readout cone closedness theorem. On the
finite-readout set, defect measure pairs pass through weak-star limits by
testing linear half-space inequalities. The infinite-readout complement is
routed separately.

That is a signed/linear closedness theorem. It does not say that a selected
positive one-way record survives:

```math
\text{linear weak-star passage}
\quad\not\Rightarrow\quad
\text{selected positive record no-loss passage.}
\tag{G3D.3}
```

Ordinary lower semicontinuity of total variation is also not the needed result.
The extraction needs the approximating unit record to remain visible in the
limit, not merely a bound of the limit variation by approximating variation.

## 3. Failure mechanism A: selector/sign oscillation

Let \(f_j\) be signed record densities with

```math
f_j\rightharpoonup0
\quad\text{weakly,}
\qquad
\int(f_j)_+=1 .
\tag{G3D.4}
```

Linear tests see the weak limit \(0\). The selected positive record sees unit
positive variation at every \(j\). Thus the positive selector can disappear in
the weak limit even though every approximating window carries \(R=1\).

In the PDE language, the positive leg can move among signs, native coordinates,
material subwindows, or source addresses while the signed defect pair still
has a valid weak-star limit.

## 4. Failure mechanism B: temporal pinch

A record may concentrate in material time:

```math
P_j(t)=\tau_j^{-1}\mathbf 1_{[0,\tau_j]}(t),
\qquad
\tau_j\downarrow0,
\qquad
P_j(t)\,dt\rightharpoonup\delta_0 .
\tag{G3D.5}
```

Spatial closedness can be perfect while the record becomes a time Dirac. The
signed-height record source turns such a thin record into native positive
selection charge, but the needed bill-currency estimate remains open:

```math
\text{native positive-selection charge}
\le
C\left(dE^{Field}+dA_{4B}+dVisc\right)+Legal+Stop.
\tag{G3D.6}
```

So temporal pinch is not closed by finite-readout spatial compactness. It is
closed only after the same-parent positive-selection charge is priced in the
three-window bill or typed as legal/stop/parentless.

## 5. Failure mechanism C: same-parent delamination

The signed-height source installs scalar record work and a finite-truncation
native menu. But a positive record can still delaminate from the parent bill:
the scalar record passes, while the positive edge it selects is not the same
edge seen by the parent root/full-exchange storage detectors.

The proof-theoretic frozen-symbol obstruction is

```math
m_{root}z=0,\qquad m_{FE}z=0,
\qquad
[w_{rec}z]_+>0 .
\tag{G3D.7}
```

The record work is real work of the same velocity field, but it is invisible to
the currently available parent payment detectors. That is record passage as a
free defect measure rather than retained same-parent record passage.

## 6. Reduced theorem

Gate 3 therefore reduces to:

```math
\texttt{SelectedRelayRecordTightNoLossAdmission.A}.
\tag{G3D.8}
```

Statement. For every retained same-fluid relay sequence with \(R(W_j)=1\) and
\(B(W_j)\to0\), after legal symmetries, recentering, and critical rescaling,
the selected positive record measure \(dR_N^+\):

```math
\begin{array}{ll}
\text{tightness:} & \text{does not escape the selected material/scale window},\\[1mm]
\text{temporal bill:} & \text{does not concentrate into vanishing time without }B\text{-currency},\\[1mm]
\text{same-parent admission:} & \text{keeps the same retained parent source address},\\[1mm]
\text{no-loss passage:} & R(W_*)\ge1 .
\end{array}
\tag{G3D.9}
```

The temporal and same-parent clauses are exactly the already isolated
positive-selection storage/bill-currency wall. Without `(G3D.8)', the zero-bill
kernel has no positive-record limit profile to contradict.

## 7. Consequence for the active c_0 objective

Gate 3 is not solved by chapter-2 closedness. The first exact failed gate of
`NormalizedRelayBillCompactnessRecordPassage.A` is still Gate 1, and Gate 2 is
also independently open. Gate 3 adds the next precise escape:

```math
\text{compact signed defect limit exists}
\quad+\quad
\text{selected positive record vanishes, pinches, or delaminates.}
\tag{G3D.10}
```

Proving `(G3D.8)' would clear the record-passage gate. It would still leave the
previous Gate 1 and Gate 2 obligations unless those were also supplied.
