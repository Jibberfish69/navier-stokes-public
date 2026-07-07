---
theorem_id: forward-gold-c0-record-feeding-perron-circulation-normal-form-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / Gate2 / finite parent-face Perron obstruction
status: proved-finite-perron-circulation-normal-form-not-ns-producer
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
  - RecordFeedingSurplusPerronClassExclusion.A
  - HighFrequencyPressureStressSurplusCycleRigidity.A
  - RecordAdmittedSurplusZeroUnitCycleRigidity.A
  - RecordAdmittedActiveCriticalFullExchangeStorageMatrix.A
  - ParentOwnedPositiveRecordBillCurrency.A
  - NormalizedRelayBillCompactnessRecordPassage.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-radiodrome-CANONICAL-definition-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-high-frequency-transfer-surplus-cycle-equivalence-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-record-admitted-zero-bill-unit-cycle-reduction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-bill-coercive-storage-matrix-criterion-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-original-ledger-generator-storage-source-verdict-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-surplus-zero-unit-cycle-kernel-test-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-retained-perron-circulation-fourbody-coercivity-20260707.md
completion_truth: >-
  Finite linear-algebra normal form for the remaining admitted parent-face
  obstruction. The prior "zero-surplus unit cycle" language is correct only in
  the Perron-circulation sense; it is too narrow if read as one simple directed
  loop. For a finite nonnegative parent-face feedback matrix K and selected
  record row ell, existence of a normalized nonnegative obstruction
  x>=0, ell.x=1, x<=Kx is equivalent to existence of a strongly connected
  parent-face class C with spectral radius rho(K_C)>=1 that can feed a
  record-visible face. In the ratio-one compact limit this class carries a
  balanced Perron edge circulation f_{j->i}=q_i K_{ij}x_j, with positive record
  downstream. Thus the remaining theorem is sharpened to
  RecordFeedingSurplusPerronClassExclusion.A: exclude every record-feeding
  surplus-zero Perron class in the retained Navier-Stokes parent-face chart, or
  route it to bill, legal, stop, Pack, Part, or Field. This is the finite
  retained-chart carrier of the canonical radiodrome surplus-zero recurrence:
  radiodrome names the marginal defect coordinate, and the Perron class is the
  ratio-one feedback normal form. The retained-edge follow-up proves that once
  the positive Perron edges are admitted as same-carrier three-measure packets,
  four-body activity sees the circulation. The surviving producer is therefore
  positive-channel three-measure admission before compactness, not branching
  Perron cancellation. This proof is finite algebra only. It does not produce
  that Navier-Stokes admission theorem and does not close c_0.
---

# Record-feeding Perron circulation normal form

## 1. Same object

The physical object is still one retained Navier-Stokes parent packet before
future-positive record readout. The finite chart records the same parent faces:

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
\tag{RPC.1}
```

The current obstruction was written as a record-admitted zero-surplus unit
cycle:

```math
x\ge0,\qquad
\ell\!\cdot x=1,\qquad
x\le Kx,\qquad
dB=0\ \text{in surplus currency}.
\tag{RPC.2}
```

Here \(K\ge0\) is the retained finite parent-face feedback matrix and
\(\ell\ge0\) is the selected record row. The word "cycle" must be read in the
Perron sense. A simple-loop reading is too narrow.

## 2. Finite normal form

Let the directed graph of \(K\) have an edge \(j\to i\) when \(K_{ij}>0\).
A strongly connected component \(C\) is **record-feeding** when some node in
\(C\) reaches a node \(r\) with \(\ell_r>0\).

For a fixed finite retained chart, the following are equivalent:

```math
\exists x\ge0:\ \ell\!\cdot x>0,\ x\le Kx
\tag{RPC.3}
```

and

```math
\exists\text{ record-feeding strongly connected component }C
\text{ with }\rho(K_C)\ge1 .
\tag{RPC.4}
```

### Proof of `(RPC.3)' implies `(RPC.4)'

Choose \(r\) with \(\ell_r x_r>0\). Since \(x\le Kx\), iteration gives

```math
x_r\le (K^n x)_r
\qquad \text{for every }n\ge1 .
\tag{RPC.5}
```

If every strongly connected component that can reach \(r\) had spectral radius
strictly below one, then the finite Frobenius normal form would give
\((K^n x)_r\to0\). This contradicts \(x_r>0\). Hence at least one component
which can reach \(r\) has \(\rho(K_C)\ge1\). That component is record-feeding.

### Proof of `(RPC.4)' implies `(RPC.3)'

Let \(C\) be record-feeding with \(\rho(K_C)\ge1\). Perron-Frobenius gives
\(y_C\ge0\), \(y_C\ne0\), with

