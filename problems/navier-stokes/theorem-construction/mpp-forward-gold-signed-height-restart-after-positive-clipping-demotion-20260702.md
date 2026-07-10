---
theorem_id: forward-gold-signed-height-restart-after-positive-clipping-demotion-20260702
status: gate-audited-critical-height-balance-open; sign-split-wrapper-demoted
created: 2026-07-02
problem: navier-stokes
route: forward-gold-critical-source-audit
completion_truth: >-
  The positive-variation target is a derived sufficient route rather than the
  primitive physical size. The physical size is the global nonnegative critical
  height with a signed evolution law. The former packet interpretation and
  terminal-positive-versus-sign-changing split are demoted: pressure has zero
  direct work in the global balance, sign changes do not bound peak height, and
  the peak bound is the critical regularity burden itself. A genuine reduction
  still needs a quantitative same-field record barrier or another smaller
  theorem whose implication to the critical bound is proved.
---

# Critical height with signed evolution after positive-clipping demotion

Scope: \(u\) is a smooth unforced incompressible solution on decaying
\(\mathbb R^3\) or periodic \(\mathbb T^3\), and every displayed pairing is
finite. Here \(\Lambda=(-\Delta)^{1/2}\).

The previous Gold \(L^1\) formulation treated a selected positive source count
as the object to prove finite. That is not a primitive Navier--Stokes quantity.
It is a proof-design object created after a signed equation has already been
rectified.

The exact global critical height, whose evolution has a signed rate, is

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

Pressure does no direct work in this global quadratic multiplier balance:

\[
\left\langle
\Lambda^{1/2}\nabla p,
\Lambda^{1/2}u
\right\rangle
=0.
\tag{SHR.2a}
\]

Thus the integrated signed evolution is

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

as though it were the physical size itself. It is a lawful derived readout: the
total upward variation of the global critical height. Source-only variants are
different sufficient-control candidates because they omit the viscous term.
The physical size is the nonnegative global height in `(SHR.1)'; its evolution
is the signed identity `(SHR.3)'.

## What the sign information does and does not give

The former split into “positive on a terminal interval” and “changes sign” is
not an exhaustive disjoint split. A rate may touch zero without becoming
negative, change sign and later remain positive, alternate infinitely often,
or become eventually nonpositive.

Sign changes alone give no peak bound. Set \(x=(1-t)^{-1}\) on \(0\le t<1\).
The positive smooth scalar history

\[
H_a(t)=x\bigl(2+\sin x^2\bigr)
\]

has unbounded peaks while

\[
H_a'(t)
=x^2\bigl(2+\sin x^2+2x^2\cos x^2\bigr)
\]

changes sign infinitely often. Conversely,

\[
H_b(t)=2+\sin x
\]

has bounded peak but infinite positive variation:

\[
\int_0^1[H_b'(t)]_+\,dt
=\int_1^\infty[\cos x]_+\,dx
=\infty.
\]

These are scalar diagnostics, not Navier--Stokes histories. They prove that
peak control and positive-variation control are different mathematical
burdens. Positive variation is strictly stronger and remains a valid
sufficient route.

Every displayed SHR quantity is global. No packet selector, packet
\(\dot H^{1/2}\) balance, fractional localization commutator, or packet-to-global
bridge has been defined. Packet language therefore has no proof role in this
note.

The exact exhaustive split is bounded versus unbounded critical height. If the
height is unbounded, continuity supplies arbitrarily high record-doubling
intervals \([a,b]\) satisfying

\[
\mathcal H_{1/2}(a)=M,
\qquad
\mathcal H_{1/2}(b)=2M,
\]

and

\[
\int_a^b
\left[
-\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle
-\nu\|\Lambda^{3/2}u\|_2^2
\right]dt
=M.
\tag{SHR.5}
\]

This record identity is exact regardless of how often the instantaneous rate
changes sign.

## Consequence for Gold \(L^1\)

The previously isolated positive \(L^1\) estimates remain lawful sufficient
routes. The schematic one-sided line

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

would directly imply the critical-height bound when \(C_N(u_0)\), \(Paid(P)\),
and their uniformity in the upper time limit are precisely defined and proved.
Indeed `(SHR.3)' and `(SHR.6)' would give

\[
\mathcal H_{1/2}(t)
+(1-\theta)\nu
\int_0^t\|\Lambda^{3/2}u\|_2^2\,d\tau
\le
\mathcal H_{1/2}(0)+C_N(u_0)+Paid_t(P).
\tag{SHR.6a}
\]

No separate sign-persistence theorem is required for that implication.
`(SHR.6)' remains open and schematic as written; it is not an installed
estimate.

The critical continuation target is

\[
\sup_{t<T}\mathcal H_{1/2}(t)<\infty .
\tag{SHR.7}
\]

Proving `(SHR.7)' closes the critical Gold burden; naming it does not reduce
that burden. The former `SignedCriticalHeightSignPersistenceOrPeakBound.A`
wrapper is therefore demoted as a theorem target: sign persistence alone gives
no upper bound, while its peak-control branch is exactly `(SHR.7)'.

A genuine strict reduction needs a smaller quantitative same-field theorem.
One possible shape is a finite non-recounted measure \(\mu\) and \(c>0\) such
that every critical-height record-doubling interval satisfies
\(\mu([a,b])\ge c\). Finiteness of \(\mu([0,T))\) would then forbid infinitely
many doublings. No such measure theorem is proved here.
