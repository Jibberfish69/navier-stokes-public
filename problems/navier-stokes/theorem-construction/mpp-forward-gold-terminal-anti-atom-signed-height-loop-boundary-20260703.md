---
theorem_id: forward-gold-terminal-anti-atom-signed-height-loop-boundary-20260703
status: noncircularity-boundary-installed
created: 2026-07-03
problem: navier-stokes
route: forward-gold-signed-critical-height-restart
logical_landing_node: TerminalAntiAtomSignedHeightLoopBoundary.A
source_surfaces:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-restart-after-positive-clipping-demotion-20260702.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-peak-control-proof-pass-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-upcrossing-criterion-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-net-work-terminal-anti-atom-reserve-reduction-20260703.md
completion_truth: >-
  This note installs a noncircularity boundary. It does not prove the Gold
  theorem. It classifies record terminal anti-atom reserve as a terminal support
  and reduction face unless it is independently derived from the signed
  critical-height dynamics and supplies the same-fluid thickness-or-charge
  criterion for record upcrossings.
---

# Terminal anti-atom / signed-height loop boundary

## 1. One physical story

The physical object is still one Navier-Stokes velocity field from one original
smooth datum. Gold is currently watching the signed critical height

\[
H(t)={1\over2}\|\Lambda^{1/2}u(t)\|_2^2,
\qquad
{dH\over dt}=P(t)-\nu D(t).
\tag{TAS.1}
\]

A record upcrossing of \(H\) means the same fluid packet has gained signed
critical height. The scalar equation already proves positive net nonlinear work
on that record:

\[
\int_a^bP(t)\,dt
=H(b)-H(a)+\nu\int_a^bD(t)\,dt>0.
\tag{TAS.2}
\]

The physical burden is not to count the positive part afterward. The burden is
to explain why a high signed-height record cannot be arbitrarily thin and free.
The record must either occupy enough physical time to spend the finite
\(L^2_t\) height budget, or pay a finite same-fluid charge through viscosity,
pressure reorientation, transport/frame rotation, source depletion, stopping,
legal reselection, or a proved same-parent storage bridge.

## 2. Where terminal anti-atoms enter

The terminal anti-atom appears only after a chain of readings has already been
chosen:

\[
\text{record signed work}
\to
\text{parent-adjoint selected meter}
\to
\text{one-sided aligned current}
\to
\text{unpaid terminal residue}.
\tag{TAS.3}
\]

At the last step, the unpaid residue can be named as a record-normalized
terminal anti-atom. The corresponding reserve theorem says that this residue is
paid by signed-partner saturation, endpoint jump control, geometry/tower return,
material-record return, or a small viscous tail before the record is counted.

That is a valid support reading of the same packet. It becomes theorem-grade
Gold progress only when the payment is produced from the signed-height event
itself.

## 3. Checked loop

The current record-net reduction has the conditional chain

\[
\begin{array}{c}
\texttt{SignedHeightRecordNetWorkAdmission.A}\\
+\texttt{RecordWorkParentAdjointMeterAdmission.A}\\
+\texttt{RecordTerminalAntiAtomReserve.A}
\end{array}
\Longrightarrow
\texttt{RecordWorkParentAdjointAlignedCurrentDomination.A}
\Longrightarrow
\texttt{RecordNetWorkNativeEdgeSpend.A}.
\tag{TAS.4}
\]

The first line is proved only at the scalar net-work level. The parent meter
admission and terminal anti-atom reserve remain open.

The live authority surfaces also state that terminal anti-atom, native-reserve,
source-refill, atom, child, and positive \(L^1\) objects are readouts,
countertests, or sufficient-but-unproved entrances unless they prove signed
critical-height sign-persistence or peak-height control.

Therefore the upstream use

\[
\texttt{RecordTerminalAntiAtomReserve.A}
\Longrightarrow
\texttt{SignedCriticalHeightSignPersistenceOrPeakBound.A}
\tag{TAS.5}
\]

is unlicensed unless `RecordTerminalAntiAtomReserve.A' is proved directly from
the same signed-height dynamics and gives the record-upcrossing
thickness-or-charge criterion.

Without that direct derivation, the route loops:

\[
\text{terminal anti-atom reserve}
\leadsto
\text{record-net spend}
\leadsto
\text{signed-height control},
\qquad
\text{while the reserve itself still needs signed-height control.}
\tag{TAS.6}
\]

## 4. Classification

Proof:

\[
\int_a^bP(t)\,dt
=H(b)-H(a)+\nu\int_a^bD(t)\,dt>0
\]

on a signed-height record upcrossing.

Strict reductions:

\[
\texttt{RecordUpcrossingThicknessOrChargeCriterion.A}
\Longrightarrow
\texttt{SignedCriticalHeightSignPersistenceOrPeakBound.A},
\]

and

\[
\texttt{RecordTerminalAntiAtomReserve.A}
\Longrightarrow
\texttt{RecordWorkParentAdjointAlignedCurrentDomination.A}
\]

after parent-meter admission.

Checked obstruction:

\[
\text{current representation, zero mean, and same-parent atom pairing do not
exclude positive aligned surplus.}
\]

Support:

\[
\text{terminal anti-atoms, tail-material record payment, atom ledgers, fibre
Jordan decomposition, endpoint routing, and TFE2748B storage coordinates.}
\]

Open producer:

\[
\texttt{SignedCriticalHeightSignPersistenceOrPeakBound.A}
\]

in the concrete record form: every high signed critical-height record upcrossing
has scale-aware thickness or pays a finite original-data same-fluid charge.

## 5. Boundary for future work

Terminal anti-atom reserve may be used as a diagnostic or as a conditional
supplier below the signed-height story. It may not be used as the primitive Gold
producer.

A future theorem may promote it only by proving, from the same Navier-Stokes
packet and the signed-height equation, that every terminal anti-atom on a high
record upcrossing supplies one of the two branches:

\[
|\{t:H(t)\ge\lambda\}|\gtrsim \lambda^{-2}
\qquad\text{or}\qquad
{\mathcal C}([a,b])\ge c_*
\tag{TAS.7}
\]

with a finite original-data budget for \({\mathcal C}\). Until then, the
terminal anti-atom is the end-trace of the missing physical payment, not the
payment itself.
