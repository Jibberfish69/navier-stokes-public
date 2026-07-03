---
theorem_id: forward-gold-signed-height-record-net-work-admission-proof-pass-20260703
status: strict-reduction-positive-selection-storage-open
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
  parent-known positive-selection storage law for the menu. The menu
  identity/admission part is now separated from the still-open positive-selection
  storage part.
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

## 9. What the menu construction actually proves

The preannounced menu has a proof-level part. For a smooth preterminal solution,
apply the Leray-projected paraproduct decomposition to the signed production

\[
P(t)=
-\langle \Lambda^{1/2}{\mathbb P}(u\cdot\nabla u),
\Lambda^{1/2}u\rangle .
\tag{RNW.17}
\]

Before any record interval is selected, this writes \(P(t)\,dt\) as the sum of
strict low-high, strict high-low, and finite-collar resonant native work forms,
plus legal/collar/stop remainders already typed in the derivative-LP bridge:

\[
P(t)\,dt
=
\sum_{e\in{\mathcal E}_P(t)}\omega_e(t)\,dt
+dLegal_P+dStop_P .
\tag{RNW.18}
\]

Each edge \(e\) in `(RNW.18)' has the physical address required by the menu:
retained high packet, low strain/current coefficient from the same velocity
field, material time coordinate, and parent charge coordinate. This proves the
identity/admission half of `(RNW.13)' at finite truncation, with the smooth limit
handled by the already legal LP/collar remainders.

For a record upcrossing \([a,b]\), `(RNW.2)' and `(RNW.18)' give

\[
\lambda
\le
\int_a^bP(t)\,dt
\le
\left[\sum_{e}\int_{I_e\cap[a,b]}\omega_e\right]_+
+Legal([a,b])+Stop([a,b]).
\tag{RNW.19}
\]

Positive-part subadditivity then gives the record admission row

\[
\lambda
\le
\sum_e
\left[\int_{I_e\cap[a,b]}\omega_e\right]_+
+Legal([a,b])+Stop([a,b]).
\tag{RNW.20}
\]

So the remaining theorem is not the existence of native coordinates for the work.
The remaining theorem is the storage of positive selections from those
coordinates across all future disjoint records:

\[
\sum_j\lambda_j^{-1}
\sum_e
\left[\int_{I_e\cap[a_j,b_j]}\omega_e\right]_+
\le C_N(u_0)+Paid+Legal+Stop .
\tag{RNW.21}
\]

This is the hard half of `RecordNativeWorkMenuPreannouncement.A'. Call it

\[
\texttt{RecordNativeWorkMenuPositiveSelectionStorage.A}.
\tag{RNW.22}
\]

The checked TFE rows do not prove `(RNW.22)'. The stopped root-generator
Carleson rows `(TFE2748B.897)'--`(TFE2748B.898)' store the root generator after
the active full-exchange ledger exists. The log-carrier rows
`(TFE2748B.1196)'--`(TFE2748B.1198)' store positive-baseline critical capacity
after the selected root reserve and log ratio are fixed. The critical-source and
full-exchange rows `(TFE2748B.1424)', `(TFE2748B.1527)'--`(TFE2748B.1531)', and
`(TFE2748B.1541a)'--`(TFE2748B.1556)' are lower storage faces once the selected
parent ledger exists. None of them proves finite positive-selection storage for
the whole preannounced native work menu of every future signed-height record.

The physical countermodel remains the same but is now sharper. A single smooth
signed production signal may decompose into many legal native work edges whose
signed sum raises \(H\), while different thin record intervals draw their
positive net excess from different edge coordinates. The scalar identity
`(RNW.18)' and the admission row `(RNW.20)' survive. The storage law `(RNW.21)'
fails unless the same fluid supplies an original-data reserve controlling the
positive variation of the whole menu.

## 10. Storage pressure test against the TFE three-face split

The nearest installed storage architecture is not arbitrary. In the TFE source
chain, a selected positive parent readout is supposed to enter one of three
same-parent faces before clipping:

\[
\begin{array}{ll}
\text{positive parent baseline:}&
\text{relative log-amplification/root-Carleson capacity},\\
\text{zero parent baseline:}&
\text{endpoint-seed/native-birth first-entry capacity},\\
\text{retained active motion:}&
\text{active-transit/full-exchange ledger.}
\end{array}
\tag{RNW.23}
\]

This is the right physical classification for the record menu too. A positive
menu selection from a high-packet/low-coefficient work edge either amplifies an
already present parent density, appears as first-entry material with no positive
parent baseline, or moves through the retained active loop of the same packet.
If every positive selection in `(RNW.21)' admitted into `(RNW.23)' before record
readout, then the stopped root-generator, endpoint-seed, and coupled
active/full-exchange storages would be the correct payment rows.

The strict bridge theorem is therefore:

\[
\texttt{RecordMenuCriticalFaceAdmission.A}.
\tag{RNW.24}
\]

For every disjoint record family and every positive selected menu edge in
`(RNW.21)', prove a finite-overlap parent-root projection into the three faces
of `(RNW.23)' before the record interval is used as a selector:

