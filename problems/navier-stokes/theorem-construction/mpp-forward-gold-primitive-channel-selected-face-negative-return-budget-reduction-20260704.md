---
theorem_id: forward-gold-primitive-channel-selected-face-negative-return-budget-reduction-20260704
status: strict-reduction-and-checked-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / selected-face primitive return custody
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - PrimitiveChannelSelectedFaceNegativeReturnBudget.A
  - PrimitiveChannelSelectedReturnNoDuplication.A
  - StoppedReturnBVFiniteFromOriginalData.A
role: >-
  Reduces the selected-face negative-return budget to a face-restricted version
  of the stopped primitive return/BV theorem. Global primitive negative return
  is not enough: the negative motion must be restricted to the same
  pre-readout face and counted with finite multiplicity in the same original
  history.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-primitive-channel-trace-return-budget-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-primitive-channel-predictable-trace-custody-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-face-signed-channel-localization-proof-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-local-signed-channel-primitive-ownership-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-repeated-core-record-return-balance-law-sharpener-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-record-return-bv-descent-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-negative-scale-return-bv-boundary-20260627.md
completion_truth: >-
  This note does not prove PrimitiveChannelSelectedFaceNegativeReturnBudget.A.
  It proves a strict reduction: same-face return follows only after the
  primitive channel trace is predictable, the stopped primitive negative return
  has original-data BV budget, and selected faces restrict that return measure
  with finite multiplicity/no duplication. Scalar BV and chamber-level negative
  variation remain support.
---

# Primitive-channel selected-face negative-return budget reduction

## 1. Physical object

Fix one retained positive record face \(F_e\) on one stopped primitive channel
\(\kappa_e\). The same Navier-Stokes packet carries pressure, transport/frame
motion, viscosity, incompressibility, scale, sign, and time. The selected
positive record face can be kept only if a sign loss or reset of that same
packet appears as negative motion of the same primitive channel on the same
face.

The desired budget is

\[
\sum_e\int \mathbf 1_{F_e}[Y_{\kappa_e,S}]_-\,d\sigma dt
\le
C_N(u_0)+Paid+Legal+Stop+Exit+Err .
\tag{SFR.1}
\]

This is stronger than a stopped-core negative-variation theorem. It is the
face-restricted version of that theorem.

## 2. Reduction to face-restricted stopped return

The noncircular package is

\[
\begin{aligned}
&\texttt{RecordFacePrimitiveChannelPredictableTrace.A}\\
&+\texttt{StoppedReturnBVFiniteFromOriginalData.A}\\
&+\texttt{PrimitiveChannelSelectedReturnNoDuplication.A}\\
&\Longrightarrow
\texttt{PrimitiveChannelSelectedFaceNegativeReturnBudget.A}.
\end{aligned}
\tag{SFR.2}
\]

The predictable trace theorem says each \(F_e\) is already a face of the
selector-owned primitive channel before positive readout.

`StoppedReturnBVFiniteFromOriginalData.A` says the negative variation of the
stopped primitive record is a real same-material return/service event with
original-data budget, not just a scalar drop.

`PrimitiveChannelSelectedReturnNoDuplication.A` is the selected-face
disintegration clause. It says the retained faces restrict the stopped
primitive return measure with finite multiplicity, or any duplicate/overlapping
claim is legal, stopped, paid, or exited before it is counted:

\[
\sum_e \mathbf 1_{F_e}\,d\mu_{\kappa_e}^{ret,-}
\le
C_N\,d\mu^{ret,-}
+dPaid+dLegal+dStop+dExit .
\tag{SFR.3}
\]

Here \(d\mu_{\kappa}^{ret,-}=[Y_{\kappa,S}]_-d\sigma dt\) is the negative
return measure of the same stopped primitive channel.

## 3. Conditional proof

Assume `(SFR.2)'. By predictable trace, each selected face is a lawful
pre-readout restriction of its channel. Therefore

\[
\int \mathbf 1_{F_e}[Y_{\kappa_e,S}]_-\,d\sigma dt
=
\int_{F_e} d\mu_{\kappa_e}^{ret,-}.
\tag{SFR.4}
\]

The no-duplication clause gives finite multiplicity over the selected faces:

\[
\sum_e\int_{F_e} d\mu_{\kappa_e}^{ret,-}
\le
C_N\int d\mu^{ret,-}
+Paid+Legal+Stop+Exit .
\tag{SFR.5}
\]

The stopped return/BV theorem gives

\[
\int d\mu^{ret,-}
\le
C_N(u_0)+Err .
\tag{SFR.6}
\]

Combining `(SFR.5)' and `(SFR.6)' proves `(SFR.1)'.

## 4. Why existing return support is not enough

The record/return sharpener and stopped negative-return boundary prove the
right scalar mechanism: positive reuse of one stopped primitive record is paid
by record growth or by negative return, and bounded record height alone is
false because a bounded record can oscillate forever.

That does not yet prove `(SFR.1)'. There are three extra face-level risks.

### 4.1 Wrong-face return

A chamber can have enough negative return while the selected positive face has
none:

\[
dL_A=dx,\qquad
\mathbf 1_A[Y]_-\,d\sigma dt=0,
\qquad
\mathbf 1_B[Y]_-\,d\sigma dt=dx.
\tag{SFR.7}
\]

Total return balances total loss, but face \(A\) is unpaid.

### 4.2 Post-readout restriction

If \(F_e\) is chosen after reading \([Y_{\kappa,S}]_+\), the face can select
positive lobes while avoiding negative lobes. Then the stopped BV theorem is
being applied to a face that was not part of the stopped primitive history.

### 4.3 Duplicate return charge

Even with a predictable trace, a proof can overcount one negative return event
through many selected faces unless the faces are disjoint, finite-overlap, or
legally split:

\[
\sum_e \mathbf 1_{F_e}\gg 1.
\tag{SFR.8}
\]

That would convert one physical return into many ledger payments. The
no-duplication clause is the physical assertion that the same return event is
not spent multiple times.

## 5. Current proof truth

The repo has the scalar return mechanism and formal same-face localization as
support. It does not yet have the selected-face original-history budget.

The remaining return-side theorem is therefore:

\[
\texttt{PrimitiveChannelSelectedReturnNoDuplication.A}
\quad\text{plus the stopped return/BV theorem on the same traced channel}.
\tag{SFR.9}
\]

Until that is proved, `PrimitiveChannelSelectedFaceNegativeReturnBudget.A` is
not installed. Chamber-level negative variation, scalar BV, and repeated-core
record/return descent remain support because they do not by themselves say that
the negative return was spent on the same selected face exactly once.
