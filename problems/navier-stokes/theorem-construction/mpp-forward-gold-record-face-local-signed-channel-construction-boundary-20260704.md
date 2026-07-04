---
theorem_id: forward-gold-record-face-local-signed-channel-construction-boundary-20260704
status: strict-reduction-and-checked-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / same-face polarity custody
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - RecordFaceLocalSignedChannelConstruction.A
  - FaceLocalLostPositiveDomination.A
  - SameFacePartnerReturnLocalization.A
role: >-
  Names the physical producer left open by the same-face signed-channel
  localization proof. The formal measure lemma proves same-face partner return
  after a face-local signed work channel is already built. This note fixes the
  remaining PDE burden: construct that channel from the same pre-readout
  pressure, transport, viscosity, incompressibility, material-collar, detector,
  and parent-address data that admitted the positive record face.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-net-work-admission-proof-pass-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-pre-readout-custody-tuple-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-admission-no-detachment-modulus-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-local-thickness-charge-modulus-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-net-work-selected-meter-aligned-current-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-face-signed-channel-localization-proof-20260704.md
completion_truth: >-
  This is not Gold closure. It is a strict reduction plus an obstruction to
  using global negative return, scalar BV, or post-readout LP/Bony bookkeeping as
  substitutes. The remaining proof must build a signed work measure on each
  admitted positive record face before aggregation and bound the negative part
  from the original same-fluid packet.
---

# Record-face local signed-channel construction boundary

## 1. Physical object

Fix one signed-height record upcrossing in one smooth Navier-Stokes velocity
field. A retained positive record face \(e\) is not just a scalar sign in the
record ledger. It is one same-fluid packet seen through a parent-announced high
packet, low strain/current coefficient, material time window, detector angle or
silent-service branch, exact projector chart, and face address before the record
is read.

The formal same-face localization proof already says what would be enough: on
that face, there must be a signed work channel

\[
dJ_e=dJ_e^+-dJ_e^-
\tag{FSC.1}
\]

before aggregation. Physically, this channel must be the signed pressure,
self-transport/frame, viscous, endpoint/material, and incompressibility-constrained
work of the same packet on the same admitted face. If the positive sign is lost,
the loss must appear as that same face returning, rotating, diffusing, stopping,
legally reselectioning, or exiting. A negative lobe on a different face is a
different physical event.

## 2. What the installed chain already gives

The signed-height record identity gives scalar net work:

\[
\int_a^b P(t)\,dt
=H(b)-H(a)+\nu\int_a^bD(t)\,dt .
\tag{FSC.2}
\]

This proves record work was present, but it does not give the face on which the
work lived before readout.

The retained-edge pre-readout custody tuple demands that the same future-positive
edge carry its selector score, projector chart, detector/service split, and face
address together before readout. That fixes the carrier type, but it does not
construct the signed return channel on that carrier.

The no-detachment and local thickness rows keep the admitted face from drifting
away or collapsing into an unpaid singular carrier. They preserve the face
topology, but they do not say that the negative sign payment is the negative part
of the same physical work channel.

The same-face signed-channel localization proof proves the formal measure step:

\[
dL_e
\le
C\,dJ_e^-+dLegal_e+dStop_e+dExit_e+dErr_e
\tag{FSC.3}
\]

plus a budget for \(\sum_e\int dJ_e^-\) implies
`SameFacePartnerReturnLocalization.A`, and then
`RecordPolaritySameFaceNoCancellation.A` once same-edge no-detachment and local
face thickness are present.

So the live proof burden is exactly the missing physical input to `(FSC.3)`.

## 3. Strict reduced theorem

`RecordFaceLocalSignedChannelConstruction.A` should prove the following for each
record-admitted positive face \(e\), before selected readout:

1. a finite signed measure

   \[
   dJ_e
   =
   dJ_e^{press}
   +dJ_e^{tr/frame}
   +dJ_e^{visc}
   +dJ_e^{mat/end}
   +dJ_e^{inc}
   \tag{FSC.4}
   \]

   on the pre-readout face sigma-algebra, built from the same velocity field and
   the same retained parent packet that admitted \(e\);

2. local lost-positive domination `(FSC.3)' on every pre-readout subface;

3. an original-data negative-return budget

   \[
   \sum_e\int dJ_e^-
   \le
   C_N(u_0)+Paid+Legal+Stop+Exit+Err .
   \tag{FSC.5}
   \]

If this construction is proved, the installed formal lemma gives

\[
\begin{aligned}
&\texttt{RecordFaceLocalSignedChannelConstruction.A}
+\texttt{SameEdgeNoDetachmentModulus.A}\\
&\qquad
+\texttt{LocalRecordFaceThicknessOrChargeModulus.A}
\Longrightarrow
\texttt{SameFacePartnerReturnLocalization.A}\\
&\qquad\Longrightarrow
\texttt{RecordPolaritySameFaceNoCancellation.A}.
\end{aligned}
\tag{FSC.6}
\]

This is a smaller theorem than the full Gold route because it assumes the
record-admitted face and asks only for its same-face signed work channel and
negative-return budget.

## 4. Checked obstruction to substitutes

Global negative return can pass the scalar account while failing the physical
same-face account. Put lost positive mass on one admitted face \(A\) and negative
return on another admitted face \(B\):

\[
dL_A=dx,\qquad dJ_A^-=0,\qquad dL_B=0,\qquad dJ_B^-=dx .
\tag{FSC.7}
\]

The total negative return equals the total lost positive mass, but `(FSC.3)'
fails on \(A\). This is why scalar BV, terminal anti-atom reserve, and total
stopped-record negative return remain support until they are localized to the
same admitted positive face before aggregation.

Post-readout LP/Bony bookkeeping has the same defect. It can represent where
the already-read record decomposes, but it can still choose the paying coordinate
after the positive record face is known. The construction must run in the parent
history: same packet, same parent address, same material window, same detector
branch, same face, before record selection.

## 5. Current proof truth

The repo now has a formal same-face localization proof. It does not yet have the
physical signed channel that proof consumes.

The next Gold sign burden is not to add more negative-return language. It is to
prove `RecordFaceLocalSignedChannelConstruction.A`: the signed pressure,
transport/frame, viscosity, material-endpoint, and incompressibility work of the
same retained packet must be measurable on each admitted positive record face
before aggregation, and its negative part must be bounded by original-data
payment.
