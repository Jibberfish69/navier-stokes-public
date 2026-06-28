---
theorem_id: forward-gold-affine-schur-accretivity-alignment-hard-block-20260628
status: exact-block; schur-storage-identity-alone-does-not-imply-accretive-positive-production
created: 2026-06-28
problem: navier-stokes
route: forward-gold affine Schur accretivity edge
supports:
  - AffineSchurAccretivityGap.A
  - BoundedBelowSameMaterialServiceStorage.A
  - HighHighCriticalResidenceGain.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-schur-accretivity-gap-no-free-upcrossing-target-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bounded-below-same-material-service-storage-target-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-wave-packet-high-high-residence-obstruction-20260628.md
completion_truth: Gold not closed; the exact remaining theorem is Schur-gradient alignment/accretivity for retained same-carrier positive production
---

# Affine Schur accretivity alignment hard block

## 1. Target line

The installed affine Schur storage is

\[
S=\langle m,G^{-1}m\rangle,
\qquad G>0,
\]

with derivative identity

\[
D_tS
=
2\langle G^{-1}m,p-r+e\rangle
-
\langle G^{-1}m,KG^{-1}m\rangle .
\]

The Gold route needs the accretive lower bound

\[
H_w\|c_{\theta,J}^+\|_2^2
\lesssim
\langle G^{-1}m,p_J\rangle_+
+legal+stop .
\]

This note tests whether that bound follows from the Schur identity and the already installed Schur/Bessel/motion mechanisms.

## 2. Finite-dimensional sign test

Take the simplest model:

\[
G=I,
\qquad K=0,
\qquad r=e=0,
\qquad m=e_1,
\qquad p=e_2 .
\]

Then

\[
D_tS=2\langle e_1,e_2\rangle=0 .
\]

The Schur storage is stationary and the metric has no motion cost. But a selected positive production detector can point in the orthogonal direction:

\[
c^+=e_2,
\qquad
H_w\|c^+\|^2=H_w>0,
\]

while the Schur payment is

\[
\langle G^{-1}m,p\rangle_+
=
\langle e_1,e_2\rangle_+=0 .
\]

Thus the desired inequality is false under the abstract Schur identity alone.

This is not a Navier--Stokes counterexample. It is a structural obstruction: the identity records only the component of the source in the Schur-gradient direction \(G^{-1}m\). Positive production in an orthogonal retained direction is invisible to \(S\).

## 3. Why Bessel and motion do not automatically repair it

If the orthogonal direction is genuinely new, parent-subtracted novelty pays it once by Bessel. If the direction changes, first-exit motion pays the change. But exact same-direction repeated production with

\[
G=I,
\qquad K=0,
\qquad c_i^+=e_2
\]

has no motion cost. After the first selection it is no longer fresh. If the parent Schur current response in that direction remains zero, repeated positive selected production is not paid by the installed abstract mechanisms.

Therefore the route needs more than frame legality, Bessel novelty, and reversible affine cycle payment. It needs an alignment theorem saying that every retained same-direction positive production is either Schur-gradient visible, returned negatively, viscously absorbed with a strict coefficient, or expelled to legal/stop.

## 4. Exact theorem still missing

The missing theorem can be stated as Schur-gradient alignment for retained same-carrier production:

For every stopped parent packet and retained selected event,

\[
H_w\|c_{\theta,J}^+\|_2^2
\le
C\langle G_J^{-1}m_J,p_J\rangle_+
+C\,dA_J^-
+C\,\mathfrak S_J\,d\mathcal K_J
+C\,E_{route,J}
+\theta\nu D_J
+legal+stop,
\]

with \(\theta<1\), after parent-subtracted novelty has been removed.

Equivalently, for the retained nonfresh component, one needs a uniform positive angle/accretivity statement between selected production and the Schur gradient:

\[
\text{retained }c^+\neq0
\quad\Longrightarrow\quad
\langle \widehat{c^+},\widehat{G^{-1}m}\rangle_+
\ge \alpha>0
\]

up to negative return, viscous absorption, motion, legal, and stop errors.

The high-high residence inequality from the previous note is this same theorem in packet coordinates: the legal parent wave-packet frame gives a detector, but the retained same-scale source still needs an accretive response against the same-material Schur storage rather than only the standard critical estimate.

## 5. Closure state

This closes the current pressure test as an exact block, not as Gold closure. The installed machinery proves:

1. moving affine detector geometry is paid by positive metric variation;
2. parent-subtracted fresh novelty Bessel-packs;
3. high-high stress reads can be placed into parent detector coordinates under same-carrier wave-packet/Egorov control.

It does not prove the accretive sign that converts retained positive production into Schur payment.

The Gold route therefore has one sharp remaining theorem:

\[
\text{retained same-carrier positive production}
\Rightarrow
\text{Schur-gradient accretivity or paid return/motion/viscous/legal exit}.
\]

Without that theorem, repeated stationary-metric orthogonal production is the abstract unpaid profile. Proving that Navier--Stokes forbids this profile is exactly the missing mathematical work.