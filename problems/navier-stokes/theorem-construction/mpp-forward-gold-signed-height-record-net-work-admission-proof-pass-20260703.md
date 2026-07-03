---
theorem_id: forward-gold-signed-height-record-net-work-admission-proof-pass-20260703
status: strict-reduction-net-work-admission-open
created: 2026-07-03
problem: navier-stokes
route: forward-gold-signed-critical-height-restart
logical_landing_node: SignedHeightRecordNetWorkAdmission.A
source_surfaces:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-construction/mpp-ns-unified-physical-roof-control-synthesis-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-local-active-density-witness-cover-proof-pass-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-upcrossing-criterion-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-heatdwell-sampling-direct-attempt-and-bv-correction-20260506.md
  - problems/navier-stokes/theorem-construction/mpp-terminal-adjoint-response-native-edge-anchoring-l3-direct-attempt-20260522.md
completion_truth: >-
  This is a proof pass and strict reduction, not Gold closure. It replaces the
  pointwise positive-production trace target by the physically weaker record-net
  signed work target. The signed-height equation supplies positive net nonlinear
  work on every record upcrossing, but the current repo does not yet prove the
  native same-parent admission and scale-normalized storage needed to turn that
  net work into finite same-fluid charge.
---

# Signed-height record-net work admission proof pass

## 1. Physical object

There is one smooth Navier-Stokes evolution and one signed critical height

\[
H(t)={1\over2}\|\Lambda^{1/2}u(t)\|_2^2,
\qquad
{dH\over dt}=P(t)-\nu D(t).
\tag{RNW.1}
\]

For a record upcrossing \([a,b]\) from \(\lambda\) to \(2\lambda\),

\[
\int_a^b P(t)\,dt
=
H(b)-H(a)+\nu\int_a^bD(t)\,dt
\ge\lambda .
\tag{RNW.2}
\]

This is the whole physical event. The same fluid packet raised \(H\), and
viscosity made that rise harder. Therefore the nonlinear pressure/transport/strain
work over the record interval is already positive in net. No pointwise clipping is
needed to find a positive object.

## 2. Cleaner theorem

The preferred Gold producer is:

\[
\texttt{SignedHeightRecordNetWorkAdmission.A}.
\tag{RNW.3}
\]

For every thin high signed-height record upcrossing \([a,b]\), construct a
finite-overlap parent-known family \({\mathcal W}_{[a,b]}\) and signed native work
forms \(\omega_W\) such that the record work is captured after integrating over
the witness windows:

\[
\lambda
\le
C_N
\sum_{W\in{\mathcal W}_{[a,b]}}
\left[\int_{I_W}\omega_W\right]_+
+Legal([a,b])+Stop([a,b]).
\tag{RNW.4}
\]

The positive part in `(RNW.4)' is a net sign over a parent witness window. It is
not pointwise clipping of the instantaneous scalar rate. Each \(\omega_W\) must be
a native same-fluid work form: the same high packet, the same low strain or
pressure-Hodge/current coefficient from \(u\), the same material interval, and the
same parent-announced charge coordinate.

The associated storage clause is scale-normalized:

\[
\sum_{\text{disjoint records }j}
\lambda_j^{-1}
\sum_{W\in{\mathcal W}_j}
\left[\int_{I_W}\omega_W\right]_+
\le C_N(u_0)+Paid+Legal+Stop .
\tag{RNW.5}
\]

Together `(RNW.4)' and `(RNW.5)' give a unit charge for each thin record
upcrossing. The signed-height record criterion then gives peak control.

## 3. What current sources prove

The signed-height equation proves `(RNW.2)'. That is proof, but only of net
record work.

The heat-dwell correction supports the method: it already replaced accumulated
positive strain by positive net strain over a packet window. Its corrected form
uses

\[
\left[\int_{I_P}\sigma_P(t)\,dt\right]_+
\tag{RNW.6}
\]

instead of accumulated pointwise positive strain. This is the same no-clipping
principle, but it is support only; it leaves `NetPackSpend.A' as the theorem to
prove.

The terminal adjoint-response note gives the necessary warning. A large signed
work pairing is not enough unless the response covector is anchored to the native
same-fluid source edge: same high packet, same retained family, same low strain
coefficient from \(u\), and same native source edge. That is exactly the admission
part of `(RNW.4)'.

The TFE/source-wall storage surfaces can matter only after this admission. A
strict same-parent storage inequality budgets the parent source faces it contains.
It does not by itself prove that the signed record work from `(RNW.2)' is one of
those faces.

## 4. Direct proof attempt and obstruction

The direct proof attempt is:

1. use `(RNW.2)' to get positive net nonlinear work on the record interval;
2. decompose that work into parent-native signed work forms \(\omega_W\);
3. charge the positive net witness work by strict same-parent storage.

Step 1 is installed. Steps 2 and 3 are not.

The obstruction is not clipping. The obstruction is native admission plus
scale-normalized storage. The scalar quantity

\[
\int_a^bP(t)\,dt
\]

is global in the field. It does not by itself name the parent interval, carrier,
direction, low-strain coefficient, pressure-Hodge current, Schur coordinate,
reset interval, or superheat branch that must pay it. Choosing those after the
record is known would recreate the same post-readout selection problem in a net
form.

## 5. Strict reduction

The current Gold chain is therefore:

\[
\texttt{SignedHeightRecordNetWorkAdmission.A}
+
\texttt{SameParentCoupledActiveStorage.A}
\Longrightarrow
\texttt{RecordLocalActiveDensityWitnessCover.A}
\Longrightarrow
\texttt{RecordLocalCriticalServiceChargeExhaustion.A}
\Longrightarrow
\sup_{t<T}H(t)<\infty .
\tag{RNW.7}
\]

This is smaller and cleaner than the pointwise \(P_+dt\) route. It keeps the one
physical story: a record rise of signed height is paid by net nonlinear work in
the same material history, and the proof must identify that work inside
parent-native source faces with strict no-self-feeding storage.

The remaining open theorem is:

\[
\boxed{
\text{native same-parent admission of record-net signed work}
+
\text{scale-normalized no-self-feeding storage.}
}
\tag{RNW.8}
\]

Until `(RNW.8)' is proved, Gold has a strict reduction and a sharper obstruction,
not closure.
