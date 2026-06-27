---
theorem_id: forward-gold-stopped-selector-self-normalized-determinant-admission-20260627
status: determinant-admission-reduced-to-self-normalized-stopped-selector-bound
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
superseded_live_hinge_by:
  - BoundedOriginalPacketSelectedProjectionAdmission.A
  - SelectedActionCurrencyBoundedOriginalPacketEnforcement.A
  - SelectedUnitRieszRepresentativeSourceGraphAdmission.A
refines:
  - ParentStressGramDeterminantSelectedAdmission.A
  - FiniteStoppedScoreSelectorRealization.A
  - SelectorCorrectLogAmplificationIdentity.A
  - ParentStressGramDeterminantSelectedNoveltyAdmission.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-stress-gram-determinant-selected-novelty-admission-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-stopped-score-selector-realization-pivot-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-correct-log-amplification-identity-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-readout-parent-subtracted-current-admission-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-subtracted-stress-test-innovation-bessel-20260627.md
effect: >-
  Compresses the open determinant-admission theorem to one stopped-selector
  normalization statement.  The Fredholm determinant telescope is already
  algebraic.  What remains is to prove that a finite parent-known stopped selector
  score cannot turn a low determinant-leverage parent-subtracted current into a
  retained unit selected increment.  If it tries, the score has changed its
  normalization, aperture, order-lock, or carrier, and the transaction is reset,
  stop, legal, or donor paid.  This note is now a parent-reuse/Bellman support
  theorem, not the sole Gold producer: genuine fresh selected-scale birth still
  requires bounded original-packet projection admission before Bessel pays it.
  Partial, not Gold closed.
---

# Stopped selector self-normalized determinant admission

The parent stress Gram determinant note proves the algebra after the correct
admission rule.  It does not yet prove the admission rule.

This note isolates the determinant/reuse theorem.  The later correction
`BoundedOriginalPacketSelectedProjectionAdmission.A` keeps this determinant
piece but adds the missing fresh-channel condition: first-birth selected units
must be bounded tests of the original material stress packet before Bessel can
pay them.

## 1. Determinant leverage record

Fix a stopped parent \(P\).  In the parent material stress Hilbert space, the
retained child readout has the parent-subtracted form

\[
a_Q=b_Q+d_Q,
\qquad
d_Q=(I-\Pi_{E_{Q^-}})a_Q,
\qquad
\sqrt{\mathcal R(Q)}\,\Delta J_Q^{new}
=
\langle G,d_Q\rangle ,
\tag{1}
\]

where \(G=2\nu S_A\).  Write

\[
d_Q=\|d_Q\|e_Q,
\qquad
\alpha_Q:=|\langle G,d_Q\rangle|^2 .
\tag{2}
\]

Let the parent stress Gram record before \(Q\) be

\[
\mathsf C_{Q^-}
=
\lambda_P I
+
\sum_{R<Q}\alpha_R\, e_R\otimes e_R
+
\mathsf C_P^{inh},
\qquad \lambda_P>0 .
\tag{3}
\]

The determinant leverage increment is

\[
\Delta\mathcal B_Q
=
\log\det
\left(
I+\mathsf C_{Q^-}^{-1/2}
(\alpha_Q e_Q\otimes e_Q)
\mathsf C_{Q^-}^{-1/2}
\right)
=
\log(1+\tau_Q),
\tag{4}
\]

with

\[
\tau_Q
:=
\alpha_Q\langle e_Q,\mathsf C_{Q^-}^{-1}e_Q\rangle .
\tag{5}
\]

The determinant telescope gives

\[
\sum_{Q\subset P}\Delta\mathcal B_Q
\le
C_{\lambda_P,N}\sum_{Q\subset P}\alpha_Q
\le
C_N(u_0)+R_{\rm legal}(P)+Stop(P),
\tag{6}
\]

using the parent-subtracted Bessel estimate.

Thus the only missing line is local admission:

\[
\omega_Q^{new}
\le
C_N\Delta\mathcal B_Q
+
R_Q^{reset}
+
R_Q^{legal}
+
Stop_Q .
\tag{7}
\]

## 2. Selector score identity is close but not enough

