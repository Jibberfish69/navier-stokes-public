---
theorem_id: forward-gold-primitive-prereturn-face-trace-no-detachment-reduction-20260704
status: strict-reduction-and-checked-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / primitive pre-return face trace
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - PrimitivePreReturnFaceTraceNoDetachmentModulus.A
  - PrimitivePreReturnFaceAtlasBoundaryVariationCharge.A
role: >-
  Reduces primitive face-trace no-detachment to the physical variation charge of
  a parent-known pre-readout face atlas on one stopped chamber. A trace switch is
  same-packet motion across a face boundary before return exists; it must be
  paid by atlas overlap/boundary service, trace detachment, upstream coordinate
  service, legal loss, stop, or exit.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-prereturn-face-trace-boundary-charge-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-stopped-chamber-face-trace-fiber-atlas-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-prereturn-address-change-charge-split-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-admission-no-detachment-modulus-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-edge-no-detachment-producer-topology-synthesis-20260704.md
completion_truth: >-
  This note does not prove PrimitivePreReturnFaceTraceNoDetachmentModulus.A. It
  proves a strict reduction and a checked obstruction: current no-detachment
  sources are record-edge surfaces, while the primitive theorem must control
  face-trace variation for |Y_{kappa,C}| d sigma dt events before same-face
  return is available.
---

# Primitive pre-return face-trace no-detachment reduction

## 1. Physical object

Work on one admitted stopped common-selector chamber \(C_{\mathfrak R}\) and the
primitive event measure

\[
d\mu_{\kappa,C}=|Y_{\kappa,C}|\,d\sigma dt .
\tag{FND.1}
\]

After selector/chamber, chart/projector, and detector/channel custody are fixed,
the face trace

\[
\pi_F:C_{\mathfrak R}\to\mathcal F_C
\tag{FND.2}
\]

is supposed to remain attached to the same transported packet until the return
account opens. A change of \(\pi_F\) is not a harmless relabeling. It means the
same physical event crossed a pre-readout face boundary, detached from the face
atlas, or entered a paid service/legal/stop/exit region.

Same-face negative return is not available as a payment here. Return can be
restricted to a face only after `(FND.2)' has already chosen that face.

## 2. Lower theorem

The noncircular lower input is:

\[
\texttt{PrimitivePreReturnFaceAtlasBoundaryVariationCharge.A}.
\tag{FND.3}
\]

It says that, relative to the parent-known pre-readout face atlas from
`PrimitiveStoppedChamberPreReadoutFaceAtlasOrPaidDetachment.A`, every change,
switch, split, or undefined transition of \(\pi_F\) before return is carried by
a finite variation measure made of:

\[
\begin{array}{c}
\text{face-atlas overlap/boundary service}\\
+\text{trace detachment}\\
+\text{selector/chamber, chart/projector, detector/channel boundary service}\\
+\text{legal loss, stop, or exit}.
\end{array}
\tag{FND.4}
\]

The charge is measured on \(d\mu_{\kappa,C}\)-events, not only on retained
future-positive record edges.

## 3. Strict reduction

Assume `(FND.3)'. If a surviving event changes from face \(F\) to face \(G\)
before return, then it lies on the atlas boundary, an overlap handoff, or a
trace-detachment set. If the change is caused by a selector/chamber, chart, or
detector coordinate boundary, that boundary has already been named as service
in the pre-return address-change split. If none of those occurs, the event
keeps the same parent-known face trace.

Therefore

\[
\texttt{PrimitivePreReturnFaceAtlasBoundaryVariationCharge.A}
\Longrightarrow
\texttt{PrimitivePreReturnFaceTraceNoDetachmentModulus.A}.
\tag{FND.5}
\]

## 4. Checked obstruction

The record-admission no-detachment notes have the right physical vocabulary:
selector drift, chart drift, detector/channel rotation, and root/full-exchange
face-address drift must be charged. Their scope is one retained record edge.

The primitive face-trace theorem has a larger domain. It must cover both signs
of the primitive signed-channel measure on the chamber before a record face is
selected. A proof can preserve no-detachment for every retained future-positive
edge and still leave an unowned negative-return event switching faces between
two selected neighborhoods. That is exactly why edge no-detachment remains
support here.

## 5. Current proof truth

Installed here:

\[
\text{pre-return face-atlas boundary variation}
\Longrightarrow
\text{primitive pre-return face-trace no-detachment}.
\tag{FND.6}
\]

Still open:

\[
\texttt{PrimitivePreReturnFaceAtlasBoundaryVariationCharge.A}.
\tag{FND.7}
\]

The physical meaning is narrow: prove that a face switch of the same primitive
event is paid before return, or the event keeps its face trace.
