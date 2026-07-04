---
theorem_id: forward-gold-primitive-chamber-face-local-signed-channel-construction-reduction-20260704
status: formal-construction-proof-and-budget-reduction-not-gold-closure
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / primitive chamber face-local signed channel
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - PrimitiveChamberFaceLocalSignedChannelConstruction.A
  - PrimitiveStoppedChamberFaceLocalSignedMeasureConstruction.A
  - PrimitiveStoppedChamberSameFaceNegativeReturnBudget.A
role: >-
  Splits the open primitive chamber face-local signed channel construction into a
  formal measure-restriction proof after pre-readout face trace measurability,
  plus the genuinely PDE same-face negative-return budget. This prevents scalar
  BV, chamber-level negative variation, terminal anti-atom language, or post-readout
  LP/Bony bookkeeping from being promoted to the missing same-face budget.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-chamber-face-polarity-lift-proof-pass-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-pls-signed-channel-decomposition-repair-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-local-signed-channel-construction-boundary-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-local-signed-channel-primitive-ownership-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-primitive-channel-trace-return-budget-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-face-signed-channel-localization-proof-20260704.md
completion_truth: >-
  This note does not prove the same-face negative-return budget from Navier-Stokes.
  It proves the formal construction part: once the primitive signed-channel
  density is installed on an admitted stopped chamber and the face fiber is
  pre-readout measurable, the face-local signed measure is just the restriction
  of that signed channel to the face fiber. The remaining open theorem is the
  finite original-data budget for the negative part on the same face.
---

# Primitive chamber face-local signed channel construction reduction

## 1. Physical object

Work inside one admitted stopped common-selector chamber \(C_{\mathfrak R}\) of
one smooth Navier-Stokes velocity field. The same packet already has selector,
chart/projector, and detector/channel coordinates. The primitive PLS
decomposition supplies a signed channel density

\[
Y_{\kappa,C}\,d\sigma dt
\tag{FSCr.1}
\]

on the chamber, built from the packet's pressure Hessian, strain/top-frame,
Hodge/Stokes projector motion, coefficient/frame motion, transported collar,
annular stress work, viscous/radius graph service, and low-high transport
commutator.

The face-local construction asks whether this same signed channel can be read on
one pre-readout face of the same packet. There are two different issues:

\[
\text{construct the restricted signed measure}
\quad+\quad
\text{pay its negative part on the same face}.
\tag{FSCr.2}
\]

The first issue is formal after face measurability. The second issue is the
remaining PDE burden.

## 2. Formal construction after face trace

Assume the primitive PLS channel is installed on \(C_{\mathfrak R}\), and assume
the pre-readout face trace input:

\[
\texttt{PrimitiveStoppedChamberFaceTraceFiberOrPaidDetachment.A}.
\tag{FSCr.3}
\]

This gives a parent-known face fiber

\[
\pi_F:C_{\mathfrak R}\to\mathcal F_C
\tag{FSCr.4}
\]

for \(|Y_{\kappa,C}|\,d\sigma dt\)-almost every primitive event, modulo paid face
detachment, zero-thickness loss, legal stop, service, or exit. For each
pre-readout face \(F\), define

\[
dJ_{C,F}
:=
\mathbf 1_{\{\pi_F=F\}}Y_{\kappa,C}\,d\sigma dt .
\tag{FSCr.5}
\]

Because the face fiber is measurable before readout and \(Y_{\kappa,C}\,d\sigma
dt\) is already the primitive signed channel measure on the stopped chamber,
`(FSCr.5)' is a finite signed measure on the face sigma-algebra, up to the paid
exceptional pieces from `(FSCr.3)'.

Thus:

\[
\begin{aligned}
&\texttt{PrimitivePLSSignedChannelDecomposition.A}\\
&+\texttt{PrimitiveStoppedChamberFaceTraceFiberOrPaidDetachment.A}
\end{aligned}
\Longrightarrow
\texttt{PrimitiveStoppedChamberFaceLocalSignedMeasureConstruction.A}.
\tag{FSCr.6}
\]

This is proof, not a new analytic estimate. The physical work was already in
putting the same packet into a pre-readout face fiber.

## 3. Remaining budget input

The missing quantitative input is:

\[
\texttt{PrimitiveStoppedChamberSameFaceNegativeReturnBudget.A}.
\tag{FSCr.7}
\]

It must prove

\[
\sum_{C,F}\int dJ_{C,F}^{-}
\le
C_N(u_0)+Paid+Legal+Stop+Exit+Err
\tag{FSCr.8}
\]

for the negative part of the same face-local signed channel `(FSCr.5)'. It is not
enough to prove finite negative variation on the whole chamber or whole record
interval.

With `(FSCr.6)' and `(FSCr.7)', the local signed channel construction follows:

\[
\begin{aligned}
&\texttt{PrimitiveStoppedChamberFaceLocalSignedMeasureConstruction.A}\\
&+\texttt{PrimitiveStoppedChamberSameFaceNegativeReturnBudget.A}
\end{aligned}
\Longrightarrow
\texttt{PrimitiveChamberFaceLocalSignedChannelConstruction.A}.
\tag{FSCr.9}
\]

Together with the previous face/polarity proof pass, this feeds the signed-height
face coordinate:

\[
\texttt{PrimitiveChamberFaceLocalSignedChannelConstruction.A}
\Longrightarrow
\texttt{PrimitiveStoppedChamberFacePolarityLiftOrPaidReturn.A}
\tag{FSCr.10}
\]

with the same paid/legal/stop/exit exceptions already isolated there.

## 4. Checked obstruction to budget substitutes

The budget cannot be replaced by scalar BV, chamber-level negative variation, or
terminal anti-atom language. Those accounts can pay the wrong face. The local
counter-pattern is:

\[
dL_A=dx,\qquad
dJ_A^{-}=0,\qquad
dL_B=0,\qquad
dJ_B^{-}=dx .
\tag{FSCr.11}
\]

The total negative return equals the total lost positive mass, but face \(A\)
has no same-face return. A proof that aggregates before the face fiber is fixed
cannot distinguish this wrong-face subsidy from real same-face payment.

The physical meaning is direct: the same packet may have negative return
somewhere in the stopped chamber while the selected positive face still loses
sign without return on that face. Gold needs the latter event paid locally.

## 5. Current proof truth

Installed by this note:

\[
\text{pre-readout face trace}
\Longrightarrow
\text{face-local signed measure construction}.
\tag{FSCr.12}
\]

Still open:

\[
\texttt{PrimitiveStoppedChamberSameFaceNegativeReturnBudget.A}.
\tag{FSCr.13}
\]

This is now the narrow physical object inside the face/polarity route: prove a
finite original-data budget for the negative part of the same primitive signed
channel restricted to the same pre-readout face.
