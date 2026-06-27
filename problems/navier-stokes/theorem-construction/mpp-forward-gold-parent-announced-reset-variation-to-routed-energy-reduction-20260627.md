---
theorem_id: forward-gold-parent-announced-reset-variation-to-routed-energy-reduction-20260627
status: reset-variation-reduced-to-original-routed-current-energy
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
refines:
  - ParentSubtractedInheritedActionSquarePacking.A
  - ResetAngleSelectorVariationPayment.A
  - StoppedRoutedCurrentSquarePackingFromDerivativeBV.A
closes_relative:
  - ResetAngleSelectorVariationFiniteFromOriginalMaterialLaw.A relative to OriginalHistoryRoutedCurrentEnergyFinite.A
  - ParentAnnouncedFirstExitResetVariation.A
  - HarmonicActiveWeightResetCauchy.A
leaves_open:
  - OriginalHistoryRoutedCurrentEnergyFinite.A
  - StoppedSelectorBoundedProjectionOriginalParticipationLaw.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-subtracted-inherited-action-square-packing-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-readout-parent-subtracted-current-admission-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-square-packing-noncircular-installation-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-stress-test-frame-bound-from-inherited-direction-carleson-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-routed-current-energy-original-history-producer-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-bounded-projection-original-participation-law-20260627.md
---

# Parent-Announced Reset Variation To Routed Energy Reduction

The parent-subtracted current removes exact inherited reuse before selected
readout. The fresh residuals are Bessel-paid by viscous strain. The reset branch
is paid once each reset is represented as a parent-announced first exit.

For every reset edge \(e\), the stopped selector supplies a parent-announced
interval \(I_e\) and

\[
D_e
=
{|I_e|}^{-1}\int_{I_e}
\mathcal G_e(\sigma,t)\,d\sigma
+Err_e^{legal},
\tag{1}
\]

where

\[
\mathcal G_e
=
\partial_\sigma Z
+\operatorname{turnstile}_\sigma
+\operatorname{exchange}_\sigma
+\operatorname{covector}_\sigma .
\tag{2}
\]

Use the harmonic active weight

\[
H_{I_e}(t)
=
\frac{|I_e|^2}{\int_{I_e}w(\sigma,t)^{-1}\,d\sigma}.
\tag{3}
\]

Cauchy gives the reset estimate in the active metric:

\[
H_{I_e}(t)\|D_e(t)\|^2
\le
\int_{I_e}
w(\sigma,t)\|\mathcal G_e(\sigma,t)\|^2\,d\sigma
+Err_e^{legal}.
\tag{4}
\]

Define the stopped reset-variation ledger in that same active metric:

\[
\operatorname{Var}^{stop}_P
:=
\sum_{e\subset P}
\int H_{I_e}(t)\|D_e(t)\|^2\,dt
+R_{\mathrm{legal}}(P)+Stop(P).
\tag{5}
\]

Equivalently, this is the projection-jump square function
\(\sum_i\|b_i-b_{i-1}\|^2\) computed in the pulled-back active route metric.  An
unweighted projection-jump norm is not inferred from `(4)` unless the stopped
chart has already normalized it to this active metric.

The reset witness slabs are parent-announced first-exit slabs. Their stopped
overlap is bounded. Hence the reset, angle, selector, frame, and collar
variation created by projection changes satisfies

\[
\operatorname{Var}^{stop}_P
\le
C_N
\int_{\operatorname{Hist}(P)}
w\Big(
|\partial_\sigma Z|^2
+|T_\sigma|^2
+|E_\sigma|^2
+|C_\sigma|^2
\Big)
+R_{\mathrm{legal}}(P)+Stop(P).
\tag{6}
\]

That integral is exactly the stopped routed-current energy:

\[
\mathcal E_{\mathrm{route}}(P)
=
\int_{\operatorname{Hist}(P)}
w\Big(
|\partial_\sigma Z|^2
+|T_\sigma|^2
+|E_\sigma|^2
+|C_\sigma|^2
\Big).
\tag{7}
\]

Combining the fresh annular-wavelet QR/Bessel estimate with `(6)` gives

\[
\sum_{Q\subset P}
\mathcal R(Q)|\Delta J_Q^{sel}|^2
\le
C(u_0)
+C_N\,\mathcal E_{\mathrm{route}}(P)
+R_{\mathrm{legal}}(P)+Stop(P).
\tag{8}
\]

Thus the raw reset-variation estimate is no longer a standalone obstruction.
It is the reset face of the routed-current/full-action measure.

The routed-current coordinate form of the full-action bound is

\[
\mathcal E_{\mathrm{route}}(P)
\le
C(u_0)+R_{\mathrm{legal}}(P)+Stop(P).
\tag{9}
\]

Equation `(9)` is the bounded-projection form of the same original
Navier-Stokes participation law:

\[
d\mathscr A_N+c\,d\Omega_N\le dR_N,
\qquad
\mathscr A_N(t)\ge -C(u_0),
\qquad
\int_0^{T^*}dR_N<\infty .
\tag{10}
\]

With `(9)` in this full-action sense, `(8)` gives finite selected current
square packing; the installed downstream relay then gives finite selected
action, finite full same-material clock, and the usual \(H^s\) continuation.
The reset branch is paid in routed-current currency, not raw inherited values.
