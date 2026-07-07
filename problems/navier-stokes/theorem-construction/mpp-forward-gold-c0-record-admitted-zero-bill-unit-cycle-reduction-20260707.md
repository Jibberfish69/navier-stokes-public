---
theorem_id: forward-gold-c0-record-admitted-zero-bill-unit-cycle-reduction-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / Gate2 / bill-coercive matrix / zero-bill unit cycle
status: proved-compact-equivalence-reduces-matrix-producer-to-qualitative-unit-cycle-exclusion
target_object:
  - BillCoerciveRecordAdmittedStorageMatrix.A
  - RecordAdmittedZeroBillUnitCycleExclusion.A
  - ParentOwnedPositiveRecordBillCurrency.A
  - NormalizedRelayBillCompactnessRecordPassage.A
allowed_source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-epsilon-extraction-direct-proof-pass-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-relay-record-reversibility-kernel-and-epsilon-extraction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-shared-participation-and-tower-coherence-law.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-tower-signed-total-exchange-retention-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-chapter2-refereegrade-closedness-limit-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-net-work-admission-proof-pass-20260703.md
  - problems/navier-stokes/spine.md
derived_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-bill-coercive-storage-matrix-criterion-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-original-ledger-generator-storage-source-verdict-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-compact-zero-loss-coercivity-extraction-20260707.md
completion_truth: >-
  Direct pressure test of the remaining bill-coercive matrix producer. This note
  proves a compact finite-chart equivalence: after record admission and exact
  retained-edge charting, a uniform subunit feedback gap rho(K_P)<=1-eta is
  equivalent to excluding normalized nonnegative record-admitted zero-bill unit
  cycles in the closed parent-face bundle. If
  RecordAdmittedZeroBillUnitCycleExclusion.A were proved for the actual
  Navier-Stokes parent packet, compactness would give eta>0, the bill-coercive
  matrix criterion would give ParentOwnedPositiveRecordBillCurrency.A, and the
  normalized relay passage theorem would follow. Current allowed sources do not
  prove that unit-cycle exclusion: signed exchange cancellation, finite native
  menu admission, finite-readout closedness, and one-field coherence remain
  compatible with a ratio-one active-critical/full-exchange/active-transit
  circulation. This is not an actual retained Navier-Stokes counterexample and
  not c_0 closure.
---

# Record-admitted zero-bill unit cycle reduction

## 1. Same physical object

The object is still one retained same-fluid parent packet before positive
record readout. The three parent faces are

```math
X_P
=
\begin{pmatrix}
dZ_P^{crit}\\
d\Xi_P^{FE,act}\\
dA_P^{AT}
\end{pmatrix},
\qquad
dB_P=dE_P^{Field}+dA_{4B,P}+dVisc_P .
\tag{ZBU.1}
```

The previous bill-coercive matrix criterion proves that the quantitative
estimate follows once the same parent packet supplies

```math
X_P\le -dM_P+K_PX_P+C\,\mathbf 1\,dB_P+dLegal_P+dStop_P,
\qquad
\rho(K_P)\le1-\eta .
\tag{ZBU.2}
```

This note tests the remaining producer: where does the strict \(\eta\) come
from physically?

## 2. The unit-cycle object

After the exact retained-edge chart/license and legal/stop quotienting, freeze a
finite parent-face chart. A normalized zero-bill unit cycle is a tuple

```math
(P,K_P,x_P,\ell_P)
\tag{ZBU.3}
```

with

```math
x_P\ge0,\qquad
\ell_P\!\cdot x_P=1,\qquad
dB_P=0,\qquad
x_P\le K_Px_P .
\tag{ZBU.4}
```

Here \(x_P\) is the normalized parent-face activity of the record-admitted edge,
and \(\ell_P\!\cdot x_P=1\) says the selected positive record has unit
pre-readout face mass.

Call the qualitative exclusion theorem

```math
\texttt{RecordAdmittedZeroBillUnitCycleExclusion.A}.
\tag{ZBU.5}
```

Statement. No retained same-fluid Navier-Stokes parent packet, after
record-admission, exact charting, and legal/stop quotienting, carries a tuple
`(ZBU.3)'--`(ZBU.4)'.

Physically, this says the same parent packet cannot circulate critical entry,
full exchange, and active transit around a ratio-one loop while the Field,
four-body, and viscous bills all post zero surplus.

## 3. Linear algebra equivalence

For a fixed finite chart with \(K_P\ge0\), the following are equivalent:

```math
\rho(K_P)<1
\quad\Longleftrightarrow\quad
\text{there is no }x\ge0,\ x\ne0,\ x\le K_Px .
\tag{ZBU.6}
```

Proof. If \(\rho(K_P)<1\) and \(x\le K_Px\), then by iteration

```math
x\le K_P^nx\to0,
\tag{ZBU.7}
```

