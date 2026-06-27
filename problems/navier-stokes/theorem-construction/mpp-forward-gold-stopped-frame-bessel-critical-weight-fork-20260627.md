---
theorem_id: forward-gold-stopped-frame-bessel-critical-weight-fork-20260627
status: bessel-producer-demoted-critical-carleson-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
corrects:
  - stopped-frame-bessel-producer-as-gold-closure
  - raw-L2-bessel-equals-active-route-energy
attacks_hinge:
  - OriginalHistoryRoutedCurrentEnergyFinite.A
  - StoppedSelectorBoundedProjectionOriginalParticipationLaw.A
  - ScaleCriticalStoppedFrameCarlesonEmbedding.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-history-routed-current-energy-bessel-producer-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-stress-test-bessel-frame-no-free-reset-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-routed-participation-current-carleson-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-sample-energy-compatibility-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-history-routed-current-energy-finiteness-boundary-20260627.md
---

# Stopped-Frame Bessel Critical-Weight Fork

The stopped-frame Bessel producer is not a Gold closure unless its Bessel
measure is the active route metric needed by selected action.

For a stopped parent \(P\), the stress-test representation is

\[
\mathcal G_{\sigma,t}
=
\langle 2\nu S_A,\mathcal D_\sigma a_{\sigma,t}\rangle_{\mathfrak H_P}
+Err_{\rm legal}+Err_{\rm stop}.
\tag{1}
\]

If the family

\[
\sqrt{w(\sigma,t)}\,\mathcal D_\sigma a_{\sigma,t}
\tag{2}
\]

is Bessel in \(\mathfrak H_P\), then

\[
\int_{\operatorname{Hist}(P)}
w(\sigma,t)
|\langle G,\mathcal D_\sigma a_{\sigma,t}\rangle|^2\,d\sigma dt
\le
C_N\|G\|_{\mathfrak H_P}^2 .
\tag{3}
\]

With \(G=2\nu S_A\), `(3)` gives the desired route-energy bound. The load-bearing
question is whether `(2)` is actually a Bessel family for the same active weight
\(w\) that selected action consumes.

There are two different statements.

First, with a raw Littlewood-Paley/stress-frame measure,

\[
\int |\langle G,\mathcal D_\sigma a_{\sigma,t}\rangle|^2\,d\mu_{\rm raw}
\lesssim
\|G\|_2^2
\tag{4}
\]

is plausible and often standard: construct a parent-known divergence-free
annular wavelet frame in material coordinates, keep the stopped selector as a
subfamily of that frame, and use orthogonality / bounded overlap.

Second, Gold needs the active route measure:

\[
d\mu_{\rm act}=w(\sigma,t)\,d\sigma dt .
\tag{5}
\]

The assertion

\[
\int |\langle G,\mathcal D_\sigma a_{\sigma,t}\rangle|^2\,d\mu_{\rm act}
\lesssim
\|G\|_2^2
\tag{6}
\]

is not a consequence of finite aperture or parent-known routing alone. It is a
scale-critical Carleson embedding theorem for the stopped frame.

The heat-scale compatibility test shows why `(4)` and `(6)` cannot be conflated.
For a critical sample of width \(\ell\),

\[
E_\ell\sim\ell,\qquad D_\ell\sim\ell,\qquad K_\ell\sim1.
\tag{7}
\]

Thus a train with \(\ell_m=2^{-m}\) can have

\[
\sum_m D_{\ell_m}<\infty,
\qquad
\sum_m K_{\ell_m}=\infty .
\tag{8}
\]

Any theorem that pays the active Gold clock by raw \(L^2\) stress Bessel must
explain where the missing factor \(1/\ell_m\) is rejected, orthogonalized, or
charged as stop/legal/reset. A finite parent-known chart does not do that.

The corrected theorem is:

\[
\boxed{
\text{ScaleCriticalStoppedFrameCarlesonEmbedding.A}
}
\tag{9}
\]

For every stopped parent history \(P\), before descendant selected readout, the
covariant stopped annular frame must satisfy

\[
\int_{\operatorname{Hist}(P)}
w(\sigma,t)
|\langle G,\mathcal D_\sigma a_{\sigma,t}\rangle|^2\,d\sigma dt
\le
C_N\|G\|_{\mathfrak H_P}^2
+R_{\rm legal}(P)+Stop(P)
\tag{10}
\]

for all \(G\in\mathfrak H_P\), with \(w\) exactly the active route weight used
by the selected-action relay.

Equivalently, the selected stopped tests must be a scale-critical Carleson
subfamily of a universal parent-known material wavelet frame. Raw Bessel,
pressure cancellation, and finite stopped charts are support for `(10)`, not
proof of `(10)`.

This is the current Gold hinge. Once `(10)` is proved, the existing
parent-subtracted/reset relay gives finite selected current square packing and
the downstream \(H^s\) continuation chain can be audited. Until `(10)` is proved,
the stopped-frame Bessel producer is conditional, not a smoothness closure.