The selector-correct log-amplification identity gives, on a finite stopped
score chamber,

\[
\Delta_Q\lambda_{\rm sel}
=
\ell_Q(\Delta_QJ^{new})
-\psi_Q
+e_Q^{legal/frame},
\qquad
\psi_Q\ge0.
\tag{8}
\]

The readout \(\ell_Q\) is parent-known and bounded in the stopped lift norm.  This
proves square-packing compatibility.  It does not by itself prove `(7)`, because
unit selected action is scale-normalized, while \(\Delta_QJ^{new}\) may have tiny
raw size.

The needed strengthening is a self-normalized stopped-selector bound.

## 3. Self-normalized selector theorem

State the local theorem as:

```text
StoppedSelectorSelfNormalizedDeterminantAdmission.A.
```

For every retained unpaid selected edge \(Q\subset P\), before descendant
positive readout and on a fixed parent-known stopped score chamber,

\[
[\Delta_Q\lambda_{\rm sel}]_+
\le
C_N\min\{1,\tau_Q\}
+
R_Q^{reset}
+
R_Q^{legal}
+
Stop_Q .
\tag{9}
\]

Equivalently, since \(\min\{1,x\}\le C\log(1+x)\),

\[
[\Delta_Q\lambda_{\rm sel}]_+
\le
C_N\Delta\mathcal B_Q
+
R_Q^{reset}
+
R_Q^{legal}
+
Stop_Q .
\tag{10}
\]

Together with the selector log-amplification relay, `(10)` gives `(7)`.

## 4. Why this is the exact remaining local statement

If `(9)` fails, there is a retained sequence with

\[
[\Delta_{Q_n}\lambda_{\rm sel}]_+\ge c_N,
\qquad
\tau_{Q_n}\to0,
\qquad
R_{Q_n}^{reset}+R_{Q_n}^{legal}+Stop_{Q_n}\to0 .
\tag{11}
\]

Normalize the stopped score chamber and pass to the finite parent-known compact
limit.  The condition \(\tau_{Q_n}\to0\) says that the parent-subtracted current
seen by the selector vanishes in the self-normalized parent Gram geometry.  The
finite stopped score identity `(8)` then gives

\[
\Delta_{Q_n}\lambda_{\rm sel}\to0,
\tag{12}
\]

unless the score functional changes normalization, aperture, carrier, order-lock,
collar, or frame.  Those alternatives are exactly reset, stop, legal, donor, or
selector-drift payments.

Therefore a retained unpaid unit selected increment with vanishing determinant
leverage is the same false case as a future-fitted moving selector.  It is not a
Navier-Stokes current event.

## 5. Relation to older branches

The older split was:

```text
existing-channel parent-normalized refill
+
fresh selected-scale native birth.
```

The determinant formulation absorbs the parent-reuse side into one parent Gram
record.  It does not by itself pay the scale-weighted fresh side.  A fresh
orthogonal direction is physical selected birth only after it is represented by a
bounded original-packet test; then the first-birth family is Bessel.  If the
scale-normalized readout requires an unbounded original-packet test, the
measuring rule has created a fake fourth category rather than physical
participation.

The affine-Schur finite-state note is the two-moment quotient shadow of the same
statement.  The self-normalized selector theorem is stronger because it is
formulated directly in the full parent stress Gram record before scalar readout.

## 6. Result

The determinant support chain is:

```text
SelectedActionCurrencyBoundedOriginalPacketEnforcement.A
  -> bounded original-packet/Riesz selected unit
  -> StoppedSelectorSelfNormalizedDeterminantAdmission.A for parent reuse
  -> finite selected critical action
  -> finite full same-material clock
  -> H^s continuation.
```

The determinant telescope and parent-subtracted Bessel parts are installed, but
they are consumed only under the bounded original-packet selected-action
currency.  The self-normalized finite stopped-selector bound `(9)`
pays parent reuse; genuine fresh birth is paid by Bessel in the original stress
Hilbert space after bounded-test admission.  Low determinant leverage cannot be
promoted into unit selected action unless the selector pays reset, stop, legal,
donor, drift, or supplies a bounded fresh original-packet projection.

Partial, not Gold closed.
