---
theorem_id: forward-gold-high-active-density-first-exit-admission-closure-20260627
status: failed-closure-root-active-measure-circularity
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
tests:
  - HighActiveDensityForcesStopOrLegalReselection.A
  - ScaleCriticalStoppedFrameCarlesonEmbedding.A on the retained stopped tree
  - OriginalHistoryRoutedCurrentEnergyFinite.A for the retained routed-current atlas
uses:
  - ParentSubtractedSelectedReadoutDecomposition.A
  - ParentAnnouncedFirstExitResetVariation.A
  - MaterialTractionCurrentParticipationLaw.A
  - stopped finite-score selector machinery
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-active-route-metric-carleson-stopping-admission-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-announced-reset-variation-to-routed-energy-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-subtracted-active-weight-carleson-embedding-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-frame-bessel-critical-weight-fork-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-history-routed-current-energy-bessel-producer-20260627.md
effect: >-
  Tests the parent-known density-stop closure. The stop rule is valid as a
  selector-admission mechanism, but it does not prove the root active route
  measure finite. If the bad-packet packing uses the active weighted route
  measure, the argument assumes E_route(P)<infty. Thus this note is a sharp
  failed closure, not a Gold proof.
---

# High active density first-exit admission attempt

The reset branch is already reduced to the routed-current energy line

\[
\mathcal E_{\mathrm{route}}(P)
\le
C(u_0)+R_{\mathrm{legal}}(P)+Stop(P).
\tag{1}
\]

This note tests the parent-known density-stop route for that line.

Let

\[
G=2\nu S_A
\in
\mathfrak H_P
=
L^2_{\mathrm{sym,tr}}(\operatorname{Hist}(P)).
\tag{2}
\]

For the parent-known stopped annular route frame, let

\[
k_\theta=\mathcal D_\sigma a_{\sigma,t},
\qquad
\theta=(\sigma,t),
\tag{3}
\]

where \(\mathcal D_\sigma\) is the covariant stopped-route derivative including
turnstile, exchange, and covector motion. The raw parent frame has the Bessel
bound

\[
\int_{\widehat P}
k_\theta\otimes k_\theta\,d\mu_{\mathrm{raw}}(\theta)
\le
C_N I_{\mathfrak H_P}.
\tag{4}
\]

For the actual original material stress define the parent-known stress-square
route measure

\[
\mu_G(E)
:=
\int_E
|\langle G,k_\theta\rangle_{\mathfrak H_P}|^2
d\mu_{\mathrm{raw}}(\theta).
\tag{5}
\]

Then

\[
\mu_G(\widehat P)
\le
C_N\|G\|_{\mathfrak H_P}^2.
\tag{6}
\]

The retained selector is now required to include the density score

\[
\mathsf d_P(Q)
:=
\frac{\mu_G(\widehat Q)}{\mathcal R(Q)}
\tag{7}
\]

with fixed threshold \(K\). This is a parent-announced score: it is computed from
the original material stress on the parent history and the parent-known stopped
route frame, not from descendant selected action.

The retained tree rule is:

\[
\mathsf d_P(Q)\le K
\quad
\text{for every retained selected child }Q\subset P.
\tag{8}
\]

If `(8)` first fails, the failing packet is by definition a parent-announced
first exit. It enters \(Stop(P)\), pays legal/reselection/reset, or is charged as
a parent-current capacity drop. It is not a retained unpaid selected child.

Let \(\mathcal B(P)\) be the maximal density-excess packets:

\[
\mu_G(\widehat Q)>K\mathcal R(Q).
\tag{9}
\]

The hats \(\widehat Q\) have bounded stopped overlap, so

\[
\sum_{Q\in\mathcal B(P)}
\mathcal R(Q)
\le
K^{-1}
\sum_{Q\in\mathcal B(P)}
\mu_G(\widehat Q)
\le
C_NK^{-1}\mu_G(\widehat P).
\tag{10}
\]

Using `(6)`,

\[
Stop_{\mathrm{dens}}(P)
:=
\sum_{Q\in\mathcal B(P)}\mathcal R(Q)
\le
C_NK^{-1}\|G\|_{\mathfrak H_P}^2.
\tag{11}
\]

Thus density-excess stopping is finite from the original material energy:

\[
\|G\|_{\mathfrak H_P}^2
=
4\nu^2
\int_{\operatorname{Hist}(P)}|S_A|^2
\le
C_\nu E_0(u_0).
\tag{12}
\]

On the retained complement, `(8)` controls only the measure used to define
\(\mu_G\). To conclude the active route metric estimate one would need

\[
\int_{\operatorname{Hist}(P)_{\mathrm{ret}}}
w(\theta)|\langle G,k_\theta\rangle_{\mathfrak H_P}|^2\,d\theta
\le
C_{N,K}\|G\|_{\mathfrak H_P}^2
+R_{\mathrm{legal}}(P)+Stop(P).
\tag{13}
\]

This is the unproved step. If \(\mu_G\) is the active weighted measure from
`(13)`, then `(6)` is exactly \(\mathcal E_{\mathrm{route}}(P)<\infty\), the
theorem being proved. If \(\mu_G\) is only the raw unweighted Bessel measure,
then `(13)` does not follow.

The routed-current identity gives

\[
\mathcal G_{\sigma,t}
=
\langle G,k_{\sigma,t}\rangle_{\mathfrak H_P}
+Err_{\mathrm{legal}}+Err_{\mathrm{stop}},
\tag{14}
\]

where

\[
\mathcal G_{\sigma,t}
=
\partial_\sigma Z
+\operatorname{turnstile}_\sigma
+\operatorname{exchange}_\sigma
+\operatorname{covector}_\sigma .
\tag{15}
\]

With `(13)`, the routed-current identity would give

\[
\mathcal E_{\mathrm{route}}(P)
\le
C_N\|2\nu S_A\|_{\mathfrak H_P}^2
+R_{\mathrm{legal}}(P)+Stop(P).
\tag{16}
\]

Using `(12)`, this would imply

\[
\boxed{
\mathcal E_{\mathrm{route}}(P)
\le
C_N(u_0)+R_{\mathrm{legal}}(P)+Stop(P).
}
\tag{17}
\]

So the density stop proves only the selector-admission half of
`HighActiveDensityForcesStopOrLegalReselection.A`: once a finite parent root
active measure is available, high active-density excess cannot remain a retained
unpaid selected child.

Combining `(17)` with the parent-announced reset reduction would give

\[
\sum_{Q\subset P}
\mathcal R(Q)|\Delta J_Q^{sel}|^2
\le
C_N(u_0)+R_{\mathrm{legal}}(P)+Stop(P).
\tag{18}
\]

The exact remaining line is still

\[
\mathcal E_{\mathrm{route}}(P)
\le
C(u_0)+R_{\mathrm{legal}}(P)+Stop(P),
\tag{19}
\]

proved from the original Navier-Stokes participation law rather than from the
active route measure itself.
