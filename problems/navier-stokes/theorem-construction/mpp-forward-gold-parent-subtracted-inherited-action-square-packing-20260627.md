---
theorem_id: forward-gold-parent-subtracted-inherited-action-square-packing-20260627
status: parent-subtracted-decomposition-proved-reset-variation-reduced-to-routed-energy
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
refines:
  - DivergenceFreeAnnularWaveletTractionCurrentPayment.A
  - ParentSubtractedQRNoFreeReset.A
  - ParentCurrentCoboundarySquareFunction.A
corrects:
  - raw-inherited-value-estimate
attacks_hinge:
  - ParentSubtractedInheritedActionSquarePacking.A
  - ResetAngleSelectorVariationPayment.A
  - StoppedAnnularWaveletFreshActionBessel.A
  - ParentAnnouncedFirstExitResetVariation.A
leaves_open:
  - OriginalHistoryRoutedCurrentEnergyFinite.A
  - StoppedSelectorBoundedProjectionOriginalParticipationLaw.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-announced-reset-variation-to-routed-energy-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-current-coboundary-square-function-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-whole-transported-packet-parabolic-rescaling-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-traction-current-participation-law-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-subtracted-stress-test-innovation-bessel-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-readout-parent-subtracted-current-admission-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-square-packing-noncircular-installation-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-routed-current-energy-original-history-producer-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-stress-test-bessel-frame-no-free-reset-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-bounded-projection-original-participation-law-20260627.md
---

# Forward Gold Parent-Subtracted Inherited Action Decomposition

## Correction

The raw inherited-value estimate is the wrong statement.

The stopped child action must be defined after subtracting the parent-known inherited
projection. Exact same-direction reuse is already parent current, so it contributes
zero new child action. Only a fresh orthogonal residual, or a reset/angle/selector/frame/collar/stop/legal
change of the parent-known geometry, creates a new term.

## Parent Hilbert Setup

Fix a stopped parent material history \(P\). Work in

\[
\mathfrak H_P=L^2_{\mathrm{sym,tr}}(\operatorname{Hist}(P)),
\qquad
G=2\nu S_A .
\]

For retained stopped children \(Q_i\), choose stopped material annular wavelet
tests \(w_i\) with

\[
D_A\cdot w_i=0
\]

and set

\[
a_i=
\sqrt{\mathcal R(Q_i)}\,
1_{\operatorname{Hist}(Q_i)}
P_{\mathrm{sym,tr}}\nabla_A w_i
\in \mathfrak H_P .
\]

Pressure cancels in the material stress pairing:

\[
\sqrt{\mathcal R(Q_i)}\,\Delta J_i
=
\langle G,a_i\rangle_{\mathfrak H_P}.
\]

The normalization of the stopped annular wavelet frame is taken so that
\(\|a_i\|_{\mathfrak H_P}\le 1\). More generally, every line below carries the
corresponding parent frame bound.

## Parent-Known QR And New Action

Let \(E_{i-1}\) be the parent-known span of inherited directions and earlier
admitted fresh directions. Write

\[
a_i=b_i+d_i,
\qquad
b_i=\Pi_{E_{i-1}}a_i,
\qquad
d_i=(I-\Pi_{E_{i-1}})a_i .
\]

The new stopped child current is not the raw read. It is the parent-subtracted
read

\[
\mathcal A_i^{new}
:=
\sqrt{\mathcal R(Q_i)}\,\Delta J_i^{new}
=
\langle G,a_i\rangle-\langle G,b_i\rangle
=
\langle G,d_i\rangle .
\]

Thus if \(a_i\in E_{i-1}\), then \(d_i=0\) and the child contributes no new
selected action. Reusing the same stress direction is parent current, not a new
child source.

## Fresh Square Packing

For \(d_i\ne0\), set \(e_i=d_i/\|d_i\|\). Parent-known QR makes the \(e_i\)
orthonormal. Hence

\[
\sum_i |\mathcal A_i^{new}|^2
=
\sum_i \|d_i\|^2 |\langle G,e_i\rangle|^2
\le
\sum_i |\langle G,e_i\rangle|^2
\le
\|G\|_{\mathfrak H_P}^2 .
\]

By the material energy identity,

\[
\|G\|_{\mathfrak H_P}^2
=
4\nu^2\int_{\operatorname{Hist}(P)}|S_A|^2
\le
C(u_0).
\]

This is the actual fresh-current square packing. It does not estimate inherited
level values; it removes them before action is counted.

For the inherited part,

\[
J_i^{\mathrm{inh}}
=
\langle G,b_i\rangle .
\]

