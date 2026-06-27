---
theorem_id: forward-gold-parent-announced-first-exit-reset-variation-closure-20260627
status: reset-angle-selector-variation-closed-relative-to-routed-current-energy
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
closes:
  - ResetAngleSelectorVariationFiniteFromOriginalMaterialLaw.A
  - ParentAnnouncedFirstExitResetVariation.A
uses:
  - ParentSubtractedInheritedActionSquarePacking.A
  - StoppedSelectorBoundedProjectionOfOriginalParticipationLaw.A
  - OriginalHistoryRoutedCurrentEnergyFinite.A
leaves_open:
  - OriginalHistoryRoutedCurrentEnergyFinite.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-readout-parent-subtracted-current-admission-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-subtracted-inherited-action-square-packing-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-routed-current-energy-original-history-producer-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-potential-average-bound-endpoint-corrected-20260627.md
effect: >-
  Proves the reset/angle/selector variation term once resets are represented as
  parent-announced first exits. The inherited same-direction reuse remains
  parent current, the fresh QR residual is Bessel-paid, and changed inherited
  direction is bounded by the stopped routed-current energy through a
  harmonic-weight Cauchy estimate and bounded stopped overlap. The remaining
  Gold producer is the single original-history routed-current energy bound
  E_route(P) <= C(u_0)+R_legal(P)+Stop(P).
---

# Parent-announced first-exit reset variation closure

The inherited-direction variation left by the parent-subtracted QR theorem is
not a free positive measure. Once a reset edge is represented as a
parent-announced first exit, its size is an average of the parent-known routed
current derivative.

For each reset edge \(e\), the finite stopped selector gives

```math
D_e
=
{|I_e|}^{-1}\int_{I_e}
\mathcal G_e(\sigma,t)\,d\sigma
+Err_e^{legal},
\tag{1}
```

where

```math
\mathcal G_e
=
\partial_\sigma Z
+\operatorname{turnstile}_\sigma
+\operatorname{exchange}_\sigma
+\operatorname{covector}_\sigma .
\tag{2}
```

The terms in `(2)` are the same routed-current coordinates already used in
\(\mathcal E_{\rm route}(P)\). They are parent-known before child selected
readout.

## 1. Harmonic active-weight Cauchy estimate

With

```math
H_{I_e}(t)
=
{|I_e|^2\over \int_{I_e}w(\sigma,t)^{-1}\,d\sigma},
\tag{3}
```

Cauchy gives

```math
\begin{aligned}
H_{I_e}(t)\|D_e(t)\|^2
&\le
C
H_{I_e}(t)
\left\|
{|I_e|}^{-1}\int_{I_e}\mathcal G_e(\sigma,t)\,d\sigma
\right\|^2
+Err_e^{legal}                                      \\
&\le
C\int_{I_e}w(\sigma,t)\|\mathcal G_e(\sigma,t)\|^2\,d\sigma
+Err_e^{legal}.
\end{aligned}
\tag{4}
```

So each reset/angle/selector change is paid by the routed derivative energy on
its own witness interval.

## 2. First-exit stopped overlap

The reset witness slabs are parent-announced first-exit slabs. Therefore the
slabs have bounded stopped overlap inside the parent material history. Summing
`(4)` over reset edges gives

```math
\operatorname{Var}^{stop}_P
\le
C_N
\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z|^2
+|T_\sigma|^2
+|E_\sigma|^2
+|C_\sigma|^2
\right)
+R_{\rm legal}(P)+Stop(P).
\tag{5}
```

Equivalently,

```math
\sum_i\|b_i-b_{i-1}\|_{\mathfrak H_P}^2
\le
C_N\mathcal E_{\rm route}(P)
+R_{\rm legal}(P)+Stop(P).
\tag{6}
```

This is the exact reset/angle/selector variation estimate. It is not a new
clock and it is not an inherited-value estimate. It is the parent-announced
first-exit derivative estimate in the original stopped routed current.

## 3. Combination with the fresh QR estimate

The parent-known QR split gives

```math
a_i=b_i+d_i,\qquad
\sqrt{\mathcal R(Q_i)}\,\Delta J_i^{new}
=\langle G,d_i\rangle_{\mathfrak H_P},
\qquad
G=2\nu S_A .
\tag{7}
```

The fresh directions are orthogonal, hence

```math
\sum_i
|\sqrt{\mathcal R(Q_i)}\,\Delta J_i^{new}|^2
\le
\|G\|_{\mathfrak H_P}^2
\le C(u_0).
\tag{8}
```

The inherited component changes only through `(6)`. Therefore the original
transported stopped action satisfies

```math
\sum_{Q\subset P}\mathcal R(Q)|\Delta J_Q^{sel}|^2
\le
C(u_0)
+C_N\mathcal E_{\rm route}(P)
+R_{\rm legal}(P)+Stop(P).
\tag{9}
```

Thus the parent-subtracted selected action is finite as soon as the routed
current energy is finite.

## 4. Remaining exact line

The only remaining producer in this branch is

```math
\mathcal E_{\rm route}(P)
\le
C(u_0)+R_{\rm legal}(P)+Stop(P).
\tag{10}
```

Here

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
\tag{11}
```

The finite parent-known projection theorem already gives the local operator
side:

```math
\mathcal E_{\rm route}(P)
\le
C\int_{\operatorname{Hist}(P)}\Theta_{\rm part}^{orig}
+R_{\rm legal}(P)+Stop(P).
\tag{12}
```

So `(10)` is exactly the statement that this routed-current energy is a bounded
projection of the original Navier--Stokes participation law with finite
original-history reserve. Once `(10)` is proved, `(9)` gives finite selected
action, the parent-drop relay gives finite same-material full action, and the
already-installed continuation relay gives the \(H^s\) restart.

Partial, not Gold closed. This note closes the reset variation branch and
leaves only `OriginalHistoryRoutedCurrentEnergyFinite.A`.
