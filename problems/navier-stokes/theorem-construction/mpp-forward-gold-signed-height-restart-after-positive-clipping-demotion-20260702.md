---
theorem_id: forward-gold-signed-height-restart-after-positive-clipping-demotion-20260702
status: positive-clipping-demoted-signed-height-restart-open
created: 2026-07-02
problem: navier-stokes
route: forward-gold-critical-source-audit
completion_truth: >-
  This note demotes the selected positive L1 / child-clipping target from
  primitive proof object to an unjustified sufficient test. The live restart is
  the signed critical-height evolution and the physical mechanism that either
  maintains positive sign long enough to raise that height or lets the signed
  height oscillate with a bounded peak.
---

# Signed height restart after positive clipping demotion

The previous Gold \(L^1\) formulation treated a selected positive source count
as the object to prove finite. That is not a primitive Navier--Stokes quantity.
It is a proof-design object created after a signed equation has already been
rectified.

The exact critical signed height is

\[
\mathcal H_{1/2}(t)
:=
{1\over2}\|\Lambda^{1/2}u(t)\|_2^2 .
\tag{SHR.1}
\]

The original equation gives

\[
{d\over dt}\mathcal H_{1/2}(t)
=
-\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle
-\nu\|\Lambda^{3/2}u(t)\|_2^2 .
\tag{SHR.2}
\]

Thus the live signed quantity is

\[
\mathcal H_{1/2}(t)
=
\mathcal H_{1/2}(0)
+
\int_0^t
\left[
-\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle
-\nu\|\Lambda^{3/2}u\|_2^2
\right]\,d\tau .
\tag{SHR.3}
\]

The route error was to promote the rectified integral

\[
\int_0^T
\left[
-\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle
-\nu\|\Lambda^{3/2}u\|_2^2
\right]_+dt
\tag{SHR.4}
\]

or its source-only variants as though it were the physical size itself. It is
not. It measures total upward variation of the chosen scalar readout. The
Navier--Stokes object is the signed height `(SHR.3)'.

## The physical split

There are only two honest physical cases for the signed rate in `(SHR.2)'.

First, the signed rate remains positive on a terminal interval. Then the packet
is genuinely accumulating critical height. A proof must explain the physical
mechanism that keeps the same fluid packet aligned so that the nonlinear
self-advection/pressure contribution beats viscosity for that interval. The
cost is not a formal counting cost. It has to be visible in the actual equation:
viscous drain, pressure reorientation, transport/frame rotation, source
depletion, loss of alignment, or another same-fluid mechanism that limits how
long the sign can remain positive.

Second, the signed rate changes sign. Then positive clipping is the wrong size
measurement. A rubber-band path that twists, untwists, and repeats has finite
peak twist even though its total positive variation can be arbitrarily large.
For Navier--Stokes this means the control object is the peak signed height

\[
\sup_{t<T}\mathcal H_{1/2}(t),
\tag{SHR.5}
\]

or the corresponding higher continuation height after a justified bridge, not
the accumulated positive variation `(SHR.4)'.

## Consequence for Gold \(L^1\)

The previously isolated positive \(L^1\) estimates, including the critical
one-sided line

\[
\int_0^T
\left(
-\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle
\right)_+dt
\le
C_N(u_0)
+\theta\nu\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt
+Paid(P),
\qquad \theta<1,
\tag{SHR.6}
\]

are now demoted to sufficient stress tests unless a separate physical
sign-persistence/depletion theorem is proved first. They may not be used as the
primitive Gold source object.

The live restart is:

\[
\boxed{
\text{control the signed critical height `(SHR.3)' by the physical mechanism
that governs sign persistence and peak height.}
}
\tag{SHR.7}
\]

This does not close Gold. It removes positive clipping as an assumed proof
primitive and puts the burden back on the signed Navier--Stokes evolution.
