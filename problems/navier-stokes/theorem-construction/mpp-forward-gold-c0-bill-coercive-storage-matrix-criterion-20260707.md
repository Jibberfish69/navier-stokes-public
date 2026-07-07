---
theorem_id: forward-gold-c0-bill-coercive-storage-matrix-criterion-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / Gate2 / bill-coercive storage matrix
status: proved-conditional-linear-absorption-criterion-not-producer
target_object:
  - BillCoerciveRecordAdmittedStorageMatrixCriterion.A
  - RecordAdmittedActiveCriticalFullExchangeStorageMatrix.A
  - RecordAdmittedSubHeatLagEarlyBranchStorage.A
  - ParentWeightedSelectedFirstAdmissionPulseMeasure.A
  - ParentOwnedPositiveRecordBillCurrency.A
  - NormalizedRelayBillCompactnessRecordPassage.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-parent-owned-positive-record-bill-currency-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-original-ledger-generator-storage-source-verdict-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-exact-projector-chart-license-source-verdict-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-net-work-admission-proof-pass-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-tower-signed-total-exchange-retention-direct-attempt-20260622.md
  - problems/navier-stokes/spine.md
comparison_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-radiodrome-CANONICAL-definition-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-coupled-storage-matrix-early-branch-obstruction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-exchange-no-self-feeding-physical-lyapunov-pressure-test-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wlf60-parent-weighted-first-admission-proof-pressure-test-20260704.md
derived_reductions:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-bill-matrix-early-branch-contraction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-wlf60-carrier-mismatch-tail-ui-reduction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-record-admitted-zero-bill-unit-cycle-reduction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-surplus-zero-unit-cycle-kernel-test-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-high-frequency-transfer-surplus-cycle-equivalence-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-record-feeding-perron-circulation-normal-form-20260707.md
completion_truth: >-
  This note proves the linear algebra absorption criterion that was implicit in
  the current c_0 Gate2 stack. It does not produce the Navier-Stokes matrix from
  original smooth data. If, on each retained pre-readout parent packet, the
  admitted active critical/full-exchange/active-transit faces satisfy a
  componentwise storage inequality whose feedback matrix has spectral radius
  strictly below one and whose residual is charged in
  B=dE_Field+dA_4B+dVisc, then the parent-owned positive record bill currency
  theorem follows. Hence normalized relay bill compactness follows in the
  stronger coercive form B>=epsilon R and c_0=2epsilon. The remaining producer is
  exactly the bill-coercive record-admitted storage matrix, or an independent
  original-history proof of one face that makes the residual matrix subcritical.
  The early-branch contraction follow-up identifies that independent face in the
  checked TFE/c_0 decomposition: record-admitted sub-heat-lag first-admission
  storage, equivalently WLF.60 / ODP.91 on the order-locked full-packet selected
  carrier. The WLF.60 carrier-mismatch follow-up further reduces that face to
  mismatch evacuation plus same-carrier selected overrun tail UI, with terminal
  tail failure held as obstruction/readout unless separately admitted and
  consumed. The zero-bill unit-cycle follow-up identifies the qualitative
  compact form of the full matrix gap: after record admission and exact
  charting, exclude normalized nonnegative zero-surplus record-feeding Perron
  classes/circulations. The kernel test proves the absolute-zero version is
  already excluded by the zero-bill relay-record kernel; the open producer is
  the upgrade/rigidity that excludes the zero-surplus ratio-one Perron class.
  No c_0 closure is claimed.
---

# Bill-coercive storage matrix criterion

## 1. Physical object

The object is one retained same-fluid parent packet before the future-positive
record is read. The selected record may be counted later, but its parent faces
must already be present on that packet: active critical entry, active
full-exchange, and active transit.

Write the vector of admitted parent faces as

```math
X_P
:=
\begin{pmatrix}
dZ_P^{crit}\\
d\Xi_P^{FE,act}\\
dA_P^{AT}
\end{pmatrix}.
\tag{BCM.1}
```

The bill currency is

```math
dB_P
:=
dE_P^{Field}+dA_{4B,P}+dVisc_P .
\tag{BCM.2}
```

## 2. Criterion statement

`BillCoerciveRecordAdmittedStorageMatrixCriterion.A` is the following
conditional theorem.

Assume that on every retained relay window \(W\), after legal and stop exits
are removed, the record-admitted parent faces satisfy the componentwise measure
inequality

```math
X_P
\le
-dM_P
+K_P X_P
+C_B\,\mathbf 1\,dB_P
+\mathbf dLegal_P+\mathbf dStop_P ,
\tag{BCM.3}
```

where:

1. \(M_P=(M_P^{crit},M_P^{FE},M_P^{AT})\) is bounded below on retained packet
   charts;
2. \(K_P\ge0\) is a finite nonnegative feedback matrix attached to the same
   pre-readout parent packet;
3. there is a uniform margin

```math
\rho(K_P)\le 1-\eta
\qquad(\eta>0);
\tag{BCM.4}
```

4. the selected positive record is dominated by the admitted parent faces after
   the exact retained-edge chart/license has been applied:

