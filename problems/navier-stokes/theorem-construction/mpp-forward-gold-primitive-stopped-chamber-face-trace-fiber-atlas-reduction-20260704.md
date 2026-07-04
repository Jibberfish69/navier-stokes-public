---
theorem_id: forward-gold-primitive-stopped-chamber-face-trace-fiber-atlas-reduction-20260704
status: strict-reduction-and-checked-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / primitive pre-return face trace
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - PrimitiveStoppedChamberFaceTraceFiberOrPaidDetachment.A
  - PrimitiveStoppedChamberPreReadoutFaceAtlasOrPaidDetachment.A
  - PrimitiveStoppedChamberFaceOverlapBoundaryLaw.A
role: >-
  Reduces the pre-readout face trace fiber to a physical face-atlas problem on
  one already admitted stopped chamber. The face fiber is not a return budget and
  not a post-readout selected face; it is a parent-known face partition/priority
  for the primitive signed-channel event measure before selected counting.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-stopped-chamber-parent-currency-face-atlas-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-prereturn-face-trace-boundary-charge-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-chamber-face-polarity-lift-proof-pass-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-chamber-face-local-signed-channel-construction-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-primitive-channel-predictable-trace-custody-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-pre-readout-custody-tuple-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-channel-event-address-atlas-priority-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-channel-address-cell-coverage-chamber-lift-reduction-20260704.md
completion_truth: >-
  This note does not prove PrimitiveStoppedChamberFaceTraceFiberOrPaidDetachment.A.
  It proves a strict reduction and checked obstruction. Current repo sources
  support face trace on retained future-positive edges and consume a face fiber
  in later signed-channel constructions, but they do not yet construct a
  parent-known face atlas for |Y_{kappa,C}| d sigma dt-a.e. primitive event on
  one stopped chamber before same-face return is available.
---

# Primitive stopped-chamber face-trace fiber atlas reduction

## 1. Physical object

Work inside one admitted stopped common-selector chamber \(C_{\mathfrak R}\) of
one smooth Navier-Stokes velocity field. The selector, material chart/projector,
and detector/channel readout have already put the same primitive signed-channel
event inside one chamber. The event measure is

\[
d\mu_{\kappa,C}=|Y_{\kappa,C}|\,d\sigma dt .
\tag{FTA.1}
\]

A face trace is a map

\[
\pi_F:C_{\mathfrak R}\to\mathcal F_C
\tag{FTA.2}
\]

for \(d\mu_{\kappa,C}\)-almost every surviving event. Physically, \(\pi_F(z)\)
must say which parent-known root/log, endpoint-seed, or active full-exchange face
contains the same event before selected positive work or negative return is
counted.

The face is not allowed to be chosen after \([Y_{\kappa,C}]_+\) is read. The
trace is also not allowed to borrow the same-face negative-return budget, because
that budget only has meaning after the trace in `(FTA.2)' is already fixed.

## 2. Lower physical inputs

The first lower input is a pre-readout face atlas:

\[
\texttt{PrimitiveStoppedChamberPreReadoutFaceAtlasOrPaidDetachment.A}.
\tag{FTA.3}
\]

It says that, on the stopped chamber, the parent has before readout a locally
finite family of measurable face cells

\[
F_\alpha\subset C_{\mathfrak R},
\qquad
\alpha\in\mathcal F_C,
\tag{FTA.4}
\]

whose labels are physical face labels of the same packet: root/log baseline
face, endpoint-seed face, or active full-exchange face. These cells cover
\(d\mu_{\kappa,C}\)-almost every event, except pieces already paid as face
detachment, zero-thickness loss, chart/detector service, legal loss, stop, or
exit.

The current lower reduction for this atlas is:

\[
\begin{aligned}
&\texttt{PrimitiveStoppedChamberParentCurrencyFaceAdmissionOrPaidService.A}\\
&+\texttt{PrimitiveStoppedChamberParentCurrencyFaceBoundaryLaw.A}
\end{aligned}
\Longrightarrow
\texttt{PrimitiveStoppedChamberPreReadoutFaceAtlasOrPaidDetachment.A}.
\tag{FTA.3a}
\]

This is the parent-currency face projection of the same active-state/root-payment
object: each primitive event must enter a root/log, endpoint-seed, or active
full-exchange face, or be service-paid, legal, stopped, or exited.

The second lower input is a face-overlap boundary law:

\[
\texttt{PrimitiveStoppedChamberFaceOverlapBoundaryLaw.A}.
\tag{FTA.5}
\]

It says that if one primitive event lies in several face cells, the parent has a
pre-readout priority for those cells, or the overlap is paid by trace-boundary
service, no-detachment failure, local thickness loss, legal loss, stop, or exit.
The priority may depend on stopped parent data; it may not depend on the future
positive lobe or future same-face return.

## 3. Strict reduction

Assume `(FTA.3)' and `(FTA.5)'. Enumerate the locally finite face atlas in the
parent-announced priority order. For every unpaid event define

