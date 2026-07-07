---
theorem_id: forward-gold-c0-selected-return-admission-same-edge-bill-currency-reduction-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / selected return admission / same-edge bill currency
status: strict-reduction-selected-return-admission-not-independent
ontology_lock:
  fluid_field_object: one same-fluid incompressible viscous dissipative pressure-constrained irreversible Navier-Stokes history
  reversible: false
  adiabatic: false
  compressible: false
target_objects:
  - SelectedReturnAdmissionLowerThickness.A
  - StoppedReturnBVFiniteFromOriginalData.A
  - PrimitiveChannelSelectedFaceNegativeReturnBudget.A
  - PrimitiveChannelSelectedReturnNoDuplication.A
  - RetainedRecordEdgePreReadoutCustodyTuple.A
  - RetainedRecordEdgePreReadoutCustodyClosedGraph.A
  - SameEdgeNoDetachmentModulus.A
  - ParentOwnedPositiveRecordBillCurrency.A
  - FullTowerPositiveChannelThreeMeasureAdmission.A
  - SelectedGeneratorStorageCoercivity.A
  - OriginalHistorySelectedPotentialAmplificationBV.A
source_refs:
  - problems/navier-stokes/spine.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-fixed-stopped-score-square-to-linear-bv-gap-audit-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-packet-return-bv-producer-test-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-channel-selected-face-negative-return-budget-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-admission-same-edge-closed-graph-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-admission-no-detachment-modulus-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate2-root-payment-integration-verdict-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-generator-storage-coercivity-hard-block-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-generator-physical-payment-synthesis-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-normalized-passage-collapse-to-parent-owned-bill-currency-20260707.md
completion_truth: >-
  Strict reduction and contradiction test, not c_0 closure.  The selected return
  admission/lower-thickness clause needed to turn fixed-score square control
  into linear BV is not an independent post-score lemma.  It is exactly the
  return-side reading of same-edge pre-readout custody and parent-owned
  bill-currency.  Current sources provide consumer implications once the
  selected face, stopped primitive trace, no-duplication, and root geometry are
  already admitted.  They do not prove that every retained return is admitted
  before readout with thickness in the same harmonic square currency.  Proving
  this clause from downstream record-admitted storage would be circular.
---

# Selected return admission is same-edge bill currency

## 1. Physical object

The fixed stopped score branch left one exact gap.  The same material score

\[
P_R=\Gamma_R Z^S
\tag{SRA.1}
\]

has a noncircular derivative identity and root-weighted square control.  To
turn that into the linear record/return bound, the retained selected returns
must be admitted as bill-visible events before readout.

The admission can be stated as a lower-thickness condition

\[
\Delta_I^-P_R\ge \eta |I|
\quad\hbox{on retained selected returns,}
\tag{SRA.2}
\]

or as bounded inverse-weight length

\[
\sum_I\int_Iw^{-1}\,d\sigma
\le C_N\mathcal R(P)+Legal+Stop,
\tag{SRA.3}
\]

or as the equivalent selected normalization that counts every retained return
in the harmonic square currency

\[
\sum_I H_I\left({\Delta_I^-P_R\over |I|}\right)^2 .
\tag{SRA.4}
\]

The question is whether `(SRA.2)'--`(SRA.4)' are already produced by the stopped
score.  They are not.  They are an admission theorem about which physical
events the future selector is allowed to count.

## 2. Consumer implications already installed

The stopped score gives

\[
\partial_\sigma P_R
=
\Gamma_R\partial_\sigma Z^S
+(\partial_\sigma\Gamma_R)Z^S,
\tag{SRA.5}
\]

so every derivative-exact return is paid by carrier motion, selector/frame
motion, connection motion, legal loss, or stop loss.  This is a consumer once
the return interval has already been attached to the parent-known stopped
channel.

The selected-face return note proves another consumer implication:

\[
\begin{aligned}
&\texttt{RecordFacePrimitiveChannelPredictableTrace.A}\\
&+\texttt{StoppedReturnBVFiniteFromOriginalData.A}\\
&+\texttt{PrimitiveChannelSelectedReturnNoDuplication.A}\\
&\Longrightarrow
\texttt{PrimitiveChannelSelectedFaceNegativeReturnBudget.A}.
\end{aligned}
\tag{SRA.6}
\]

This is correct but conditional.  It begins after the selected face is already
a predictable pre-readout trace of the stopped primitive channel, after total
stopped return BV is paid, and after the same return event cannot be spent
multiple times.

The same-edge closed-graph notes identify the compactness form:

