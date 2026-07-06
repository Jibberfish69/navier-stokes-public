---
theorem_id: forward-gold-k5-finite-lp-admission-locality-obstruction-20260706
status: strict-obstruction-finite-lp-admission-does-not-force-k5-locality
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / K5 high-Re edge route-out
target_object:
  - K5DistributedLowDensityRecord.FINITE-LP-ADMITTED-WITNESS
  - K5RecordLocality.NotFromFiniteLpSelectedAdmission
  - K5RecordLocalityOrActualNSRouteOut.REMAINS
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-record-length-density-dilution-dichotomy-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-selected-throughput-local-density-alias-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-distributed-low-density-riesz-admission-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-record-charge-submeasure-locality-obstruction-20260706.md
completion_truth: >-
  Strict obstruction only. The distributed low-density K5 witness is not an
  artifact of Hilbert/Riesz normalization. For every finite
  \(1\le p<\infty\), take
  \(G_L=A L^{-1/p}\mathbf 1_{[0,L]}e\) and the dual selected test
  \(a_L=L^{-1/p'}\mathbf 1_{[0,L]}e\), with \(p'=\infty\) when
  \(p=1\). Then \(\|G_L\|_{L^p}=A\), \(\|a_L\|_{L^{p'}}=1\), and
  \(\langle G_L,a_L\rangle=A\), while every bounded effective cell
  \(J\) carries \(L^p\) mass \(A^p|J|/L\to0\) and pointwise density
  \(A L^{-1/p}\to0\) for \(p>1\). Thus any selected-admission rule that
  only gives a finite \(L^p/L^{p'}\) packet read permits the same long,
  diluted, endpoint-delaying K5 record. Excluding K5 still requires a
  genuinely local/atomic record admission rule, bounded effective support,
  fixed local density, actual-Navier-Stokes route-out, or dynamic/geometric
  contamination. This proves no K5 cap, no retained Navier-Stokes K5
  construction, no confinement constant, and no MPP closure.
---

# K5 finite-Lp admission still does not force locality

## 1. Object

The Riesz obstruction closed the Hilbert shortcut:

\[
  \text{bounded original-packet selected unit}
  \nRightarrow
  \text{bounded K5 record length}.
  \tag{FLP.1}
\]

One possible repair is to strengthen or change the packet currency from \(L^2\)
to another finite \(L^p\) admission rule. This note tests that repair.

The result is negative for every finite \(p\). Finite \(L^p\) admission still
allows the selected read to be spread over a growing K5 carrier.

## 2. The finite \(L^p\) witness

Fix \(1\le p<\infty\), and let \(p'\) be the dual exponent, with
\(p'=\infty\) when \(p=1\). Work in the one-dimensional K5 carrier coordinate
after the transverse/profile factors are fixed:

\[
  X_L=[0,L],
  \qquad e=\hbox{fixed producing direction}.
  \tag{FLP.2}
\]

Define the packet density and selected test by

\[
  G_L(z)=A L^{-1/p}\mathbf 1_{[0,L]}(z)e,
  \qquad
  a_L(z)=L^{-1/p'}\mathbf 1_{[0,L]}(z)e.
  \tag{FLP.3}
\]

For \(p=1\), this means \(a_L=\mathbf 1_{[0,L]}e\).

The norms are fixed:

\[
  \|G_L\|_{L^p(X_L)}=A,
  \qquad
  \|a_L\|_{L^{p'}(X_L)}=1.
  \tag{FLP.4}
\]

The selected action is also fixed:

\[
  \langle G_L,a_L\rangle
  =
  A L^{-1/p}L^{-1/p'}\int_0^L dz
  =
  A.
  \tag{FLP.5}
\]

Thus the selected record can be admitted in a bounded finite-\(p\) dual packet
currency, uniformly in the effective length \(L\).

## 3. Bounded cells still see no record density

Let \(J\subset[0,L]\) be any bounded effective cell with \(|J|\le \ell_\ast\).
Then

\[
  \int_J |G_L|^p\,dz
  =
  A^p { |J|\over L}
  \le
  A^p {\ell_\ast\over L}
  \longrightarrow0.
  \tag{FLP.6}
\]

For \(p>1\), the pointwise density also vanishes:

\[
  \|G_L\|_{L^\infty(J)}
  =
  A L^{-1/p}
  \longrightarrow0.
  \tag{FLP.7}
\]

For \(p=1\), the density is \(A/L\), so the same pointwise dilution holds.

Therefore the finite-\(p\) admission rule reads the whole long packet but does
not force any bounded cell to carry an order-one part of the record.

## 4. K5 translation

The K5 long-packet branch requires endpoint delay

\[
  kL\gtrsim \operatorname{Re},
  \tag{FLP.8}
\]

or stronger. The witness above can be placed on such lengths with no change to
the selected norm or total selected action.

The local record density on bounded cells vanishes like \(L^{-1}\) at the
\(L^p\)-mass level, and the pointwise amplitude vanishes like \(L^{-1/p}\).
Thus a finite \(L^p\) admission rule does not produce:

\[
\begin{array}{ll}
\text{bounded effective support},\\[1mm]
\text{fixed local production density},\\[1mm]
\text{endpoint return},\\[1mm]
\text{curve/core/crowd contamination}.
\end{array}
\tag{FLP.9}
\]

It only verifies that the long distributed read is finite in the chosen packet
norm.

## 5. Consequence

The false implication is now broader:

\[
  \exists p<\infty:
  \quad
  \|G_L\|_{L^p}\le A,\quad
  \|a_L\|_{L^{p'}}\le1,\quad
  \langle G_L,a_L\rangle\sim A
  \nRightarrow
  \text{K5 record locality}.
  \tag{FLP.10}
\]

So the remaining K5 route cannot be a finite-\(p\) integrability upgrade of the
Riesz rule. It must be one of the stronger objects already isolated:

1. an atomic or bounded-diameter selected record rule;
2. a fixed local density theorem on the endpoint-delay carrier;
3. an actual-Navier-Stokes admission failure for the distributed packet;
4. a dynamic/geometric route-out through endpoint return, curve/core leakage,
   sideband/crowd contamination, or exclusion of the isolated pure edge.

## 6. Four-sentence result

The distributed K5 read survives every finite \(L^p/L^{p'}\) packet
normalization. The witness
\[
  G_L=A L^{-1/p}\mathbf 1_{[0,L]}e,
  \qquad
  a_L=L^{-1/p'}\mathbf 1_{[0,L]}e
\]
has fixed packet norm, fixed dual test norm, and fixed selected action, while
every bounded cell carries \(O(L^{-1})\) \(L^p\)-mass. Hence finite \(L^p\)
admission is not record locality. K5 still needs an atomic/local-density
admission theorem or a genuine actual-NS route-out.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
