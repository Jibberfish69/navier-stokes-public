---
theorem_id: forward-gold-custody-payment-identity-fast-transit-cubic-20260705
status: fast-thick-reassembly-transit-priced-in-increment-cubic-scaling-display
created: 2026-07-05
problem: navier-stokes
route: forward-gold / confinement constant goal / item 3 custody payment identity
target_object:
  - CustodyPaymentIdentity.ScalingDisplay
  - FastThickFreeReassembly.NO_at_scaling_level
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-custody-impulse-ledger-reassembly-threshold-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bathtub-momentum-flux-gate-producer-attempt-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-gate8-same-packet-row-theorem-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-channel-measures-diagonal-and-tail-currency-20260705.md
completion_truth: >-
  Pays G-C-2 at scaling-display level, not as a full defect-measure row theorem.
  A thick re-assembly route that moves relative impulse a distance comparable
  to d inside C strain times must carry a scale-d velocity increment whose
  time integral is comparable to d. Jensen on the transit interval and the
  Duchon-Robert increment-cubic density |delta_d u|^3/d on a thick d^3 cell give
  cubic total variation bounded below by a constant times C^{-2} times the
  pair-energy scale U^2 d^3. Thus the local custody escape cannot be
  simultaneously thick, fast, and free at scaling level. What remains open:
  the thick-debris self-dispersal display (G-C-1), the signed/oriented row lift
  of this total-variation payment, and the up-scale bath recursion for holder
  fields. No full custody theorem, crowd theorem, composition theorem, or MPP
  closure is claimed.
---

# Custody payment identity: fast transit is cubic

## 1. Object

The custody threshold note left two routes open. The thin-debris route is priced
by viscous confiscation. This note pays the second display at scaling level:
fast re-assembly through thick debris is an increment-cubic event in the same
currency as the flux gate.

The claimed local escape was:

\[
\text{thick debris}\quad+\quad\text{fast re-assembly}\quad+\quad\text{free transit}.
\tag{CPI.1}
\]

The display below kills the third clause at scale \(d\).

## 2. Transit kinematics

Let \(d\) be the pair separation scale and

\[
U \simeq \frac{\Gamma}{2\pi d},
\qquad
\tau_s \simeq \frac dU = \frac{2\pi d^2}{\Gamma}
\tag{CPI.2}
\]

be the induced speed and strain-time scale. Re-assembly of anti-parallel
geometry is relative motion. Uniform translation can move the debris, but it
does not change the producing geometry.

If a thick debris packet re-assembles over distance comparable to \(d\) in time

\[
\tau \le C\,\tau_s,
\tag{CPI.3}
\]

then along the participating scale-\(d\) packet,

\[
\int_0^\tau |\delta_d u(t)|\,dt \gtrsim d.
\tag{CPI.4}
\]

Jensen gives

\[
\int_0^\tau |\delta_d u(t)|^3\,dt
\gtrsim \frac{d^3}{\tau^2}
\ge C^{-2}\frac{d^3}{\tau_s^2}
= C^{-2}U^2d .
\tag{CPI.5}
\]

This is purely kinematic: fast relative displacement forces a cubic-increment
bill.

## 3. The cubic cell payment

On a thick route, the participating packet has volume comparable to \(d^3\).
The Duchon-Robert / flux-gate total-variation currency at scale \(d\) is

\[
\mathcal C_d(Q)
\simeq
\int_Q \frac{|\delta_d u|^3}{d}\,dx\,dt .
\tag{CPI.6}
\]

Combining (CPI.5) with the thick volume \(d^3\) yields

\[
\mathcal C_d(Q)
\gtrsim
d^3\cdot \frac1d \cdot C^{-2}U^2d
= c\,C^{-2}U^2d^3 .
\tag{CPI.7}
\]

The right side is the pair-energy scale at separation \(d\), up to the usual
core-log/profile constants:

\[
E_{\rm pair}(d)\simeq U^2d^3 .
\tag{CPI.8}
\]

Thus a fast thick re-assembly episode pays an order-one fraction of the pair
energy in the same local cubic total-variation currency used by the flux-gate
and channel-cell notes.

## 4. What this does and does not prove

This kills the local custody triple (CPI.1) at scaling level. A route can be
thin, and then the viscous threshold from the custody note applies. It can be
slow, and then it does not restore producing geometry inside the record race. It
can be held by a larger bath, and then the payment has moved up-scale into the
BD3 recursion.

The display is not yet the full row theorem. To use it inside composition, the
scale-\(d\) cubic total variation must be oriented and placed on the same
channel-window summands as record admission, payer tax, and no-recount debt.
That is exactly the Gate-8 row-composition / defect-measure lift already named.

## 5. Four-sentence result

Fast re-assembly is relative motion, not uniform transport. Relative motion over
distance \(d\) inside one strain-time forces a scale-\(d\) velocity increment of
size \(U\simeq \Gamma/(2\pi d)\). The increment-cubic payment over a thick
scale-\(d\) spacetime cell is therefore comparable to \(U^2d^3\), the pair-energy
scale. So a local custody route cannot be thick, fast, and free at scaling
level; the remaining escape has to be thin, slow, or up-scale.
