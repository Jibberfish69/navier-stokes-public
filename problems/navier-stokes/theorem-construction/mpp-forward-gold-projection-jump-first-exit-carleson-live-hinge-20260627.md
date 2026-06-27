---
theorem_id: forward-gold-projection-jump-first-exit-carleson-live-hinge-20260627
status: projection-jump-first-exit-carleson-proved-relative-to-route-energy
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
  the projection-jump term. The projection-jump / first-exit Carleson estimate
  is proved from the rescaled packet in E_route currency. The remaining burden
  is OriginalHistoryRoutedCurrentEnergyFinite.A.
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

The theorem-grade projection-jump quantity is

```math
\mathrm{PJ}(P)
=
\sum_i
\|(\Pi_i-\Pi_{i-1})a_i\|_{\mathfrak H_P}^2 .
\tag{8}
```

In first-exit form, for reset edges \(e\subset P\),

```math
\mathrm{PJ}(P)
=
\sum_{e\subset P}
\int
H_{I_e}(t)
\|(\Pi_e^+-\Pi_e^-)a_e\|^2\,dt .
\tag{9}
```

The projection-jump / first-exit Carleson estimate is

```math
\mathrm{PJ}(P)
\le
C_N\mathcal E_{\rm route}(P)
+R_{\rm legal}(P)+Stop(P).
\tag{10}
```

Proof. A reset/projection jump is a first exit of a parent-known transported
coordinate \(q_e\). Since the pressure-viscosity-incompressibility-velocity
packet is rescaled together, \(q_e\) is an original same-material coordinate,
and along the stopped scale interval \(I_e\),

```math
q_e(\sigma_1,t)-q_e(\sigma_0,t)
=
\int_{I_e}\partial_\sigma q_e(\sigma,t)\,d\sigma .
\tag{11}
```

The packet derivative decomposes as

```math
\partial_\sigma q_e
=
L_e(\partial_\sigma Z,T_\sigma,E_\sigma,C_\sigma)
+Err_{\rm legal},
\qquad
\|L_e\|\le C_N .
\tag{12}
```

With

```math
H_{I_e}(t)
=
\frac{|I_e|^2}{\int_{I_e}w^{-1}\,d\sigma},
\tag{13}
```

weighted Cauchy gives

```math
H_{I_e}
\|q_e(\sigma_1)-q_e(\sigma_0)\|^2
\le
C_N\int_{I_e}
w\left(
|\partial_\sigma Z|^2
+|T_\sigma|^2
+|E_\sigma|^2
+|C_\sigma|^2
\right)
+dR_{\rm legal}.
\tag{14}
```

The projection map \(q\mapsto \Pi(q)\) is uniformly Lipschitz on the stopped
chart, so

```math
H_{I_e}
\|(\Pi_e^+-\Pi_e^-)a_e\|^2
\le
C_N\int_{I_e}
w\left(
|\partial_\sigma Z|^2
+|T_\sigma|^2
+|E_\sigma|^2
+|C_\sigma|^2
\right)
+dR_{\rm legal}.
\tag{15}
```

Maximal first-exit intervals are disjoint along each stopped ancestry line, and
the material tubes are laminar across siblings:

```math
\sum_e 1_{I_e\times T_e}
\le
C_N+R_{\rm legal}+Stop.
\tag{16}
```

Therefore summing `(15)` proves `(10)`, where

```math
\mathcal E_{\rm route}(P)
=
\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z|^2
+|T_\sigma|^2
+|E_\sigma|^2
+|C_\sigma|^2
\right).
\tag{17}
```

The \(C(u_0)\) reserve version follows exactly when the original routed packet
energy satisfies

```math
\mathcal E_{\rm route}(P)
\le
C(u_0)+R_{\rm legal}(P)+Stop(P).
\tag{18}
```

Thus the projection-jump / first-exit Carleson step is installed. The remaining
Gold producer is `(18)`: the original routed packet energy storage bound before
selected readout. After `(18)`, the already-installed downstream relay gives
finite selected action, finite full material clock, and the usual \(H^s\)
continuation readout.
