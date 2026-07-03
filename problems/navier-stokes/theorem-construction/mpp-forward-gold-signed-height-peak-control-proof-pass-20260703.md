---
theorem_id: forward-gold-signed-height-peak-control-proof-pass-20260703
status: strict-reduction-direct-peak-proof-not-closed
created: 2026-07-03
problem: navier-stokes
route: forward-gold-signed-critical-height-restart
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
source_surfaces:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-restart-after-positive-clipping-demotion-20260702.md
completion_truth: >-
  This is an object-level proof pass on the signed-height restart. It does not
  close the Navier-Stokes MPP. It proves that the direct signed H^{1/2} peak
  route cannot close from the scalar energy identity, the energy inequality,
  and the standard critical nonlinear estimate alone. The surviving theorem is
  a scale-aware same-fluid peak-thickness/sign-cost statement, not a positive
  variation or child-count estimate.
---

# Signed-height peak-control proof pass

Let

\[
H(t):=\mathcal H_{1/2}(t)
={1\over2}\|\Lambda^{1/2}u(t)\|_2^2,
\qquad
D(t):=\|\Lambda^{3/2}u(t)\|_2^2.
\]

The signed restart equation is

\[
{dH\over dt}
=
P(t)-\nu D(t),
\qquad
P(t):=
-\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle .
\tag{SHPC.1}
\]

The direct peak-control attempt would prove

\[
\sup_{t<T}H(t)<\infty
\tag{SHPC.2}
\]

from `(SHPC.1)' and original-data bounds.

## Direct critical estimate

The usual critical product estimate gives, for smooth periodic solutions,

\[
|P(t)|
\le C\|\Lambda^{1/2}u(t)\|_2\,D(t)
=C(2H(t))^{1/2}D(t).
\tag{SHPC.3}
\]

Thus

\[
{dH\over dt}
\le
\bigl(C(2H)^{1/2}-\nu\bigr)D(t).
\tag{SHPC.4}
\]

This proves the small-critical-height damping statement: whenever

\[
H(t)<{\nu^2\over 2C^2},
\tag{SHPC.5}
\]

the signed height is nonincreasing up to the sharpness of the product constant.
For arbitrary data this is not a peak bound. Above the small threshold the
estimate changes sign in the wrong direction and leaves the whole positive
part of the nonlinear production exposed.

## Energy gives time integrability, not peak exclusion

The energy inequality and interpolation give

\[
\|\Lambda^{1/2}u(t)\|_2^2
\le
\|u(t)\|_2\|\Lambda u(t)\|_2,
\]

so

\[
\int_0^T H(t)^2\,dt
\lesssim
\|u_0\|_2^2
\int_0^T \|\Lambda u(t)\|_2^2\,dt
<\infty .
\tag{SHPC.6}
\]

This is a real original-data fact, but it is not enough. A scalar function can
have finite \(L^2_t\) norm and unbounded peaks if the peaks become thin. The
signed-height restart therefore cannot be closed by saying that the peak is
controlled by total energy, or by replacing the signed object with accumulated
positive variation.

The missing step is exactly the temporal thickness of high signed-height
events: a record peak must either persist long enough to spend the finite
\(L^2_t\) budget, or its formation must pay a same-fluid sign/alignment cost
visible in `(SHPC.1)'.

## Why critical local theory does not supply the thickness for free

A tempting closure is:

> a high value of \(H\) persists for a time comparable to \(H^{-2}\), so
> `(SHPC.6)' rules out infinitely many record peaks.

That argument is not available at the critical level. Critical scaling allows
profiles with the same \(\dot H^{1/2}\) size to live on arbitrarily small
parabolic scales. Large-data critical local existence does not give a uniform
lifespan depending only on \(H(t)\). Therefore the scalar peak-thickness
statement cannot be imported from local well-posedness.

This is the same obstruction in physical language: a very thin high-frequency
packet can carry a large signed critical readout over a very short physical
time unless the original same-fluid participation law proves a scale-aware
cost.

## Strict remaining theorem

The signed-height restart has narrowed to the following theorem.

**Scale-aware signed peak cost.** For every smooth periodic Navier-Stokes
solution on \([0,T)\), every record signed critical-height event must satisfy
one of the following two alternatives.

1. The event occupies enough original same-fluid time-thickness at comparable
   critical height to spend the finite \(L^2_t\) budget in `(SHPC.6)'.
2. The rapid formation and loss of the event pays a same-fluid cost in
   `(SHPC.1)' through viscosity, pressure reorientation, transport/frame
   rotation, source depletion, or stop/legal/reselection terms, with a summable
   original-data budget.

Equivalently, the route must prove a scale-aware no-free critical spike theorem:
unbounded \(H(t)\) cannot be realized by an infinite sequence of ever-thinner
same-fluid signed-height spikes whose positive nonlinear production is later
erased by sign reversal without charging an original-data ledger.

## Proof-pass verdict

This pass does not prove `(SHPC.2)'. It rules out the direct scalar signed-height
proof and fixes the next object-level burden. The live target is not positive
\(L^1\) variation, atom counting, or child-packet bookkeeping. The live target is
the same-fluid scale-aware sign-cost/peak-thickness theorem above.
