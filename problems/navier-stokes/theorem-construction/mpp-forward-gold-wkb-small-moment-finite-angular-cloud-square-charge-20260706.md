---
theorem_id: forward-gold-wkb-small-moment-finite-angular-cloud-square-charge-20260706
status: exact-finite-positive-angular-cloud-realizes-small-pressure-moment-with-small-square-charge
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB legal anti-equidistribution
target_object:
  - BeltramiAngularPressureMoment.FINITE-POSITIVE-CLOUD
  - NearUniformWKBPressureBath.NOT-CONTINUUM-ONLY
  - DiagonalSquareCharge.SMALL-FOR-SMALL-MOMENT
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-angular-pressure-moment-row-distance-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-angular-continuum-quadrature-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-near-uniform-local-cloud-gram-countermodel-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-atomic-wkb-prelimit-quantization-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-many-cell-wkb-quantization-obstruction-20260706.md
completion_truth: >-
  Exact angular/cell algebra witness only. For every trace-free symmetric
  pressure moment \(K\) with \(3\lambda_{\max}^+(K)\le1\), choose
  \(\varepsilon\ge3\lambda_{\max}^+(K)\), diagonalize \(K\), and put a small
  anisotropic six-axis cloud with paired weights
  \(m_i/2\) at \(\pm e_i\), where \(m_i=\varepsilon/3-k_i\). This cloud has
  total mass \(\varepsilon\) and exact Beltrami pressure moment \(K\). Add
  \(N\) neutral isotropic sextets of total mass \(1-\varepsilon\); they add no
  moment and make the neutral diagonal square charge \(O(1/N)\). The total
  cell-square mass is at most
  \((1-\varepsilon)^2/(6N)+\varepsilon^2/6+|K|_F^2/2\), hence
  \(O(1/N+|K|_F^2)\) when \(\varepsilon\lesssim |K|_F\). In the overlap row
  \(|K|_F=O(\beta^{4/5})\), so the finite positive angular cloud has exact
  moment and square charge \(O(1/N+\beta^{8/5})\). Therefore the beta-small
  WKB angular bath is not continuum-only and not forced to pay a bounded-count
  atom square charge at the pressure-moment level. This proves no actual
  same-solution WKB construction, no spatial placement/cross-kernel theorem,
  no certificate compactness theorem, no confinement constant, and no MPP
  closure.
---

# Small angular pressure moments have finite positive clouds with small square charge

## 1. Object

The previous angular note proved two facts:

1. the Beltrami angular pressure-moment row has exact distance
   \(\sqrt{15/2}|K|_F\);
2. the beta-small row is positive, not merely a signed Hilbert artifact.

This note checks the next finite-cell objection:

\[
  \text{maybe the small angular bath exists only as a continuum density,}
\]
so any actual finite WKB cell version would pay a bounded atom square charge.

That objection is false at the angular/cell algebra level.

## 2. Six-axis anisotropic cloud

Let \(K\in{\rm Sym}_0(3)\), and write
\[
  K=\sum_{i=1}^3 k_i e_i\otimes e_i,
  \qquad
  \sum_{i=1}^3 k_i=0.
  \tag{FAC.1}
\]

Choose \(\varepsilon>0\) so that
\[
  \varepsilon\ge 3\lambda_{\max}^+(K),
  \qquad
  \varepsilon\le1.
  \tag{FAC.2}
\]

Set
\[
  m_i={\varepsilon\over3}-k_i.
  \tag{FAC.3}
\]

Then \(m_i\ge0\) and
\[
  \sum_{i=1}^3m_i=\varepsilon.
  \tag{FAC.4}
\]

Put weight \(m_i/2\) at each of the two directions \(\pm e_i\). Since
\[
  Q_e={1\over3}I-e\otimes e
  \tag{FAC.5}
\]
is even in \(e\), this six-axis cloud supplies
\[
  \sum_{i=1}^3m_iQ_{e_i}
  =
  {\varepsilon\over3}I-\sum_{i=1}^3m_i e_i\otimes e_i
  =
  K.
  \tag{FAC.6}
\]

