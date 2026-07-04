---
theorem_id: forward-gold-record-face-primitive-channel-predictable-trace-custody-reduction-20260704
status: strict-reduction-and-checked-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / pre-readout primitive trace custody
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - RecordFacePrimitiveChannelPredictableTrace.A
  - RetainedRecordEdgePreReadoutCustodyTuple.A
  - RetainedRecordEdgeStoppedPrimitiveChannelAdmission.A
role: >-
  Reduces the pre-readout primitive-channel trace theorem to simultaneous
  custody of the same retained record edge. The positive face, selector-owned
  primitive channel, exact-projector/chart coordinate, detector/service split,
  and record-admitted carrier must be one parent-announced object before
  positive readout. Separate selector, chart, channel, or carrier support does
  not define a lawful trace.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-primitive-channel-trace-return-budget-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-pre-readout-custody-tuple-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-stopped-primitive-channel-admission-lower-face-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-common-selector-refinement-parent-announced-capture-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-selector-capture-finite-score-scope-audit-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-selector-primitive-channel-compatibility-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-admission-no-detachment-modulus-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-local-thickness-charge-modulus-reduction-20260704.md
completion_truth: >-
  This note does not prove RecordFacePrimitiveChannelPredictableTrace.A. It
  proves a strict conditional reduction and records checked obstructions: a
  future-positive face can be selected after readout, selector/chart/channel
  support can live on different retained edges, and weak carrier compactness can
  lose a thin positive face. The trace theorem remains open until the same
  retained edge has simultaneous pre-readout custody and local face persistence.
---

# Record-face primitive-channel predictable trace custody reduction

## 1. Physical object

Fix one retained positive record face \(F_e\) of one smooth Navier-Stokes
velocity field. The face is not a set chosen after a scalar positive lobe is
seen. It is supposed to be the same retained edge before readout: high packet,
low pressure/strain/current coefficient, material time window, stopped selector
record, primitive channel, chart/collar state, detector/service split, root or
full-exchange face address, sign, scale, and time.

The primitive PLS decomposition supplies channel densities \(Y_{\kappa,S}\) on
an already retained stopped chamber. A lawful trace requires more than that
chamber statement. The parent must know both the face and the channel before the
record reads positivity:

\[
F_e\in\mathcal F_e^{pre},
\qquad
\kappa_e\in\mathcal F_e^{pre},
\qquad
Y_{\kappa_e,S}\,d\sigma dt
\text{ is the same-edge primitive channel}.
\tag{PTC.1}
\]

Only then is

\[
\mathbf 1_{F_e}Y_{\kappa_e,S}\,d\sigma dt
\tag{PTC.2}
\]

a physical signed trace on the same retained face.

## 2. The nonduplicate inputs

The trace theorem is a simultaneous custody statement:

\[
\begin{aligned}
&\texttt{RetainedRecordEdgePreReadoutCustodyTuple.A}\\
&+\texttt{RetainedRecordEdgeStoppedPrimitiveChannelAdmission.A}\\
&+\texttt{SameEdgeNoDetachmentModulus.A}\\
&+\texttt{LocalRecordFaceThicknessOrChargeModulus.A}\\
&\Longrightarrow
\texttt{RecordFacePrimitiveChannelPredictableTrace.A}.
\end{aligned}
\tag{PTC.3}
\]

The first input gives the same retained edge as a parent-announced tuple:
selector score, exact-projector chart, detector/service split, and face address
before the record counts it.

The second input gives the channel side: the exact-projector residue and
same-packet pressure/strain service enter the primitive channel announced by
that stopped selector before readout.

The no-detachment and local thickness inputs keep the face from disappearing
into a nearby chart, nearby carrier, singular subface, or later-selected
positive lobe when the proof passes through limits or stopping refinements.

These jobs are not aliases. A parent-announced selector without channel
alignment names a possible carrier but not the signed channel. Channel
admission without a face address names a chamber but not the retained positive
face. Local face thickness without the selector and channel only proves a
compactness fact for a carrier, not a primitive-channel trace.

## 3. Conditional proof

Assume the four inputs in `(PTC.3)'. The custody tuple supplies a stopped
pre-readout sigma-algebra \(\mathcal F_e^{pre}\) for the same retained record
edge, including the parent selector, chart, detector/service branch, and
record-admitted face address. Hence \(F_e\) is not created by reading
\([Y_{\kappa,S}]_+\); it is already an \(\mathcal F_e^{pre}\)-face.

Stopped primitive-channel admission supplies the selector-owned channel
\(\kappa_e\) for the same edge and identifies the surviving exact-projector
service with that primitive channel, modulo already paid legal, stop,
chart-transfer, silent-service, material-service, or exit pieces. Hence
\(Y_{\kappa_e,S}\,d\sigma dt\) is the channel of this edge, not a chamber-level
channel found after aggregation.

Same-edge no-detachment preserves the identity of the selector, chart,
detector/service branch, and face address through refinement. The local
thickness-or-charge modulus prevents \(F_e\) from becoming a zero-thickness
singular subface of the admitted carrier unless that loss is already charged on
the same face.

Therefore multiplication by \(\mathbf 1_{F_e}\) is a lawful restriction of the
same primitive signed channel before readout. This is
`RecordFacePrimitiveChannelPredictableTrace.A`.

## 4. Checked obstructions

### 4.1 Captured edge, uncaptured face

The selector-capture notes show that finite stopped scores pay motion only
after an order-locked retained chart exists. Without a finite parent-known menu,
a future argmax can follow moving positive spikes. Then the face \(F_e\) is a
post-readout choice, and `(PTC.2)' is not predictable.

### 4.2 Same-packet identity without same channel

The selector/primitive-channel compatibility reduction shows that same-packet
pressure/strain identity does not force the selector-announced channel to equal
the projector-residue channel. A trace of \(Y_{\kappa_e,S}\) on \(F_e\) is not
lawful if \(F_e\)'s positive residue lives in a different primitive coordinate.

### 4.3 Separate lower faces

The pre-readout custody tuple note records a non-aliasing obstruction. A proof
can have one selected edge, one charted edge, one detector-paid edge, and one
face-addressed edge, all nearby but not identical:

\[
\text{selected edge}\ne\text{charted edge}\ne\text{channel edge}\ne\text{face edge}.
\tag{PTC.4}
\]

Then no single physical face has been traced. The proof has a list of support
coordinates, not one retained packet.

### 4.4 Thin face escape

The Radon-Nikodym and local thickness reductions show that weak carrier
compactness can preserve the carrier while losing the positive record face to a
singular subface. That is a trace failure: the measure \(Y_{\kappa,S}d\sigma dt\)
may exist on the chamber while the selected positive face no longer has a
stable same-carrier restriction.

## 5. Current proof truth

This is a strict reduction, not closure. The repo has support for each
coordinate of the story: stopped selector payment after capture, same-packet
pressure/strain identity, exact-projector chart audits, no-detachment topology,
and local face thickness reductions.

The repo does not yet prove the simultaneous statement from arbitrary original
data. The open trace burden is therefore:

\[
\text{same retained edge}
\quad+\quad
\text{same parent-announced face}
\quad+\quad
\text{same selector-owned primitive channel}
\quad+\quad
\text{same local carrier persistence}
\tag{PTC.5}
\]

all before positive readout. Until that custody is proved, the face-local
signed channel remains a physically justified target, not an installed trace.