\[
\pi_F(z):=\min_{\prec}\{\alpha:z\in F_\alpha\}.
\tag{FTA.6}
\]

The fibers

\[
G_\alpha
=F_\alpha\setminus\bigcup_{\beta\prec\alpha}F_\beta
\tag{FTA.7}
\]

are measurable. The local finiteness of the atlas makes \(\pi_F\) a measurable
pre-readout face trace on the surviving primitive event measure. The boundary
law pays overlaps, trace detachments, zero-thickness loss, legal loss, stop, and
exit before selected counting.

Therefore

\[
\begin{aligned}
&\texttt{PrimitiveStoppedChamberPreReadoutFaceAtlasOrPaidDetachment.A}\\
&+\texttt{PrimitiveStoppedChamberFaceOverlapBoundaryLaw.A}
\end{aligned}
\Longrightarrow
\texttt{PrimitiveStoppedChamberFaceTraceFiberOrPaidDetachment.A}.
\tag{FTA.8}
\]

This construction uses only face ownership. It does not use negative return, and
it does not prove sign persistence.

## 4. Checked obstruction in current sources

The primitive chamber face-local signed-channel construction consumes the face
fiber: after `(FTA.2)' exists, restricting
\(Y_{\kappa,C}\,d\sigma dt\) to a face is formal. It does not construct the face
atlas.

The record-face predictable trace custody reduction constructs the right kind of
trace for one retained future-positive record face, conditional on simultaneous
custody, no-detachment, and local thickness. That is edge-side support. It does
not cover every primitive event of both signs in \(d\mu_{\kappa,C}\).

The parent-currency face atlas reduction records the same scope obstruction in
the face language: record-menu critical face admission gives the correct face
list, but not all-event primitive chamber coverage.

The primitive event-address atlas reduction proves a formal tie-break once a
full address atlas exists. It cannot be used here as an input, because the
pre-return address map already needs the face trace fiber in `(FTA.2)'.

Thus the present repo supports the shape of the face trace, but does not prove
the chamber-level pre-readout face atlas for the primitive signed-channel
measure.

## 5. Current proof truth

Installed here:

\[
\text{pre-readout face atlas}
+\text{face-overlap boundary law}
\Longrightarrow
\text{face trace fiber}.
\tag{FTA.9}
\]

Still open:

\[
\texttt{PrimitiveStoppedChamberPreReadoutFaceAtlasOrPaidDetachment.A},
\qquad
\texttt{PrimitiveStoppedChamberFaceOverlapBoundaryLaw.A}.
\tag{FTA.10}
\]

The atlas input is now lowered to:

\[
\texttt{PrimitiveStoppedChamberParentCurrencyFaceAdmissionOrPaidService.A}
+\texttt{PrimitiveStoppedChamberParentCurrencyFaceBoundaryLaw.A}.
\tag{FTA.11}
\]

This is the physical first step under the face row. The proof must own the
face of the primitive event before it spends return on that face.
