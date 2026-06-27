---
theorem_id: forward-gold-scale-normalized-stress-novelty-bellman-leverage-20260627
status: bellman-leverage-pressure-test-superseded-by-source-currency
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
superseded_live_hinge_by:
  - SelectedActionCurrencyBoundedOriginalPacketEnforcement.A
  - SelectedUnitRieszRepresentativeSourceGraphAdmission.A
attacks_hinge:
  - ScaleNormalizedStressNoveltyBellmanLeverage.A
  - RetainedActiveRawBellmanCapacity.A
  - OriginalHistoryRoutedCurrentEnergyFinite.A
uses:
  - ProjectionJumpFirstExitCarlesonFromRouteEnergy.A
  - ParentSubtractedSelectedReadoutDecomposition.A
  - ParentSubtractedInheritedDirectionBesselClosure.A
  - ParentAnnouncedFirstExitResetVariation.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-projection-jump-first-exit-carleson-from-route-energy-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-projection-jump-first-exit-carleson-live-hinge-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-active-route-metric-bellman-capacity-pressure-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-history-routed-current-energy-bessel-producer-20260627.md
effect: >-
  Records a pressure test that led to the source-level selected-action currency.
  The original packet gives finite raw strain-work, but raw
  strain-work alone does not rule out infinitely many scale-normalized selected
  refills from smaller and smaller stress reads.  The Bellman/leverage novelty
  rule is now support: retained selected action is governed by bounded
  original-packet projection / bounded Riesz representative before scalar
  readout, inherited/root current, paid stop/legal/reselection/selector drift,
  or an alias of those. Partial, not Gold closed by this pressure test alone.
---

# Scale-normalized stress novelty Bellman leverage

The physical issue is scale normalization. The original packet gives finite raw
strain-work, but a dangerous refill at a smaller heat scale can have tiny raw
size and still count as one selected refill.

So the missing story is not where the stress comes from. It comes from the same
Cauchy stress history of the same material packet. The missing story is why one
shrinking sequence of tiny stress reads cannot be promoted into infinitely many
unit refills.

The installed support now gives the correct decomposition:

\[
\Delta J_i^{new}
=
\langle G,a_i\rangle-\langle G,b_i\rangle
=
\langle G,d_i\rangle .
\tag{1}
\]

Exact reuse is parent current:

\[
a_i\in E_{i-1}
\quad\Rightarrow\quad
d_i=0
\quad\Rightarrow\quad
\Delta J_i^{new}=0 .
\tag{2}
\]

Fresh orthogonal change is paid by viscous strain:

\[
\sum_i|\langle G,d_i\rangle|^2
\le
\|G\|_{\mathfrak H_P}^2
\le
C(u_0).
\tag{3}
\]

Changed reuse is projection jump, and the first-exit calculation proves

\[
\mathrm{PJ}(P)
\le
C_N\mathcal E_{\rm route}(P)+R_{\rm legal}(P)+Stop(P).
\tag{4}
\]

These facts identify the remaining selected-unit problem but do not by
themselves solve the scale-normalized refill count. A tiny raw stress read can
still be selected as a unit refill unless the selector is forced to measure its
novelty against the parent stress record.

The Bellman/leverage pressure-test rule was:

\[
\omega_Q^{new}
\lesssim
\log\left(1+\frac{\mu_G(\widehat Q)}{s_{Q^-}}\right)
+R_{\rm reset}(Q)+R_{\rm legal}(Q)+Stop(Q).
\tag{5}
\]

Here \(\omega_Q^{new}\) is the parent-subtracted selected refill counted at
\(Q\), \(\mu_G(\widehat Q)\) is the raw same-material stress work available in
the stopped hat of \(Q\), and \(s_{Q^-}\) is the parent stress-record capacity
already stored before \(Q\) is admitted.

Physically, a small push into an empty channel can matter. The same small push
into an already saturated channel cannot be counted again as a full refill.
Infinite blow-up would require infinitely many unit refills made from smaller
and smaller raw stress packets without new leverage, reset, or exit. The theorem
still needs to prove that the Navier-Stokes stopped selector obeys `(5)` before
selected readout.

With `(5)`, the Bellman sum telescopes along each retained parent channel:

\[
\sum_{Q\subset P}
\log\left(1+\frac{\mu_G(\widehat Q)}{s_{Q^-}}\right)
\le
C_N\,B_P^{stress}
+R_{\rm legal}(P)+Stop(P),
\tag{6}
\]

where \(B_P^{stress}\) is an original-history parent stress-record capacity
controlled by the same material participation law. Then parent-subtracted fresh
Bessel, projection-jump first-exit Carleson, and the leverage telescope give
finite selected critical action.

Thus this note does not define the live Gold producer after the source-currency
installation. The live producer is `SelectedActionCurrencyBoundedOriginalPacketEnforcement.A`:
retained selected action must be a bounded original-packet/Riesz read before
scalar selected amplification, or it must be inherited/root current, paid
stop/legal/reselection/selector drift, or an alias of those.

Partial, not Gold closed.
