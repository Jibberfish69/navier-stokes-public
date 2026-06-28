---
theorem_id: forward-gold-affine-schur-residence-thickness-gate-attempt-20260628
status: failed-unconditional-discharge; narrows-to-parent-predictable-residence-or-stop-thin-burst-gate
created: 2026-06-28
problem: navier-stokes
route: forward-gold affine Schur accretivity edge
supports:
  - AffineSchurAccretivityGap.A
  - BoundedBelowSameMaterialServiceStorage.A
  - GlobalSamePacketFullClockFromOriginalData.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-schur-accretivity-gap-no-free-upcrossing-target-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bounded-below-same-material-service-storage-target-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-schur-accretivity-alignment-hard-block-20260628.md
completion_truth: local attempt only; no Clay-level proof promotion
---

# Affine Schur residence-thickness gate attempt

## 1. Live edge

The current forward-Gold hinge is the affine Schur accretive lower bound. For a fresh scale interval \(J\), the installed record is

\[
m_J=\int_J (1,s)Z_{new}(s)\,ds,
\qquad
G_J=\int_J w(s)^{-1}(1,s)^T(1,s)\,ds,
\]

and

\[
S_J=\int \langle m_J,G_J^{-1}m_J\rangle\,dx .
\]

The derivative identity is already installed:

\[
D_t S_J
=2\langle G_J^{-1}m_J,p_J-r_J+e_J\rangle
-\langle G_J^{-1}m_J,K_JG_J^{-1}m_J\rangle .
\]

That identity is signed. The missing Gold line is

\[
H_w\|c_{\theta,J}^+\|_2^2
\lesssim
\langle G_J^{-1}m_J,p_J\rangle_+
+legal+stop .
\]

The previous alignment audit isolated the first obstruction: pointwise positive production is not enough unless the selected production direction is already aligned with the stored affine Schur current. The next possible rescue is a residence-thickness gate: positive production must persist long enough on the same parent material carrier for \(m_J\) to record it before it is charged as retained action.

## 2. Candidate residence theorem

A usable residence theorem would say:

For every retained positive selected production face in \(J\), one of the following holds:

1. it has parent-predictable residence on the same carrier and contributes to \(m_J\) with nontrivial Schur projection;
2. it is too thin in time/residence and is charged to stop, legal reselection, route motion, or viscous service;
3. it is parent-orthogonal fresh novelty and enters the Bessel/Carleson packing ledger;
4. it is negative return/service variation and is paid by the finite return ledger.

Under such a theorem, the desired accretive lower bound would follow by projecting \(p_J\) onto the stored Schur direction \(G_J^{-1}m_J\) and summing the already installed negative-return and inverse-Gram motion payments.

## 3. Raw residence theorem fails

The raw theorem is false without parent-predictable residence. A selected readout can choose a positive burst after observing child-scale production. If that burst is retained solely because its instantaneous positive amplitude is large, the Schur record may not yet contain a comparable parent-known moment in the same direction.

The failure profile is:

\[
p_J(t)\text{ is positive on a very short child-selected residence window,}
\]

while

\[
\langle G_J^{-1}m_J,p_J(t)\rangle_+
\]

is small because \(m_J\) is built from the parent-declared affine history, not from the post-selected child output. Thus the map

\[
\text{instantaneous positive selected production}
\longrightarrow
\text{stored affine Schur current}
\]

is circular unless the residence window is declared before the child readout or the failure is paid by stop/legal/reselection/motion.

Equivalently, instantaneous positive production is not Gold currency. Retained positive production is Gold currency only after it has one of the legal parent-source forms: inherited Schur current, parent-orthogonal Bessel novelty, paid motion, viscous absorption, or stop/legal return.

## 4. Exact narrowed gate

The correct theorem is therefore:

\[
\boxed{\text{Parent-predictable residence or paid thin-burst gate.}}
\]

For each fresh scale interval \(J\) and each retained positive selected production face, the selection mechanism must produce a parent-declared same-material residence certificate \(I\subset J\) such that either

\[
H_w\|c_{\theta,I}^+\|_2^2
\lesssim
\langle G_J^{-1}m_J,p_I\rangle_+
+legal+stop,
\]

or the face is not retained as Schur action and is redirected into one of the already installed ledgers:

\[
\text{thin burst}
\subset
Stop+Legal+RouteMotion+ViscousService+ParentOrthogonalNovelty.
\]

This gate must be parent-predictable. It cannot be chosen after seeing the maximal child positive output.

## 5. Consequence for the live route

The affine Schur accretivity gap is not closed by the current note. The work narrows the live burden from a vague positive-production lower bound to a concrete selection admissibility theorem:

\[
\text{retained positive production}
\Rightarrow
\text{parent-predictable residence in stored Schur current}
\quad\text{or}\quad
\text{paid non-Schur ledger}.
\]

The next theorem-sized work unit is to prove the parent-predictable residence certificate from the stopped selector rules, or to construct the minimal thin-burst counterexample showing that the current selected-action definition still admits post-child instantaneous positive bursts.

## 6. Boundary statement

This is a local theorem-construction/audit artifact. It does not discharge the Navier-Stokes Millennium problem. It identifies the present leading obstruction on the forward-Gold affine Schur route: retained positive production needs a parent-predictable residence certificate before it can be counted as Schur accretive storage.