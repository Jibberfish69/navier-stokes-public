---
theorem_id: forward-gold-signed-height-record-admitted-scale-native-depletion-bridge-20260704
status: strict-reduction-signed-height-custody-correction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold-signed-critical-height-restart
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
role: >
  Puts the scale-native depletion/no-Zeno package under the signed-height
  record-upcrossing criterion. SameParentCriticalDepletionNoZeno.A is Gold
  progress only after the record net work is admitted into its parent-known
  critical carrier before readout.
source_refs:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-upcrossing-criterion-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-net-work-selected-meter-aligned-current-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-meter-entropy-flux-split-same-history-capacity-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-full-action-scale-native-depletion-synthesis-20260704.md
completion_truth: >-
  This note proves a strict reduction and installs a custody correction. It does
  not prove the Navier-Stokes MPP and does not prove same-parent critical
  depletion from original data. It proves that the scale-native depletion/no-Zeno
  package can serve the signed-height Gold restart only in record-admitted form:
  the net work of each thin signed-height record upcrossing must enter the same
  parent critical carrier before selected readout, and only then can depletion
  supply the finite charge required by the record-upcrossing criterion.
---

# Signed-height record-admitted scale-native depletion bridge

## 1. One physical event

The live Gold object is the signed critical height

\[
H(t)={1\over2}\|\Lambda^{1/2}u(t)\|_2^2,
\qquad
{dH\over dt}=P(t)-\nu D(t).
\]

A high record upcrossing \([a,b]\) is one same-fluid event:

\[
H(a)=\lambda,\qquad H(b)=2\lambda,
\qquad
\int_a^bP(t)\,dt
=H(b)-H(a)+\nu\int_a^bD(t)\,dt
\ge \lambda .
\tag{RSN.1}
\]

If the event has time thickness \(\gtrsim\lambda^{-2}\), the finite
\(L^2_t\) height budget pays it. The hard branch is a thin record: the same
fluid gains signed critical height in a short time window, then the signed rate
changes or the packet returns before the scalar height budget sees enough
duration.

The proof must then find a finite same-fluid charge for that record. A
scale-native first-birth count can be that charge only if the record work in
`(RSN.1)' is admitted into the parent-known critical carrier before the record
is selected as positive.

## 2. What scale-native depletion actually controls

The scale-native obstruction is the familiar physical half-tail:

\[
\|M_{\gamma_k}\|_{\rm raw}^2\simeq r_k,
\qquad
\omega_{\gamma_k}\simeq 1,
\qquad
\sum_k r_k<\infty,
\qquad
\sum_k\omega_{\gamma_k}=\infty.
\tag{RSN.2}
\]

Finite raw heat, collar, legal, or local service cost does not control selected
critical action. `SameParentCriticalDepletionNoZeno.A' is the right package for
this support problem: build a parent-known critical carrier, prove first
scale-native births lower into it, prove strict depletion/good-lambda margin,
and prove terminal no-Zeno/no-atom or Hardy thickness.

But `(RSN.2)' is not itself the signed-height theorem. It is a coordinate of
the same physical packet. Gold force appears only when the scale-native births
are the births forced by a signed-height record upcrossing.

## 3. Record-admitted form

For a thin record upcrossing \([a,b]\), the needed admission statement is:
construct, before record readout, a parent-known critical carrier
\(\mathcal K_{P,[a,b]}^{rec}\) and a finite-overlap family of native
scale-critical work edges \(\Gamma_{[a,b]}\) such that

\[
1
\le
C_N\sum_{\gamma\in\Gamma_{[a,b]}}\omega_\gamma
+Legal([a,b])+Stop([a,b]),
\tag{RSN.3}
\]

where the left side is the normalized record work from `(RSN.1)', and every
\(\gamma\) is attached to the same parent packet, same high carrier, same low
strain/current coefficient, and same material time window before the record is
read as positive.

The storage/depletion side must then say that these admitted edges lower into
one parent depletion measure:

