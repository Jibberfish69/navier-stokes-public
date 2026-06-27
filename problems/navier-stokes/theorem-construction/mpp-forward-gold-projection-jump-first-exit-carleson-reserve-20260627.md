---
theorem_id: forward-gold-projection-jump-first-exit-carleson-reserve-20260627
status: projection-jump-first-exit-carleson-proved-relative-to-route-energy
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
refines:
  - RetainedActiveRawBellmanCapacity.A
  - ParentSubtractedInheritedActionSquarePacking.A
  - ParentAnnouncedFirstExitResetVariation.A
  - OriginalHistoryRoutedCurrentEnergyFinite.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-readout-parent-subtracted-current-admission-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-subtracted-inherited-direction-bessel-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-reused-channel-return-service-no-recirculation-equivalence-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-announced-reset-variation-to-routed-energy-reduction-20260627.md
effect: >-
  Installs the exact formal shape of the projection-jump reserve.  Exact inherited
  reuse is zero new selected current.  Fresh residuals are orthogonal and paid by
  the material stress Bessel estimate.  Recycled action exists only when the
  parent-known projection changes, and the projection-jump / parent-announced
  first-exit Carleson estimate is proved in E_route currency.  The remaining
  Gold producer is OriginalHistoryRoutedCurrentEnergyFinite.A.  Partial, not
  Gold closed.
---

# Projection-Jump First-Exit Carleson Reserve

Exact reuse is not a new unit. A reused unit only exists when the parent-known
stress projection changes.

Fix a stopped parent \(P\), and set

\[
\mathfrak H_P=L^2_{\rm sym,tr}(\operatorname{Hist}(P)),
\qquad
G=2\nu S_A .
\tag{1}
\]

For each stopped child stress test \(a_i\), split against the parent-known past:

\[
a_i=b_i+d_i,
\qquad
b_i=\Pi_{E_{i-1}}a_i,
\qquad
d_i=(I-\Pi_{E_{i-1}})a_i .
\tag{2}
\]

Define selected child current by parent subtraction:

\[
\Delta J_i^{new}
=
\langle G,a_i\rangle-\langle G,b_i\rangle
=
\langle G,d_i\rangle .
\tag{3}
\]

Then the physical story becomes exact:

\[
a_i\in E_{i-1}
\quad\Rightarrow\quad
d_i=0
\quad\Rightarrow\quad
\Delta J_i^{new}=0 .
\tag{4}
\]

Same stress channel, same parent geometry, same material packet: no new
selected refill.

Fresh changes are paid by Bessel. With \(e_i=d_i/\|d_i\|\) for \(d_i\ne0\), the
\(e_i\) are orthonormal, hence

\[
\sum_i|\Delta J_i^{new}|^2
\le
\sum_i|\langle G,e_i\rangle|^2
\le
\|G\|_{\mathfrak H_P}^2
\le
C(u_0).
\tag{5}
\]

Recycled changes are projection jumps. If the parent geometry changes from
\(\Pi_{i-1}\) to \(\Pi_i\), the recycled read is

\[
\rho_i
=
\langle G,(\Pi_i-\Pi_{i-1})a_i\rangle .
\tag{6}
\]

Therefore

\[
\sum_i|\rho_i|^2
\le
\|G\|_{\mathfrak H_P}^2
\sum_i
\|(\Pi_i-\Pi_{i-1})a_i\|_{\mathfrak H_P}^2 .
\tag{7}
\]

The theorem-grade reserve version is

\[
\sum_i
\|(\Pi_i-\Pi_{i-1})a_i\|_{\mathfrak H_P}^2
\le
C_N(u_0)+R_{\rm legal}+Stop .
\tag{8}
\]

The proved first-exit statement is the route-energy version:

\[
\mathrm{PJ}(P)
:=
\sum_{e\subset P}
\int H_{I_e}(t)\|(\Pi_e^+-\Pi_e^-)a_e\|^2\,dt
\le
C_N\mathcal E_{\rm route}(P)+R_{\rm legal}(P)+Stop(P).
\tag{9}
\]

