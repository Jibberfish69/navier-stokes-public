---
theorem_id: forward-gold-projection-jump-first-exit-carleson-live-hinge-20260627
status: superseded-by-route-energy-reduction
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
depends_on:
  - ParentSubtractedSelectedReadoutDecomposition.A
  - ParentSubtractedInheritedDirectionBesselClosure.A
  - ParentAnnouncedFirstExitResetVariation.A
sharpens:
  - OriginalParticipationStorageCoercivity.A
  - OriginalHistoryRoutedCurrentEnergyFinite.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-readout-parent-subtracted-current-admission-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-subtracted-inherited-direction-bessel-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-reused-channel-return-service-no-recirculation-equivalence-20260627.md
effect: >-
  Records the parent-subtracted split: exact inherited reuse is zero new selected
  child action, fresh residuals are Bessel-paid, and changed inherited reuse is
  the projection-jump term. This note is superseded as the live hinge by the
  route-energy reduction proving ProjectionJumpFirstExitCarlesonFromRouteEnergy.A.
  The remaining burden is OriginalHistoryRoutedCurrentEnergyFinite.A.
---

# Projection-jump / first-exit Carleson live hinge

Fix a stopped parent \(P\) and set

```math
\mathfrak H_P
=
L^2_{\rm sym,tr}(\operatorname{Hist}(P)),
\qquad
G=2\nu S_A .
\tag{1}
```

For each child stress test, split against the parent-known past:

```math
a_i=b_i+d_i,
\qquad
b_i=\Pi_{E_{i-1}}a_i,
\qquad
d_i=(I-\Pi_{E_{i-1}})a_i .
\tag{2}
```

The selected child current is parent-subtracted:

```math
\Delta J_i^{new}
=
\langle G,a_i\rangle-\langle G,b_i\rangle
=
\langle G,d_i\rangle .
\tag{3}
```

Therefore exact same-channel reuse is not a new selected unit:

```math
a_i\in E_{i-1}
\quad\Longrightarrow\quad
d_i=0
\quad\Longrightarrow\quad
\Delta J_i^{new}=0 .
\tag{4}
```

Fresh changes are Bessel-paid:

```math
\sum_i |\Delta J_i^{new}|^2
\le
\|G\|_{\mathfrak H_P}^2
\le
C(u_0).
\tag{5}
```

Recycled changes are exactly projection jumps.  If the parent-known geometry
changes from \(\Pi_{i-1}\) to \(\Pi_i\), the recycled read is

```math
\rho_i
=
\langle G,(\Pi_i-\Pi_{i-1})a_i\rangle .
\tag{6}
```

Thus

```math
\sum_i|\rho_i|^2
\le
\|G\|_{\mathfrak H_P}^2
\sum_i
\|(\Pi_i-\Pi_{i-1})a_i\|_{\mathfrak H_P}^2 .
\tag{7}
```

The remaining theorem-grade reserve is exactly

```math
\sum_i
\|(\Pi_i-\Pi_{i-1})a_i\|_{\mathfrak H_P}^2
\le
C_N(u_0)+R_{\rm legal}+Stop .
\tag{8}
```

This is the projection-jump / first-exit Carleson bound.

It is the sharp remaining clause because:

1. unchanged reuse contributes zero by `(4)`;
2. fresh use is orthogonal and paid by `(5)`;
3. changed reuse is measured by `(7)` and needs `(8)`.

The reused-channel note states the same boundary as an unproved local descent
clause: a later read of the same material channel must either be fresh
orthogonal work, legal/stop loss, paid reselection/reset, or a bounded-multiplicity
return to an already spent reserve atom.  This note records the exact Hilbert
projection-jump form of that remaining theorem.

Once `(8)` is proved, the routed-current energy bound follows:

```math
\mathcal E_{\rm route}(P)
\le
C(u_0)+R_{\rm legal}(P)+Stop(P).
\tag{9}
```

Then the already-installed downstream relay gives finite selected action, finite
full material clock, and the usual \(H^s\) continuation readout.