```math
K_Cy_C=\rho(K_C)y_C\ge y_C .
\tag{RPC.6}
```

Extend \(y_C\) by zero outside \(C\). Along a directed path from \(C\) to a
record-visible node \(r\), assign small positive downstream masses in increasing
path order so that the incoming contribution from the previous node dominates
each assigned value. Assign zero off this downstream path and \(C\). The
resulting vector \(x\ge0\) satisfies \(x\le Kx\) on its support and has
\(\ell\!\cdot x>0\). Normalize it so \(\ell\!\cdot x=1\).

This proves the equivalence.

## 3. Ratio-one compact limit as balanced circulation

In the compact marginal case \(\rho(K_C)=1\), choose right and left Perron
vectors \(x_C,q_C>0\) on the critical component:

```math
K_Cx_C=x_C,
\qquad
q_CK_C=q_C .
\tag{RPC.7}
```

Define the edge measure on \(j\to i\) inside \(C\) by

```math
f_{j\to i}
:=
q_i K_{ij}x_j .
\tag{RPC.8}
```

Then the node mass \(m_i=q_ix_i\) is conserved:

```math
\sum_j f_{j\to i}=m_i,
\qquad
\sum_i f_{j\to i}=m_j .
\tag{RPC.9}
```

Thus the marginal obstruction is a balanced same-parent Perron circulation,
possibly with branching, plus a downstream record read. It can be decomposed
into directed cycles as a finite flow, but excluding individual simple loops is
not the right theorem: branching can sustain \(\rho(K_C)=1\) even when no single
edge loop carries unit gain by itself.

A two-face warning is

```math
K=
\begin{pmatrix}
1/2&1/2\\
1/2&1/2
\end{pmatrix},
\qquad
\rho(K)=1.
\tag{RPC.10}
```

Each one-step self-loop has weight \(1/2\), but the recurrent class has unit
Perron radius because two half-payments add. The Navier-Stokes theorem must
exclude the record-feeding recurrent class, not merely a visible simple loop.

## 4. Radiodrome interface

The canonical radiodrome note gives the continuum name for this same marginal
object. Its tower-relay defect detects positive record service that is not
retained as same-packet four-body payment, strict loss, Q-activity, or legal
residual. In a finite parent-face chart, a certified surplus-zero radiodrome
bad sequence has exactly the algebraic form above: a record-feeding recurrent
class with no strict spectral loss.

Thus the surplus-zero/absolute-zero warning becomes:

```math
\text{surplus-zero radiodrome recurrence}
\quad\leadsto\quad
\rho(K_C)=1\ \text{record-feeding Perron class},
\tag{RPC.10a}
```

while a true \(c_0\) margin is the uniform strict gap
\(\rho(K_C)\le1-\eta\). Radiodrome supplies the coordinate of the marginal
defect; the Perron normal form says what its finite retained feedback carrier
must look like.

## 5. Sharpened remaining theorem

The remaining admitted finite theorem is therefore:

```math
\boxed{
\texttt{RecordFeedingSurplusPerronClassExclusion.A}
}
\tag{RPC.11}
```

Statement. No retained same-fluid Navier-Stokes parent packet, after
theta-payer admission, retained finite parent-face charting, exact
projector/chart license, and legal/stop quotienting, contains a record-feeding
strongly connected active parent-face class \(C\) with

```math
\rho(K_C)\ge1,
\qquad
dB=0\ \text{in surplus currency},
\tag{RPC.12}
```

unless that class posts positive \(B\)-bill, legal/stop residual, or Pack,
Part, or Field route-out.

Equivalently, every record-feeding retained parent-face class must have a
strict spectral margin

```math
\rho(K_C)\le1-\eta
\tag{RPC.13}
```

uniformly on the compact retained record-admitted bundle.

## 6. Consequence

This is exactly the finite algebra behind
`HighFrequencyPressureStressSurplusCycleRigidity.A`, with the cycle word
resolved:

```math
\texttt{FullTowerPositiveChannelThreeMeasureAdmission.A}
+
\texttt{RetainedPerronCirculationFourBodyActivityCoercivity.A}
\Longrightarrow
\texttt{RecordFeedingSurplusPerronClassExclusion.A}
\Longrightarrow
\texttt{HighFrequencyPressureStressSurplusCycleRigidity.A}
\Longrightarrow
\texttt{ParentOwnedPositiveRecordBillCurrency.A}
\Longrightarrow
\texttt{NormalizedRelayBillCompactnessRecordPassage.A}
\Longrightarrow
c_0>0 .
\tag{RPC.14}
```

This note proves the normal form and the implication structure. It does not
prove the Navier-Stokes exclusion of record-feeding surplus-zero Perron classes.
