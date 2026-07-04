---
theorem_id: forward-gold-record-admission-same-edge-closed-graph-reduction-20260704
status: strict-reduction-and-checked-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / record-admitted compactness
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object: RecordAdmissionClosedness.A
role: >
  Refines RecordAdmissionClosedness.A into a same-edge closed-graph theorem for
  the retained signed-height record edge. The point is physical: a compactness
  limit is useful only if the same transported packet edge that carried record
  work before readout remains selected, charted, detected, and face-admitted in
  the limiting parent carrier.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-admitted-critical-no-arbitrage-compactness-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-pre-readout-custody-tuple-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-menu-root-projection-faithfulness-producer-classification-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-net-work-admission-proof-pass-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-meter-entropy-flux-split-same-history-capacity-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-tfe2748-strict-storage-compactness-rigidity-attack-20260701.md
completion_truth: >-
  This note does not prove Navier-Stokes smoothness and does not prove
  RecordAdmissionClosedness.A. It proves a strict reduction: record-admission
  closedness is exactly the closed-graph persistence of the same retained
  signed-height edge through selector capture, retained chart/license,
  pressure-active-or-silent service split, and root/full-exchange face address.
  Current sources prove the scalar record work, native work coordinates, and
  downstream storage support, but not this same-edge closed graph.
---

# Record-admission same-edge closed-graph reduction

## 1. One physical event

A thin signed-height record is one same Navier-Stokes packet gaining critical
height:

\[
H(a)=\lambda,\qquad H(b)=2\lambda,\qquad
\int_a^bP(t)\,dt
=H(b)-H(a)+\nu\int_a^bD(t)\,dt
\ge \lambda .
\tag{RCG.1}
\]

The record-menu decomposition gives legal native work coordinates for this
signed production.  A future-positive edge has the form

\[
e=(\text{retained high packet},\text{low strain/current coefficient},
\text{material time window},\text{record polarity}).
\tag{RCG.2}
\]

The compactness question is not whether some measure remains in the limit.  It
is whether this same edge \(e\) remains attached to the parent carrier that is
supposed to pay the record.  The edge must stay selected, charted, detected or
service-paid, and face-admitted before readout.  Otherwise the scalar record
work and the compact carrier can both survive while no physical payment has
been made by the same packet.

## 2. Why ordinary compactness is not record admission

The record-admitted no-arbitrage reduction introduced
`RecordAdmissionClosedness.A' because a freestanding compact carrier can miss
the record.  The lower retained-edge reductions identify the mechanism: record
admission is a same-edge custody tuple.

For each retained edge define

\[
\mathfrak T_e=(\mathfrak R_e,\mathfrak X_e,\mathfrak D_e,\mathfrak F_e),
\tag{RCG.3}
\]

where \(\mathfrak R_e\) is the parent-announced stopped selector record,
\(\mathfrak X_e\) is the retained exact-projector chart/license,
\(\mathfrak D_e\) is the pressure-active detector angle or silent-service
payment, and \(\mathfrak F_e\) is the root/endpoint/full-exchange face address.

The admission inequality for one edge is

\[
\left[\int_{I_e\cap[a,b]}\omega_e\right]_+
\le
C_N\left(
dA_e^{root,+}
+d\Xi_e^{FE,act}
+dServ_e^{silent}
\right)
+dLegal_e+dStop_e .
\tag{RCG.4}
\]

The left side is the record work of the same fluid edge.  The right side is
lawful only if all four tuple coordinates in `(RCG.3)' are attached to that edge
before the record readout.

## 3. The closed-graph theorem

The missing closedness theorem is:

\[
\texttt{RetainedRecordEdgePreReadoutCustodyClosedGraph.A}.
\tag{RCG.5}
\]

For a normalized sequence of thin record edges \(e_n\), assume:

\[
\left[\int_{I_{e_n}\cap[a_n,b_n]}\omega_{e_n}\right]_+=1,
\qquad
dLegal_{e_n}+dStop_{e_n}+dServ^{unpaid}_{e_n}\to0,
\tag{RCG.6}
\]

