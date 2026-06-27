---
theorem_id: forward-gold-selected-action-leverage-or-native-birth-dichotomy-20260627
status: synthesis-reduces-gold-to-refill-admission-plus-selected-scale-birth
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
refines:
  - ScaleNormalizedStressNoveltyBellmanLeverage.A
  - SelectedRefillParentNormalizedAdmission.A
  - SelectedScaleNativeReserveAtom.A
  - OriginalHistoryWeightedFreshCurrentCapacity.A
uses:
  - ParentSubtractedSelectedReadoutDecomposition.A
  - ParentSubtractedStressTestInnovationBessel.A
  - ProjectionJumpFirstExitCarlesonFromRouteEnergy.A
  - NativeBirthAtomNonReuse.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-refill-parent-normalized-leverage-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-birth-live-edge-after-reset-countertest-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-reserve-weighted-fresh-current-capacity-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-subtracted-stress-test-innovation-bessel-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-readout-parent-subtracted-current-admission-20260627.md
effect: >-
  Sharpens the scale-normalized Gold hinge. The shrinking orthogonal chain is not
  a counterexample to exact-reuse subtraction; it is the fresh-channel birth case.
  Thus selected action must split before scalar readout into existing-channel
  refill leverage and genuine selected-scale native birth. The former telescopes
  by the parent stress record. The latter requires the weighted fresh-current /
  selected-scale native reserve theorem. Partial, not Gold closed.
---

# Selected action leverage or native birth dichotomy

The current Gold edge is not one undifferentiated admission inequality.  A
retained selected unit has two different meanings before scalar readout.

It can be a refill of an already-open parent stress channel.  Then it must be
counted only through parent-normalized leverage.

Or it can be the first selected use of a genuinely fresh stress channel.  Then it
is not a refill; it is a native birth and must carry selected-scale original
history reserve.

## 1. Parent-subtracted current is the common starting point

On a stopped parent \(P\), keep

\[
\mathfrak H_P=L^2_{\rm sym,tr}(\operatorname{Hist}(P)),
\qquad
G=2\nu S_A .
\tag{1}
\]

For a retained child stress test,

\[
a_Q=b_Q+d_Q,
\qquad
b_Q=\Pi_{\mathcal P_{Q^-}}a_Q,
\qquad
d_Q=(I-\Pi_{\mathcal P_{Q^-}})a_Q .
\tag{2}
\]

The parent-subtracted selected current is

\[
\sqrt{\mathcal R(Q)}\,\Delta J_Q^{new}
=
\langle G,a_Q\rangle-\langle G,b_Q\rangle
=
\langle G,d_Q\rangle .
\tag{3}
\]

Exact inherited reuse has \(d_Q=0\), hence no new child action.  Changed inherited
reuse is projection-jump/reset/collar/frame motion.  The remaining fresh part is
\(d_Q\).

## 2. Fresh does not mean refill

The shrinking orthogonal pressure test takes

\[
\ell_m=2^{-m},
\qquad
G=\sum_m\ell_m^{1/2}e_m,
\qquad
d_{Q_m}=e_m .
\tag{4}
\]

Then

\[
\sum_m|\langle G,d_{Q_m}\rangle|^2
=
\sum_m\ell_m
<\infty .
\tag{5}
\]

This does not violate Bessel, exact-reuse subtraction, or projection-jump
payment.  The directions are genuinely fresh.  The only forbidden move is to
call each tiny fresh read a unit refill:

\[
\omega_{Q_m}^{new}\simeq1
\quad\text{while}\quad
|\langle G,d_{Q_m}\rangle|^2=\ell_m\downarrow0 .
\tag{6}
\]

Thus the admission theorem has to split fresh selected action into two cases.

## 3. Existing-channel refill

Let \(s_{Q^-}\) be the parent-known stress-record size in the already-open
channel before \(Q\) is admitted, and let \(\mu_G(\widehat Q)\) be the realized
raw stress work in the stopped hat.  The refill part must satisfy

\[
\omega_Q^{refill}
\le
C_N\min\left\{
1,\frac{\mu_G(\widehat Q)}{s_{Q^-}}
\right\}
+R_Q^{reset}+R_Q^{legal}+Stop_Q .
\tag{7}
\]

Equivalently,

\[
\omega_Q^{refill}
\le
C_N\log\left(1+\frac{\mu_G(\widehat Q)}{s_{Q^-}}\right)
+R_Q^{reset}+R_Q^{legal}+Stop_Q .
\tag{8}
\]

With

\[
s_Q=s_{Q^-}+\mu_G(\widehat Q),
\tag{9}
\]

the logarithms telescope along a stopped parent-known ancestry line.  This is
the content of `SelectedRefillParentNormalizedAdmission.A`.

## 4. Fresh-channel birth

If \(Q\) opens a genuinely fresh selected channel, the parent refill denominator
is not the right object.  The child is a birth, not a refill.  After spent-source
projection, write its original-history fresh increment as

\[
F_Q
=
(I-\Pi_{\rm spent(<Q)})\Delta_QZ_P^{orig}.
\tag{10}
\]

The selected-scale birth requirement is

\[
\omega_Q^{birth}
\le
C_N\,w(Q)\|F_Q\|_{\mathcal H_{\rm raw}}^2
+R_Q^{legal}+Stop_Q+R_Q^{reset}.
\tag{11}
\]

The root packing requirement is

\[
\sum_{Q\subset P}
w(Q)\|F_Q\|_{\mathcal H_{\rm raw}}^2
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P).
\tag{12}
\]

This is the selected-scale native reserve theorem:

```text
SelectedScaleNativeReserveAtom.A
```

or equivalently:

```text
OriginalHistoryWeightedFreshCurrentCapacity.A.
```

It is exactly the statement that a fresh selected birth carries the selected
heat-scale weight in original-history currency.  Raw Hilbert freshness alone is
not enough.

## 5. The combined admission theorem

The theorem-grade Gold admission should be stated as the dichotomy

\[
\omega_Q^{new}
\le
\omega_Q^{refill}
+\omega_Q^{birth}
+R_Q^{reset}+R_Q^{legal}+Stop_Q,
\tag{13}
\]

with `(7)` for \(\omega_Q^{refill}\) and `(11)` for
\(\omega_Q^{birth}\).  Summing gives

\[
\sum_{Q\subset P}\omega_Q^{new}
\le
C_N
\sum_{Q\subset P}
\log\left(1+\frac{\mu_G(\widehat Q)}{s_{Q^-}}\right)
+C_N
\sum_{Q\subset P}w(Q)\|F_Q\|_{\mathcal H_{\rm raw}}^2
+R_{\rm legal}(P)+Stop(P).
\tag{14}
\]

The first sum is the parent stress-record leverage telescope.  The second sum is
the selected-scale native birth root packing.  If both are finite from original
history, finite selected action follows, and the installed full-clock and
\(H^s\) continuation relay applies.

## 6. What this changes

The shrinking orthogonal chain no longer sits ambiguously inside the refill
law.  It is the test for `(11)`--`(12)`.  If a selected unit has tiny raw stress
work and no parent leverage, it must be a selected-scale native birth.  If it is
neither parent leverage nor selected-scale birth, it is not a retained unpaid
selected child; it is reset, legal loss, stop, or a selector-definition error.

Gold is therefore reduced to a two-ledger statement:

```text
existing channel: parent-normalized leverage telescope;
fresh channel: selected-scale native reserve packing.
```

Partial, not Gold closed.
