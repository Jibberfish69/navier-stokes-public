---
theorem_id: forward-gold-signed-height-root-payment-physical-spine-20260704
status: physical-spine-strict-synthesis-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / single physical roof
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
role: >
  Makes the physical spine explicit after the selected-root record/reset
  synthesis. Root payment, scale-native depletion, local face thickness, polarity
  custody, and reset payment have Gold force only where they pay the same
  signed-height record event before readout.
source_refs:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-restart-after-positive-clipping-demotion-20260702.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-peak-control-proof-pass-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-admitted-scale-native-depletion-bridge-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-local-thickness-charge-modulus-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-polarity-same-face-no-cancellation-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-root-record-reset-single-geometry-synthesis-20260704.md
completion_truth: >-
  This note is not a proof of the Navier-Stokes MPP. It is a strict physical
  synthesis. It proves that the root-payment consolidation and its branch
  sharpeners must be read through the signed-height record event: a high record
  rise must be parent-admitted, locally thick or same-face paid, and protected
  against same-face sign cancellation before root/payment/depletion/storage
  language has Gold force.
---

# Signed-height root-payment physical spine

## 1. The one object being controlled

The physical object is one smooth Navier-Stokes velocity field, read through the
signed critical height

\[
H(t)={1\over2}\|\Lambda^{1/2}u(t)\|_2^2,
\qquad
{dH\over dt}=P(t)-\nu D(t),
\tag{SRP.1}
\]

where

\[
P(t)=
-\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle,
\qquad
D(t)=\|\Lambda^{3/2}u(t)\|_2^2 .
\tag{SRP.2}
\]

A record upcrossing \([a,b]\) from height \(\lambda\) to \(2\lambda\) is one
physical event in that field:

\[
\int_a^b P(t)\,dt
=H(b)-H(a)+\nu\int_a^bD(t)\,dt
\ge \lambda .
\tag{SRP.3}
\]

That integral is not a child count. It is the net nonlinear work that actually
raised the same velocity field's signed critical height after viscosity is paid.

The scalar energy information gives time integrability of \(H\), not peak
exclusion. High peaks can escape by becoming thin in time. Therefore every Gold
candidate has to answer the same physical question:

\[
\text{when a same-fluid signed-height record is thin, what pays the record rise?}
\tag{SRP.4}
\]

## 2. How the support objects translate physically

The selected-root record/reset synthesis says that repeated-core reuse and
shrinking-core reset are two faces of one stopped original-history root geometry.
In physical language, this means the same retained material history is being
asked to explain both repeated positive visits and genuinely fresh scale-reset
births before the selected readout.

That root payment has Gold force only where its paid edge is the edge that
carried the record work in `(SRP.3)'. A parent-predictable root geometry that
pays some other selected transition is support.

Scale-native depletion has the same restriction. A first-birth/no-Zeno theorem
pays signed height only after the record work has entered the parent-known
critical carrier before readout:

\[
\text{record net work}
\longrightarrow
\text{parent-admitted critical carrier}
\longrightarrow
\text{finite depletion charge}.
\tag{SRP.5}
\]

Freestanding depletion can be true while the record work sits on a different
face. Then the storage theorem survives and the high thin peak is still unpaid.

The local face-thickness notes sharpen the same point. It is not enough to pay a
whole record somewhere. The positive subface of the record must either have
thickness in the admitted carrier or pay a same-face charge:

\[
dW_e^+(A)
\le
\omega(d\Xi_e^{rec}(A))
+d{\mathcal C}^{face}_e(A)
+dLegal_e(A)+dStop_e(A)+dExit_e(A),
\qquad
\omega(\delta)\to0 .
\tag{SRP.6}
\]

This is the local version of the physical story: no positive piece of the record
is allowed to vanish into zero carrier thickness unless that same piece is
charged.

The polarity/no-cancellation notes add the sign half. A positive record face can
be thick and still disappear from the signed limit by an opposite return on the
same face. That return is physical: pressure reorientation, transport/frame
rotation, viscosity-mediated return, material record return, endpoint jump,
legal reselection, stop, or exit. It must be retained as the same marked positive
face or paid as same-face negative return:

\[
dW_e^+(A)
\le
dW_e^{surv,+}(A)
+d{\mathcal C}^{partner}_e(A)
+dLegal_e(A)+dStop_e(A)+dExit_e(A).
\tag{SRP.7}
\]

Thus sign change is not bookkeeping. It is a physical return event of the same
packet, and it is exactly where positive-clipping arguments used to lose the
story.

## 3. The consolidated physical spine

The current Gold spine is:

\[
\begin{aligned}
&\text{same velocity field has a signed-height record rise}\\
&\Longrightarrow
\text{the record net work is admitted into a parent-known same edge}\\
&\Longrightarrow
\text{each positive subface is locally thick or same-face paid}\\
&\Longrightarrow
\text{lost sign is retained or paid as same-face return}\\
&\Longrightarrow
\text{each thin record has finite original-data charge}\\
&\Longrightarrow
\sup_{t<T}H(t)<\infty .
\end{aligned}
\tag{SRP.8}
\]

Root payment enters the second and third lines. Repeated-core record/return pays
reuse of the same material score. Shrinking-core reset pays fresh selected-scale
innovation. Neither branch is a separate closure route. Each branch is useful
only as a way of paying the same signed-height record work before readout.

This is the strict reading of
`OriginalHistoryRecordResetRootPayment.A' under the signed-height restart:

\[
\texttt{OriginalHistoryRecordResetRootPayment.A}
\quad\text{is support unless it feeds `(SRP.8)' at the admitted record edge.}
\tag{SRP.9}
\]

## 4. The checked obstructions this story keeps alive

Three simple models show why the physical spine cannot be skipped.

First, a scalar function can have finite \(L_t^2\) mass and unbounded peaks when
the peaks become thin. This is why energy alone does not prove peak control.

Second, a carrier can have finite storage while a unit of record work sits where
the carrier measure is zero. This is why depletion or root storage away from the
record-admission row remains support.

Third, a positive record face can be locally thick and still vanish from the
signed limit by cancellation with an equal negative face. This is why sign
return has to be paid on the same admitted face, not after positivity is
reconstructed as a Jordan decomposition.

These are not Navier-Stokes counterexamples. They are proof obstructions that
force the theorem to stay attached to the same physical packet.

## 5. Current proof truth

Installed:

\[
\text{record upcrossing}
\Longrightarrow
\int_a^bP(t)\,dt\ge\lambda ,
\tag{SRP.10}
\]

and finite thickness-or-charge for all high records implies bounded signed
critical height.

Strictly reduced:

\[
\begin{aligned}
&\text{parent admission of the record work}\\
&+\text{local same-face thickness-or-charge}\\
&+\text{same-face no-cancellation / partner-return charge}
\end{aligned}
\Longrightarrow
\texttt{SignedCriticalHeightSignPersistenceOrPeakBound.A}.
\tag{SRP.11}
\]

Still open:

\[
\text{derive those three rows from the original coupled Navier-Stokes packet}
\tag{SRP.12}
\]

using only transport, pressure, viscosity, incompressibility, dissipation, scale,
sign, alignment, legal/stop structure, and same-fluid time before the selected
record readout.

That is the physical custody rule for the current repo: payment, storage,
depletion, reset, and compactness names are only as strong as their attachment
to the signed-height record event they claim to pay.