```math
dR_P^+
\le
C_R\,\ell\!\cdot\!X_P
+dLegal_P+dStop_P ,
\qquad
\ell\ge0 .
\tag{BCM.5}
```

Then, on retained windows with legal/stop removed,

```math
R(W)
\le
C_{\eta,N}
\int_W
\left(dE^{Field}_{N,h}+dA_{4B,N}+dVisc_{N,h}\right).
\tag{BCM.6}
```

Thus `ParentOwnedPositiveRecordBillCurrency.A` holds on those windows.

## 3. Proof

Because \(K_P\ge0\) and \(\rho(K_P)<1\), choose a positive left vector
\(q_P>0\) and a constant \(\eta_P\ge\eta/2\) such that

```math
q_P K_P \le (1-\eta_P) q_P .
\tag{BCM.7}
```

Pair `(BCM.3)' with \(q_P\). Since all components of \(X_P\) are nonnegative,

```math
\eta_P\, q_P\!\cdot\!X_P
\le
-d(q_P\!\cdot\!M_P)
+C(q_P)\,dB_P
+q_P\!\cdot\!(\mathbf dLegal_P+\mathbf dStop_P).
\tag{BCM.8}
```

Integrating over \(W\) gives

```math
\int_W q_P\!\cdot\!X_P
\le
C_\eta
\left[
M_P(W_-)-M_P(W_+)
+\int_W dB_P
+Legal(W)+Stop(W)
\right].
\tag{BCM.9}
```

The retained chart lower bound on \(M_P\) and the legal/stop quotient leave

```math
\int_W q_P\!\cdot\!X_P
\le
C_{\eta,N}\int_W dB_P .
\tag{BCM.10}
```

Since \(\ell\ge0\) lives in the same finite parent-face chart, its norm is
controlled by \(q_P\) on retained charts:

```math
\ell\!\cdot\!X_P
\le
C_N q_P\!\cdot\!X_P .
\tag{BCM.11}
```

Combining `(BCM.5)' and `(BCM.10)' proves `(BCM.6)'.

## 4. Consequence for normalized passage

The parent-owned bill-currency reduction already proves that `(BCM.6)' implies
the stronger retained-window coercivity

```math
B(W)\ge\varepsilon_* R(W),
\qquad
\varepsilon_*=C_{\eta,N}^{-1}>0 .
\tag{BCM.12}
```

Therefore a retained normalized sequence with \(R(W_j)=1\) and \(B(W_j)\to0\)
cannot exist. The normalized relay bill compactness theorem follows without
needing a weak-limit passage for such a sequence:

```math
\texttt{ParentOwnedPositiveRecordBillCurrency.A}
\Longrightarrow
\texttt{NormalizedRelayBillCompactnessRecordPassage.A}.
\tag{BCM.13}
```

With the zero-bill relay-record kernel, the Gold margin is

```math
c_0=2\varepsilon_*>0 .
\tag{BCM.14}
```

## 5. What remains unproved

This note does not prove `(BCM.3)'--`(BCM.5)' from the Navier-Stokes equations.
It only proves that those clauses are sufficient and that the matrix statement
must be bill-coercive, not merely an internal storage loop.

The current producer is therefore:

```math
\texttt{BillCoerciveRecordAdmittedStorageMatrix.A}.
\tag{BCM.15}
```

It asks for the actual NS construction of `(BCM.3)' with residual charged in
\(dB=dE^{Field}+dA_{4B}+dVisc\), together with the retained exact-projector
chart/license that makes `(BCM.5)' a legal same-parent record reading.

The early-branch contraction follow-up sharpens the independent-face version of
this producer. The retained heat-lag part of full exchange already has genuine
Stokes smallness after zero modes and paid exits are removed. The unpaid row is
the early sub-heat-lag trace/source branch, where heat-lag contraction has not
yet acted. Thus, in the checked TFE/c0 decomposition,

```math
\texttt{RecordAdmittedSubHeatLagEarlyBranchStorage.A}
\Longrightarrow
\texttt{BillCoerciveRecordAdmittedStorageMatrix.A},
\tag{BCM.16}
```

with the WLF.60 / ODP.91 parent-weighted first-admission pulse measure as the
same row in heat-lag route-measure coordinates, provided the row is proved on
the order-locked full-packet selected carrier and the same-packet overlap and
selected-overrun tail are paid before readout.

The unit-spectral-radius source countermodel remains the warning. A matrix with
\(\rho(K_P)=1\) can circulate critical entry, full exchange, and active transit
around the parent packet forever with zero finite reserve drop. The new point
here is only that once the feedback is strictly subcritical in bill currency,
absorption is automatic.

The zero-surplus Perron-class follow-up gives the qualitative compact form of
the same producer. After record admission and exact charting, absence of
normalized nonnegative zero-surplus record-feeding Perron classes in the
retained parent-face bundle implies a uniform gap
\(\rho(K_P)\le1-\eta\). The high-frequency transfer equivalence identifies
that Perron class with the last retained in-class zero-loss theta branch.
