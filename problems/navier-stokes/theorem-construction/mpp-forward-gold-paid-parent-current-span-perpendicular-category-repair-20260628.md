---
theorem_id: forward-gold-paid-parent-current-span-perpendicular-category-repair-20260628
status: abstract-perpendicular-obstruction-repaired; same-carrier-dyadic-admission-remains
created: 2026-06-28
problem: navier-stokes
route: forward-gold affine Schur accretivity edge
supports:
  - AffineSchurAccretivityGap.A
  - BoundedBelowSameMaterialServiceStorage.A
  - PositiveCriticalTransferDyadicFluxReduction.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-gram-schur-first-three-pressure-tests-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-adjoint-bessel-packing-under-parent-subtracted-novelty-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-schur-accretivity-alignment-hard-block-20260628.md
completion_truth: the repeated-perpendicular abstract block was a category error; the remaining burden is to admit each positive Navier-Stokes triad as a same-carrier parent-current increment
---

# Paid parent-current span and the perpendicular category repair

## 1. Correction

The phrase "perpendicular direction" must refer to the paid parent-current
history, not to the raw catalogue of geometrically available detector
coordinates.

Let

\[
H_P
\]

be the parent detector Hilbert space and let

\[
g(t)=G(t)^{-1}m(t)
\]

be the current Schur response. The span used for Bessel subtraction is not the
raw detector dictionary. It is the paid parent-current span

\[
R_{\rm paid}(t)
=
\overline{\operatorname{span}}\{
\text{directions already admitted with nonzero paid current response,
or already charged as novelty/motion/return}
\}.
\]

Thus a selected direction \(a\) has only two honest states:

\[
(I-P_{R_{\rm paid}})a\ne0
\]

is genuine parent-current novelty and is Bessel-payable, while

\[
a\in R_{\rm paid}
\]

means future same-carrier production in that direction is retained parent-current
work and must update Schur storage, unless it is offset by return, motion,
viscosity, legal, or stop.

The category error was to put a detector into the retained parent span merely
because its geometric coordinate was known, while still keeping zero parent
current response and refusing the first novelty charge.

## 2. Zero-current retained direction is first-entry novelty

Suppose \(G\) is fixed and \(a\) is a candidate detector. Put

\[
q(t)=\langle g(t),a\rangle
=\langle G^{-1}m(t),a\rangle .
\]

If \(q(t_0)=0\) and a positive same-carrier production increment enters this
coordinate,

\[
dq=b(t)\,dt,\qquad b(t)\ge0,
\]

then the event is the first paid entry of that parent-current coordinate. Before
the entry it is perpendicular to the paid current history. That is exactly the
Bessel novelty case. After the entry, the coordinate is no longer perpendicular
in the payment sense, because

\[
q(t)>0
\]

and the direction has joined \(R_{\rm paid}\).

Repeated production in the same coordinate is then Schur current work:

\[
\int_{t_0}^{t_1}q\,dq
=
{1\over2}\bigl(q(t_1)^2-q(t_0)^2\bigr).
\]

So repeated stationary same-direction production is not free after same-carrier
admission. If \(q\) is erased, the erasure is return/reset. If the coordinate
changes, the change is selector/frame/metric motion. If the coordinate was not
yet paid, the first entry is Bessel novelty.

## 3. Resolution of the abstract sign test

The finite-dimensional model

\[
G=I,\qquad K=0,\qquad m=e_1,\qquad p=e_2
\]

does not produce a retained unpaid perpendicular channel under the corrected
bookkeeping. It proves only this:

the Schur identity alone cannot pay a source vector that has not been admitted
into the same paid parent-current history.

Under the corrected classification, \(e_2\) is either:

1. fresh relative to \(R_{\rm paid}\), hence Bessel-payable on entry; or
2. already in \(R_{\rm paid}\), in which case same-carrier positive production
   changes \(q_2=\langle g,e_2\rangle\) and is Schur current work; or
3. not admitted into the parent-current coordinate at all, which is the
   Navier--Stokes admission failure to be proved impossible or routed to
   legal/stop.

There is no fourth "repeated perpendicular payment" mechanism. Repeated
perpendicularity is a bookkeeping contradiction: a direction cannot be both
nonfresh relative to paid parent-current history and still perpendicular to that
paid history.

## 4. Correct remaining theorem

The remaining Gold bridge is therefore not an abstract affine Schur obstruction.
It is the same-carrier commutator admission theorem:

every selected positive \(H^{1/2}\) dyadic transfer must enter the paid parent
current as one of:

\[
\text{fresh parent-current novelty}
\quad\text{or}\quad
\text{retained Schur current work}
\quad\text{or}\quad
\text{paid motion/return/viscous/legal/stop}.
\]

Equivalently, after fresh novelty and motion have been removed, a retained
positive same-carrier increment satisfies

\[
T_Q^+
\lesssim
\int_Q \langle G^{-1}m,p_Q\rangle_+
+ dA_Q^-
+ \mathfrak S_Q\,d\mathcal K_Q
+ \theta\nu D_Q
+ legal+stop,
\qquad \theta<1.
\]

The exact hard problem is to prove that the high-high Navier--Stokes commutator
detector is admitted into this paid parent-current span. Once that admission is
proved, the perpendicular loophole is closed by the Schur/Bessel/motion
accounting above.
