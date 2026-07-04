---
theorem_id: forward-gold-record-face-polarity-same-face-no-cancellation-reduction-20260704
status: strict-reduction-and-checked-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / record-admitted compactness
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - RecordPolarityConeClosedness.A
  - RecordPolaritySameFaceNoCancellation.A
role: >
  Sharpens the polarity half of record-admitted face persistence. It shows that
  carrier tightness and local thickness do not preserve the positive signed
  record face unless opposite signed partners that erase that face are retained
  or charged on the same admitted face before readout.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-radon-nikodym-tightness-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-local-thickness-charge-modulus-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-anti-atom-signed-height-loop-boundary-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-net-work-terminal-anti-atom-reserve-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-repeated-core-record-return-balance-law-sharpener-20260704.md
completion_truth: >-
  This note does not prove record-admitted compactness or Navier-Stokes
  smoothness. It proves a strict reduction: positive record-face persistence
  also needs a same-face no-cancellation / signed-partner charge law. A checked
  obstruction shows that signed weak convergence can erase a positive record
  face even when the carrier is tight and the positive mass is locally thick.
---

# Record-face polarity same-face no-cancellation reduction

## 1. Same physical sign on the same face

The object is one marked positive piece of signed record work in one moving
Navier-Stokes packet. The packet is transported by the velocity field, coupled
through pressure and incompressibility, drained by viscosity, read at a fixed
scale and parent address, and marked by the sign of the signed critical-height
work before selected readout.

The previous local thickness-charge row keeps the positive face from hiding as
a zero-thickness carrier atom. It does not by itself keep the sign. A positive
piece of record work can be erased in the signed readout by an opposite piece
of the same packet landing on the same limiting face.

Physically, that opposite piece is not nothing. It is a return of the same
material history: sign change of the signed rate, pressure/transport
reorientation, frame rotation, endpoint jump, material-record return, legal
reselection, stopping, or exit. The compactness proof must either keep the
positive mark or charge that return.

## 2. The polarity row needed by compactness

Write the signed record-face work on a retained edge \(e\) as

\[
dW_e=dW_e^{+}-dW_e^{-}.
\tag{SFNC.1}
\]

Uniform absolute continuity of \(dW_e^{+}\) against the admitted carrier
prevents pure carrier escape. Polarity closedness asks for more: the positive
mark itself must be closed under the same-edge compactness topology.

A local same-face no-cancellation row has the form

\[
dW_e^{+}(A)
\le
dW_e^{surv,+}(A)
+d{\mathcal C}^{partner}_e(A)
+dLegal_e(A)+dStop_e(A)+dExit_e(A),
\tag{SFNC.2}
\]

for every retained pre-readout subface \(A\). Here \(dW_e^{surv,+}\) is the
positive record mass whose sign survives as a marked positive face in the limit,
and \(d{\mathcal C}^{partner}_e\) pays the opposite signed partner that erased
positive mass on the same face.

The row says: lost positive sign is physical return, not free cancellation.
Once the opposite lobe is retained or paid, the positive face is a real
same-packet object rather than a Jordan-decomposition artifact after readout.

## 3. Checked obstruction: signed convergence loses the positive face

Carrier tightness and local thickness do not imply polarity closedness. On one
parent face \(A=[0,1]\), take

\[
d\Xi_n=dx,\qquad
dW_n^{+}=dx,\qquad
dW_n^{-}=dx,\qquad
dW_n=0.
\tag{SFNC.3}
\]

The carrier is fixed and tight. The positive face is locally thick:

\[
dW_n^{+}(B)=d\Xi_n(B)
\quad\text{for every measurable }B\subset A.
\tag{SFNC.4}
\]

But the signed record work is zero at every stage:

\[
dW_n \rightharpoonup 0,
\qquad
(dW_\infty)^{+}=0,
\qquad
dW_n^{+}(A)=1.
\tag{SFNC.5}
\]

So a proof that passes only the signed measure, or reconstructs positivity only
after the signed limit, sees no positive record face. The physical positive
event has been cancelled by an equal negative return on the same face. Without
a partner charge, the compactness row has lost a unit of positive record work
without payment.

This is not a Navier-Stokes counterexample. It is the minimal model showing why
the Gold compactness route needs same-face polarity custody in addition to
carrier tightness.

## 4. Relation to terminal anti-atoms and negative return

Terminal anti-atom language is useful only at the point where it names this same
physical return. A terminal residue, endpoint jump, signed-partner saturation,
or material-record return can pay \(d{\mathcal C}^{partner}_e\) only when it is
attached to the positive subface whose sign was lost.

The repeated-core record/return reduction gives the same lesson in scalar form:
bounded record height does not control positive variation unless negative return
is charged in the same stopped material history. Here the same issue appears
inside compactness. A positive face can be present with full local thickness and
still disappear from the signed limit unless the opposite return is accounted
on that face.

Thus the old words are support until localized:

\[
\text{terminal anti-atom / negative return / signed-partner reserve}
\quad\text{feeds}\quad
d{\mathcal C}^{partner}_e
\tag{SFNC.6}
\]

only after same-face attachment is proved.

## 5. Strict reduction

The record-admitted face-persistence row now has two independent parts:

\[
\begin{aligned}
&\texttt{LocalRecordFaceThicknessOrChargeModulus.A}\\
&+\texttt{RecordPolaritySameFaceNoCancellation.A}
\end{aligned}
\Longrightarrow
\texttt{RecordAdmittedFacePersistence.A}.
\tag{SFNC.7}
\]

Together with same-edge no-detachment, this gives the compactness-facing
package:

\[
\begin{aligned}
&\texttt{SameEdgeNoDetachmentModulus.A}\\
&+\texttt{LocalRecordFaceThicknessOrChargeModulus.A}\\
&+\texttt{RecordPolaritySameFaceNoCancellation.A}
\end{aligned}
\Longrightarrow
\texttt{RecordFaceUniformIntegrabilityInAdmittedCarrier.A}
+\texttt{RecordPolarityConeClosedness.A}.
\tag{SFNC.8}
\]

This is a strict reduction, not closure. The remaining producer theorem must
come from the original same-fluid Navier-Stokes dynamics: whenever a positive
record subface loses sign in the admitted carrier, the opposite signed partner
must be retained as the same record face or paid by finite original-data
same-face charge before readout.
