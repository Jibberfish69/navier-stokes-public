---
theorem_id: forward-gold-parent-stress-gram-determinant-selected-novelty-admission-20260627
status: determinant-bellman-support-bounded-riesz-currency-required
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
superseded_live_hinge_by:
  - SelectedActionCurrencyBoundedOriginalPacketEnforcement.A
  - SelectedUnitRieszRepresentativeSourceGraphAdmission.A
refines:
  - SelectedUnitNoveltyAdmission.A
  - SelectedRefillParentNormalizedAdmission.A
  - SelectedGeneratorStorageCoercivity.A
  - StoppedAccretiveTestingData.A
  - EffectiveResistanceSelectedActionAdmission.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-scale-normalization-novelty-storage-reconciliation-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-refill-parent-normalized-leverage-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-effective-resistance-bellman-capacity-realization-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-action-leverage-or-native-birth-dichotomy-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-generator-storage-coercivity-hard-block-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-stress-test-frame-qr-realization-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-subtracted-inherited-direction-bessel-closure-20260627.md
effect: >-
  Replaces the scalar refill / fresh-birth split with the parent stress-record
  leverage form.  Exact reuse remains parent current.  Changed reuse remains
  reset / stop / legal / route-geometry motion.  Fresh orthogonal reads are not
  a separate reserve; they are low-leverage directions against the same
  parent-known stress Gram record unless they force a parent-known reset or
  legal stop.  The Fredholm determinant telescope is proved at the algebraic
  level.  This is now parent-reuse/Bellman support under the enforced
  source-level selected-action currency.  The retained unit must first be a
  bounded original-packet projection, equivalently a bounded Riesz representative
  before scalar readout; determinant leverage then pays the inherited/root part.
  Partial, not Gold closed by this determinant note alone.
---

# Parent stress Gram determinant selected novelty admission

The physical issue is scale normalization.  The same material Cauchy stress
history supplies the raw stress.  The missing rule is why tiny shrinking reads
of that history cannot be promoted into infinitely many unit selected refills.

The right parent object is not a scalar account that treats fresh directions as
a separate birth ledger.  It is the whole parent stress record as a Gram
operator.  Exact reuse is already parent current.  Changed reuse is reset,
angle, collar, connection, stop, or legal motion.  A genuinely fresh orthogonal
direction is still measured against the parent Gram record through its leverage.

## 1. Parent-subtracted stress tests

On a stopped parent \(P\), work in the parent stress Hilbert space

\[
\mathfrak H_P=L^2_{\rm sym,tr}(\operatorname{Hist}(P)),
\qquad
G=2\nu S_A .
\]

For each retained child, the installed QR split is

\[
a_Q=b_Q+d_Q,
\qquad
b_Q=\Pi_{E_{Q^-}}a_Q,
\qquad
d_Q=(I-\Pi_{E_{Q^-}})a_Q .
\]

The selected new current is

\[
\sqrt{\mathcal R(Q)}\,\Delta J_Q^{new}
=
\langle G,a_Q\rangle-\langle G,b_Q\rangle
=
\langle G,d_Q\rangle .
\]

Thus exact inherited reuse gives \(d_Q=0\) and contributes zero new selected
child action.

Let

\[
e_Q={d_Q\over \|d_Q\|_{\mathfrak H_P}}
\quad(d_Q\ne0),
\qquad
\alpha_Q=|\langle G,d_Q\rangle|^2 .
\]

Bessel gives

\[
\sum_Q\alpha_Q\le C_N\|G\|_{\mathfrak H_P}^2\le C_N(u_0)
\]

on every stopped parent tree.  This raw square bound is real, but it is not yet
selected-scale unit control.

## 2. Parent stress Gram record

Fix a parent-known floor \(\lambda_P>0\) once for the stopped parent.  It is a
root normalization of the retained selector, not a new empty account restarted
at every child.  Define the parent stress Gram record before \(Q\) by

\[
\mathsf C_{Q^-}
=
\lambda_P I
+
\sum_{R<Q}\alpha_R\, e_R\otimes e_R
+
\mathsf C^{\rm inh}_{P}.
\]

Here \(\mathsf C^{\rm inh}_{P}\) is the already inherited parent record.  It may
be omitted in the minimal model; including it only decreases leverage in
already recorded directions.

The child increment is

\[
\Delta \mathsf C_Q=\alpha_Q\,e_Q\otimes e_Q,
\qquad
\mathsf C_Q=\mathsf C_{Q^-}+\Delta\mathsf C_Q .
\]