\[
\texttt{SameEdgeNoDetachmentModulus.A}
\Longrightarrow
\texttt{RetainedRecordEdgePreReadoutCustodyClosedGraph.A}.
\tag{SRA.7}
\]

Again, this is the right object, but it is not proved by scalar BV or by the
fixed stopped score.

## 3. Three failure tests

The lower-thickness clause fails in three concrete ways unless same-edge
custody is installed before readout.

First, square-to-linear failure.  With normalized return quanta

\[
a_I=\sqrt{H_I}\,{\Delta_I^-P_R\over |I|},
\tag{SRA.8}
\]

the stopped score controls \(\sum_I a_I^2\).  Linear BV asks for

\[
\sum_I\Delta_I^-P_R
=
\sum_I {|I|\over \sqrt{H_I}}a_I .
\tag{SRA.9}
\]

Without a selected lower-thickness or inverse-weight-length theorem, the model
sequence \(a_k=1/k\) already shows the logical gap: square mass is finite while
linear selected count can diverge.

Second, wrong-face return.  A stopped primitive chamber can have enough total
negative return while the selected positive face has none:

\[
dL_A=dx,\qquad
\mathbf 1_A[Y]_-\,d\sigma dt=0,\qquad
\mathbf 1_B[Y]_-\,d\sigma dt=dx .
\tag{SRA.10}
\]

Total return balances total motion, but it pays the wrong physical face.

Third, duplicate return spending.  One negative return event can be claimed by
many selected faces unless the selected faces have finite overlap or a legal
split:

\[
\sum_e\mathbf 1_{F_e}\gg 1 .
\tag{SRA.11}
\]

Then a single physical return is counted as many ledger payments.

These are not model shadows.  They are the three ways the same Navier-Stokes
history can fail to provide a retained return that is the same event, the same
face, and a once-spent bill before readout.

## 4. Noncircular lower theorem

The noncircular selected-return admission theorem is:

\[
\boxed{
\begin{gathered}
\text{retained selected return or reset counted by the record}\\
\Longrightarrow
\text{same parent-known selector, same primitive face,}\\
\text{same chart/projector license, same root/full-exchange bill address,}\\
\text{finite overlap and thickness in the harmonic square currency}
\end{gathered}}
\tag{SRA.12}
\]

with legal, stop, paid-rotation, service, or CM route-out if any clause fails.

In current repo names, `(SRA.12)' is not a new bottom theorem.  It is the
return-side projection of

\[
\texttt{RetainedRecordEdgePreReadoutCustodyTuple.A}
\quad\hbox{and}\quad
\texttt{ParentOwnedPositiveRecordBillCurrency.A}.
\tag{SRA.13}
\]

The producer feeding those objects is still the same original-history source:

\[
\texttt{SelectedGeneratorStorageCoercivity.A}
\quad\hbox{or}\quad
\texttt{OriginalHistorySelectedPotentialAmplificationBV.A},
\tag{SRA.14}
\]

and, in the c0/Perron reading,

\[
\texttt{FullTowerPositiveChannelThreeMeasureAdmission.A}
\tag{SRA.15}
\]

from a pre-envelope signed same-packet commutator or equivalent direct
original-data subcritical face.

## 5. Circular proof trap

It is circular to prove `(SRA.12)' from downstream record-admitted active/full
exchange storage.  That storage is lawful after the positive or negative record
edge has already been admitted to the parent bill currency.  Using it to admit
the edge would count the future-selected record first and then declare the
parent payer afterward.

The time order is:

\[
\text{parent-known event and bill address}
\longrightarrow
\text{selected return/readout}
\longrightarrow
\text{linear BV or record count}.
\tag{SRA.16}
\]

The forbidden order is:

\[
\text{selected readout}
\longrightarrow
\text{choose the paying face/channel}
\longrightarrow
\text{claim parent-owned BV}.
\tag{SRA.17}
\]

The second order reproduces the half-tail: every tiny selected event can be
given a payer after the fact, while the parent history sees only square or raw
mass.

## 6. Consequence for c0

The stopped-score square-to-linear gap and the selected-face return budget do
not create a new branch below c0.  They identify the return-side face of the
same epsilon-extraction wall:

\[
\texttt{ParentOwnedPositiveRecordBillCurrency.A}
\Longrightarrow
B(W)\ge\varepsilon R(W),
\qquad c_0=2\varepsilon .
\tag{SRA.18}
\]

What remains open is the construction of that parent-owned bill currency from
the original pressure-viscosity-incompressibility history of the same packet,
before future positive or negative selected returns are read.  Current sources
have consumer implications and sharp failure tests; they do not yet provide the
noncircular selected-return admission/lower-thickness theorem.
