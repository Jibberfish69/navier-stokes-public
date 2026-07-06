---
theorem_id: forward-gold-wkb-angular-pressure-moment-row-distance-20260706
status: exact-row-distance-angular-beltrami-pressure-moment-not-hidden-fixed-tax
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB legal anti-equidistribution
target_object:
  - BeltramiAngularPressureMoment.ROW-DISTANCE
  - ServiceCoordinateMismatch.EXACT-CONSTANT
  - NearUniformWKBPressureBath.CONSTRUCTION-EXCLUSION
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-angular-continuum-quadrature-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-service-coordinate-mismatch-row-distance-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-beltrami-material-phase-service-identity-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-constant-beltrami-bath-model-reduction-20260706.md
completion_truth: >-
  Exact row-distance calculation only. For normalized angular density on
  \(S^2\), the Beltrami pressure-moment map
  \(h\mapsto\int (I/3-n\otimes n)h(n)\,d\sigma(n)\) has
  \(TT^*=(2/15)I\) on trace-free symmetric tensors. Therefore the least
  \(L^2_\sigma\) distance from the uniform angular bath required to realize a
  trace-free pressure moment \(K\) is exactly
  \(\sqrt{15/2}\,|K|_F\). This prices angular pressure-service mismatch as the
  ordinary service-coordinate row. In the overlap scaling where the normalized
  pressure moment is \(O(\beta^{4/5})\), the angular density distance is only
  \(O(\beta^{4/5})\) and the square charge is \(O(\beta^{8/5})\), so angular
  mismatch alone is not a fixed order-one confinement tax. The minimizer is an
  actual nonnegative angular density whenever \(\lambda_{\max}(K)\le2/15\),
  since \(f_K(n)=1-(15/2)n\cdot Kn\). Thus the beta-small angular bath is not
  merely a signed Hilbert-row artifact. A fixed normalized moment would pay a
  fixed anti-uniformity row, but the bath row under test is precisely the small
  \(q=4/5\) pressure-service row. This proves no WKB construction, no WKB
  exclusion, no crowd-cell theorem, no confinement constant, and no MPP closure.
---

# Angular Beltrami pressure moment is an exact row distance

## 1. Object

The service-coordinate note says that a fixed mismatch from the uniform bath
is an ordinary row-distance payer. This note computes the exact constant for
the angular Beltrami pressure moment.

The point is narrow. Angular nonuniformity can be priced exactly; the price is
not a hidden fixed tax in the beta-small overlap row.

## 2. Moment map

Let \(d\sigma\) be normalized surface measure on \(S^2\). For \(n\in S^2\),
put
\[
  Q_n={1\over3}I-n\otimes n.
  \tag{APM.1}
\]

For an angular density \(f=1+h\), with
\[
  \int_{S^2}h\,d\sigma=0,
  \tag{APM.2}
\]
the uniform bath contributes no trace-free pressure moment:
\[
  \int_{S^2}Q_n\,d\sigma(n)=0.
  \tag{APM.3}
\]

Define
\[
  T h:=\int_{S^2}Q_n h(n)\,d\sigma(n)
  \in {\rm Sym}_0(3).
  \tag{APM.4}
\]

The row question is:
\[
  T h=K,
  \qquad K\in{\rm Sym}_0(3).
  \tag{APM.5}
\]

## 3. Exact singular value

For \(A\in{\rm Sym}_0(3)\), the adjoint is
\[
  T^*A(n)=A:Q_n=-\,n\cdot A n.
  \tag{APM.6}
\]

The fourth-moment identity on the unit sphere is
\[
  \int_{S^2} n_i n_j n_k n_l\,d\sigma
  =
  {1\over15}
  \left(
    \delta_{ij}\delta_{kl}
    +\delta_{ik}\delta_{jl}
    +\delta_{il}\delta_{jk}
  \right).
  \tag{APM.7}
\]

