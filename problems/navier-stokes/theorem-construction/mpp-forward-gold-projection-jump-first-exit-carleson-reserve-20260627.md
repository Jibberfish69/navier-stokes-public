---
theorem_id: forward-gold-projection-jump-first-exit-carleson-reserve-20260627
status: projection-jump-reserve-exact-live-gold-hinge-open
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
  Installs the exact formal shape of the remaining Gold reserve.  Exact inherited
  reuse is zero new selected current.  Fresh residuals are orthogonal and paid by
  the material stress Bessel estimate.  Recycled action exists only when the
  parent-known projection changes, and the remaining theorem is the finite
  projection-jump / parent-announced first-exit Carleson reserve.  Partial, not
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

The theorem-grade reserve is exactly

\[
\boxed{
\sum_i
\|(\Pi_i-\Pi_{i-1})a_i\|_{\mathfrak H_P}^2
\le
C_N(u_0)+R_{\rm legal}+Stop .
}
\tag{8}
\]

This is the remaining finite-reserve statement. It says unchanged reuse is
zero, fresh reuse is orthogonal, and changed reuse spends projection-jump
reserve.

## Relation to the installed notes

The selected-readout admission note installs `(3)` and the no-reuse law: raw
inherited stress readout is parent current, not child action.

The parent-subtracted Bessel closure installs `(5)`: fresh residuals square-pack
against \(\|G\|_{\mathfrak H_P}^2\).

The reused-channel note states the missing local descent clause: a later read
of the same material channel cannot restore selected high-ratio action without
fresh orthogonal work, legal/stop loss, paid reselection/reset, or return to an
already spent reserve atom with bounded multiplicity. In the present notation,
that missing clause is `(8)`.

## Parent-announced first-exit form

The projection jump must be represented before selected child-tail readout as a
parent-announced first exit. On each reset edge \(e\), the stopped selector
supplies an interval \(I_e\) and

\[
D_e
=
|I_e|^{-1}
\int_{I_e}\mathcal G_e(\sigma,t)\,d\sigma
+Err_e^{legal},
\tag{9}
\]

with

\[
\mathcal G_e
=
\partial_\sigma Z
+\operatorname{turnstile}_\sigma
+\operatorname{exchange}_\sigma
+\operatorname{covector}_\sigma .
\tag{10}
\]

The harmonic active weight gives

\[
H_{I_e}(t)\|D_e(t)\|^2
\le
\int_{I_e}
w(\sigma,t)\|\mathcal G_e(\sigma,t)\|^2\,d\sigma
+Err_e^{legal}.
\tag{11}
\]

If the projection jump satisfies

\[
\|(\Pi_i-\Pi_{i-1})a_i\|_{\mathfrak H_P}^2
\lesssim
\int H_{I_i}(t)\|D_i(t)\|^2\,dt
+Err_i^{legal}+Stop_i,
\tag{12}
\]

and the parent-announced first-exit slabs have bounded stopped overlap, then
`(8)` follows from the original routed-current energy:

\[
\sum_i
\|(\Pi_i-\Pi_{i-1})a_i\|_{\mathfrak H_P}^2
\lesssim
\mathcal E_{\rm route}(P)+R_{\rm legal}+Stop .
\tag{13}
\]

The final remaining input is therefore the original-history storage estimate

\[
\mathcal E_{\rm route}(P)
\le
C_N(u_0)+R_{\rm legal}+Stop .
\tag{14}
\]

With `(8)` and fresh Bessel, selected action is square-packed. The installed
downstream relay then gives finite selected action, finite full same-material
clock, and the usual \(H^s\) continuation.

Partial, not Gold closed.
