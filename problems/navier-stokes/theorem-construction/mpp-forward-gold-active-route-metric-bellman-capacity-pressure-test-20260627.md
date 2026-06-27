---
theorem_id: forward-gold-active-route-metric-bellman-capacity-pressure-test-20260627
status: pressure-test-sharpens-stopping-admission-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
corrects:
  - HighActiveDensityForcesStopOrLegalReselection.A as standalone closure
  - raw-density-stopping-as-active-clock-payment
attacks_hinge:
  - ScaleCriticalStoppedFrameCarlesonEmbedding.A
  - OriginalHistoryRoutedCurrentEnergyFinite.A
  - RetainedActiveRawBellmanCapacity.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-active-route-metric-carleson-stopping-admission-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-sample-energy-compatibility-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-current-coboundary-square-function-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-whole-transported-packet-parabolic-rescaling-boundary-20260627.md
---

# Active Route Metric Bellman Capacity Pressure Test

The stopping-admission route is useful, but the fixed raw-density stopping
statement is not yet the Gold payment.

Let

\[
\mu_G(Q)
=
\int_{\widehat Q}
|\langle 2\nu S_A,k_\theta\rangle_{\mathfrak H_P}|^2
d\mu_{\rm raw}(\theta)
\tag{1}
\]

be the raw stress-square route measure and let \(\omega_Q\) be the active
selected route weight consumed by the Gold clock for a retained child \(Q\).
The heat-scale sample has the model size

\[
\mu_G(Q_\ell)\sim \ell,
\qquad
\omega_{Q_\ell}\sim 1.
\tag{2}
\]

Thus a train with \(\ell_m=2^{-m}\) still has

\[
\sum_m\mu_G(Q_{\ell_m})<\infty,
\qquad
\sum_m\omega_{Q_{\ell_m}}=\infty.
\tag{3}
\]

Stopping only on a raw density condition such as

\[
\mu_G(\widehat Q)>K\mathcal R(Q)
\tag{4}
\]

does not by itself contradict `(3)`.  If \(\mathcal R(Q_\ell)\) scales like the
raw packet size, `(4)` can be good at every scale.  If \(\mathcal R(Q_\ell)\) is
the critical active size, `(4)` is even less likely to fire.  The missing
quantity is not raw density; it is domination of the active selected weight by
raw stress-square measure plus a telescoping same-material capacity.

The correct retained theorem is the Bellman form

\[
\sum_{Q\in \operatorname{ch}_{ret}(P)}
\omega_Q^{new}
+
\sum_{Q\in \operatorname{ch}_{ret}(P)}
B(Q)
\le
C\,\mu_G(\widehat P)
+B(P)
+R_{\rm legal}(P)+Stop_{\rm term}(P),
\tag{5}
\]

where

\[
B(Q)\ge0
\tag{6}
\]

is a parent-known same-material current capacity, and \(Stop_{\rm term}\) means
stopping that is terminal for the retained Gold branch or otherwise already
finite in original-history currency.  The capacity must satisfy

\[
B(P)\le C_N(u_0)\mathcal R(P)+R_{\rm legal}(P),
\tag{7}
\]

or a stronger local version on every stopped parent.  Summing `(5)` over the
retained tree gives

\[
\sum_{Q\subset P}^{ret}\omega_Q^{new}
\le
C\,\mu_G(\widehat P)+B(P)+R_{\rm legal}(P)+Stop_{\rm term}(P),
\tag{8}
\]

which is the active route metric Carleson estimate.

This is exactly where the parent-current coboundary note fits.  The natural
capacity is not scalar local energy.  It has to live on the Hilbert-valued
parent current record

\[
M_Q=\Pi_{\mathcal P_Q}(2\nu S_A)\in\mathfrak H_P,
\tag{9}
\]

with fresh action coming from orthogonal increments and changed inherited reuse
coming from changes of \(\mathcal P_Q\).  Exact inherited reuse has no new
increment.  Changed reuse must appear as capacity drop or as a terminal
stop/legal/reselection event.

So the sharpened theorem is:

```text
RetainedActiveRawBellmanCapacity.A
```

For every stopped parent \(P\), before descendant selected readout, the retained
selected children satisfy `(5)` with \(B\) constructed from the original
same-material traction-current record.  Nondominated heat-scale packets are not
merely called "stopped"; they either leave the retained Gold branch terminally
or consume a finite parent current capacity.

The minimal counterexample to `(5)` is now clear.  It is a retained same-material
chain with

\[
\omega_{Q_m}^{new}\sim1,\qquad
\mu_G(Q_m)\sim \ell_m,\qquad
\ell_m\downarrow0,
\tag{10}
\]

and with no stop/legal event and no drop of \(B\).  After rescaling each packet,
that is a no-work refilling channel for the same parent material traction
current.  Gold closes precisely by proving that this channel cannot remain a
retained selected branch of the original Navier-Stokes participation law.

This pressure test improves the target.  The current constructive route is not
raw density stopping alone.  It is a Bellman/capacity admission theorem for the
retained active route metric.