\[
\sum_{\gamma\in\Gamma_{[a,b]}}\omega_\gamma
\le
C_N\int_{[a,b]}d\Xi_{P,[a,b]}^{crit,rec}
+Legal([a,b])+Stop([a,b]),
\tag{RSN.4}
\]

and, over disjoint thin records,

\[
\sum_j\int d\Xi_{P_j,[a_j,b_j]}^{crit,rec}
\le
C_N(u_0)+Paid+Legal+Stop.
\tag{RSN.5}
\]

Equations `(RSN.3)'--`(RSN.5)' give the finite unit charge required by the
signed-height record-upcrossing criterion. Therefore

\[
\begin{array}{c}
\text{record-net work admission into the parent critical carrier}\\
+\text{same-parent critical depletion/no-Zeno for that carrier}
\end{array}
\Longrightarrow
\text{record-upcrossing thickness-or-charge}
\Longrightarrow
\sup_{t<T}H(t)<\infty .
\tag{RSN.6}
\]

This is a strict reduction. It is not a proof of the carrier, admission, or
depletion theorem from arbitrary original data.

## 4. The obstruction if admission is missing

A parent critical carrier can have finite no-Zeno storage and still not pay a
signed-height record if the record work has not been admitted into that carrier.
The proof-theoretic model is simple: let the carrier measure \(d\Xi\) satisfy a
finite depletion inequality, and let the scalar record work place a unit spike
on a thin interval where \(d\Xi=0\). The storage theorem remains true, the
record upcrossing remains true, and no record charge follows.

This is not a Navier-Stokes counterexample. It identifies the missing bridge.
The same original packet must prove that the record's net nonlinear work is one
of the parent-announced critical edges before the depletion theorem can count it.

## 5. Relation to the coupled storage row

In the current record-meter language, `(RSN.3)' is the record-admission row and
`(RSN.4)'--`(RSN.5)' are the critical depletion/storage rows. They are not
sequential chores. They are rows of the same coupled parent inequality:

\[
\begin{pmatrix}
dQ_{P,[a,b]}^{rec,align}\\
dZ_{P,[a,b]}^{crit,rec}\\
d\Xi_{P,[a,b]}^{FE,act,rec}\\
dA_{P,[a,b]}^{AT,rec}
\end{pmatrix}
\le
-d\mathcal M_{P,[a,b]}^{rec}
+K_P^{rec}
\begin{pmatrix}
dQ_{P,[a,b]}^{rec,align}\\
dZ_{P,[a,b]}^{crit,rec}\\
d\Xi_{P,[a,b]}^{FE,act,rec}\\
dA_{P,[a,b]}^{AT,rec}
\end{pmatrix}
+\mathbf d\Theta_P^0+\mathbf dPaid_P+\mathbf dStop_P,
\qquad
\rho(K_P^{rec})<1.
\tag{RSN.7}
\]

The scale-native depletion package is therefore the critical-face projection of
`RecordAdmittedActiveFullExchangeCoupledStorage.A'. If it is proved away from
the record-admission row, it remains support. If it is proved as part of the
record-admitted coupled inequality, it supplies the same-fluid charge in the
signed-height criterion.

## 6. Current truth state

Installed:

\[
\int_a^bP(t)\,dt\ge\lambda
\]

for each signed-height record upcrossing, and the scalar record criterion that
finite thickness-or-charge implies peak control.

Strictly reduced:

\[
\texttt{SameParentCriticalDepletionNoZeno.A}
\quad\text{must be read in record-admitted form before it has Gold force.}
\]

Still open:

\[
\text{construct the parent critical carrier, record admission, and strict
same-parent depletion rows from the original coupled Navier-Stokes packet before
record readout, with no self-feeding feedback loop.}
\]

That is the honest physical story: a record rise gives signed net work; the
work must already live in the parent critical carrier; scale-native depletion
then pays it as a finite charge. A free-standing selected birth theorem does
not control signed height until that bridge is proved.
