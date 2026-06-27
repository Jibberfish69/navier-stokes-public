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

Cauchy gives

\[
H_{I_e}(t)\|D_e(t)\|^2
\le
\int_{I_e}
w(\sigma,t)\|\mathcal G_e(\sigma,t)\|^2\,d\sigma
+Err_e^{legal}.
\tag{4}
\]

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
\tag{5}
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
\tag{6}
\]

Combining the fresh annular-wavelet QR/Bessel estimate with `(5)` gives

\[
\sum_{Q\subset P}
\mathcal R(Q)|\Delta J_Q^{sel}|^2
\le
C(u_0)
+C_N\,\mathcal E_{\mathrm{route}}(P)
+R_{\mathrm{legal}}(P)+Stop(P).
\tag{7}
\]

Thus the raw reset-variation estimate is no longer the top Gold obstruction.
It has been reduced to the routed-current energy.

The remaining Gold line is

\[
\mathcal E_{\mathrm{route}}(P)
\le
C(u_0)+R_{\mathrm{legal}}(P)+Stop(P).
\tag{8}
\]

Equation `(8)` must be proved before selected readout as a bounded projection
of the original Navier-Stokes participation law. Once `(8)` is proved, `(7)`
gives finite selected current square packing; the installed downstream relay
then gives finite selected action, finite full same-material clock, and the
usual \(H^s\) continuation.

Partial, not Gold closed. The reset branch is paid in routed-current currency;
the original-history finiteness of that currency is still the live theorem.