The only new inherited contribution is its variation:

\[
J_i^{\mathrm{inh}}-J_{i-1}^{\mathrm{inh}}
=
\langle G,b_i-b_{i-1}\rangle .
\]

Thus

\[
\sum_i |J_i^{\mathrm{inh}}-J_{i-1}^{\mathrm{inh}}|^2
\le
\|G\|_{\mathfrak H_P}^2
\sum_i \|b_i-b_{i-1}\|_{\mathfrak H_P}^2
\le
C(u_0)
\sum_i \|b_i-b_{i-1}\|_{\mathfrak H_P}^2 .
\]

The same-direction inherited reuse itself contributes nothing new. Only change
of inherited direction contributes.

## Reset, Angle, Selector, And Stop Variation

Inherited current reappears only when the parent-known geometry changes. Let
\(\Pi_i\) denote the active parent projection after a reset, angle change,
selector change, frame/collar change, legal event, or stop event. The new reset
read is

\[
\rho_i
=
\langle G,(\Pi_i-\Pi_{i-1})a_i\rangle .
\]

Define the reset variation ledger by

\[
\operatorname{Var}^{reset}_P
:=
\sum_i \|(\Pi_i-\Pi_{i-1})a_i\|_{\mathfrak H_P}^2
\]

with stop/legal pieces recorded separately when the projection jump is created
by stopping or legal loss. Then

\[
\sum_i|\rho_i|^2
\le
\|G\|_{\mathfrak H_P}^2
\sum_i\|(\Pi_i-\Pi_{i-1})a_i\|_{\mathfrak H_P}^2
\le
C(u_0)\operatorname{Var}^{reset}_P .
\]

Therefore the original transported action decomposes as

\[
\Omega_P^{orig}
\le
C\sum_i |J_i^{\mathrm{fresh}}|^2
+C(u_0)\operatorname{Var}^{reset}_P
+C R_{\mathrm{legal}}(P)
+C Stop(P).
\]

Here

\[
\operatorname{Var}^{reset}_P
=
\sum_i \|b_i-b_{i-1}\|_{\mathfrak H_P}^2
\]

up to the equivalent projection-jump, legal, and stop terms.

## Gold Effect

This replaces the inherited raw-value theorem.

The stopped selector must count the parent-subtracted current as action:

\[
\Delta J_i^{new}
=
\Delta J_i-\Delta J_i^{parent}.
\]

Then exact inherited reuse is killed algebraically and fresh use is orthogonal.
Changed reuse is exactly reset, angle, selector, frame, collar, stop, or legal
variation.  The variation is not a loose RHS; it is the reset part of the same
full action:

\[
d\Omega_N
=
d\Omega_N^{fresh}
+d\Omega_N^{reset}
+d\Omega_N^{stop/legal}.
\]

Represent each reset as a parent-announced first exit. For the reset edge \(e\),
the stopped selector gives

\[
D_e
=
{|I_e|}^{-1}\int_{I_e}
\mathcal G_e(\sigma,t)\,d\sigma
+Err_e^{legal},
\]

where

\[
\mathcal G_e
=
\partial_\sigma Z
+\operatorname{turnstile}_\sigma
+\operatorname{exchange}_\sigma
+\operatorname{covector}_\sigma .
\]

With

\[
H_{I_e}(t)=
{|I_e|^2\over\int_{I_e}w(\sigma,t)^{-1}\,d\sigma},
\]

Cauchy and bounded stopped overlap of the first-exit slabs give

\[
\operatorname{Var}^{stop}_P
\le
C_N\mathcal E_{\mathrm{route}}(P)
+R_{\mathrm{legal}}(P)+Stop(P).
\]

Combining this with the fresh Bessel estimate gives

\[
\sum_{Q\subset P}
\mathcal R(Q)|\Delta J_Q^{sel}|^2
\le
C(u_0)
+C_N\mathcal E_{\mathrm{route}}(P)
+R_{\mathrm{legal}}(P)+Stop(P).
\]

The final Gold estimate is therefore the original-history routed-current energy
bound

\[
\mathcal E_{\mathrm{route}}(P)
\le
C(u_0)+R_{\mathrm{legal}}(P)+Stop(P).
\]

This note proves the parent-subtracted decomposition and the fresh Bessel
packing. The reset-variation branch is paid in routed-current currency by the
parent-announced first-exit representation. The live unpaid theorem is the
bounded-projection estimate for \(\mathcal E_{\mathrm{route}}\) from the original
Navier-Stokes participation law.