\[
\sum_j\lambda_j^{-1}
\sum_e
\left[\int_{I_e\cap[a_j,b_j]}\omega_e\right]_+
\le
C_N\Bigl(
d\rho_{crit}^{ac}
d\rho_{crit}^{entry}
d\Xi^{FE,act}
\Bigr)
+Legal+Stop.
\tag{RNW.25}
\]

Together with the simultaneous coupled storage inequality for
\((d\rho_{crit}^{ac},d\rho_{crit}^{entry},d\Xi^{FE,act})\), `(RNW.25)' implies
`RecordNativeWorkMenuPositiveSelectionStorage.A'.

The current repo does not yet prove `(RNW.25)'. The TFE rows
`(TFE2748B.911)'--`(TFE2748B.920)' and `(TFE2748B.1205)'--`(TFE2748B.1210)' prove
or reduce the three faces for selected critical-capacity coordinates after those
coordinates are already pulled to the stopped root reserve. They do not prove
that an arbitrary signed-height record-menu edge has entered one of those faces
before the record selection. So the open wall has moved one step lower:

\[
\texttt{RecordMenuCriticalFaceAdmission.A}
+\texttt{noncircular same-parent coupled storage}
\Longrightarrow
\texttt{RecordNativeWorkMenuPositiveSelectionStorage.A}.
\tag{RNW.26}
\]

This keeps the physical story single-valued. The payer is still the same
pressure/transport/strain work of the same velocity field. The proof must now
show that every future positive read of that work has a preexisting address in
the parent critical/root/endpoint/full-exchange ledger; otherwise the record
menu exists but its positive selections still have no finite original-data
reserve.

## 11. Root-projection faithfulness is the missing entrance to the faces

The attempted cases proof of `(RNW.25)' exposes a sharper entrance condition.
The three faces in `(RNW.23)' are exhaustive only after the selected object has
already been pulled to the parent root reserve. In the TFE notation this means
there are root densities, such as

\[
dA_Q^{sel,+}=f_Q\,dR_P^{root},
\qquad
dA_{\pi Q}^{sel,+}=f_{\pi Q}\,dR_P^{root},
\tag{RNW.27}
\]

or a retained active ledger coordinate inside \(d\Xi_P^{FE,act}\). Once
`(RNW.27)' is available, the positive-baseline / zero-baseline / active-motion
split is meaningful: \(f_{\pi Q}>0\) gives the log/root face,
\(f_{\pi Q}=0<f_Q\) gives the endpoint-seed face, and retained motion goes into
the active full-exchange face.

A signed-height native work edge from `(RNW.18)' does not automatically come
with `(RNW.27)'. It has a physical source address--high packet, low
strain/current coefficient, material time window, and parent charge coordinate--
but it still has to be seen faithfully by the parent pressure-Hodge/root
critical detector. Otherwise a positive record contribution can be real work of
the fluid while remaining invisible to the selected critical/root coordinate
that the TFE faces store.

The lower theorem is therefore:

\[
\texttt{RecordMenuRootProjectionFaithfulness.A}.
\tag{RNW.28}
\]

For every future-positive native work edge \(e\) in the preannounced record menu,
prove before record readout that either:

\[
\left[\int_{I_e\cap[a,b]}\omega_e\right]_+
\le
C_N\left(
dA_e^{root,+}
d\Xi_e^{FE,act}
\right)
+Legal_e+Stop_e,
\tag{RNW.29}
\]

with \(dA_e^{root,+}\) represented as in `(RNW.27)' on the stopped parent root
reserve, or the edge has already left through legal/stop/source-wall material.
Then the installed TFE face split for \(dA_e^{root,+}\), together with
active/full-exchange admission for \(d\Xi_e^{FE,act}\), gives
`RecordMenuCriticalFaceAdmission.A'.

This is exactly where the current repo remains open. The derivative-LP bridge
proves the native work coordinates. The terminal adjoint anchoring notes show
that response covectors need a same-edge anchoring theorem. The older
`ParaproductNativeSourceCapture.A' closes a retained \(L^3\) terminal
paraproduct subburden under its branch hypotheses and alternatives, but it does
not give root-projection faithfulness for every future-positive signed-height
record-menu edge. The pressure-Hodge selected-source faithfulness notes name the
analogous open mechanism: exclude selected source components that are nonzero as
work but invisible to the parent pressure-Hodge/root detector.

Thus the current strict reduction is:

\[
\texttt{RecordMenuRootProjectionFaithfulness.A}
+\texttt{TFE selected-critical face split}
\Longrightarrow
\texttt{RecordMenuCriticalFaceAdmission.A}
\Longrightarrow
\texttt{RecordNativeWorkMenuPositiveSelectionStorage.A}.
\tag{RNW.30}
\]

This is a genuine smaller theorem, not another alias for storage. It asks for
the physical visibility bridge from same-fluid work to parent critical/root
currency. Once that bridge is proved, the existing positive-baseline,
zero-baseline, and active full-exchange machinery has a lawful object to store.
