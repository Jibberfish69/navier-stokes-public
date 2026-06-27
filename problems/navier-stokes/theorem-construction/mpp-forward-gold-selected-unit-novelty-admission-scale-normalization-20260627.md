---
theorem_id: forward-gold-selected-unit-novelty-admission-scale-normalization-20260627
status: conditional-reduction-to-navier-stokes-selected-novelty-admission
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
refines:
  - SelectedActionLeverageOrNativeBirthDichotomy.A
  - ScaleNormalizedStressNoveltyBellmanLeverage.A
  - SelectedRefillParentNormalizedAdmission.A
  - SelectedScaleNativeReserveAtom.A
  - OriginalHistoryWeightedFreshCurrentCapacity.A
uses:
  - ParentSubtractedSelectedReadoutDecomposition.A
  - ProjectionJumpFirstExitCarlesonFromRouteEnergy.A
  - CriticalFreshSourceScaleMemoryReduction.A
  - OriginalScaleMemoryGeneratorEnergyBound.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-action-leverage-or-native-birth-dichotomy-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-refill-parent-normalized-leverage-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-birth-live-edge-after-reset-countertest-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-reserve-weighted-fresh-current-capacity-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-source-scale-memory-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-scale-memory-generator-energy-boundary-20260627.md
effect: >-
  Converts the physical scale-normalization issue into a single selector
  admission theorem. The original Cauchy stress history supplies raw work; the
  missing rule is that a retained selected unit must have real novelty against
  the parent record. Existing-channel reads pay only parent-normalized leverage.
  Fresh-channel reads pay selected-scale first-birth reserve. Without leverage or
  first-birth reserve, a shrinking raw stress read is not an unpaid retained
  selected unit. Partial, not Gold closed.
---

# Selected unit novelty admission and scale normalization

The physical issue is scale normalization, not stress origin.  The original
same-material Cauchy stress history supplies the raw strain-work.  A shrinking
heat-scale read can still have tiny raw size while being counted as one selected
unit.  Gold therefore needs an admission theorem saying when selection is allowed
to promote raw stress work into selected unit action.

## 1. Parent stress record and fresh birth record

Fix a stopped parent material history \(P\).  After pressure is killed by
divergence-free material tests and inherited reuse is parent-subtracted, write a
retained child current in the root Hilbert space as

\[
\sqrt{\mathcal R(Q)}\,\Delta J_Q^{new}
=
\langle G,d_Q\rangle_{\mathfrak H_P},
\qquad
G=2\nu S_A .
\tag{1}
\]

Let \(s_{Q^-}\) be the parent-known size of the already-open stress channel just
before \(Q\), and let \(\mu_G(\widehat Q)\) be the raw stress work newly delivered
to that same channel on the stopped hat \(\widehat Q\).

If \(Q\) opens a genuinely fresh channel, write the spent-source quotient as

\[
F_Q
=
(I-\Pi_{\rm spent(<Q)})\Delta_Q Z_P^{orig}.
\tag{2}
\]

The two objects have different meanings.  \(\mu_G(\widehat Q)\) is refill work
against an existing parent record.  \(F_Q\) is first-birth work in a new selected
direction.  Collapsing both into one scalar selected increment is the scale
normalization error.

## 2. The admission theorem

The required selector theorem is:

`SelectedUnitNoveltyAdmission.A.`  For every retained unpaid selected child
\(Q\subset P\), before scalar selected readout,

\[
\omega_Q^{new}
\le
C_N
\log\left(1+{\mu_G(\widehat Q)\over s_{Q^-}}\right)
+
C_N W_Q\|F_Q\|_{\mathcal H_{\rm raw}}^2
+
R_Q^{reset}+R_Q^{legal}+Stop_Q .
\tag{3}
\]

Here the first term is present only for the existing-channel component, while
the second term is present only for the fresh-channel component.  The weight
\(W_Q\) must be parent-known and original-history generated, for example by a
scale-memory witness interval \(I_Q\):

\[
F_Q
=
|I_Q|^{-1}\int_{I_Q}G_{\rm sm}(\sigma,t)\,d\sigma
+
Err_Q^{legal},
\qquad
W_Q(t)
=
{|I_Q|^2\over\int_{I_Q}a(\sigma,t)^{-1}\,d\sigma}.
\tag{4}
\]

