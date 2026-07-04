---
theorem_id: forward-gold-primitive-prereturn-face-trace-boundary-charge-reduction-20260704
status: strict-reduction-and-checked-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / primitive pre-return face trace
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - PrimitivePreReturnFaceTraceBoundaryCharge.A
  - PrimitiveStoppedChamberFaceTraceFiberOrPaidDetachment.A
  - PrimitivePreReturnFaceTraceNoDetachmentModulus.A
  - PrimitivePreReturnFaceTraceLocalThicknessBoundaryCharge.A
role: >-
  Sharpens the face row of PrimitiveChannelPreReturnAddressChangeCharge.A. Before
  same-face return opens, a change of face address can only be paid by
  pre-readout face-trace ownership, no-detachment of that trace, local
  thickness/boundary service, legal loss, stop, or exit. Same-face negative
  return is downstream and cannot be used to build this charge.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-stopped-chamber-face-trace-fiber-atlas-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-prereturn-face-trace-no-detachment-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-prereturn-face-trace-local-thickness-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-prereturn-address-change-charge-split-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-prereturn-trace-address-process-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-chamber-face-local-signed-channel-construction-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-primitive-channel-trace-return-budget-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-local-signed-channel-primitive-ownership-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-admission-no-detachment-modulus-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-local-thickness-charge-modulus-reduction-20260704.md
completion_truth: >-
  This note does not prove PrimitivePreReturnFaceTraceBoundaryCharge.A. It proves
  a strict reduction and a checked obstruction: the current repo has formal
  face-local measure construction after a pre-readout face fiber exists, plus
  edge-level no-detachment/local-thickness support, but it does not yet prove
  primitive chamber face-trace boundary charge for |Y_{kappa,C}| d sigma dt
  events before same-face return is available.
---

# Primitive pre-return face-trace boundary charge reduction

## 1. Physical object

Work inside one admitted stopped common-selector chamber of one smooth
Navier-Stokes velocity field. The same primitive signed-channel event has
already been carried by transport, measured in a chart/projector frame, and read
through a detector/channel. The remaining pre-return face coordinate is a face
trace

\[
\pi_F:C_{\mathfrak R}\to\mathcal F_C
\tag{PFT.1}
\]

for the primitive signed-channel measure

\[
d\mu_{\kappa,C}=|Y_{\kappa,C}|\,d\sigma dt .
\tag{PFT.2}
\]

The face-trace boundary charge asks what happens when the same event tries to
leave, switch, split, or lose this face trace before return is paid. The allowed
payments are detachment service, local thickness loss, trace-boundary service,
legal loss, stop, or exit. Same-face negative return is not available yet,
because the whole point of the pre-return address process is to define which
face the return belongs to.

## 2. Lower physical inputs

The first input is the face fiber itself:

\[
\texttt{PrimitiveStoppedChamberFaceTraceFiberOrPaidDetachment.A}.
\tag{PFT.3}
\]

It supplies a parent-known pre-readout face trace for
\(d\mu_{\kappa,C}\)-almost every primitive event, or pays detachment, zero
thickness loss, legal loss, service, stop, or exit.

The new lower reduction for this row is:

\[
\begin{aligned}
&\texttt{PrimitiveStoppedChamberPreReadoutFaceAtlasOrPaidDetachment.A}\\
&+\texttt{PrimitiveStoppedChamberFaceOverlapBoundaryLaw.A}
\end{aligned}
\Longrightarrow
\texttt{PrimitiveStoppedChamberFaceTraceFiberOrPaidDetachment.A}.
\tag{PFT.3a}
\]

Physically, the chamber needs a parent-known face atlas and a pre-readout
overlap/boundary law before the proof can even say which face a primitive event
belongs to.

The second input is a no-detachment modulus for that primitive trace:

\[
\texttt{PrimitivePreReturnFaceTraceNoDetachmentModulus.A}.
\tag{PFT.4}
\]

It says that an event cannot silently move from one pre-readout face trace to
another while remaining unpaid. Any such motion is trace detachment,
selector/chamber boundary service already charged upstream, chart/detector
boundary service, legal loss, stop, or exit.

The current lower reduction for this input is:

\[
\texttt{PrimitivePreReturnFaceAtlasBoundaryVariationCharge.A}
\Longrightarrow
\texttt{PrimitivePreReturnFaceTraceNoDetachmentModulus.A}.
\tag{PFT.4a}
\]

That is the variation law of the face atlas: a same-packet face switch before
return is an atlas boundary event, a detachment, upstream coordinate service,
legal loss, stop, or exit.

