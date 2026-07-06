---
theorem_id: forward-gold-c0-gate2-positive-record-retention-source-strict-20260706
status: gate2-fails-signed-exchange-does-not-retain-positive-record
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 epsilon extraction / Gate 2 positive record retention
target_object:
  - NormalizedRelayBillCompactnessRecordPassage.A
  - FullTowerSignedTotalExchangeRetention.A
  - StrictSamePacketCycleExchangeCoercivity.A
  - SimultaneousMaterialFourBodyPacketCoercivity.A
allowed_source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-epsilon-extraction-direct-proof-pass-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-relay-record-reversibility-kernel-and-epsilon-extraction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-tower-signed-total-exchange-retention-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-net-work-admission-proof-pass-20260703.md
  - problems/navier-stokes/spine.md
depends_on_first_failed_gate:
  - supplied-by: problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate1-retained-field-envelope-source-closure-proof-20260706.md
completion_truth: >-
  Gate 2 source-strict verdict for the c_0 normalized passage objective. This
  note does not install or refute NormalizedRelayBillCompactnessRecordPassage.A;
  Gate 1 is now supplied by the retained pressure-source envelope chain. It
  proves that the allowed four-body source only supplies signed adjacent
  exchange identities and retained compactness for a positive/negative/current
  three-measure packet after that packet has already been produced. It does not
  prove that every generated positive tower-record channel is retained as that
  same-packet packet, strict loss, Q-activity, or residual. A zero-net exchange
  cycle can carry nonzero total positive record. Therefore dA_4B -> 0 does not
  by itself retain dR_N^+. Gate 2 is now the first failed gate and reduces to
  StrictSamePacketCycleExchangeCoercivity.A, equivalently the relevant face of
  SimultaneousMaterialFourBodyPacketCoercivity.A: every complete same-packet
  exchange cycle with nonzero positive tower-record variation posts strict
  four-body loss, Q-coordinate activity, or already-enveloped residual.
---

# Gate 2 positive-record retention source-strict verdict

## 1. Physical object

The same transported material tower gives four simultaneous readings of one
packet:

```math
(S_N,Q_N,C_N,G_N).
\tag{G2.1}
```

The four-body identities control signed adjacent exchanges between these
readings. The normalized relay theorem needs something stronger: the positive
one-way material record must be retained by the same packet when the four-body
bill tends to zero.

Physically, signed exchange says the packet can hand strain/service around its
own four readings without net imbalance. Positive record asks whether that
hand-off created a one-way ratchet event. A reversible circulation can have zero
net signed sum and nonzero total positive travel.

## 2. Source fact

The full-tower direct attempt gives signed adjacent exchange currents

```math
dJ_{SQ},\quad dJ_{QC},\quad dJ_{CG},\quad dJ_{GS}.
\tag{G2.2}
```

Summing the four material inequalities cancels these currents. That proves

```math
\text{net signed four-body exchange cancels.}
\tag{G2.3}
```

The material record is different. It is measured by

```math
dR_N^+
:=
d[\log(1+\mathfrak P_N^{mat})]_+,
\tag{G2.4}
```

and direct differentiation only gives generated positive channel measures:

```math
dR_N^+
\le
C\sum_\kappa d\mathcal A_N^\kappa.
\tag{G2.5}
```

The source explicitly says those channels are total positive variation, not
signed net exchange.

## 3. Cycle obstruction

Let one same-packet adjacent current move amount \(M>0\) from one coordinate to
another and then return it through the next adjacent leg. The signed sum sees

```math
M-M=0.
\tag{G2.6}
```

The positive record sees

```math
[M]_+ + [-(-M)]_+ = 2M.
\tag{G2.7}
```

So signed cancellation does not price total positive tower-record variation.
This is not a bookkeeping quirk. It is the ratchet distinction: a reversible
exchange loop can have zero net signed displacement while the one-way positive
counter records travel.

## 4. What compactness already supplies

The retained-packet interface proves a consumer statement: once the proof has a
retained positive carrier, retained negative partner, and retained signed
current,

```math
(\mu^A,\mu^N,\mu^J),
\tag{G2.8}
```

with

```math
d\mu^J=d\mu^A-d\mu^N,
\tag{G2.9}
```

then compactness does not lose that three-measure packet under the installed
same-carrier hypotheses.

That does not prove every generated positive channel in `(G2.5)' has already
entered such a retained packet. The missing step is admission before compactness:
which positive carrier, which negative partner, and which signed current own the
same record channel?

The signed-height record-net note records the same obstruction in another
coordinate: positive scalar record work is installed, but source address and
native same-parent storage are not automatic. A positive record contribution
can be legal scalar work while still not admitted to the stored same-parent
source coordinate before readout.

## 5. Gate 2 theorem

The missing theorem is:

```math
\texttt{StrictSamePacketCycleExchangeCoercivity.A}.
\tag{G2.10}
```

Every complete same-packet exchange cycle with nonzero total positive
tower-record variation must post at least one of:

```math
\begin{array}{ll}
\text{strict loss:} & dD_S+dD_C+dD_G>0,\\[1mm]
\text{Q activity:} & dA_{Q,N}>0,\\[1mm]
\text{legal residual:} & dR_{4B,N}>0.
\end{array}
\tag{G2.11}
```

Equivalently, the generated positive channel measures satisfy

```math
d\mathcal A_N^\kappa
\le
C\,dA_{Q,N}
+C(dD_S+dD_C+dD_G)
+dR_{4B,N}.
\tag{G2.12}
```

This is the coercive face of

```math
\texttt{SimultaneousMaterialFourBodyPacketCoercivity.A}.
\tag{G2.13}
```

The simultaneous packet functional would have to see four-body activity,
positive material-record growth, and strict nonnegative loss at once.

## 6. Consequence for the active c_0 objective

Gate 1 has been supplied. This note records the first current failure of
`NormalizedRelayBillCompactnessRecordPassage.A`:

```math
dA_{4B,N}(W_j)\to0
\quad\not\Rightarrow_{\text{current sources}}\quad
dR_N^+\ \text{is retained or priced}.
\tag{G2.14}
```

The smallest Gate 2 theorem is `(G2.10)' or its simultaneous-packet version
`(G2.13)'. Until it is proved, the normalized sequence can lose the positive
record through a same-material signed/total mismatch even if localized Field
compactness is supplied.
