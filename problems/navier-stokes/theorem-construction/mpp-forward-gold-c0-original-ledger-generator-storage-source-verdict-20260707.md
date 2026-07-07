---
theorem_id: forward-gold-c0-original-ledger-generator-storage-source-verdict-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / Gate2 / original-ledger generator storage
status: source-strict-verdict-unit-spectral-radius-loop-not-excluded
ontology_lock:
  fluid_field_object: one same-fluid incompressible viscous dissipative pressure-constrained irreversible Navier-Stokes history
  reversible: false
  adiabatic: false
  compressible: false
  corrected_terms:
    - incompressible
    - viscous
    - dissipative
    - pressure-constrained
    - irreversible
target_object:
  - NormalizedRelayBillCompactnessRecordPassage.A
  - ParentOwnedPositiveRecordBillCurrency.A
  - StrictOriginalLedgerGeneratorStorage.A
  - FullExchangeCriticalDepletionStorage.A
  - RecordAdmittedActiveCriticalFullExchangeStorageMatrix.A
  - FullTowerSignedTotalExchangeRetention.A
allowed_source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-epsilon-extraction-direct-proof-pass-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-relay-record-reversibility-kernel-and-epsilon-extraction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-shared-participation-and-tower-coherence-law.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-tower-signed-total-exchange-retention-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-chapter2-refereegrade-closedness-limit-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-net-work-admission-proof-pass-20260703.md
  - problems/navier-stokes/spine.md
comparison_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-exchange-no-self-feeding-physical-lyapunov-pressure-test-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-coupled-storage-matrix-early-branch-obstruction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-detector-silent-half-tail-equals-first-ratio-storage-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-transition-derivative-collapses-to-original-ledger-generator-storage-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-bill-coercive-storage-matrix-criterion-20260707.md
completion_truth: >-
  Source-strict proof attempt for the active c_0 goal. The allowed sources do
  not install StrictOriginalLedgerGeneratorStorage.A or
  FullExchangeCriticalDepletionStorage.A. They install signed full-tower
  exchange identities, retained interface criteria after the positive carrier /
  negative partner / signed current packet has already been produced, finite
  native record-menu admission, frozen detector-angle algebra, finite-readout
  closedness, and Field coherence. Those inputs remain compatible with a
  unit-spectral-radius storage loop: critical entry, full exchange, and active
  transit can pay one another sequentially without any strict original parent
  reserve drop. This is not an actual retained Navier-Stokes counterexample to
  NormalizedRelayBillCompactnessRecordPassage.A. It is a checked obstruction to
  deriving the remaining producer from the allowed source surfaces. The smaller
  nonduplicate theorem is the record-admitted active-critical/full-exchange
  storage matrix with feedback spectral radius strictly below one, or an
  independent original-history proof of one matrix face strong enough to make
  the residual matrix subcritical. The downstream absorption from such a
  bill-coercive subcritical matrix to ParentOwnedPositiveRecordBillCurrency.A is
  now proved as a conditional criterion; the unproved part is producing the
  matrix from the Navier-Stokes parent packet.
---

# Original-ledger generator storage: source verdict for the c0 extraction

## 1. Physical object

The object is one retained same-fluid Navier-Stokes parent packet before the
future positive record readout. Transport carries the packet, incompressibility
keeps one volume law, pressure pairs same-time lobes, viscosity supplies the
only direct parabolic drain, and the tower reads finitely many derivative
coordinates of that same packet.

The remaining c0 producer is not another record menu and not a terminal
compactness wrapper. It is the statement that the original parent packet has a
strict reserve drop before child positive clipping. In the current c0 language
this is

```math
\texttt{StrictOriginalLedgerGeneratorStorage.A}
/
\texttt{FullExchangeCriticalDepletionStorage.A}.
\tag{OLS.1}
```

## 2. What the allowed sources prove

The full-tower source proves signed adjacent exchange identities. Summing the
four transported readings cancels the signed currents:

```math
dJ_{SQ}+dJ_{QC}+dJ_{CG}+dJ_{GS}\quad\text{cancel in the signed sum.}
\tag{OLS.2}
```

It also records the exact mismatch: the material record asks for total positive
variation,

```math
d[\log(1+\mathfrak P_N^{mat})]_+,
\tag{OLS.3}
```

and total positive variation is not controlled by signed cancellation. The
retained-interface criteria preserve the three-measure packet once a positive
carrier, negative partner, and signed current have already been produced. They
do not produce that packet for every generated positive record channel.

The signed-height source proves finite native menu admission:

