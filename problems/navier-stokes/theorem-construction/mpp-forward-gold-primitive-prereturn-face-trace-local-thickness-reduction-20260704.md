---
theorem_id: forward-gold-primitive-prereturn-face-trace-local-thickness-reduction-20260704
status: strict-reduction-and-checked-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / primitive pre-return face trace
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - PrimitivePreReturnFaceTraceLocalThicknessBoundaryCharge.A
  - PrimitivePreReturnFaceTraceUniformIntegrabilityOrCharge.A
role: >-
  Reduces the primitive pre-return local thickness row to a local
  absolute-continuity-or-charge theorem for |Y_{kappa,C}| d sigma dt on every
  pre-readout face trace. A face cannot retain primitive event mass while its
  same physical carrier collapses to zero thickness unless the collapse is paid
  before same-face return is used.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-prereturn-face-trace-boundary-charge-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-stopped-chamber-face-trace-fiber-atlas-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-local-thickness-charge-modulus-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-radon-nikodym-tightness-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-chamber-face-local-signed-channel-construction-reduction-20260704.md
completion_truth: >-
  This note does not prove PrimitivePreReturnFaceTraceLocalThicknessBoundaryCharge.A.
  It proves a strict reduction and checked obstruction. Existing record-face
  local thickness support does not yet control arbitrary primitive chamber
  events of |Y_{kappa,C}| d sigma dt before selected readout.
---

# Primitive pre-return face-trace local thickness reduction

## 1. Physical object

Fix one pre-readout face trace \(F\) inside one admitted stopped chamber
\(C_{\mathfrak R}\), and restrict the primitive event measure

\[
d\mu_{\kappa,C}=|Y_{\kappa,C}|\,d\sigma dt
\tag{FLT.1}
\]

to \(\{\pi_F=F\}\). The face is physical only while its carrier has local
thickness in the same packet. If a subface keeps primitive event mass while the
carrier collapses to zero thickness, the proof has not kept a face; it has kept
a later label.

Same-face return is downstream. It cannot be used to justify thickness of the
face on which that return is supposed to be measured.

## 2. Lower theorem

The lower primitive theorem is:

\[
\texttt{PrimitivePreReturnFaceTraceUniformIntegrabilityOrCharge.A}.
\tag{FLT.2}
\]

For every pre-return measurable subface \(A\subset\{\pi_F=F\}\), it asks for

\[
\int_A d\mu_{\kappa,C}
\le
\omega(\Theta_{\kappa,C,F}(A))
+d\mathcal C^{trace}_{\kappa,C,F}(A)
+dLegal(A)+dStop(A)+dExit(A),
\tag{FLT.3}
\]

where \(\omega(\delta)\to0\) as \(\delta\downarrow0\). Here
\(\Theta_{\kappa,C,F}\) is the same-packet face-thickness carrier, and
\(d\mathcal C^{trace}\) is finite original-history trace-boundary charge over
disjoint primitive faces.

## 3. Strict reduction

Assume `(FLT.2)'. If a primitive subface has positive event mass and positive
carrier thickness, it remains a physical pre-return face. If the carrier
thickness tends to zero, `(FLT.3)' forces the event mass to vanish except for
trace-boundary charge, legal loss, stop, or exit.

Thus no surviving primitive face trace can keep unit selected mass on a
zero-thickness carrier without payment. Therefore

\[
\texttt{PrimitivePreReturnFaceTraceUniformIntegrabilityOrCharge.A}
\Longrightarrow
\texttt{PrimitivePreReturnFaceTraceLocalThicknessBoundaryCharge.A}.
\tag{FLT.4}
\]

## 4. Checked obstruction

The record-face local thickness theorem has the right model, but it is scoped to
retained positive record faces. Whole-record charge or weak carrier compactness
can still miss a thin primitive subface:

\[
d\Theta_n=dx,
\qquad
d\mu_n=n1_{[0,1/n]}dx.
\tag{FLT.5}
\]

The carrier survives, and total mass remains one, but the primitive face
collapses to a singular trace. Unless the charge in `(FLT.3)' is local to that
same face before readout, the proof has only a nearby payment, not face
thickness.

## 5. Current proof truth

Installed here:

\[
\text{primitive face-trace uniform integrability or local charge}
\Longrightarrow
\text{primitive face-trace local thickness boundary charge}.
\tag{FLT.6}
\]

Still open:

\[
\texttt{PrimitivePreReturnFaceTraceUniformIntegrabilityOrCharge.A}.
\tag{FLT.7}
\]

The physical burden is now exact: the same primitive event mass cannot ride a
vanishing pre-return face carrier unless that collapse is paid before return is
used.