Thus every sufficiently small trace-free pressure moment has a finite positive
angular realization.

## 3. Neutral mass can be split without changing the moment

The anisotropic cloud has total mass \(\varepsilon\). Add \(N\) neutral
isotropic sextets, each carrying total mass \((1-\varepsilon)/N\), with paired
directions
\[
  \pm f_{N,a,1},\ \pm f_{N,a,2},\ \pm f_{N,a,3}
  \tag{FAC.7}
\]
for any orthonormal frame \(f_{N,a}\). Each neutral sextet has weights
\[
  {1-\varepsilon\over 6N}
  \tag{FAC.8}
\]
on its six directions, and contributes
\[
  \sum_{j=1}^3 {1-\varepsilon\over3N}Q_{f_{N,a,j}}
  =
  {1-\varepsilon\over N}
  \left({1\over3}I-{1\over3}I\right)
  =
  0.
  \tag{FAC.9}
\]

So the full finite cloud has total mass one and exact moment \(K\).

## 4. Square charge

The neutral part has diagonal cell-square mass
\[
  6N\left({1-\varepsilon\over6N}\right)^2
  =
  {(1-\varepsilon)^2\over6N}.
  \tag{FAC.10}
\]

The anisotropic part has square mass
\[
  \sum_{i=1}^3 2\left({m_i\over2}\right)^2
  =
  {1\over2}\sum_{i=1}^3m_i^2.
  \tag{FAC.11}
\]

Using \(m_i=\varepsilon/3-k_i\) and \(\sum_i k_i=0\),
\[
  \sum_{i=1}^3m_i^2
  =
  {\varepsilon^2\over3}+|K|_F^2.
  \tag{FAC.12}
\]

Hence the full square mass is
\[
  \mathcal Q_{\rm sq}
  =
  {(1-\varepsilon)^2\over6N}
  +{\varepsilon^2\over6}
  +{|K|_F^2\over2}.
  \tag{FAC.13}
\]

If \(\varepsilon\le 3|K|_F\), then
\[
  \mathcal Q_{\rm sq}
  \le
  {1\over6N}+2|K|_F^2.
  \tag{FAC.14}
\]

In the overlap pressure row,
\[
  |K|_F=O(\beta^{4/5}),
  \tag{FAC.15}
\]
so
\[
  \mathcal Q_{\rm sq}
  =
  O\!\left({1\over N}+\beta^{8/5}\right).
  \tag{FAC.16}
\]

The finite positive cloud therefore has the same square scale as the continuum
row, up to the freely split neutral \(1/N\) term.

## 5. Consequence

The beta-small angular bath is not defeated by saying "finite cells" or
"positive atoms." At the pressure-moment level, a finite positive cloud
realizes the exact moment and keeps the diagonal square charge small.

This does not build a Navier-Stokes WKB bath. The remaining work is exactly
the same-fluid part:

1. spatial placement and cross-kernel control for the many cells;
2. material carrier heredity and bank/scale/time custody;
3. actual pressure law, ancestry, finite cover, and same-law tower
   certificates;
4. profile admission or construction/exclusion.

## 6. Four-sentence result

Every sufficiently small trace-free Beltrami pressure moment \(K\) has a finite
positive angular cloud realizing it exactly. A small six-axis anisotropic
cloud in the eigenframe of \(K\) supplies the moment, while arbitrarily many
neutral isotropic sextets carry the remaining mass without changing the
moment. The diagonal square charge is
\[
  {(1-\varepsilon)^2\over6N}+{\varepsilon^2\over6}+{|K|_F^2\over2},
\]
so in the overlap row it is \(O(1/N+\beta^{8/5})\). Thus finite positive
angular cells do not create a fixed confinement tax; the live burden remains
actual same-fluid WKB placement, certificates, and construction/exclusion.

## 7. State

Strict angular/cell algebra only. This note proves no actual same-solution WKB
construction, no spatial cross-kernel placement theorem, no certificate
compactness theorem, no WKB profile admission theorem, no confinement constant,
and no MPP closure.