```math
P(t)\,dt
=
\sum_{e\in\mathcal E_P(t)}\omega_e(t)\,dt
+dLegal_P+dStop_P ,
\tag{OLS.4}
```

and one-record admission by positive-part subadditivity. It explicitly leaves
open positive-selection storage over all future disjoint records and lowers the
entry problem to root/full-exchange detector faithfulness plus exact-projector
admission.

The chapter-2 and participation sources supply finite-readout closedness and
Field coherence. They pass legal finite readouts after the readout and cone are
already admitted. They do not create the strict original parent reserve.

## 3. Unit-spectral-radius countermodel to the source implication

The source implication being tested is:

```math
\text{signed exchange identities}
+\text{finite native menu admission}
+\text{finite-readout closedness}
\Longrightarrow
\texttt{StrictOriginalLedgerGeneratorStorage.A}.
\tag{OLS.5}
```

This implication is false at the level of the installed algebra. Let

```math
Z,\quad \Xi,\quad A
\tag{OLS.6}
```

stand for the three same-parent active readouts: critical entry, active
full-exchange, and active transit. A sequential storage attempt has the form

```math
\begin{pmatrix}
dZ\\ d\Xi\\ dA
\end{pmatrix}
\le
-d
\begin{pmatrix}
M_Z\\ M_\Xi\\ M_A
\end{pmatrix}
+
K
\begin{pmatrix}
dZ\\ d\Xi\\ dA
\end{pmatrix}
+dPaid+dLegal+dStop .
\tag{OLS.7}
```

The desired theorem requires

```math
\rho(K)<1.
\tag{OLS.8}
```

The allowed sources do not give `(OLS.8)'. They allow the marginal cyclic
pattern

```math
K=
\begin{pmatrix}
0&1&0\\
0&0&1\\
1&0&0
\end{pmatrix},
\qquad
\rho(K)=1.
\tag{OLS.9}
```

With \(dZ=d\Xi=dA=m>0\), zero storage drop, and no paid residual, `(OLS.7)'
holds as equality. Each face has a payer in the next face, all signed exchange
currents can cancel, and every one-record native menu admission can still be
true. But no finite original-data reserve follows:

```math
(I-K)^{-1}
\quad\text{does not exist as a positive bounded absorption operator.}
\tag{OLS.10}
```

This is the coupled version of the half-tail. A scalar tail hides the missing
factor \(2^L\); the matrix loop hides the missing strict loss in a unit
feedback cycle.

## 4. What would be enough

The nonduplicate theorem exposed by this source test is:

```math
\texttt{RecordAdmittedActiveCriticalFullExchangeStorageMatrix.A}.
\tag{OLS.11}
```

For the same record-admitted parent packet, construct the three active faces
before readout and prove

```math
\begin{pmatrix}
dZ_P^{crit}\\
d\Xi_P^{FE,act}\\
dA_P^{AT}
\end{pmatrix}
\le
-d
\begin{pmatrix}
M_P^{crit}\\
M_P^{FE}\\
M_P^{AT}
\end{pmatrix}
+
K_P
\begin{pmatrix}
dZ_P^{crit}\\
d\Xi_P^{FE,act}\\
dA_P^{AT}
\end{pmatrix}
+
\mathbf dPaid_P+\mathbf dLegal_P+\mathbf dStop_P,
\qquad
\rho(K_P)<1.
\tag{OLS.12}
```

Equivalently, prove one of the three faces from original history independently
enough that the remaining feedback matrix has spectral radius below one.

Once `(OLS.12)' is proved with its residual charged in
\(B=dE^{Field}+dA_{4B}+dVisc\), the bill-coercive storage matrix criterion
absorbs the feedback by \((I-K_P)^{-1}\) and gives finite parent-owned positive
selection storage for admitted record-menu edges. With the exact-projector chart
license, this supplies `ParentOwnedPositiveRecordBillCurrency.A', hence the
normalized relay passage theorem by the existing c0 extraction note.

## 5. Consequence for the active goal

This note does not prove \(c_0>0\). It also does not refute
`NormalizedRelayBillCompactnessRecordPassage.A', because `(OLS.9)' is an
algebraic/source-level obstruction, not an actual retained Navier-Stokes
sequence.

It proves the source verdict needed for the current proof search:

```math
\text{allowed sources}
\nRightarrow
\texttt{StrictOriginalLedgerGeneratorStorage.A}.
\tag{OLS.13}
```

The active first failed gate remains Gate2 positive-record ownership. The
smallest nonduplicate producer now visible inside that gate is the
bill-coercive record-admitted active-critical/full-exchange storage matrix
`(OLS.12)', with the exact-projector chart row as the legal-reading companion.
