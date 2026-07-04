---
theorem_id: forward-gold-same-face-signed-channel-localization-proof-20260704
status: formal-proof-and-strict-reduction-not-gold-closure
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / same-face polarity custody
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - SameFacePartnerReturnLocalization.A
  - RecordPolaritySameFaceNoCancellation.A
role: >
  Proves the formal measure step underneath same-face partner-return
  localization: once the signed work channel is constructed face-by-face before
  aggregation, lost positive record mass is paid exactly by the negative part of
  that same local channel plus legal/stop/error terms. The remaining unproved
  row is the physical construction and bound of that face-local signed channel
  from the original Navier-Stokes packet before readout.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-root-payment-physical-spine-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-face-partner-return-localization-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-polarity-same-face-no-cancellation-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-repeated-core-record-return-balance-law-sharpener-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-record-return-bv-descent-20260627.md
completion_truth: >-
  This note proves only the formal localization lemma. It does not derive the
  face-local signed channel from Navier-Stokes, does not bound its negative
  part from original data, and does not close the signed-height theorem. It
  strictly narrows SameFacePartnerReturnLocalization.A to a physical input:
  before selected readout, construct the signed pressure/transport/viscous
  work channel on each admitted positive record face and prove local lost-positive
  domination by its same-face negative return.
---

# Same-face signed-channel localization proof

## 1. Physical object

Fix one signed-height record upcrossing in one smooth Navier-Stokes velocity
field. After parent admission and local carrier thickness have been installed,
the remaining sign question is face-local.

On one admitted positive record face \(e\), the same packet has a high packet, a
low strain/current coefficient, a material time window, a parent address, a
detector/service split, and a positive sign for the signed critical-height work.
If that sign disappears, the disappearance must be the same packet returning or
reorienting on that face through pressure, transport/frame rotation, viscosity,
endpoint/material return, legal reselection, stopping, or exit.

The wrong substitute is total negative return after all faces have been added
together. That can pay a negative lobe on a different face. The local physical
object needed here is a signed work channel on each admitted face before
aggregation.

## 2. Formal local channel

For each retained admitted face \(e\), let

\[
dJ_e=dJ_e^{+}-dJ_e^{-}
\tag{SCL.1}
\]

be a finite signed measure on the face sigma-algebra. It is meant to be the
pre-readout signed pressure/transport/viscous work channel of that same packet
on that same face.

Let \(dW_e^{+}\) be the positive record mass that the Gold row wants to keep.
Let \(dW_e^{surv,+}\le dW_e^{+}\) be the part whose positive sign survives in the
admitted face topology. The lost positive mass is

\[
dL_e:=dW_e^{+}-dW_e^{surv,+}.
\tag{SCL.2}
\]

The exact local domination input is:

\[
dL_e
\le
C\,dJ_e^{-}
+dLegal_e+dStop_e+dExit_e+dErr_e
\tag{SCL.3}
\]

on every pre-readout subface, with the same-face return budget

\[
\sum_e\int dJ_e^{-}
\le
C_N(u_0)+Paid.
\tag{SCL.4}
\]

This is the point where the physical story carries the proof: \(dJ_e^{-}\) is
not a global negative-return account. It is the negative return of the same
signed channel that also carried the positive record face \(e\).

## 3. Formal proof

Assume `(SCL.3)' and `(SCL.4)'. Define

\[
dR_e^{-}:=C\,dJ_e^{-}+dErr_e .
\tag{SCL.5}
\]

Then for every pre-readout subface \(A\),

\[
\begin{aligned}
dW_e^{+}(A)
&=
dW_e^{surv,+}(A)+dL_e(A)\\
&\le
dW_e^{surv,+}(A)
+dR_e^{-}(A)
+dLegal_e(A)+dStop_e(A)+dExit_e(A).
\end{aligned}
\tag{SCL.6}
\]

Summing `(SCL.5)' over disjoint retained record faces gives

\[
\sum_e\int dR_e^{-}
\le
C_N(u_0)+Paid+Err .
\tag{SCL.7}
\]

Equations `(SCL.6)'--`(SCL.7)' are exactly
`SameFacePartnerReturnLocalization.A`. With same-edge no-detachment and local
face thickness already in the row, this feeds
`RecordPolaritySameFaceNoCancellation.A`.

Thus the measure-theoretic step is not the wall. Once the signed channel is
available face-by-face, same-face partner-return localization follows.

## 4. Checked obstruction

The local hypothesis cannot be replaced by total negative return.

Take two admitted faces \(A\) and \(B\). Put lost positive mass on \(A\):

\[
dL_A=dx,\qquad dJ_A^{-}=0,
\tag{SCL.8}
\]

and put a global negative-return ledger on \(B\):

\[
dJ_B^{-}=dx,\qquad dL_B=0.
\tag{SCL.9}
\]

The total negative return equals the total lost positive mass. Yet `(SCL.3)'
fails on \(A\), since the negative return lives on the wrong face. A compactness
or BV proof that only sees the total ledger cannot distinguish this cross-face
subsidy from real same-face return.

This is a proof obstruction, not a Navier-Stokes counterexample. It says the
formal theorem needs the face-local signed channel before aggregation.

## 5. Current proof truth

Proof-grade:

\[
\text{face-local signed channel domination}
\Longrightarrow
\texttt{SameFacePartnerReturnLocalization.A}
\Longrightarrow
\texttt{RecordPolaritySameFaceNoCancellation.A}
\tag{SCL.10}
\]

after same-edge no-detachment and local face thickness.

Strictly reduced, still open:

\[
\text{construct and bound \(dJ_e^{-}\) from the original same-fluid
pressure-transport-viscosity packet before readout.}
\tag{SCL.11}
\]

So the remaining Gold sign row is no longer a vague request for negative return.
It asks for a face-indexed signed work channel whose negative part is the same
packet returning on the same admitted positive record face.
