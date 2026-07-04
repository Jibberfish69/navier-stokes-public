---
theorem_id: forward-gold-active-capacity-signed-height-record-admission-boundary-20260704
status: strict-reduction-and-authority-boundary-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / record-admitted active capacity
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - SignedCriticalHeightSignPersistenceOrPeakBound.A
  - RecordAdmittedActiveFullExchangeCoupledStorage.A
  - ParentActivePotentialCapacityDomination.A
  - TFE2748B.1343
  - TFE2748B.1393
  - TFE2748B.1555
role: >-
  Puts the current active-capacity/full-exchange physical story under the
  signed-height record criterion. The TFE2748B active-capacity theorem is a
  local selected-meter source theorem; it has Gold force only when the selected
  meter is the parent-admitted meter of the same signed-height record
  upcrossing before readout.
source_refs:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-current-active-capacity-full-exchange-physical-story-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-meter-entropy-flux-split-same-history-capacity-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-root-payment-physical-spine-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-peak-control-proof-pass-20260703.md
completion_truth: >-
  This note proves no Navier-Stokes smoothness theorem and no active-capacity
  estimate. It is a strict reduction and authority correction: TFE2748B.1343 /
  TFE2748B.1393 / TFE2748B.1555 are support unless they are proved in
  record-admitted form for the signed-height upcrossing that needs payment.
---

# Active capacity under signed-height record admission

## 1. The same physical event

The primitive Gold event is a record upcrossing of the signed critical height

\[
H(t)={1\over2}\|\Lambda^{1/2}u(t)\|_2^2,
\qquad
{dH\over dt}=P(t)-\nu D(t).
\tag{ASH.1}
\]

On a record interval \([a,b]\) with \(H(a)=\lambda\) and \(H(b)=2\lambda\),
the same velocity field has paid viscosity and still gained height:

\[
\int_a^bP(t)\,dt
=H(b)-H(a)+\nu\int_a^bD(t)\,dt
\ge\lambda .
\tag{ASH.2}
\]

That is the physical work to be explained. A selected-meter capacity theorem
helps this event only when its meter is constructed from this same record work,
in the same parent packet, before the record is read as positive.

## 2. Physical translation before the estimate

The object is one evolving parent packet of fluid, followed through the record
interval. Transport moves the packet without creating signed height by itself.
Incompressibility keeps the packet volume-preserving and forces pressure to act
as a nonlocal constraint, so pressure work is a redistribution of the same
velocity field rather than new mass or new energy. Viscosity is the only direct
dissipative payer; it lowers the packet through the \(D(t)\) term and also
defines the parabolic capacity available at that scale.

The signed-height question is this: when \(H(t)\) makes a new record, did the
same packet produce a real aligned pressure-current event before viscosity and
legal stops removed it, or did the apparent positive record come from reading a
selector after the fact? Scale matters because a very high, very thin record can
have large instantaneous height without carrying enough time-thickness to pay a
finite same-fluid charge. Sign matters because the positive selected face is
only meaningful if its opposite lobe, return channel, or dissipative payment is
kept in the same physical history.

This is why active capacity has to be record-admitted. The capacity estimate is
allowed to count only after the selected meter has been tied to the same
pre-readout record work. Otherwise the theorem may control a legitimate parent
meter while the signed-height record rises through a different physical channel.

## 3. What the active-capacity theorem controls

The current TFE2748B bottom controls a different-looking object: the positive
motion of a parent-announced selected meter after raw same-parent atoms and the
retained opposite-lobe reserve have been installed. Its current form is the
active compensator estimate

\[
a_\Phi(F_P)[\mathcal L_P\log W_P^{crit}]_+\,d\mathfrak m_P
\le
-dK_P^{act}
+\vartheta\,\operatorname{Cap}_{A,P}
+dE_P^0
\quad\text{in the parent form sense,}
\tag{ASH.3}
\]

with \(K_P^{act}\) bounded below from the original data and
\(C_N\vartheta<1\). This is TFE2748B.1343 /
ParentActivePotentialCapacityDomination.A, equivalently the coupled
active-transit/full-exchange storage rows TFE2748B.1393 and TFE2748B.1555.