and assume the same-parent stopped packet, selector record, retained chart,
detector/service split, and face address converge in the compactness topology
used by the record-admitted full-exchange carrier.  Then the theorem must say
that the limiting positive record work is still admitted:

\[
1
\le
C_N\left(
dA_\infty^{root,+}
+d\Xi_\infty^{FE,act}
+dServ_\infty^{silent}
\right),
\tag{RCG.7}
\]

or else a positive amount has appeared in legal, stop, paid service, or a
Pack/Part/Field exit face.

This is the closed graph of physical custody.  The graph variable is not merely
a measure.  It is the whole relation

\[
\text{record work edge}
\longmapsto
(\text{selector},\text{chart},\text{detector/service},\text{face carrier}).
\tag{RCG.8}
\]

## 4. Four possible escape modes

A failure of `(RCG.5)' has only four physical forms.

Selector drift:

\[
\mathfrak R_{e_n}\to\mathfrak R_\infty
\quad\text{but}\quad
\mathfrak R_\infty \text{ captures a different edge than the record work.}
\tag{RCG.9}
\]

Chart drift:

\[
\mathfrak X_{e_n}\to\mathfrak X_\infty
\quad\text{while the retained high packet leaves the licensed exact-projector
chart without paid chart/legal/stop exit.}
\tag{RCG.10}
\]

Detector-angle collapse:

\[
\mathfrak D_{e_n} \text{ is pressure-active, but the limit becomes
detector-silent or near-silent without service payment.}
\tag{RCG.11}
\]

Face-address drift:

\[
\mathfrak F_{e_n}\to\mathfrak F_\infty
\quad\text{while the positive record polarity is lost from the root,
endpoint, or full-exchange face.}
\tag{RCG.12}
\]

These are not separate theorem projects.  They are the ways the same physical
edge can detach from the parent carrier during compactness.  A proof of
`(RCG.5)' must make each escape paid, legal, stopped, service-routed, or an
exit face.

## 5. Reduction to RecordAdmissionClosedness.A

The current compactness/no-arbitrage reduction needs exactly this closed graph.
The strict implication is:

\[
\begin{aligned}
&\texttt{RetainedRecordEdgePreReadoutCustodyClosedGraph.A}\\
&+\texttt{RecordAdmittedFullExchangeCriticalCompactness.A}\\
&+\texttt{ZeroCostRecordCriticalNoArbitrageRigidity.A}\\
&\Longrightarrow
\text{record-admitted }\texttt{SameParentCriticalDepletionNoZeno.A}.
\end{aligned}
\tag{RCG.13}
\]

Equivalently,

\[
\texttt{RetainedRecordEdgePreReadoutCustodyClosedGraph.A}
\Longrightarrow
\texttt{RecordAdmissionClosedness.A}
\tag{RCG.14}
\]

inside the compactness route.

The implication is smaller than the MPP target and smaller than full
record-admitted storage.  It proves only that a compactness limit cannot change
which physical edge is paying the record.  Once that is known, the zero-cost
rigidity theorem has the correct object to kill: a same-parent stopped packet
with admitted record work and no independent source.

## 6. Current truth state

Installed support:

\[
\begin{array}{c}
\text{signed-height scalar record work,}\\
\text{native LP/Bony menu coordinates before readout,}\\
\text{same-edge custody tuple reduction,}\\
\text{downstream critical/full-exchange storage rows after admission,}\\
\text{component compactness and zero-cost rigidity support.}
\end{array}
\]

Checked obstruction:

\[
\text{none of those support surfaces proves that the record-work edge remains
the same selected, charted, detected, and face-admitted edge in the compactness
limit.}
\]

Open theorem:

\[
\texttt{RetainedRecordEdgePreReadoutCustodyClosedGraph.A}.
\tag{RCG.15}
\]

The physical story is now one line: the packet that raises the signed-height
record must still be the packet selected, charted, detected or service-paid, and
stored after the limiting process.  If that same-edge relation is not closed,
compactness has produced a true carrier for the wrong physical event.