so \(x=0\).

Conversely, if \(\rho(K_P)\ge1\), Perron-Frobenius gives a nonnegative
eigenvector \(x\ne0\) with

```math
K_Px=\rho(K_P)x\ge x .
\tag{ZBU.8}
```

After normalizing by any record row \(\ell_P\) with
\(\ell_P\!\cdot x>0\), this is exactly `(ZBU.4)'. If
\(\ell_P\!\cdot x=0\), that Perron direction is record-invisible and is not the
selected positive channel; it can be quotiented away from the record-admitted
bundle.

Thus on the record-admitted bundle, the strict matrix gap is the absence of
unit zero-bill Perron cycles.

## 4. Compactness gives the uniform gap

Assume the retained parent-face bundle is compact after finite readout, exact
chart/license, legal/stop quotienting, and record normalization
\(\ell_P\!\cdot x_P=1\). This is exactly the kind of finite-readout closedness
the allowed chapter-2 and signed-height surfaces supply after the edge has been
admitted; it is not a producer for admission.

If no uniform \(\eta\) exists, there are retained record-admitted charts with

```math
\rho(K_{P_j})\uparrow1 .
\tag{ZBU.9}
```

Choose Perron vectors \(x_j\ge0\) normalized by
\(\ell_{P_j}\!\cdot x_j=1\) on the selected record face. Compactness gives a
subsequence

```math
(P_j,K_{P_j},x_j,\ell_{P_j})\to(P_*,K_{P_*},x_*,\ell_{P_*}) .
\tag{ZBU.10}
```

Continuity of the finite chart operations gives

```math
x_*\ge0,\qquad
\ell_{P_*}\!\cdot x_*=1,\qquad
x_*\le K_{P_*}x_*,
\qquad
\rho(K_{P_*})=1 .
\tag{ZBU.11}
```

If the bill residuals have been charged in \(dB_P\) and the sequence is a
candidate for the normalized \(B\to0\) wall, the lower semicontinuity of the
declared payer measures gives \(dB_{P_*}=0\). Thus failure of the uniform matrix
gap produces a retained record-admitted zero-bill unit cycle.

Therefore:

```math
\texttt{RecordAdmittedZeroBillUnitCycleExclusion.A}
\Longrightarrow
\exists\eta>0:\ \rho(K_P)\le1-\eta
\tag{ZBU.12}
```

on the retained record-admitted finite parent-face bundle.

Combining `(ZBU.12)' with the bill-coercive storage matrix criterion gives

```math
\texttt{RecordAdmittedZeroBillUnitCycleExclusion.A}
\Longrightarrow
\texttt{ParentOwnedPositiveRecordBillCurrency.A}
\Longrightarrow
\texttt{NormalizedRelayBillCompactnessRecordPassage.A}.
\tag{ZBU.13}
```

With the zero-bill relay-record kernel, this would give \(c_0=2\varepsilon_*>0\).

## 5. Why the allowed sources do not prove the exclusion

The allowed sources identify the unit-cycle object but do not rule it out.

The full-tower source supplies signed adjacent exchange currents. Signed
cancellation allows a ratio-one circulation unless positive total variation is
retained as a same-packet positive carrier, negative partner, and signed current.

The signed-height source supplies finite native menu admission and the frozen
detector-angle equivalence after an edge is fixed. It does not prove that every
future-positive edge is pressure-active, or that detector-silent positive work is
already paid before readout.

The participation/tower law supplies one same pressure-viscosity-incompressibility
carrier. It keeps the cycle inside one fluid-field object, but it does not create
strict loss. A common-mode ratio-one loop can remain coherent across neighboring
towers while the strict bill surplus is zero.

The finite-readout closedness source passes admitted finite inequalities. It
does not manufacture the missing strict inequality; it only says that, once a
unit-cycle family is admitted, its limit remains a legal finite-readout unit
cycle.

Thus the present sources remain compatible with the physical picture

```math
\text{critical entry}\to\text{full exchange}\to\text{active transit}
\to\text{critical entry}
\tag{ZBU.14}
```

at ratio one, with pressure redistributing, viscosity matching production at
critical scale, Field motion common-mode, and four-body exchange reversible in
the signed ledger.

## 6. Consequence for the active goal

This is a strict reduction, not a proof or refutation of
`NormalizedRelayBillCompactnessRecordPassage.A`.

The first failed gate remains Gate2 positive-record ownership. The smallest
qualitative theorem now equivalent to the bill-coercive matrix producer is:

```math
\texttt{RecordAdmittedZeroBillUnitCycleExclusion.A}.
\tag{ZBU.15}
```

It is the route-a finite-parent-face form of the route-b zero-loss rigidity
theorem: exclude a record-admitted ratio-one same-parent cycle, and compactness
turns that qualitative exclusion into the positive \(c_0\) modulus.
