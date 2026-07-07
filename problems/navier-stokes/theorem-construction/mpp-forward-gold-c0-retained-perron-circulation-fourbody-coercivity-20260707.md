---
theorem_id: forward-gold-c0-retained-perron-circulation-fourbody-coercivity-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / Gate2 / retained Perron circulation / four-body activity
status: proved-conditional-retained-edge-perron-coercivity-not-channel-admission
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
  - RetainedPerronCirculationFourBodyActivityCoercivity.A
  - FullTowerPositiveChannelThreeMeasureAdmission.A
  - RecordFeedingSurplusPerronClassExclusion.A
  - FullTowerSignedTotalExchangeRetention.A
  - ParentOwnedPositiveRecordBillCurrency.A
  - NormalizedRelayBillCompactnessRecordPassage.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-record-feeding-perron-circulation-normal-form-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-tower-signed-total-exchange-retention-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyii-bodyiii-retained-participation-packet-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-four-body-same-carrier-orientation-defect-decomposition-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-epsilon-extraction-direct-proof-pass-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-bill-coercive-storage-matrix-criterion-20260707.md
completion_truth: >-
  Proved conditional theorem. A record-feeding Perron circulation cannot hide
  inside signed cancellation after its positive channels have already been
  retained as same-carrier three-measure packets. In a finite retained
  parent-face chart, the Perron obstruction carries a balanced nonzero edge
  flow f_{j->i}; record normalization gives a positive lower bound for its
  total edge variation. If every positive generated edge is retained with
  positive carrier, negative partner, and signed current on the same selected
  carrier, then four-body activity dominates that total variation. Hence an
  edge-retained record-feeding Perron class posts positive dA_4B and cannot be
  a B->0 or zero-four-body profile. This removes branching Perron cancellation
  as an independent obstruction. The remaining unproved line is exactly
  FullTowerPositiveChannelThreeMeasureAdmission.A: every positive generated
  tower-record channel from FTR.10 must be retained as that three-measure
  packet, or charged to bill, legal, stop, Pack, Part, or Field. No c_0 closure
  is claimed.
---

# Retained Perron circulation forces four-body activity

## 1. Same physical object

The object is one retained Navier-Stokes parent packet before future-positive
record readout. The finite Perron chart records the same parent-face activity
vector

```math
X_P=
\begin{pmatrix}
dZ_P^{crit}\\
d\Xi_P^{FE,act}\\
dA_P^{AT}
\end{pmatrix},
\qquad
dB_P=dE_P^{Field}+dA_{4B,P}+dVisc_P .
\tag{RPF.1}
```

The previous normal form says the marginal obstruction is not necessarily one
simple loop. It is a record-feeding strongly connected parent-face class \(C\)
with \(\rho(K_C)=1\), carrying a balanced Perron edge circulation.

This note tests the next physical question: once each positive edge of that
circulation is actually retained as a same-packet four-body channel, can signed
cancellation still hide the record? The answer is no.

## 2. Retained-edge hypothesis

For each positive edge \(e=(j\to i)\) of the Perron circulation, assume the
positive tower-record channel has been retained as the three-measure packet
required by the retained-packet interface:

```math
\mathcal Q^{ret}_e
=
(\mu^A_e,\mu^N_e,\mu^J_e),
\qquad
d\mu^J_e=d\mu^A_e-d\mu^N_e .
\tag{RPF.2}
```

Here \(\mu^A_e\) is the selected positive carrier, \(\mu^N_e\) is the negative
local partner, and \(\mu^J_e\) is the signed current on the same selected
carrier. If this packet is not retained or not canonically identified, the
existing interface notes already charge the failure to selector, compactness,
legal, or carrier defects. This theorem concerns the retained branch.

Four-body activity contains the retained positive total-variation payment of
these packets. On a fixed finite retained chart there is therefore a chart
constant \(c_A>0\) such that

```math
dA_{4B,P}
\ge
c_A\sum_{e\in E_C}\|\mu^A_e\|
\tag{RPF.3}
```

after legal/stop defects have been quotiented or charged. This is exactly the
interface criterion used in `(FTR.14)' and the retained-packet theorem.

## 3. Perron circulation has positive total edge variation

In the ratio-one compact case, choose right and left Perron vectors on \(C\):

```math
K_Cx_C=x_C,
\qquad
q_CK_C=q_C,
\qquad
x_C,q_C>0 .
\tag{RPF.4}
```

The Perron edge measure is

```math
f_{j\to i}=q_iK_{ij}x_j .
\tag{RPF.5}
```

It is balanced at every node:

```math
\sum_j f_{j\to i}=q_ix_i,
\qquad
\sum_i f_{j\to i}=q_jx_j .
\tag{RPF.6}
```

Since \(C\) feeds the selected record and the record has been normalized,
\(\ell\cdot x=1\), finite-chart equivalence gives a constant \(c_R>0\) with

```math
\sum_{e\in E_C}f_e
\ge
c_R .
\tag{RPF.7}
```

For a single fixed chart this is just positivity of a finite Perron vector
after record normalization. On a compact retained bundle it is uniform unless a
record-feeding path, chart coefficient, label, or selected carrier degenerates;
those degenerations are exactly legal/stop, selector, Pack, Part, or Field
route-outs, not retained in-class zero-bill profiles.

The edge-retained hypothesis identifies the positive carrier mass with the
Perron edge activity up to finite chart constants:

```math
\sum_{e\in E_C}\|\mu^A_e\|
\ge
c_P\sum_{e\in E_C}f_e .
\tag{RPF.8}
```

Combining `(RPF.3)', `(RPF.7)', and `(RPF.8)' gives

```math
dA_{4B,P}
\ge
c_Ac_Pc_R
>0
\tag{RPF.9}
```

on the normalized retained Perron class.

## 4. Consequence

Thus:

```math
\texttt{RetainedPerronCirculationFourBodyActivityCoercivity.A}.
\tag{RPF.10}
```

Statement. A record-feeding ratio-one Perron circulation whose positive edge
channels are retained as same-carrier positive/negative/current packets posts
strictly positive four-body activity on the normalized finite chart.

Equivalently, a normalized sequence with

```math
dA_{4B,P}\to0
\tag{RPF.11}
```

cannot contain a retained edge-admitted record-feeding Perron class. Branching
does not create a new hiding place: once the positive channels are retained,
the Perron flow is total variation, and total variation is precisely what the
four-body activity sees.

## 5. What remains

This proof does not install channel admission. The exact remaining theorem is

```math
\texttt{FullTowerPositiveChannelThreeMeasureAdmission.A}.
\tag{RPF.12}
```

Statement. Every positive generated tower-record channel from `(FTR.10)' is
retained before compactness as a same-carrier three-measure packet
\((\mu^A,\mu^N,\mu^J)\), or else is charged to \(dB\), legal, stop, Pack, Part,
or Field.

With `(RPF.12)', the implication chain is immediate:

```math
\texttt{FullTowerPositiveChannelThreeMeasureAdmission.A}
+
\texttt{RetainedPerronCirculationFourBodyActivityCoercivity.A}
\Longrightarrow
\texttt{RecordFeedingSurplusPerronClassExclusion.A}
\Longrightarrow
\texttt{ParentOwnedPositiveRecordBillCurrency.A}
\Longrightarrow
\texttt{NormalizedRelayBillCompactnessRecordPassage.A}.
\tag{RPF.13}
```

So the first failed Gate 2 line is no longer "maybe a branching Perron cycle
hides from four-body activity." It is the pre-readout admission line: whether
the positive generated channel is owned by the same material packet as a
positive carrier, negative partner, and signed current before compactness is
asked to pass it.