This is the mathematical version of the physical novelty rule.  The same small
push into an already saturated channel is not one more unit refill; it is counted
only by its logarithmic leverage against the existing parent record.  A small
push into an empty channel can count only when selection supplies the first-birth
scale-memory witness that carries \(W_Q\).

## 3. Why the refill term telescopes

Set

\[
s_Q=s_{Q^-}+\mu_G(\widehat Q).
\tag{5}
\]

Then along a stopped ancestry line,

\[
\sum_Q
\log\left(1+{\mu_G(\widehat Q)\over s_{Q^-}}\right)
=
\sum_Q(\log s_Q-\log s_{Q^-})
\le
\log{s_{\rm top}\over s_{\rm root}}
+R_{\rm legal}+Stop .
\tag{6}
\]

So repeated reads of the same parent channel cannot create infinitely many unit
selected refills from tiny raw increments.  Once the channel is saturated, the
same raw increment has small parent-normalized leverage.

## 4. Why the fresh term needs scale-memory

Raw Bessel packing gives only

\[
\sum_Q\|F_Q\|_{\mathcal H_{\rm raw}}^2<\infty.
\tag{7}
\]

The heat-scale half-tail shows that `(7)` does not control selected unit action:

\[
\|F_m\|_{\mathcal H_{\rm raw}}^2={2^{-m}\over m+1},
\qquad
\sum_m\|F_m\|_{\mathcal H_{\rm raw}}^2<\infty,
\qquad
\sum_m 2^m\|F_m\|_{\mathcal H_{\rm raw}}^2=\infty.
\tag{8}
\]

Thus a fresh orthogonal read is not automatically a selected unit.  It becomes a
selected birth only through a parent-announced first-birth witness.  With `(4)`,
weighted Cauchy gives

\[
W_Q\|F_Q\|_{\mathcal H_{\rm raw}}^2
\le
C_N
\int_{I_Q\times T_Q}
a(\sigma,t)\|G_{\rm sm}(\sigma,t)\|^2\,d\sigma dt
+
R_Q^{legal}.
\tag{9}
\]

If first-birth witness slabs have stopped bounded overlap, summing `(9)` yields

\[
\sum_{Q\subset P}
W_Q\|F_Q\|_{\mathcal H_{\rm raw}}^2
\le
C_N
\int_{\operatorname{Hist}(P)}
a\|G_{\rm sm}\|^2
+
R_{\rm legal}(P)+Stop(P).
\tag{10}
\]

The remaining original-storage producer is exactly

\[
\int_{\operatorname{Hist}(P)}
a\|G_{\rm sm}\|^2
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P).
\tag{11}
\]

This is `OriginalScaleMemoryGeneratorEnergyBound.A`, or in the stronger storage
form, `OriginalScaleMemoryStorageCoercivity.A`.

## 5. Pressure test against the shrinking chain

For the dangerous shrinking sequence, each raw read may be a real Cauchy-stress
read and each fresh direction may be Bessel-orthogonal.  That still does not
authorize

\[
\omega_m^{new}\simeq1
\qquad\text{from}\qquad
\|F_m\|^2\downarrow0.
\tag{12}
\]

Under `(3)`, every retained unit must pass one of two tests:

\[
\omega_m^{new}
\lesssim
\log\left(1+{\mu_m\over s_{m-1}}\right)
\tag{13}
\]

for an existing channel, or

\[
\omega_m^{new}
\lesssim
W_m\|F_m\|^2
\tag{14}
\]

for a fresh birth.

The first case telescopes.  The second case forces the selected-scale weight
onto the original-history first-birth witness.  A half-tail with neither
parent-normalized leverage nor a first-birth scale-memory witness is not a
retained unpaid selected child; it is a raw stress fluctuation, reset, legal
loss, stop, or selector-definition failure.

## 6. What is proved here

This note proves the formal reduction:

```text
SelectedUnitNoveltyAdmission.A
  + OriginalScaleMemoryGeneratorEnergyBound.A
  + stopped first-birth witness bounded overlap
    => finite selected critical action
    => finite full same-material clock
    => H^s continuation.
```

The note does not prove `SelectedUnitNoveltyAdmission.A` from Navier-Stokes.
That is the exact remaining Gold obligation: prove that the stopped
Navier-Stokes selector only promotes a shrinking stress read to unit selected
action when the read has real parent leverage, selected-scale first-birth
reserve, or paid reset/stop/legal exit.

Partial, not Gold closed.
