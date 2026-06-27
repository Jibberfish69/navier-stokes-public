---
theorem_id: forward-gold-projection-jump-first-exit-carleson-from-route-energy-20260627
status: proved-route-energy-reduction
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
proves:
  - ProjectionJumpFirstExitCarlesonFromRouteEnergy.A
supersedes_live_hinge:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-projection-jump-first-exit-carleson-live-hinge-20260627.md
remaining_hinge:
  - OriginalHistoryRoutedCurrentEnergyFinite.A
  - OriginalParticipationStorageCoercivity.A
effect: >-
  Discharges the projection-jump / first-exit Carleson step at the route-energy
  level. The remaining Gold burden is no longer the projection-jump estimate
  itself, but the original-storage producer E_route(P) <= C(u_0)+R_legal+Stop.
---

# Projection-jump / first-exit Carleson from routed energy

The projection-jump / first-exit Carleson estimate is:

```math
\mathrm{PJ}(P)
\le
C_N\mathcal E_{\rm route}(P)+R_{\rm legal}(P)+Stop(P),
\tag{1}
```

where

```math
\mathrm{PJ}(P)
=
\sum_{e\subset P}
\int
H_{I_e}(t)\|(\Pi_e^+-\Pi_e^-)a_e\|^2\,dt
\tag{2}
```

and

```math
\mathcal E_{\rm route}(P)
=
\int_{\operatorname{Hist}(P)}
w\big(
|\partial_\sigma Z|^2+|T_\sigma|^2+|E_\sigma|^2+|C_\sigma|^2
\big).
\tag{3}
```

The point is that a reset or projection jump is a first exit of a
parent-known transported coordinate \(q_e\).  Since the whole
pressure-viscosity-incompressibility-velocity packet is rescaled together,
\(q_e\) is an original same-material coordinate.  Along the stopped scale
interval \(I_e\),

```math
q_e(\sigma_1,t)-q_e(\sigma_0,t)
=
\int_{I_e}\partial_\sigma q_e(\sigma,t)\,d\sigma .
\tag{4}
```

The packet derivative decomposes as

```math
\partial_\sigma q_e
=
L_e(\partial_\sigma Z,T_\sigma,E_\sigma,C_\sigma)
+Err_{\rm legal},
\qquad
\|L_e\|\le C_N .
\tag{5}
```

With

```math
H_{I_e}(t)
=
\frac{|I_e|^2}{\int_{I_e}w^{-1}\,d\sigma},
\tag{6}
```

weighted Cauchy gives

```math
H_{I_e}
\|q_e(\sigma_1)-q_e(\sigma_0)\|^2
\le
C_N
\int_{I_e}
w\big(
|\partial_\sigma Z|^2+|T_\sigma|^2+|E_\sigma|^2+|C_\sigma|^2
\big)
+dR_{\rm legal}.
\tag{7}
```

On the stopped chart, \(q\mapsto \Pi(q)\) is uniformly Lipschitz.  Hence

```math
H_{I_e}
\|(\Pi_e^+-\Pi_e^-)a_e\|^2
\le
C_N
\int_{I_e}
w\big(
|\partial_\sigma Z|^2+|T_\sigma|^2+|E_\sigma|^2+|C_\sigma|^2
\big)
+dR_{\rm legal}.
\tag{8}
```

Now sum over first-exit witnesses.  The witnesses are maximal first-exit
intervals along each stopped ancestry line, and the material tubes are laminar
across siblings.  Thus

```math
\sum_e 1_{I_e\times T_e}
\le
C_N+R_{\rm legal}+Stop .
\tag{9}
```

Combining `(8)` and `(9)` gives `(1)`.

Therefore the reserve version

```math
\mathrm{PJ}(P)
\le
C_N(u_0)+R_{\rm legal}(P)+Stop(P)
\tag{10}
```

follows exactly from the original routed packet energy estimate

```math
\mathcal E_{\rm route}(P)
\le
C(u_0)+R_{\rm legal}(P)+Stop(P).
\tag{11}
```

So the projection-jump / first-exit Carleson step is proved.  The remaining
Gold burden is `(11)`, the original-storage producer for the routed same-material
packet energy.
