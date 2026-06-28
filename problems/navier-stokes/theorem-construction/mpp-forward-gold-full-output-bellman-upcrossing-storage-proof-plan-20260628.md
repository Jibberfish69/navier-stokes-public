---
theorem_id: forward-gold-full-output-bellman-upcrossing-storage-proof-plan-20260628
status: proof-plan-open; reduces-to-retained-full-output-schur-accretivity
created: 2026-06-28
problem: navier-stokes
route: forward-gold affine Schur accretivity edge
supports:
  - AffineSchurAccretivityGap.A
  - BoundedBelowSameMaterialServiceStorage.A
  - PositiveCriticalTransferBound.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bounded-below-same-material-service-storage-target-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-high-full-output-stress-repo-wide-repair-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-commutator-detector-admission-bridge-20260628.md
completion_truth: proof plan only; the retained full-output Schur-accretivity lemma is not installed
---

# Full-output Bellman upcrossing storage proof plan

The corrected Gold object is the net full-output critical transfer

\[
B^{crit}(t)
=
\sum_m
-\left\langle
\Lambda^{1/2}P_m\mathbb P\nabla\cdot(u\otimes u),
\Lambda^{1/2}u_m
\right\rangle ,
\]

with positivity taken after the input colours have recombined.  The one-point
parent current identity gives a signed current read,

\[
B^{crit}(t)\,dt
=
dq_{pc}
+dPaid_{\rm Hodge/collar/frame/motion/legal/stop}
+LP_{err}(t)\,dt .
\]

This signed identity is not enough.  A scalar current can return to its initial
value while accumulating arbitrarily large positive variation.  The missing
theorem is the bounded-below one-sided storage:

\[
[dq_{pc}]_+
\le
-d\mathcal U_P
+dFresh_{\rm Bessel}^{pc}
+dSchur_{\rm retained}^{pc}
+dMotion+dReturn
+\theta\nu D_c\,dt
+dLegal+dStop+dEnd,
\qquad \theta<1,
\tag{1}
\]

with

\[
\mathcal U_P(t)\ge -C_N(u_0)-R_{\rm legal}-Stop.
\tag{2}
\]

## Bellman candidate

The noncircular Bellman object is not a scalar function of the signed current.
It is the worst remaining unpaid full-output bill from the current stopped
parent state:

\[
\mathcal U_P(t)
:=
\inf_{I\subset P,\ I\text{ starts at }t}
\left[
\theta\nu\int_I D_c(s)\,ds
+Paid(I)
-\int_I [B^{crit}(s)]_+\,ds
\right],
\tag{3}
\]

where \(Paid(I)\) includes first-entry Bessel novelty, retained Schur current
work, motion, return, Hodge/collar/frame error, legal, stop, endpoint, and
routed Littlewood--Paley terms, all on the same parent material carrier.

The goal is not to define `(3)' after seeing the future child readout.  The
goal is to prove that `(3)' is bounded below by an original-data parent-known
material state:

\[
\mathcal U_P(t)
\ge
-C_N(u_0)-R_{\rm legal}-Stop.
\tag{4}
\]

Equivalently, no stopped interval can accumulate more net positive full-output
critical transfer than viscosity plus the paid parent capacities.

## Minimal first-unpaid interval

Assume `(4)' fails.  Choose the first stopped interval \(I_\ast\subset P\) on
which the unpaid deficit crosses the fixed threshold.  Minimality strips away
all already-paid exits:

1. no fresh parent-orthogonal detector direction remains unpaid;
2. no frame, collar, carrier, Hodge, legal, stop, or endpoint defect remains
   outside the route ledger;
3. no negative-return interval has been left uncharged;
4. no positive input-colour clipping is being selected;
5. no viscosity term has been borrowed beyond the allowed \(\theta<1\) margin.

After these removals, the only possible source of the deficit is retained
same-carrier full-output positive current.

## Retained Schur-accretivity lemma

The exact local lemma needed on \(I_\ast\) is:

\[
[B^{crit}]_+\,dt
\le
d\mathfrak S_P
+\theta\nu D_c\,dt
+dReturn+dMotion+dLegal+dStop+dEnd,
\tag{5}
\]

where

\[
\mathfrak S_P
=
\langle m_P,G_P^{-1}m_P\rangle
\tag{6}
\]

is the parent-known Schur current storage for the retained full-output detector.

This is the whole mathematical hinge.  If `(5)' holds, the supposed minimal
unpaid interval contradicts its own construction: positive transfer either
increases parent Schur storage, enters as first-entry Bessel novelty, spends
motion/return/legal/stop/endpoint, or is absorbed by viscosity with strict slack.

## Consequence

Integrating `(1)' and `(2)' gives

\[
\int_0^T [B^{crit}(t)]_+\,dt
\le
C_N(u_0)
+\theta\nu\int_0^T D_c(t)\,dt
+R_{\rm legal}+Stop.
\tag{7}
\]

Since \(\theta<1\), the remaining viscous margin supplies the critical control

\[
\sup_{t<T}\|u(t)\|_{\dot H^{1/2}}^2
+(1-\theta)\nu\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt
\le C_N(u_0)+R_{\rm legal}+Stop,
\tag{8}
\]

up to already-routed Littlewood--Paley terms.  This is the Gold continuation
relay.

## Current status

The full-output one-point current identity is installed.  The Bellman/upcrossing
definition `(3)' is a correct target shape.  The proof is still open at the
retained Schur-accretivity lemma `(5)' for the full-output same-carrier current.

The later neutral-transverse frame capacity can serve as a supplier for the
bounded material state behind \(\mathcal U_P\), but it is subordinate to this
Bellman/upcrossing theorem.  It cannot replace `(1)'--`(5)' as the Gold proof
obligation.
