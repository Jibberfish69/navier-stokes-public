---
theorem_id: forward-gold-same-face-partner-return-localization-reduction-20260704
status: strict-reduction-and-checked-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / same-face polarity custody
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - RecordPolaritySameFaceNoCancellation.A
  - SameFacePartnerReturnLocalization.A
role: >
  Localizes the negative-return / signed-partner payment required by record-face
  polarity custody. Global stopped-record return or terminal anti-atom language
  is support until the cancelling partner is attached to the same admitted
  positive record face before readout.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-root-payment-physical-spine-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-polarity-same-face-no-cancellation-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-local-thickness-charge-modulus-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-repeated-core-record-return-balance-law-sharpener-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-record-return-bv-descent-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-anti-atom-signed-height-loop-boundary-20260703.md
completion_truth: >-
  This note does not prove RecordPolaritySameFaceNoCancellation.A or
  Navier-Stokes smoothness. It proves a strict reduction and a checked
  obstruction: total negative return, terminal anti-atom reserve, or scalar
  record/return BV cannot by themselves preserve the positive record face. The
  needed lower producer is a face-indexed partner-return localization measure
  derived from the original same-fluid packet before readout.
---

# Same-face partner-return localization reduction

## 1. The physical event

The signed-height roof now fixes the event. A record upcrossing \([a,b]\) gives
net signed nonlinear work

\[
\int_a^bP(t)\,dt
=H(b)-H(a)+\nu\int_a^bD(t)\,dt
\ge \lambda .
\tag{SFR.1}
\]

After parent admission and local face-thickness have been installed, the sign
problem is local. There is one admitted positive record face

\[
e=(\text{high packet},\text{low coefficient},\text{material window},
\text{parent address},\text{positive sign})
\tag{SFR.2}
\]

inside the same velocity field. The question is whether that positive face
survives as positive signed work, or whether it is erased by an opposite partner
on the same face.

That opposite partner is not abstract cancellation. It is the same fluid
returning, reorienting, or losing the sign of the record-producing alignment
through pressure, transport/frame rotation, viscosity, endpoint/material record
return, legal reselection, stop, or exit.

## 2. What global negative return proves

The repeated-core notes prove the correct scalar algebra:

\[
V_+(\Psi;I)
=\Psi(t_1)-\Psi(t_0)+V_-(\Psi;I).
\tag{SFR.3}
\]

That is proof-grade once a stopped signed scale-potential lift is available. It
says repeated positive visits on one stopped primitive can only come from record
growth or negative return.

But `(SFR.3)' is not yet the same-face polarity row. It is global on the stopped
primitive. It does not say that the negative return which erases a particular
positive record face is attached to that face, in the same parent selector,
chart, detector/service split, and root/full-exchange address.

Thus the scalar return theorem is support for same-face polarity until it is
localized.

## 3. The needed lower producer

The missing producer is:

\[
\texttt{SameFacePartnerReturnLocalization.A}.
\tag{SFR.4}
\]

For every admitted positive record edge \(e\) and every pre-readout subface
\(A\), construct a partner-return measure \(dR_e^{-}\) and a surviving positive
measure \(dW_e^{surv,+}\) such that

\[
dW_e^+(A)
\le
dW_e^{surv,+}(A)
+dR_e^{-}(A)
+dLegal_e(A)+dStop_e(A)+dExit_e(A),
\tag{SFR.5}
\]

where \(dR_e^{-}\) is attached to the same admitted face before readout, and over
disjoint record faces

\[
\sum_e\int dR_e^{-}
\le
C_N(u_0)+Paid+Legal+Stop .
\tag{SFR.6}
\]

This is the localized meaning of negative return in the signed-height roof. A
negative lobe counts only if it is the opposite signed partner of the same
positive record face, or if it is routed as a paid physical loss before readout.

## 4. Checked obstruction to total-return substitution

Total return is too coarse. A proof-theoretic model has two disjoint admitted
faces \(A\) and \(B\). Put

\[
dW_A^+=dx,\qquad dW_A^-=dx,
\tag{SFR.7}
\]

so the positive face on \(A\) is completely cancelled in the signed readout, and
put a separate negative-return ledger on \(B\):

\[
dR_{global}^{-}=dx\bigm|_B .
\tag{SFR.8}
\]

The total negative return is finite. The signed measure on \(A\) still loses a
unit of positive record work with no same-face charge attached to \(A\). A
compactness proof that only sees total \(V_-\), total terminal anti-atom reserve,
or an unlocalized return budget cannot distinguish this model from a paid
same-face return.

This is not a Navier-Stokes counterexample. It is the exact obstruction to using
global negative-return language as the local polarity theorem.

## 5. Strict reduction

The sharpened sign row is:

\[
\begin{aligned}
&\texttt{SameEdgeNoDetachmentModulus.A}\\
&+\texttt{LocalRecordFaceThicknessOrChargeModulus.A}\\
&+\texttt{SameFacePartnerReturnLocalization.A}
\end{aligned}
\Longrightarrow
\texttt{RecordPolaritySameFaceNoCancellation.A}.
\tag{SFR.9}
\]

Together with the signed-height physical spine, this gives the record-facing
chain:

\[
\begin{aligned}
&\text{parent-admitted record net work}\\
&+\text{local same-face thickness-or-charge}\\
&+\text{same-face partner-return localization}
\end{aligned}
\Longrightarrow
\texttt{SignedCriticalHeightSignPersistenceOrPeakBound.A}.
\tag{SFR.10}
\]

The new theorem is smaller than Gold. It does not ask for bounded signed height
directly. It asks for the one thing the current sign row lacks: when positive
record work disappears by sign change, identify and charge the opposite partner
on that same admitted face.

## 6. Current proof truth

Proof:

\[
V_+(\Psi)=\Delta\Psi+V_-(\Psi)
\tag{SFR.11}
\]

after the stopped signed scale-potential lift.

Strict reduction:

\[
\texttt{SameFacePartnerReturnLocalization.A}
\Longrightarrow
\texttt{RecordPolaritySameFaceNoCancellation.A}
\tag{SFR.12}
\]

with same-edge no-detachment and local face thickness already in the row.

Checked obstruction:

\[
\text{finite total negative return does not imply same-face partner payment.}
\tag{SFR.13}
\]

Still open:

\[
\text{derive \(dR_e^{-}\) from the original pressure-viscosity-incompressibility
transport packet before readout.}
\tag{SFR.14}
\]

That is the physical content to carry forward: sign reversal becomes a Gold
payment only when it is the same packet returning on the same admitted face.
