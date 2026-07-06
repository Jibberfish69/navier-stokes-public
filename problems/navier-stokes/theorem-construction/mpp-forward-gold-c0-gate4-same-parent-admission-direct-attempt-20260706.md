---
theorem_id: forward-gold-c0-gate4-same-parent-admission-direct-attempt-20260706
status: direct-attempt-fails-reduces-to-detector-silent-service-or-kernel-exclusion
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 epsilon extraction / NormalizedRelayBillCompactnessRecordPassage.A
target_object:
  - Gate4.NativeSameParentRecordAdmissionStorage
  - SelectedRecordSameParentNoDelamination.A
  - RecordMenuRootProjectionFaithfulness.A
  - RecordMenuPressureActiveOrSilentService.A
allowed_source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-epsilon-extraction-direct-proof-pass-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-normalized-passage-gate4-source-strict-verdict-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-shared-participation-and-tower-coherence-law.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-net-work-admission-proof-pass-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-chapter2-refereegrade-closedness-limit-20260705.md
completion_truth: >-
  Direct Gate 4 proof attempt for the active c_0 normalized-passage goal. The
  attempt does not prove native same-parent admission/storage. The shared
  one-field/tower law keeps the candidate record inside one Navier-Stokes
  carrier, but it does not by itself prove that the future-positive record edge
  is visible in the parent root/full-exchange currency charged by the bill. The
  useful result is a strict lower test: Gate 4 is reduced, on each frozen
  retained native edge and after legal/stop/paid-silent quotienting, to excluding
  a positive record direction in the joint nullspace of the parent root detector
  and active full-exchange detector, plus admitting exact-projector commutator
  remainders. Failure of that detector-silent-service theorem is the exact
  source-address escape: a scalar positive record can be work of the same field
  while not being the same parent-owned record seen by B.
---

# Gate 4 direct attempt: same-parent no-delamination

## 1. Physical target

Gate 4 is not asking whether the scalar signed-height work exists. The
signed-height source already gives positive net record work. It is asking
whether that positive work remains attached to the same retained parent packet
in the same currency that the c_0 bill can charge.

For the normalized passage theorem this is the difference between

```math
R(W_j)=1
```

as a scalar positive record, and

```math
R(W_j)=1
```

as a parent-owned retained relay record whose high packet, low
strain/current coefficient, material interval, and parent charge coordinate
were all announced before record readout.

The physical failure mode is delamination: the same velocity field performs
positive record work, but the positive read detaches from the parent
root/full-exchange detector that the bill \(B\) sees.

## 2. What the one-field law supplies

The participation/tower law gives one common carrier:

```math
D_t U_k = K_k + B_k,
\qquad
K_k=-\nabla^{k+1}p+\nu\Delta U_k .
\tag{G4D.1}
```

All local towers are therefore driven by the same pressure-viscosity carrier
family and the same nonlinear cascade. This rules out a proof picture in which
the record is made by a second detached fluid.

It does not give Gate 4 by itself. The same source explicitly separates the
primitive one-field/tower law from endpoint-shell ownership:

```math
\text{`Pack' and `Part' are not identified here, and no endpoint-shell ownership is implied here.}
\tag{G4D.2}
```

That sentence is the Gate 4 warning in physical language. One-fluid coherence
says the work belongs to the same Navier-Stokes history. It does not say that a
future-positive component of that work has already entered the parent root,
endpoint, or active/full-exchange coordinate that storage can charge.

## 3. Native menu identity is not storage

The signed-height source proves the finite native menu identity at the
coordinate level. Before record readout,

```math
P(t)\,dt
=
\sum_{e\in{\mathcal E}_P(t)}\omega_e(t)\,dt
+dLegal_P+dStop_P .
\tag{G4D.3}
```

Each edge has the correct physical address:

```math
e=(\text{retained high packet},
\text{low strain/current coefficient from }u,
\text{material interval},
\text{parent charge coordinate}) .
\tag{G4D.4}
```

For a record interval \([a,b]\), the record admission row follows:

```math
\lambda
\le
\sum_e
\left[\int_{I_e\cap[a,b]}\omega_e\right]_+
+Legal([a,b])+Stop([a,b]).
\tag{G4D.5}
```

This still does not give the c_0 no-delamination statement. The positive
selection in `(G4D.5)' may sit in a menu edge that has not been represented on
the stopped parent root reserve or the active full-exchange ledger.

The missing Gate 4 theorem is:

```math
\texttt{SelectedRecordSameParentNoDelamination.A}.
\tag{G4D.6}
```

Statement. For every retained normalized relay sequence, the selected positive
record measure has a disintegration over the preannounced native menu whose
positive edge pieces are dominated, before record readout, by parent root,
endpoint, active/full-exchange, legal, stop, or already-paid silent service
currency. In particular,