The third input is local trace thickness or boundary charge:

\[
\texttt{PrimitivePreReturnFaceTraceLocalThicknessBoundaryCharge.A}.
\tag{PFT.5}
\]

It says that a positive or signed primitive subface cannot vanish to zero
carrier thickness before return while keeping unit selected trace. If the trace
collapses, the collapse is paid by local thickness loss, trace-boundary service,
legal loss, stop, or exit.

The current lower reduction for this input is:

\[
\texttt{PrimitivePreReturnFaceTraceUniformIntegrabilityOrCharge.A}
\Longrightarrow
\texttt{PrimitivePreReturnFaceTraceLocalThicknessBoundaryCharge.A}.
\tag{PFT.5a}
\]

That is the local thickness law of the face carrier: primitive event mass cannot
remain on a vanishing same-face carrier unless the collapse is charged before
return.

## 3. Strict reduction

Assume `(PFT.3)'--`(PFT.5)'. A pre-return address change in the face coordinate
means that \(\pi_F(z)\) changes or becomes undefined along the same stopped
event history.

If \(\pi_F\) is undefined, `(PFT.3)' has already paid detachment, legal loss,
service, stop, or exit. If \(\pi_F\) switches between two face traces, `(PFT.4)'
pays the no-detachment boundary. If the event stays in the same formal trace
but the trace loses its carrier thickness or becomes a zero-thickness boundary,
`(PFT.5)' pays that local boundary.

Therefore

\[
\begin{aligned}
&\texttt{PrimitiveStoppedChamberFaceTraceFiberOrPaidDetachment.A}\\
&+\texttt{PrimitivePreReturnFaceTraceNoDetachmentModulus.A}\\
&+\texttt{PrimitivePreReturnFaceTraceLocalThicknessBoundaryCharge.A}
\end{aligned}
\Longrightarrow
\texttt{PrimitivePreReturnFaceTraceBoundaryCharge.A}.
\tag{PFT.6}
\]

This is a pre-return charge. It makes no claim about the negative part of the
face-local signed channel.

## 4. Checked obstruction in current sources

The primitive chamber face-local signed-channel construction proves the formal
measure restriction after `(PFT.3)' exists. It does not prove `(PFT.3)' itself.

The record-face trace/return reductions show exactly why the trace must be
pre-readout: a post-readout face can select positive lobes and avoid negative
return. Those notes are proof of the type obstruction, not proof of primitive
face-trace boundary charge.

The no-detachment and local thickness notes have the right physical currencies
for a retained record edge. They say selector, chart/projector, detector/channel,
and face loss must be paid, and that a positive subface cannot disappear into
zero carrier thickness without local charge. But they are record-edge surfaces.
They do not yet prove the same statements for every primitive chamber event of
\(|Y_{\kappa,C}|\,d\sigma dt\) before same-face return.

The new primitive no-detachment and local-thickness reductions keep those two
jobs separate. The first is face-atlas variation; the second is face-carrier
uniform integrability or local charge. Both remain open at primitive chamber
event level.

Thus the old face/polarity row remains downstream support. The pre-return face
row is narrower: face trace, no-detachment, local thickness boundary, legal,
stop, and exit only.

## 5. Current proof truth

Installed here:

\[
\text{face trace fiber}
+\text{trace no-detachment}
+\text{trace local thickness boundary}
\Longrightarrow
\text{pre-return face-trace boundary charge}.
\tag{PFT.7}
\]

Still open:

\[
\texttt{PrimitiveStoppedChamberFaceTraceFiberOrPaidDetachment.A},
\quad
\texttt{PrimitivePreReturnFaceTraceNoDetachmentModulus.A},
\quad
\texttt{PrimitivePreReturnFaceTraceLocalThicknessBoundaryCharge.A}.
\tag{PFT.8}
\]

Their current lower open inputs are:

\[
\begin{array}{c}
\texttt{PrimitiveStoppedChamberPreReadoutFaceAtlasOrPaidDetachment.A}
\quad+\quad
\texttt{PrimitiveStoppedChamberFaceOverlapBoundaryLaw.A},\\
\texttt{PrimitivePreReturnFaceAtlasBoundaryVariationCharge.A},\\
\texttt{PrimitivePreReturnFaceTraceUniformIntegrabilityOrCharge.A}.
\end{array}
\tag{PFT.9}
\]

This is not closure. It prevents a specific false closure: using same-face
negative return to pay the face-trace boundary before the proof has constructed
the face trace that the return is supposed to follow.
