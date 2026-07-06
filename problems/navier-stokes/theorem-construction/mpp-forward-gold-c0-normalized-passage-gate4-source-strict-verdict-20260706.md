---
theorem_id: forward-gold-c0-normalized-passage-gate4-source-strict-verdict-20260706
status: failed-gate4-native-same-parent-record-admission-storage-open
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 epsilon extraction / NormalizedRelayBillCompactnessRecordPassage.A
target_object:
  - NormalizedRelayBillCompactnessRecordPassage.A
  - Gate4.NativeSameParentRecordAdmissionStorage
  - RecordNativeWorkMenuPositiveSelectionStorage.A
  - RecordMenuCriticalFaceAdmission.A
allowed_source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-epsilon-extraction-direct-proof-pass-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-net-work-admission-proof-pass-20260703.md
  - problems/navier-stokes/spine.md
completion_truth: >-
  Source-strict Gate 4 verdict for the edited objective. This does not install
  or refute NormalizedRelayBillCompactnessRecordPassage.A. The signed-height
  source proves scalar record work and, at finite truncation, native work
  coordinates with a physical address. It explicitly says the remaining theorem
  is positive-selection storage from the preannounced native menu across all
  future disjoint records. The scalar record alone does not identify which
  same-fluid high packet, low strain/current coefficient, material interval, and
  parent charge coordinate carried the work before readout. The exact escape
  mechanism is native-source delamination: positive scalar work can be split
  among legal native coordinates, while parent storage sees one coordinate and
  the future-positive record draws from another. The smallest Gate 4 theorem is
  RecordNativeWorkMenuPositiveSelectionStorage.A, with the lower entrance
  RecordMenuCriticalFaceAdmission.A / RecordMenuRootProjectionFaithfulness.A.
---

# Source-strict Gate 4 verdict for normalized relay passage

## 1. Target

Gate 4 asks whether a positive limiting record is still the same retained
relay record, owned by the same parent source before readout. In the normalized
passage theorem this is the source-address part of

```math
R(W_j)=1
\quad\Longrightarrow\quad
R(W_*)\ge1
\tag{G4S.1}
```

as a retained same-fluid record, not merely as scalar signed work.

## 2. Checked source fact

The signed-height source states the boundary directly. The scalar signed-height
equation proves positivity of record work, but not its parent source address.
It says the scalar work does not identify

```math
\text{which high packet, which low strain/current coefficient,}
\quad
\text{which material interval, which parent charge coordinate}
\tag{G4S.2}
```

carried the work before record readout.

The source then builds the right finite-truncation native menu. Each edge is a
same-fluid interaction

```math
e=
(\text{retained high packet},
\text{low strain/current coefficient from }u,
\text{material time window},
\text{parent charge coordinate}).
\tag{G4S.3}
```

At finite truncation it proves the identity/admission half:

```math
P(t)\,dt
=
\sum_{e\in{\mathcal E}_P(t)}\omega_e(t)\,dt
+dLegal_P+dStop_P,
\tag{G4S.4}
```

and hence the record admission row

```math
\lambda
\le
\sum_e
\left[\int_{I_e\cap[a,b]}\omega_e\right]_+
+Legal([a,b])+Stop([a,b]).
\tag{G4S.5}
```

The same source states that the remaining theorem is the storage of positive
selections from those coordinates across all future disjoint records:

```math
\sum_j\lambda_j^{-1}
\sum_e
\left[\int_{I_e\cap[a_j,b_j]}\omega_e\right]_+
\le C_N(u_0)+Paid+Legal+Stop .
\tag{G4S.6}
```

This is the hard half of `RecordNativeWorkMenuPreannouncement.A`, named there
as the positive-selection storage problem.

## 3. Exact obstruction

The source gives the proof-theoretic countermodel. Split the scalar work into
two legal signed native coordinates with the same total integral. Give strict
parent storage to one coordinate. Let the future-positive record excess sit in
the other coordinate.

Then the scalar upcrossing is true, and a storage theorem for a coordinate is
also true, but the record has not been admitted to the stored parent source.

In formula language, scalar positivity of

```math
\int_a^bP(t)\,dt\ge\lambda
\tag{G4S.7}
```

does not imply parent-owned positive-selection storage `(G4S.6)'.

This is not a Navier-Stokes counterexample. It is the exact escape mechanism for
Gate 4: native-source delamination. A positive record contribution can be real
work of the same velocity field while failing to be represented in the parent
critical/root/active ledger that the bill \(B\) can charge before readout.

## 4. Smaller theorem required by Gate 4

The smallest Gate 4 theorem at this source level is:

```math
\texttt{RecordNativeWorkMenuPositiveSelectionStorage.A}.
\tag{G4S.8}
```

It says that the preannounced native work menu has finite positive-selection
reserve across future records, in the same parent currency used by the Gold
bill.

The signed-height source lowers its entrance further. Every positive selected
menu edge must enter the parent/root/endpoint/full-exchange faces before the
record interval is used as selector:

```math
\texttt{RecordMenuCriticalFaceAdmission.A}.
\tag{G4S.9}
```

and below that:

```math
\texttt{RecordMenuRootProjectionFaithfulness.A}.
\tag{G4S.10}
```

The representative estimate is

```math
\left[\int_{I_e\cap[a,b]}\omega_e\right]_+
\le
C_N\left(
dA_e^{root,+}+d\Xi_e^{FE,act}
\right)
+Legal_e+Stop_e,
\tag{G4S.11}
```

with \(dA_e^{root,+}\) represented on the stopped parent root reserve, or the
edge already routed out as legal/stop/source-wall material.

## 5. Consequence for the active c_0 objective

Gate 4 is open under the allowed sources. The scalar record is installed, and
finite-truncation native coordinates are installed. The missing theorem is that
future-positive selections from those coordinates are stored by the same parent
before readout.

Thus the four-gate proof of
`NormalizedRelayBillCompactnessRecordPassage.A` is not installed. Gate 1 is now
supplied, and Gate 2 is the first failed gate. Gate 4 adds the source-address escape: a unit record may
survive as scalar work while failing to survive as the same retained relay
record owned by the parent packet.
