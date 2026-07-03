---
theorem_id: forward-gold-record-net-work-selected-meter-aligned-current-reduction-20260703
status: strict-reduction-selected-meter-aligned-current-open
created: 2026-07-03
problem: navier-stokes
route: forward-gold-signed-critical-height-restart
logical_landing_node: RecordNetWorkSelectedMeterAlignedCurrentReduction.A
source_surfaces:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-net-work-admission-proof-pass-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-tfe2748-strict-storage-compactness-rigidity-attack-20260701.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-tfe2748-original-data-source-theorem-attack-20260701.md
  - problems/navier-stokes/theorem-construction/mpp-terminal-adjoint-response-native-edge-anchoring-l3-direct-attempt-20260522.md
  - problems/navier-stokes/theorem-construction/derivative-lp-compatibility-bridge-note.md
completion_truth: >-
  This is a strict reduction, not Gold closure. The signed-height record equation
  proves positive net work on a record upcrossing. Existing TFE2748B surfaces
  prove representation and atomization support after a selected meter is pulled
  into the parent adjoint, and they isolate the remaining arbitrary-data source
  as one-sided aligned-current/Fisher domination. The current repo still does
  not prove that every signed-height record-net work meter satisfies that
  aligned-current domination with the required scale-normalized no-self-feeding
  storage.
---

# Record-net work selected-meter aligned-current reduction

## 1. Physical object

A signed-height record upcrossing \([a,b]\) is one same-fluid event. The critical
height climbs from \(\lambda\) to \(2\lambda\), and viscosity drains during the
climb, so the nonlinear work satisfies

\[
\int_a^b P(t)\,dt
=
H(b)-H(a)+\nu\int_a^bD(t)\,dt
\ge\lambda .
\tag{RSA.1}
\]

This work is not a clipped pointwise trace. It is the net work of the same
velocity field over the same material history.

The open question is where that net work lives before the record is read. If it
is placed on a parent-native source edge only after the upcrossing is known, the
old post-selection problem returns in net form. The parent must already carry the
meter, current, atomization, and storage coordinate.

## 2. Existing support below the record

The TFE2748B storage surface has already lowered part of the old mystery. Once a
selected meter is pulled into the parent adjoint, the repo records three support
facts:

1. the pre-clipping pressure-Hodge/material residue has a same-parent
   Jordan/transport atom decomposition, with coefficient mass controlled by total
   variation and leakage assigned to legal, paid, stop, or root terms;
2. the same-parent divergence current representation is constructed by the
   stopped parent Hodge/Neumann inverse before clipping;
3. the retained opposite lobe is charged to a bounded-below parent reserve in the
   atom ledger.

Those facts mean raw edge attachment is not the deepest surviving burden. The
remaining source theorem is the one-sided aligned-current estimate. In the
TFE2748B notation it is

\[
\int dQ_P^{align}
\le
\theta\int dI_P
+d\Theta_P^0+dPaid_P+dStop_P,
\qquad
\theta<1.
\tag{RSA.2}
\]

Here \(dI_P\) is the entropy/Fisher drain of the parent meter, and
\(dQ_P^{align}\) is the positive anti-gradient part of the same-parent current
that creates selected entropy. This is the current form of the same
no-self-feeding source wall.

## 3. Record-net reduction

For a record upcrossing, normalize the parent meter by the record height
\(\lambda\). The target is to build a parent-announced record meter
\(F_{P,[a,b]}^{rec}\) whose current form captures the record work before
positive selection:

\[
1
\le
C_N\int dQ_{P,[a,b]}^{align}
+Legal([a,b])+Stop([a,b]).
\tag{RSA.3}
\]

The scale-normalized storage needed for disjoint records is then

\[
\sum_j
\int dQ_{P_j,[a_j,b_j]}^{align}
\le
C_N(u_0)+Paid+Legal+Stop,
\tag{RSA.4}
\]

where each record meter has already been divided by its own \(\lambda_j\).

Thus the clean reduction is

\[
\begin{array}{c}
\texttt{SignedHeightRecordNetWorkAdmission.A}\\
+\texttt{RecordWorkParentAdjointMeterAdmission.A}\\
+\texttt{OneSidedAlignedCurrentDomination.A}
\end{array}
\Longrightarrow
\texttt{RecordNetWorkNativeEdgeSpend.A}.
\tag{RSA.5}
\]

`SignedHeightRecordNetWorkAdmission.A' is installed as `(RSA.1)'. The current
repo gives support for the parent-current representation once the record meter is
admitted. What remains open is the parent-adjoint admission of the record meter
together with the one-sided aligned-current domination `(RSA.2)' for that meter.

## 4. What this changes

The previous name

\[
\texttt{RecordNetWorkNativeEdgeSpend.A}
\]

should no longer be read as a vague request to find native edges. The repo
already has the right coordinates for such edges after parent-adjoint admission.
The sharper theorem is:

\[
\boxed{
\texttt{RecordWorkParentAdjointAlignedCurrentDomination.A}.
}
\tag{RSA.6}
\]

It says that the normalized signed-height record work can be pulled into a
parent-announced selected meter, represented as the same-parent current/atom
ledger before clipping, and spent by the strict aligned-current/Fisher
domination with no self-feeding.

Algebraic LP/Bony localization and pressure-Hodge decompositions remain support:
they provide coordinate packets for the work. They do not prove `(RSA.2)'.

Terminal adjoint-response anchoring gives the same warning in another language:
a large signed response pairing is not enough unless the response covector is
anchored to the same retained high packet, same low strain/current coefficient,
and same native source edge. In this record-net line, that anchoring is exactly
the parent-adjoint meter/current admission before clipping.

## 5. Proof status

Installed:

\[
\int_a^bP(t)\,dt\ge\lambda .
\tag{RSA.7}
\]

Support:

\[
\text{parent-current representation and same-parent atomization after meter admission.}
\tag{RSA.8}
\]

Open:

\[
\boxed{
\text{record parent-adjoint meter admission}
+
\text{one-sided aligned-current/Fisher domination}
}
\tag{RSA.9}
\]

This is smaller than the older child-positive \(P_+dt\) route and more physical
than a free native-edge search. The same-fluid story is now: record climb gives
net work; net work must become a parent-announced selected meter; the positive
anti-gradient aligned current of that meter must be absorbed by Fisher
dissipation and paid packet motion before clipping.