Since \(\operatorname{tr}A=0\),
\[
  \|T^*A\|_{L^2(S^2)}^2
  =
  \int_{S^2}(n\cdot A n)^2\,d\sigma
  =
  {2\over15}|A|_F^2.
  \tag{APM.8}
\]

Equivalently,
\[
  TT^*={2\over15}I
  \quad\hbox{on }{\rm Sym}_0(3).
  \tag{APM.9}
\]

Thus \(T\) reaches every trace-free pressure moment, and the least-norm
density perturbation realizing \(K\) is
\[
  h_K(n)={15\over2}K:Q_n.
  \tag{APM.10}
\]

Its norm is
\[
  \|h_K\|_{L^2(S^2)}
  =
  \sqrt{15\over2}\,|K|_F.
  \tag{APM.11}
\]

Therefore
\[
  \inf_{Th=K}\|h\|_{L^2(S^2)}
  =
  \sqrt{15\over2}\,|K|_F.
  \tag{APM.12}
\]

This is the exact angular row-distance formula.

## 4. Positivity and small moments

The minimizer in (APM.10) is signed in general. It is an actual positive
angular density on a sharp one-sided cone, though. Since
\[
  h_K(n)={15\over2}K:Q_n
  =
  -{15\over2}\,n\cdot K n,
  \tag{APM.13}
\]
the density
\[
  f_K=1+h_K
  \tag{APM.14}
\]
is nonnegative exactly when
\[
  1-{15\over2}\lambda_{\max}(K)\ge0,
  \qquad\hbox{i.e.}\qquad
  \lambda_{\max}(K)\le {2\over15}.
  \tag{APM.15}
\]

In particular, every sufficiently small trace-free pressure moment is
compatible with a near-uniform positive angular density. The beta-small bath is
therefore not being protected by a positivity obstruction hidden behind the
Hilbert-space row calculation.

In the overlap bath row,
\[
  |K|_{\rm norm}\sim \beta^{4/5}.
  \tag{APM.16}
\]

Consequently the exact angular density distance is
\[
  \|f_K-1\|_{L^2(S^2)}
  \sim
  \beta^{4/5},
  \tag{APM.17}
\]
and the associated square charge is
\[
  \|f_K-1\|_{L^2(S^2)}^2
  \sim
  \beta^{8/5}.
  \tag{APM.18}
\]

So angular pressure-moment mismatch is not the missing order-one confinement
tax in the beta-small bath. It is exactly the existing service-coordinate row.

## 5. Consequence for the WKB bath

The angular branch now has only two states:
\[
\begin{array}{ll}
|K|_{\rm norm}\ge c_0>0
  &\Rightarrow \text{fixed angular anti-uniformity payer},\\[1mm]
|K|_{\rm norm}=O(\beta^{4/5})
  &\Rightarrow \text{positive near-uniform density with distance }O(\beta^{4/5}).
\end{array}
\tag{APM.19}
\]

Thus angular moment geometry does not exclude the near-uniform WKB bath. It
prices one explicit row and returns the live branch to actual same-fluid
construction/exclusion, certificate failure, or another named payer.

## 6. Four-sentence result

For Beltrami pressure shapes \(Q_n=I/3-n\otimes n\), the map
\[
  h\mapsto\int Q_n h(n)\,d\sigma(n)
\]
has \(TT^*=(2/15)I\) on trace-free symmetric tensors. Therefore realizing a
trace-free moment \(K\) costs exactly
\[
  \sqrt{15/2}\,|K|_F
\]
in angular \(L^2\) distance from the uniform bath. In the overlap row
\(|K|=O(\beta^{4/5})\), so this is the already-filed small pressure row, with
square charge \(O(\beta^{8/5})\), not a fixed confinement tax. The minimizing
density is actually nonnegative whenever \(\lambda_{\max}(K)\le2/15\), so the
beta-small bath survives the angular positivity test and remains
construction/exclusion or certificate routing.

## 7. State

Strict calculation only. This note proves no actual WKB bath, no exclusion of
the WKB bath, no certificate compactness theorem, no crowd-cell theorem, no
confinement constant, and no MPP closure.
