---
theorem_id: forward-gold-scale-normalized-selected-refill-leverage-live-edge-20260627
status: open-live-hinge
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped selected refill leverage
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
depends_on:
  - ParentSubtractedSelectedReadoutDecomposition.A
  - ParentSubtractedInheritedDirectionBesselClosure.A
  - ProjectionJumpFirstExitCarlesonFromRouteEnergy.A
remaining_hinge:
  - SelectedRefillLeverageBellman.A
effect: >-
  Records the corrected live Gold issue: the Cauchy stress source is already
  same-material, but scale normalization can promote tiny raw stress reads into
  unit selected refills. The missing theorem is the novelty/leverage rule saying
  a retained selected child counts as a unit refill only when it has real new
  leverage against the parent stress record, or else pays reset/stop/legal.
---

# Scale-normalized selected refill leverage

The physical issue is scale normalization.  The original material packet gives
finite raw strain-work, but a smaller heat-scale read can have tiny raw size
while still being normalized as one selected refill.

So the missing story is not where the stress comes from.  It comes from the
same Cauchy stress history of the same material packet.  The missing story is
why one shrinking sequence of tiny stress reads cannot become infinitely many
unit selected refills.

The installed parent-subtracted split gives:

```math
a_i=b_i+d_i,
\qquad
b_i=\Pi_{E_{i-1}}a_i,
\qquad
d_i=(I-\Pi_{E_{i-1}})a_i,
\tag{1}
```

and

```math
\Delta J_i^{new}
=
\langle G,a_i\rangle-\langle G,b_i\rangle
=
\langle G,d_i\rangle .
\tag{2}
```

Thus exact reuse is not a new unit:

```math
a_i\in E_{i-1}
\quad\Longrightarrow\quad
d_i=0
\quad\Longrightarrow\quad
\Delta J_i^{new}=0 .
\tag{3}
```

Fresh orthogonal change is Bessel-paid:

```math
\sum_i|\Delta J_i^{new}|^2
\le
\|G\|_{\mathfrak H_P}^2
\le
C(u_0).
\tag{4}
```

Changed reuse is a projection jump, and the first-exit calculation gives:

```math
\mathrm{PJ}(P)
\le
C_N\mathcal E_{\rm route}(P)+R_{\rm legal}(P)+Stop(P).
\tag{5}
```

The remaining theorem is the selected refill leverage rule.  If \(s_{Q^-}\)
is the parent-known saturated stress reserve and \(\mu_G(\widehat Q)\) is the
new stress mass available to the child window, then the desired form is:

```math
\omega_Q^{new}
\lesssim
\log\left(1+\frac{\mu_G(\widehat Q)}{s_{Q^-}}\right)
+\text{paid reset/stop/legal}.
\tag{6}
```

This is the scale-normalized Bellman/leverage statement.  A small push into an
empty channel can matter.  The same small push into an already saturated parent
channel cannot be counted again as a full refill.

Equivalently: a retained selected child can count as a unit refill only if it
has real new leverage against the parent stress record.  Otherwise it is exact
reuse, fresh orthogonal change, reset/angle/collar/connection motion, or
stop/legal exit.

So the live theorem is:

```math
\sum_{Q\subset P}\omega_Q^{new}
\le
C_N\Bigl(
\text{parent stress leverage Bellman drop}
+\mathrm{PJ}(P)
+R_{\rm legal}(P)
+Stop(P)
\Bigr).
\tag{7}
```

Together with `(5)`, this gives finite selected refill action from the original
same-material participation history.  Without `(6)` or `(7)`, finite raw stress
work does not by itself rule out infinitely many scale-normalized unit refills.
