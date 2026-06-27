---
theorem_id: forward-gold-fresh-affine-bv-return-to-stopped-strict-half-barrier-live-edge-20260627
status: bv-return-reconciled-with-stopped-strict-half-barrier-live-edge
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / critical fresh source tent Carleson
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
audits_hinge:
  - CriticalFreshSourceTentCarleson.A
  - PositiveFreshAffineQuotientBVReturnKill.A
  - FreshNegativeScaleReturnChargeOrPotentialAverageKill.A
  - StoppedFreeMaterialGraphDriverCarleson.A
  - StoppedPrimitivePLSStrictHalfBarrierBreak.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-positive-fresh-affine-quotient-bv-return-kill-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-affine-nozeno-stopped-pressop-collar-symmetrizer-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-pressop-collar-graph-split-free-driver-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-free-material-graph-driver-better-idea-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-free-material-graph-driver-direct-attack-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-pls-strict-half-barrier-break-relay-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-source-recheck-to-fresh-paired-carrier-live-edge-20260627.md
effect: >-
  Reconciles the positive fresh affine BV-return route with the stopped graph-driver
  reduction. The positive affine quotient is not left at the older DER/AQK
  second-order wording: after the identity Y_+=Y+Y_-, the survivor is either
  potential-average growth or negative scale return. The stopped graph-driver
  notes show that this survivor is the same strict half-barrier problem for the
  primitive free-material PLS driver.
next_live_hinge: StoppedPrimitivePLSStrictHalfBarrierBreak.A
---

# Fresh affine BV-return to stopped strict half-barrier live edge

The silent-source fork is already local support.  A Schur-invisible pressure
potential is either unselected gauge/constraint material, or it is selected only
through same-material strain/exchange charge.  The global fresh-root producer is
not there.

The current positive fresh affine quotient has the exact one-sided identity

```math
Y_+=Y+Y_- .
\tag{1}
```

With the signed scale descent

```math
Y=\partial_\sigma\Psi+S^{spill}+E,
\tag{2}
```

the selected affine quotient decomposes as

```math
\mathcal C_\theta[Y_+]
=
-\theta_\kappa(s_0)\Psi(s_0,t)
+{1\over |I|}\int_J\Psi(\sigma,t)d\sigma
+\mathcal C_\theta[Y_-]
+\mathcal C_\theta[S^{spill}]
+\mathcal C_\theta[E].
\tag{3}
```

The spill and soft-error terms are already collar/legal support.  So the
positive fresh affine quotient survives only through one of two same-material
scale-memory mechanisms:

```text
potential-average growth,
or negative scale return.
```

This is the content of:

```text
FreshNegativeScaleReturnChargeOrPotentialAverageKill.A.
```

The stopped graph-driver notes identify the same survivor in material-driver
coordinates.  After the pressure/collar graph split,

```math
Z_N=(q,C_N)=\Gamma_N(Y_N)+W_N,
\tag{4}
```

the normal pressure/collar defect is graph-compatible support.  The tangent
motion of the graph is the stopped free-material driver, not a pressure-only
or collar-only clock:

```math
d\Omega_N^{PLS,primitive}
\simeq
\sum_j w_j
\left[
\left\langle
H_{j,N},
\mathcal M_{<j-C,N}H_{j,N}
\right\rangle
\right]_+dt
+dR_N^{paid}.
\tag{5}
```

The direct attacks rule out pointwise sign, complete-frame payment alone,
laminarity alone, temporal Volterra payback, and natural shell storage as
closures.  The remaining stopped theorem is therefore the strict half-barrier
break:

```math
N_{L+1}\le \theta N_L+B_L,
\qquad
\theta<{1\over2},
\qquad
\sum_L2^LB_L<\infty.
\tag{6}
```

Equivalently, prove a bounded-below same-material Lyapunov law

```math
d\mathscr A_N
+c_Nd\Omega_N^{PLS,primitive}
\le
dR_N^{legal},
\qquad
\mathscr A_N\ge -C_N(u_0),
\tag{7}
```

or the weighted laminar ancestry reserve

```math
\int_{\mathcal F_{lam}}
\left(
V_C+V_F+V_{collar}+V_{turnstile}
\right)
d\mathcal R_{selected}
\le
C_N(u_0)+R_{legal}.
\tag{8}
```

Thus the BV-return route and the stopped graph-driver route are the same live
edge read in two coordinate systems:

```text
FreshNegativeScaleReturnChargeOrPotentialAverageKill.A
  == stopped scale-memory reading
StoppedPrimitivePLSStrictHalfBarrierBreak.A
  == stopped primitive driver / strict good-lambda reading.
```

The older phrasing

```text
FreshPositiveStressSecondOrderExactness.A
```

should remain a possible coordinate route, not the active name of the burden.
The active burden is the strict same-material high-ratio gain that beats the
critical half-tail

```math
\nu_\ell={2^{-\ell}\over \ell+1},
\qquad
\sum_\ell\nu_\ell<\infty,
\qquad
\sum_\ell2^\ell\nu_\ell=\infty.
\tag{9}
```

So the next theorem unit should attack:

```text
StoppedPrimitivePLSStrictHalfBarrierBreak.A
```

directly, with `FreshNegativeScaleReturnChargeOrPotentialAverageKill.A` kept as
the equivalent scale-potential formulation.
