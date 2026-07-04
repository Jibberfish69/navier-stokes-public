---
theorem_id: forward-gold-record-admitted-critical-no-arbitrage-compactness-reduction-20260704
status: strict-reduction-and-checked-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / record-admitted critical depletion
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object: record-admitted form of SameParentCriticalDepletionNoZeno.A
role: >
  Converts the record-admitted same-parent critical depletion/no-Zeno burden into
  a no-arbitrage compactness/zero-cost rigidity package. The added point is that
  compactness must retain the record-admission row: a freestanding critical
  carrier is support unless the signed-height record work remains inside that
  carrier before readout.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-admitted-scale-native-depletion-bridge-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-full-action-scale-native-depletion-synthesis-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-admitted-critical-reset-charge-consolidation-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-meter-entropy-flux-split-same-history-capacity-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-tfe2748-strict-storage-compactness-rigidity-attack-20260701.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-tfe2748-original-data-source-theorem-attack-20260701.md
completion_truth: partial-not-mpp-closed
---

# Record-admitted critical no-arbitrage compactness reduction

## 1. Same physical event

The event is one thin signed-height record upcrossing of one Navier-Stokes
solution:

\[
H(a)=\lambda,\qquad H(b)=2\lambda,\qquad
\int_a^bP(t)\,dt
=H(b)-H(a)+\nu\int_a^bD(t)\,dt
\ge \lambda .
\tag{RAC.1}
\]

The record gives signed net nonlinear work.  That work is not yet a finite
charge.  It becomes a charge only if, before the record is read, the parent
history has already placed the work inside the same critical/full-exchange
carrier that the proof will deplete.

The live physical question is:

Can one same parent packet contain the record work, catch its first
scale-native births, and prove strict no-self-feeding depletion in that same
carrier?

## 2. Why freestanding depletion is not enough

The installed scale-native depletion package asks for:

1. a parent-known critical carrier;
2. lower admission of first scale-native births into that carrier;
3. strict depletion/good-lambda margin in the carrier;
4. terminal no-Zeno/no-atom or Hardy time-thickness in the same carrier.

Under the signed-height restart this has Gold force only in record-admitted
form.  A proof can construct a finite critical carrier and still miss the
record if the scalar record work sits in a legal native coordinate not admitted
to that carrier.

The proof-theoretic countermodel is:

\[
\int_a^bP(t)\,dt\ge \lambda ,
\qquad
d\Xi^{crit}\ \text{finite},
\qquad
\text{record work supported where } d\Xi^{crit}=0 .
\tag{RAC.2}
\]

Then the depletion theorem and the record upcrossing are both true, while no
record charge follows.  This is not a Navier-Stokes counterexample.  It is the
logical obstruction that forces record admission to be part of the same
depletion theorem.

## 3. Record-admitted no-arbitrage form

For each normalized thin record, the parent must build before readout:

- a record meter \(F_{P,[a,b]}^{rec}\);
- a critical/full-exchange carrier \(\Xi_{P,[a,b]}^{rec}\);
- a generator clock \(\Omega_{P,[a,b]}^{gen,rec}\);
- an independent source ledger \(E_{P,[a,b]}^0\) containing exact, inherited,
  paid, legal, stop, return, reset, and already routed material.

The admission row says the record work enters that carrier:

\[
1
\le
C_N\int d\Xi_{P,[a,b]}^{rec}
+Legal([a,b])+Stop([a,b]).
\tag{RAC.3}
\]

The strict no-self-feeding row is the no-arbitrage inequality:

\[
d\Xi_{P,[a,b]}^{rec}
\le
-dM_{P,[a,b]}^{rec}
+\vartheta\,d\Omega_{P,[a,b]}^{gen,rec}
+dE_{P,[a,b]}^0,
\qquad
C_N\vartheta<1,
\tag{RAC.4}
\]

with \(M^{rec}\) bounded below by original data.  Together with the generator
visibility row

\[
d\Omega_{P,[a,b]}^{gen,rec}
\le
C_N d\Xi_{P,[a,b]}^{rec}+dE_{P,[a,b]}^0,
\tag{RAC.5}
\]

strict absorption gives finite total record charge over disjoint thin records.
The signed-height record criterion then gives peak control.

## 4. Compactness reduction

Assume the record-admitted no-arbitrage theorem fails after all independent
source, legal, stop, and paid pieces have been removed.  Then there is a
normalized sequence of stopped record packets such that

\[
\int d\Xi_n^{rec}=1,\qquad
\int dE_n^0\to0,
\tag{RAC.6}
\]

and

\[
\int\bigl(d\Xi_n^{rec}-\vartheta d\Omega_n^{gen,rec}\bigr)
\ge \eta_0>0 .
\tag{RAC.7}
\]

A compactness theorem strong enough for Gold must do more than retain a
freestanding critical carrier.  It must retain the record-admission row:

\[
\int d\Xi_\infty^{rec}=1
\quad\text{and}\quad
\text{the normalized record work remains admitted to } \Xi_\infty^{rec}.
\tag{RAC.8}
\]

Then zero-cost rigidity must say that a same-parent stopped limit with no
independent original source cannot have positive strict-margin profit:

\[
dE_\infty^0=0
\quad\Longrightarrow\quad
d\Xi_\infty^{rec}
\le
\vartheta d\Omega_\infty^{gen,rec}.
\tag{RAC.9}
\]

Equations `(RAC.6)'--`(RAC.9)' contradict `(RAC.7)'.  Therefore the record-admitted
storage theorem follows from the compactness/rigidity pair.

## 5. Strict reduction

The record-admitted form of `SameParentCriticalDepletionNoZeno.A' reduces to:

\[
\begin{array}{c}
\texttt{RecordAdmittedFullExchangeCriticalCompactness.A}\\
+\texttt{ZeroCostRecordCriticalNoArbitrageRigidity.A}\\
+\texttt{RecordAdmissionClosedness.A}
\end{array}
\Longrightarrow
\text{record-admitted }\texttt{SameParentCriticalDepletionNoZeno.A}.
\tag{RAC.10}
\]

`RecordAdmissionClosedness.A' is the nonduplicate addition forced by the
signed-height roof.  It says the compactness limit preserves the fact that the
record work was in the carrier before readout.  Without it, a compactness proof
could prove a true storage theorem for the wrong carrier.

## 6. Checked obstruction

Current repo sources do not prove `(RAC.10)'.

The July 1 TFE2748 compactness/rigidity attack gives the right no-arbitrage
shape for a parent full-exchange critical ledger.  It also records component
support: reset compactness under derivative-average representation, silent and
frame/collar zero-cost removals, endpoint admission after the branch is already
inside the ledger, and strict storage as the remaining source.

The July 4 signed-height bridge adds the missing custody condition: the record's
net signed work must be admitted into that same carrier.  Component rigidity
does not prove this.  A freestanding zero-cost full-exchange limit can still be
irrelevant to the record event unless the admission row survives the normalized
failure limit.

Thus the proof state is:

\[
\text{record rise}
\quad+\quad
\text{carrier depletion}
\quad\text{is insufficient without}\quad
\text{record-admitted carrier identity.}
\tag{RAC.11}
\]

This is a strict reduction and checked obstruction, not closure.  It changes
the next proof attempt from local payment hunting to a precise
minimal-counterexample/compactness problem: rule out a zero-source stopped
parent packet that still carries admitted record work with positive
full-exchange critical profit.
