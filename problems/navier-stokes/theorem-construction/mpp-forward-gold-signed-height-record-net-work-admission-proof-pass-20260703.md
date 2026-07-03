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
  - problems/navier-stokes/theorem-construction/mpp-active-height-flux-trichotomy-route-20260506.md
  - problems/navier-stokes/theorem-construction/mpp-terminal-adjoint-response-native-edge-anchoring-l3-direct-attempt-20260522.md
  - problems/navier-stokes/theorem-construction/derivative-lp-compatibility-bridge-note.md
completion_truth: >-
  This is a proof pass and strict reduction, not Gold closure. It replaces the
  pointwise positive-production trace target by the physically weaker record-net
  signed work target. The signed-height equation supplies positive net nonlinear
  work on every record upcrossing, but the current repo does not yet prove the
  native same-parent admission and scale-normalized storage needed to turn that
  net work into finite same-fluid charge. The current sharper reduction is to
  preannounce the whole native work menu before record readout and prove a
  parent-known positive-selection storage law for the menu.
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

The active-height-flux route gives the same shape downstream. After heat-dwell
sampling has replaced accumulated positive action by net action on one heat
window, the remaining estimate is exactly `NetPackSpend.A': bound the positive
net strain by transported deformation, frame error, and packet error ledgers.
So the physical story has already pushed this class of problem away from
clipping and toward net-window spend.

The derivative-LP bridge supplies the algebraic localization pattern. It replaces
the false monolithic localization claim by the explicit Bony split: strict
low-high coefficient packet, strict high-low coefficient packet, and finite-collar
resonant packet. That is support for writing the signed record work as native
work forms; it is not yet storage.

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
3. anchor those forms to the actual native same-fluid source edge;
4. charge the positive net witness work by strict same-parent storage.

Step 1 is installed. Step 2 is algebraically supported by the LP/Bony split and
related native-source decompositions, but only at the level of coordinates. Steps
3 and 4 are not installed.

The obstruction is not clipping, and it is not the existence of a formal
frequency decomposition. The obstruction is native edge anchoring plus
scale-normalized storage. The scalar quantity

\[
\int_a^bP(t)\,dt
\]

is global in the field. A Bony or pressure-Hodge split can express it in legal
coordinates, but that expression does not by itself prove that the selected
record work is anchored to the same parent edge with a finite source budget.
Choosing the paying edge after the record is known would recreate the same
post-readout selection problem in a net form.

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
\text{native same-parent edge anchoring of record-net signed work}
+
\text{scale-normalized no-self-feeding storage.}
}
\tag{RNW.8}
\]

Until `(RNW.8)' is proved, Gold has a strict reduction and a sharper obstruction,
not closure.

Equivalently, the next cleaner producer is:

\[
\texttt{RecordNetWorkNativeEdgeSpend.A}.
\tag{RNW.9}
\]

It says that the net signed work that raised a record \(H\)-event can be placed
on parent-native edges by the algebraic split, anchored to the actual same-fluid
high packet and low strain/current coefficient, and spent with a
scale-normalized same-parent storage budget. The algebraic split is support; the
edge anchoring and spend are the theorem.

## 6. Lowered source form

The follow-up reduction
`mpp-forward-gold-record-net-work-selected-meter-aligned-current-reduction-20260703.md`
lowers `(RNW.9)' into the parent-meter language already isolated by the TFE2748B
storage surfaces. After a selected meter is pulled into the parent adjoint, the
repo already has same-parent atomization and current-representation support. The
remaining theorem is not raw edge attachment; it is record parent-adjoint meter
admission plus one-sided aligned-current/Fisher domination for that meter.

In short:

\[
\texttt{RecordNetWorkNativeEdgeSpend.A}
\Leftarrow
\texttt{RecordWorkParentAdjointAlignedCurrentDomination.A}.
\tag{RNW.10}
\]

This is still open. It identifies the next source theorem more sharply: the
positive anti-gradient current that creates selected record entropy must be
absorbed by parent Fisher dissipation and paid packet motion before clipping.

## 7. Admission-row pressure test

The scalar signed-height equation proves positivity of the record work, not its
parent source address. In physical terms, `(RNW.2)' says that the same velocity
field did enough nonlinear work over \([a,b]\) to raise \(H\). It does not say
which same-fluid high packet, which low strain/current coefficient, which
material interval, and which parent-announced charge coordinate carried that
work before the record was read.

The installed localization and adjoint-response surfaces confirm this boundary.
The derivative-LP bridge gives the legal coordinates for native work forms:
strict low-high, strict high-low, and finite-collar resonant packets. That is
coordinate support. It does not anchor a positive record-work functional to a
stored parent edge. The terminal adjoint-response note gives the same warning:
a large signed response pairing may live on a projected response covector unless
that covector is proved to stay on the same retained high packet, the same low
strain coefficient from \(u\), and the same native source edge.