At finite stopped depth this is a finite-rank positive operator.  In the
trace-class formulation, use the Fredholm determinant.

The determinant leverage of \(Q\) is

\[
\Delta\mathcal B_Q
=
\log\det
\left(
I+\mathsf C_{Q^-}^{-1/2}
\Delta\mathsf C_Q
\mathsf C_{Q^-}^{-1/2}
\right).
\]

For a rank-one increment,

\[
\Delta\mathcal B_Q
=
\log\left(
1+\alpha_Q
\langle e_Q,\mathsf C_{Q^-}^{-1}e_Q\rangle
\right).
\]

This is the exact mathematical form of the physical novelty rule.  A read in an
already saturated parent direction has small leverage because
\(\mathsf C_{Q^-}^{-1}\) is small there.  A fresh orthogonal read is measured
against the fixed parent floor \(\lambda_P\), so a tiny fresh read has charge
\(\log(1+\alpha_Q/\lambda_P)\), not one unit.

## 3. Telescope and half-tail exclusion

Along a fixed stopped parent frame,

\[
\sum_{Q\subset P}\Delta\mathcal B_Q
=
\log\det\mathsf C_{\rm final}
-
\log\det\mathsf C_{\rm root}.
\]

Since

\[
\log\det(I+A)\le \operatorname{tr}A
\]

for positive trace-class \(A\),

\[
\sum_{Q\subset P}\Delta\mathcal B_Q
\le
\lambda_P^{-1}
\operatorname{tr}
\left(
\sum_{Q\subset P}\alpha_Q e_Q\otimes e_Q
\right)
\le
C_{\lambda_P,N}\sum_{Q\subset P}\alpha_Q
\le
C_N(u_0).
\]

The critical half-tail is therefore killed once selected action is admitted
through determinant leverage.  If \(\alpha_m=2^{-m}/(m+1)\) and the directions
are orthogonal, then

\[
\sum_m \alpha_m<\infty,
\qquad
\sum_m \log(1+\alpha_m/\lambda_P)<\infty .
\]

The only way to get infinitely many unit selected refills from this sequence is
to ignore the parent Gram record and declare each tiny fresh read to be a new
unit.  That is exactly the missing admission error.

## 4. Correct admission theorem

The refined selected novelty theorem should be:

\[
\boxed{
\omega_Q^{new}
\le
C_N\,\Delta\mathcal B_Q
+
R_Q^{reset}
+
R_Q^{legal}
+
Stop_Q .
}
\tag{1}
\]

This single inequality absorbs the older split.

Existing-channel refill is the one-dimensional shadow obtained when all
increments remain in one parent channel:

\[
\Delta\mathcal B_Q
\sim
\log\left(1+{\mu_G(\widehat Q)\over s_{Q^-}}\right).
\]

Fresh orthogonal birth is not a separate reserve.  It is the same determinant
leverage against the parent floor.  A fresh direction can count as unit only if
its raw stress increment has unit-scale leverage, or if the selector changes the
parent frame and pays reset / legal / stop.

Thus the sharpened theorem is:

```text
ParentStressGramDeterminantSelectedAdmission.A
```

For every retained child before scalar selected readout, selected unit action is
bounded by the Fredholm determinant increment of the same parent stress record,
plus paid reset, stop, and legal terms.

## 5. What this changes

The effective-resistance/log-det note was demoted correctly when it was treated
as a standalone capacity substitute for the Navier-Stokes selector.  It should
not be demoted as the admission geometry itself.  The determinant is the correct
form of parent-known novelty.

The previous scalar split

\[
\text{refill leverage}
\quad+\quad
\text{fresh-birth root storage}
\]

was too coarse.  It made fresh orthogonal directions look like an external
account.  In the parent Gram formulation, fresh directions are just unsaturated
directions of the same parent stress record, measured against a fixed
parent-known floor.

This determinant branch is not the live Gold producer by itself. The live
source-level currency is:

\[
\texttt{SelectedActionCurrencyBoundedOriginalPacketEnforcement.A},
\]

with Hilbert normal form

\[
\texttt{SelectedUnitRieszRepresentativeSourceGraphAdmission.A}.
\]

The algebra after bounded selected-unit admission is closed by the determinant
telescope and the installed parent-subtracted Bessel / reset / stop / legal
relays.  The determinant theorem itself is parent-reuse support: it must not be
promoted as a separate source of selected action after scalar readout.

Partial, not Gold closed.