```math
dR^{+}_{sel}
\le
C_N\bigl(
dA^{root,+}+d\Xi^{FE,act}+dService^{silent}
\bigr)
+dLegal+dStop .
\tag{G4D.7}
```

Together with the already named storage rows for the parent faces, `(G4D.7)'
implies `RecordNativeWorkMenuPositiveSelectionStorage.A' and hence the Gate 4
source-address part of normalized passage.

## 4. Frozen edge reduction

Freeze one retained material packet, one menu edge, one frequency direction,
and one material time before record readout. Let \(V\) be the retained
native-edge amplitude space after quotienting legal gauge directions, stopped
exits, and already-paid lower-order pieces. Let

```math
Dz:=(m_{root}z,m_{FE}z)
\tag{G4D.8}
```

be the combined parent root and active full-exchange detector, and let
\(w_{rec}z\) be the signed-height record work read by that edge.

The frozen no-delamination estimate is

```math
[w_{rec}z]_+
\le
C_N |Dz|
\qquad (z\in V).
\tag{G4D.9}
```

Equivalently,

```math
\ker D\subseteq \ker w_{rec}
\tag{G4D.10}
```

on the sign-symmetric retained amplitude space, with the cone version used if
the retained selector restricts amplitudes to a positive cone.

Proof of equivalence on the frozen quotient. If `(G4D.9)' holds, then every
\(z\in\ker D\) satisfies \([w_{rec}z]_+=0\). Since \(V\) is sign-symmetric
before future-positive selection, replacing \(z\) by \(-z\) gives
\([-w_{rec}z]_+=0\), hence \(w_{rec}z=0\). Thus `(G4D.10)' holds.

Conversely, assume `(G4D.10)'. The functional \(w_{rec}\) descends to the
finite-dimensional quotient \(V/\ker D\). On that quotient \(D\) is injective.
After normalizing \(|Dz|=1\), compactness of the unit sphere gives a finite
constant

```math
C_N:=\sup_{|Dz|=1}|w_{rec}z|<\infty,
\tag{G4D.11}
```

which proves `(G4D.9)'. The cone version is identical after replacing the unit
sphere by the compact normalized cone slice.

Thus the frozen same-parent admission problem is exactly a detector-kernel
problem: no positive record work may live in the joint nullspace of the parent
root and active full-exchange detectors, unless that silent component has
already been paid or routed out before the record counts it.

## 5. Full edge theorem needed

The signed-height source already names the full lower theorem:

```math
\texttt{RecordMenuPressureActiveOrSilentService.A}
+
\texttt{RetainedRecordEdgeExactProjectorChartLicense.A}
\Longrightarrow
\texttt{RecordMenuRootProjectionFaithfulness.A}.
\tag{G4D.12}
```

The first factor is the physical detector statement: every future-positive
retained record-menu edge either has the angle `(G4D.9)' or its detector-silent
piece is already paid by material parabolic service, source-origin exchange,
complete-frame trace-free variation, viscous/radius service, legal exit, or
stop material.

The second factor is the operator statement: the exact weighted Hodge/root
projector and dyadic cutoff remainders must stay in legal, stopped, lower-order,
or active-paid material on retained packet charts. Without this, the frozen
detector angle cannot be lifted to the full transported edge.

Once `(G4D.12)' is proved, summing `(G4D.9)' over the finite-overlap
preannounced menu gives `(G4D.7)', hence `SelectedRecordSameParentNoDelamination.A'.

## 6. Direct attempt verdict

The direct attempt fails at the detector-silent direction. The allowed sources
prove:

1. scalar positive record work;
2. finite native menu identity/admission;
3. one-field/tower coherence of the same Navier-Stokes carrier;
4. finite-readout closedness for cone-type linear inequalities.

They do not prove that every future-positive native work edge is visible in
the parent root/full-exchange detectors, nor that every invisible component is
already paid before record readout.

This is not a Navier-Stokes counterexample. It is the exact proof-level escape
for Gate 4. A normalized sequence can satisfy the scalar record bookkeeping and
same-field coherence while the selected positive record fails to survive as the
same parent-owned relay record needed by the bill \(B\).

The current smallest c_0-facing Gate 4 obligation is therefore:

```math
\texttt{RecordMenuPressureActiveOrSilentService.A}
+
\texttt{RetainedRecordEdgeExactProjectorChartLicense.A}.
\tag{G4D.13}
```

Proving `(G4D.13)' supplies `RecordMenuRootProjectionFaithfulness.A', then
`RecordMenuCriticalFaceAdmission.A', then
`RecordNativeWorkMenuPositiveSelectionStorage.A', and finally the Gate 4
source-address component of `NormalizedRelayBillCompactnessRecordPassage.A'.

Until `(G4D.13)' is proved, `NormalizedRelayBillCompactnessRecordPassage.A' is
not installed. Gate 1 remains the first failed gate in the full c_0 extraction,
and Gate 4 remains an independent native same-parent no-delamination failure.