It says unchanged reuse is zero, fresh reuse is orthogonal, and changed reuse
spends projection-jump reserve in the original routed-packet energy currency.
The \(C(u_0)\) version of `(8)` follows after the original storage producer
\(\mathcal E_{\rm route}(P)\le C(u_0)+R_{\rm legal}+Stop\).

## Relation to the installed notes

The selected-readout admission note installs `(3)` and the no-reuse law: raw
inherited stress readout is parent current, not child action.

The parent-subtracted Bessel closure installs `(5)`: fresh residuals square-pack
against \(\|G\|_{\mathfrak H_P}^2\).

The reused-channel note stated the local descent clause before first-exit
realization: a later read of the same material channel cannot restore selected
high-ratio action without fresh orthogonal work, legal/stop loss, paid
reselection/reset, or return to an already spent reserve atom with bounded
multiplicity. In the present notation, the first-exit realization proves that
clause in the \(\mathcal E_{\rm route}\) currency.

## Parent-announced first-exit form

The projection jump is represented before selected child-tail readout as a
parent-announced first exit. On each reset edge \(e\), the reset/projection jump
is a first exit of a parent-known transported coordinate \(q_e\). Since the
whole pressure-viscosity-incompressibility-velocity packet is rescaled together,
\(q_e\) is an original same-material coordinate, and along the stopped scale
interval \(I_e\),

\[
q_e(\sigma_1,t)-q_e(\sigma_0,t)
=
\int_{I_e}\partial_\sigma q_e(\sigma,t)\,d\sigma .
\tag{10}
\]

The packet derivative decomposes as

\[
\partial_\sigma q_e
=
L_e(\partial_\sigma Z,T_\sigma,E_\sigma,C_\sigma)
+Err_{\rm legal},
\qquad
\|L_e\|\le C_N .
\tag{11}
\]

The harmonic active weight

\[
H_{I_e}(t)
=
\frac{|I_e|^2}{\int_{I_e}w^{-1}\,d\sigma}
\tag{12}
\]

and weighted Cauchy give

\[
H_{I_e}
\|q_e(\sigma_1)-q_e(\sigma_0)\|^2
\le
C_N
\int_{I_e}
w\big(
|\partial_\sigma Z|^2
+|T_\sigma|^2
+|E_\sigma|^2
+|C_\sigma|^2
\big)
+dR_{\rm legal}.
\tag{13}
\]

The projection map \(q\mapsto\Pi(q)\) is uniformly Lipschitz on the stopped
chart, so

\[
H_{I_e}
\|(\Pi_e^+-\Pi_e^-)a_e\|^2
\le
C_N
\int_{I_e}
w\big(
|\partial_\sigma Z|^2
+|T_\sigma|^2
+|E_\sigma|^2
+|C_\sigma|^2
\big)
+dR_{\rm legal}.
\tag{14}
\]

Maximal first-exit intervals are disjoint along each stopped ancestry line, and
the material tubes are laminar across siblings:

\[
\sum_e 1_{I_e\times T_e}
\le
C_N+R_{\rm legal}+Stop.
\tag{15}
\]

Summing `(14)` proves `(9)`, where

\[
\mathcal E_{\rm route}(P)
=
\int_{\operatorname{Hist}(P)}
w\big(
|\partial_\sigma Z|^2
+|T_\sigma|^2
+|E_\sigma|^2
+|C_\sigma|^2
\big).
\tag{16}
\]

The final remaining input is therefore the original-history storage estimate

\[
\mathcal E_{\rm route}(P)
\le
C_N(u_0)+R_{\rm legal}+Stop .
\tag{17}
\]

With `(17)`, projection-jump reserve and fresh Bessel square-pack selected
action. The installed downstream relay then gives finite selected action, finite
full same-material clock, and the usual \(H^s\) continuation.

Partial, not Gold closed.