So no proof can use only

\[
\int_a^bP(t)\,dt\ge\lambda
\tag{RNW.11}
\]

and then import the TFE storage budget. A proof with only `(RNW.11)' has lost the
source address. The proof-theoretic countermodel is simple: split the scalar work
into two legal signed native coordinates with the same total integral, give
strict parent storage to only one coordinate, and let the positive record excess
sit in the other. The record upcrossing and the storage theorem are both true in
that model, but the record has not been admitted to the stored parent source.
This is not a Navier-Stokes counterexample; it is the exact logical gap that a
Navier-Stokes proof must close.

This is the record-level form of the scalar spike obstruction. That obstruction
shows that signed scalar information, the critical product estimate, and finite
\(L^2_tH\) can still allow infinitely many high thin records unless the proof
uses the information the scalar model discards: same velocity field, same
material packet, parent-known source admission, pressure/transport geometry,
viscosity, and finite same-fluid charge or storage.

The admission row of
`RecordAdmittedActiveFullExchangeCoupledStorage.A' is therefore the native-edge
preannouncement statement:

\[
\lambda
\le
C_N
\sum_{W\in{\mathcal W}_{[a,b]}}
\left[\int_{I_W}\omega_W\right]_+
+Legal([a,b])+Stop([a,b]),
\tag{RNW.12}
\]

where every \(W\), \(\omega_W\), parent carrier, low coefficient/current, and
charge coordinate is built from the original same-fluid packet before the record
readout. Once `(RNW.12)' is built into the simultaneous coupled storage matrix,
the TFE active/full-exchange rows become usable payment rows. Before `(RNW.12)',
they are lower-row support only.

## 8. Preannounced native-work menu attempt

The physical construction attempt is to build the whole menu of possible paying
edges before the record is known. For a parent packet \(P\), each menu edge is a
same-fluid interaction:

\[
e=(\text{retained high packet},\ \text{low strain/current coefficient from }u,
\ \text{material time window},\ \text{parent charge coordinate}).
\]

The Navier-Stokes nonlinearity should then give signed edge densities
\(\omega_e\) on this preexisting menu such that their projection to time recovers
the signed height production:

\[
\pi_{t\#}\sum_{e\in{\mathcal E}_P}\omega_e\,d\sigma_e
=
P(t)\,dt+dLegal_P+dStop_P .
\tag{RNW.13}
\]

This would keep the physical order clean. First the fluid supplies every possible
high-packet/low-coefficient work edge from the original parent history. Later a
record interval \([a,b]\) may only select positive net work from that already
announced menu:

\[
\lambda
\le
C_N\sum_{e\in{\mathcal E}_P([a,b])}
\left[\int_{I_e\cap[a,b]}\omega_e\right]_+
+Legal([a,b])+Stop([a,b]).
\tag{RNW.14}
\]

The missing storage law is the positive-selection reserve for this same menu:

\[
\sum_{\text{disjoint records }j}\lambda_j^{-1}
\sum_{e\in{\mathcal E}_{P_j}([a_j,b_j])}
\left[\int_{I_e\cap[a_j,b_j]}\omega_e\right]_+
\le C_N(u_0)+Paid+Legal+Stop .
\tag{RNW.15}
\]

Call the smaller theorem

\[
\texttt{RecordNativeWorkMenuPreannouncement.A}.
\tag{RNW.16}
\]

It says: construct the signed native work menu from the parent history before
record readout, prove that record-positive selections from that menu are
Carleson or storage packed, and only then feed those selections into the
record-admitted active/full-exchange coupled storage matrix.

This is a strict reduction of `(RNW.12)'. Equations `(RNW.13)'--`(RNW.15)' imply
the native-edge preannouncement row because the record can no longer choose a
paying edge after seeing the spike; it can only read positive net work off a
stored menu that the same fluid had already built. The current repo has support
for the coordinates of this menu, not the menu theorem itself. LP/Bony supplies
strict low-high, strict high-low, and finite-collar resonant coordinates.
Terminal adjoint response supplies a response covector. The TFE rows supply lower
storage faces after admission. None of those sources proves the parent-known
positive-selection law `(RNW.15)' for all future record intervals.

The resulting obstruction is physical, not merely formal. Positive scalar record
work can be spread across legal native coordinates whose signs cancel in time and
whose stored parts are not the parts that later carry the record excess. A proof
must therefore show that the same-fluid pressure/transport/strain interaction
creates a finite reserve over the full native menu, so an unstored edge cannot
become the hidden payer of an arbitrarily thin record.
