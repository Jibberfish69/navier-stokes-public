---
theorem_id: forward-gold-c0-normalized-passage-gate2-source-strict-verdict-20260706
status: failed-gate2-full-tower-positive-record-retention-open
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 epsilon extraction / NormalizedRelayBillCompactnessRecordPassage.A
target_object:
  - NormalizedRelayBillCompactnessRecordPassage.A
  - Gate2.FullTowerPositiveRecordRetention
  - FullTowerSignedTotalExchangeRetention.A
  - StrictSamePacketCycleExchangeCoercivity.A
allowed_source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-epsilon-extraction-direct-proof-pass-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-relay-record-reversibility-kernel-and-epsilon-extraction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-tower-signed-total-exchange-retention-direct-attempt-20260622.md
completion_truth: >-
  Source-strict Gate 2 verdict for the edited objective. This does not install
  or refute NormalizedRelayBillCompactnessRecordPassage.A. The allowed
  full-tower source proves signed adjacent exchange identities, but it states
  that the record uses total positive variation. Signed net cancellation does
  not control that positive record. The source reduces the needed retention to
  FTR.13/FTR.14: every complete same-packet exchange cycle with nonzero positive
  tower-record variation must have strict four-body loss, Q-coordinate activity,
  or already-enveloped residual. Current allowed sources do not install this
  coercivity. Therefore dA_4B -> 0 does not yet force the positive record
  channel used by dR_N^+ to vanish or remain in the compact retained packet.
  The exact Gate 2 escape mechanism is same-material Part-side record loss:
  the positive carrier, negative partner, and signed current are not retained as
  a three-measure packet before compactness is invoked.
---

# Source-strict Gate 2 verdict for normalized relay passage

## 1. Target

Gate 2 asks whether the four-body part of the bill

```math
B=dE_{N,h}^{Field}+dA_{4B,N}+dVisc_{N,h}
\tag{G2S.1}
```

retains or annihilates the positive relay-record channel used by
\(dR_N^+\). In the normalized passage theorem, this is the implication

```math
dA_{4B,N}(W_j)\to0
\quad\Longrightarrow\quad
\text{positive tower-record variation vanishes or stays retained.}
\tag{G2S.2}
```

## 2. Checked source fact

The full-tower source supplies four signed adjacent exchange identities for one
transported material packet:

```math
dL_S+dD_S+dJ_{SQ}\le dJ_{GS}+dR_S,
\tag{G2S.3}
```

```math
dL_Q+dD_Q+c\,dA_{Q,N}+dJ_{QC}\le dJ_{SQ}+dR_Q,
\tag{G2S.4}
```

```math
dL_C+dD_C+dJ_{CG}\le dJ_{QC}+dR_C,
\tag{G2S.5}
```

```math
dL_G+dD_G+dJ_{GS}\le dJ_{CG}+dR_G.
\tag{G2S.6}
```

Summing cancels the signed adjacent currents. The same source then states that
the material record is not signed net exchange. It is total positive variation:

```math
d[\log(1+\mathfrak P_N^{mat})]_+
\le
C\sum_{\kappa}d\mathcal A_N^\kappa.
\tag{G2S.7}
```

The generated positive channel measures in `(G2S.7)' record positive metric,
coefficient, pressure-service, viscous/collar, compactness/no-loss, geometry,
and tower-commutator growth. This is the one-way record object; it is not
cancelled by signed exchange identities alone.

## 3. Direct attempt

The tempting inference is:

```math
\text{signed exchange currents cancel}
\quad+\quad
dA_{4B,N}\to0
\quad\Longrightarrow\quad
dR_N^+\to0.
\tag{G2S.8}
```

The full-tower source blocks that inference with the two-leg algebraic
obstruction. If one same-packet exchange sends \(M>0\) one way and returns it
through the neighboring coordinate, the signed sum sees

```math
M-M=0,
\tag{G2S.9}
```

while the total positive record sees

```math
[M]_+ + [-(-M)]_+ = 2M.
\tag{G2S.10}
```

So signed cancellation can be perfect while the one-way positive record remains
nonzero.

## 4. Smaller theorem required by Gate 2

The source names the exact coercive replacement:

```math
\texttt{StrictSamePacketCycleExchangeCoercivity.A}.
\tag{G2S.11}
```

In source notation, every complete same-packet exchange cycle with nonzero
positive tower-record variation must satisfy

```math
d\mathcal A_N^\kappa
\le
C\,dA_{Q,N}
+C(dD_S+dD_C+dD_G)
+dR_{4B,N}.
\tag{G2S.12}
```

Equivalently, every positive generated tower-record channel from `(G2S.7)' is,
before compactness is used, one of:

```math
\begin{array}{ll}
\text{retained three-measure packet:}
& \text{positive carrier, negative partner, signed current},\\[1mm]
\text{strictly paid:}
& \text{four-body loss, Q-coordinate activity, or defect dissipation},\\[1mm]
\text{enveloped residual:}
& \text{legal or already-paid residual.}
\end{array}
\tag{G2S.13}
```

The source explicitly says current inputs do not prove this producer statement.
They only preserve compactness after the positive carrier, negative partner,
and signed current have already been produced on the same selected carrier.

## 5. Physical meaning

Physically, the same velocity field can move service around the participation
tower in a reversible signed loop. A signed loop gives back what it took, so
the four signed readings cancel. The record reads only the positive legs. A
one-way record needs a pawl: strict loss, selected Q-activity, or an already
retained positive/negative/current packet. Without that pawl, the positive leg
can be counted by \(dR_N^+\) while \(dA_{4B,N}\) sees no retained strict payment.

The allowed source identifies the failure as

```math
Pack_Q+\neg Part_{N,Q},
\tag{G2S.14}
```

same-material participation-record loss, not a new endpoint pulse at the
center.

## 6. Consequence for the active c_0 objective

Gate 2 is not installed. This does not by itself refute the normalized passage
theorem, because the source does not construct an actual Navier-Stokes
minimizing sequence with this escape. It proves that the direct proof cannot
continue from \(dA_{4B,N}\to0\) without `(G2S.11)'.

Thus the first remaining failed gate in the current work plan is now
`StrictSamePacketCycleExchangeCoercivity.A`. Gate 1 has been supplied by the
retained pressure-source envelope chain; Gate 2 is the first checked failure for
`NormalizedRelayBillCompactnessRecordPassage.A`.