Physically, `(ASH.3)' says: after pressure has only redistributed the same
parent packet, viscosity supplies the parent capacity, and the selected meter
is not allowed to extract positive active potential faster than that capacity
and a bounded-below reserve can pay.

## 4. The missing Gold bridge

For signed height, `(ASH.3)' must be proved for the record-admitted meter. The
record-level theorem has two rows.

First, the scalar record work must enter the selected parent meter:

\[
1
\le
C_N\int_{[a,b]}dQ^{rec,align}_{P,[a,b]}
+Legal([a,b])+Stop([a,b]).
\tag{ASH.4}
\]

Second, the meter motion must be paid by the active-capacity/full-exchange
storage in the same record packet:

\[
dQ^{rec,meter}_{P,[a,b]}+[d\mathcal C^{crit,rec}_{P,[a,b]}]_+
\le
-dK^{rec,act}_{P,[a,b]}
+\vartheta\,\operatorname{Cap}_{A,P}^{rec}
+dE^{0,rec}_{P,[a,b]}.
\tag{ASH.5}
\]

The record-admitted coupled form keeps the admission row and the storage rows
simultaneous:

\[
\begin{pmatrix}
dQ^{rec,align}\\
dZ^{crit,rec}\\
d\Xi^{FE,act,rec}\\
dA^{AT,rec}
\end{pmatrix}
\le
-d\mathcal M^{rec}
+K^{rec}
\begin{pmatrix}
dQ^{rec,align}\\
dZ^{crit,rec}\\
d\Xi^{FE,act,rec}\\
dA^{AT,rec}
\end{pmatrix}
+d\Theta^0+dPaid+dStop,
\qquad
\rho(K^{rec})<1 .
\tag{ASH.6}
\]

Then each thin record pays a finite same-fluid charge, and the signed-height
record criterion gives peak control. This is exactly the record-admitted use of
the active-capacity theorem.

## 5. Why freestanding active capacity is not enough

A parent selected-meter capacity theorem can be true away from the record
event. Then it does not pay the scalar work in `(ASH.2)'.

The proof-theoretic model is simple. Let a parent capacity ledger satisfy a
strict storage estimate on one carrier, and let a signed-height record place a
unit of net work on a thin interval where that carrier has no admitted record
mass. The storage theorem remains true. The record still rises. No Gold charge
follows.

This is not a Navier-Stokes counterexample. It is the bridge obstruction:
capacity, storage, atom, and full-exchange words must be attached to the same
record upcrossing before they can pay that upcrossing.

## 6. Proof-method consequence

The proof search starts from a minimal thin record argument.

Assume a high signed-height record has no scale-aware thickness and no finite
same-fluid charge. The record work in `(ASH.2)' must then fail one of two
record-admitted rows:

\[
\neg\texttt{RecordParentAdjointMeterAdmission.A}
\quad\vee\quad
\neg\texttt{RecordAdmittedActiveFullExchangeCoupledStorage.A}.
\tag{ASH.7}
\]

In the second branch, the active-capacity failure is the record-local version
of the subunit parent mode in TFE2748B.973-TFE2748B.976: a parent-announced
test sees positive log-meter speed that beats the same packet's parabolic
capacity after paid exits are removed. That mode is a useful obstruction only
when it is the mode of the signed-height record.

## 7. Current classification

Proof installed here: none.

Strict reduction installed here:

\[
\begin{array}{c}
\texttt{RecordParentAdjointMeterAdmission.A}\\
+\texttt{RecordAdmittedActiveFullExchangeCoupledStorage.A}
\end{array}
\Longrightarrow
\texttt{SignedCriticalHeightSignPersistenceOrPeakBound.A}.
\tag{ASH.8}
\]

Checked obstruction installed here: a freestanding proof of TFE2748B.1343,
TFE2748B.1393, or TFE2748B.1555 does not by itself prove signed-height peak
control unless the selected meter is the parent-admitted record meter for the
same upcrossing.

Open proof-sized object:

\[
\text{derive `(ASH.4)' and `(ASH.6)' from the original Navier-Stokes packet}
\]
\[
\text{before record readout, with no self-feeding feedback loop.}
\tag{ASH.9}
\]

That is the current physical boundary: active capacity is the right lower
selected-meter source, but signed height only sees it through record admission.
