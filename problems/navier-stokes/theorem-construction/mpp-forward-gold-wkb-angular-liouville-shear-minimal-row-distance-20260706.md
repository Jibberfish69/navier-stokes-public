---
theorem_id: forward-gold-wkb-angular-liouville-shear-minimal-row-distance-20260706
status: exact-angular-liouville-shear-equals-minimal-pressure-moment-row-distance
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB legal anti-equidistribution
target_object:
  - MaterialCovectorAngularFlow.LiouvilleShear
  - UniformAngularBath.NOT-STATIONARY-UNDER-STRAIN
  - BeltramiAngularPressureMoment.ROW-DISTANCE
  - NearUniformWKBPressureBath.NOT-CLOSED
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-angular-pressure-moment-row-distance-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-beltrami-material-phase-service-identity-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-angular-continuum-quadrature-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-nonlinear-same-packet-law-gap-or-construction-dichotomy-20260706.md
completion_truth: >-
  Exact dynamic angular identity only. For trace-free symmetric producer strain
  S, the material WKB covector direction n obeys
  D_t n=-Sn+(n.S.n)n on S^2. The sphere divergence of this vector field is
  3 n.S.n, so a uniform angular density is not stationary: its Liouville
  derivative is 3 S:Q_n, where Q_n=I/3-n tensor n. The induced Beltrami
  pressure moment K=int Q_n f d sigma therefore satisfies
  D_t K=(2/5)S at the uniform bath, using TT^*=(2/15)I from the angular
  row-distance note. Moreover the angular density derivative is exactly the
  least-L2 perturbation realizing that moment derivative: ||D_t f||_2 =
  sqrt(15/2)||D_t K||_F = sqrt(6/5)||S||_F. Thus material angular shear and
  active pressure-moment creation are the same row at infinitesimal level. This
  proves no fixed order-one confinement tax in the beta-small overlap row, no
  WKB construction or exclusion theorem, no crowd-cell decision, no confinement
  constant, and no MPP closure.
---

# Angular Liouville shear equals the row-distance path

## 1. Kill question

The angular row-distance note priced static Beltrami direction mismatch:
\[
  T h:=\int_{S^2}Q_n h(n)\,d\sigma(n),
  \qquad
  Q_n={1\over3}I-n\otimes n,
  \tag{ALS.1}
\]
has
\[
  TT^*={2\over15}I
  \quad\hbox{on }{\rm Sym}_0(3).
  \tag{ALS.2}
\]

The remaining dynamic question is whether the material WKB direction flow gives
a separate tax. Does a uniform angular bath stay uniform while the same fluid
is strained, or does the angular flow itself create the pressure moment?

It creates the moment, and it does so along the exact least-distance angular
row.

## 2. Material direction flow on the sphere

Let \(S=S^T\) be trace-free. For a material WKB covector
\[
  k=\lambda n,\qquad |n|=1,
  \tag{ALS.3}
\]
the leading affine covector law is
\[
  D_t k=-Sk .
  \tag{ALS.4}
\]
Therefore the direction \(n\in S^2\) evolves by the tangent vector field
\[
  V_S(n):=D_t n=-Sn+(n\cdot Sn)n.
  \tag{ALS.5}
\]

The standard divergence identity for
\[
  V_A(n)=An-(n\cdot An)n
  \tag{ALS.6}
\]
on \(S^{d-1}\) is
\[
  \operatorname{div}_{S^{d-1}}V_A
  =
  \operatorname{tr}A-d\,n\cdot An .
  \tag{ALS.7}
\]
Here \(A=-S\), \(d=3\), and \(\operatorname{tr}S=0\), so
\[
  \operatorname{div}_{S^2}V_S(n)
  =
  3\,n\cdot Sn .
  \tag{ALS.8}
\]

Since
\[
  S:Q_n
  =
  -\,n\cdot Sn,
  \tag{ALS.9}
\]
this can also be written as
\[
  \operatorname{div}_{S^2}V_S=-3S:Q_n .
  \tag{ALS.10}
\]

## 3. Liouville derivative of the uniform bath

Let \(f(t,n)\) be the transported angular density relative to normalized
surface measure:
\[
  \partial_t f+\operatorname{div}_{S^2}(fV_S)=0 .
  \tag{ALS.11}
\]

At the uniform bath \(f\equiv1\),
\[
  \left.\partial_t f\right|_{f=1}
  =
  -\operatorname{div}_{S^2}V_S
  =
  3S:Q_n.
  \tag{ALS.12}
\]

Thus the uniform angular bath is not a stationary material distribution unless
\(S=0\). It is sheared away from uniform on the producer-strain clock.

## 4. Induced pressure moment

The Beltrami trace-free pressure moment is
\[
  K(f):=\int_{S^2}Q_n f(n)\,d\sigma(n).
  \tag{ALS.13}
\]

Using (ALS.12),
\[
  \left.D_tK\right|_{f=1}
  =
  3\int_{S^2}Q_n(S:Q_n)\,d\sigma(n).
  \tag{ALS.14}
\]

By the already filed angular row-distance identity \(TT^*=(2/15)I\),
\[
  \int_{S^2}Q_n(S:Q_n)\,d\sigma(n)
  =
  {2\over15}S .
  \tag{ALS.15}
\]

Therefore
\[
  \boxed{
  \left.D_tK\right|_{f=1}={2\over5}S .
  }
  \tag{ALS.16}
\]

The corresponding active scalar grows at rate
\[
  \left.D_t(S:K)\right|_{f=1}
  =
  {2\over5}|S|_F^2 .
  \tag{ALS.17}
\]

## 5. Exact match with the minimal row-distance path

The angular row-distance minimizer for a moment \(K\) is
\[
  h_K(n)={15\over2}K:Q_n .
  \tag{ALS.18}
\]

Apply this to the moment derivative (ALS.16):
\[
  h_{D_tK}(n)
  =
  {15\over2}\left({2\over5}S\right):Q_n
  =
  3S:Q_n .
  \tag{ALS.19}
\]

But (ALS.12) says exactly
\[
  D_t f=3S:Q_n .
  \tag{ALS.20}
\]

So the material angular Liouville flow moves the uniform bath along the
least-\(L^2\) angular perturbation that realizes the pressure moment it creates.

In norm form,
\[
  \|D_tf\|_{L^2(S^2)}
  =
  3\|T^*S\|_{L^2(S^2)}
  =
  3\sqrt{2\over15}|S|_F
  =
  \sqrt{6\over5}|S|_F .
  \tag{ALS.21}
\]
Since
\[
  \|D_tK\|_F={2\over5}|S|_F,
  \tag{ALS.22}
\]
this is the static sharp row-distance again:
\[
  \|D_tf\|_{L^2(S^2)}
  =
  \sqrt{15\over2}\,\|D_tK\|_F .
  \tag{ALS.23}
\]

## 6. Consequence for the WKB bath

The calculation cuts both ways.

First, a uniform material angular bath is not dynamically parked under
producer strain. The one-fluid covector law immediately shears the angular
density, and the shearing is exactly the pressure-service direction.

Second, this is not an extra fixed order-one tax in the beta-small overlap
row. The angular density displacement required to create a normalized moment
\[
  |K|=O(\beta^{4/5})
  \tag{ALS.24}
\]
is still exactly
\[
  \|f-1\|_{L^2(S^2)}
  =
  O(\beta^{4/5}),
  \qquad
  \|f-1\|_2^2=O(\beta^{8/5}).
  \tag{ALS.25}
\]

Thus pure angular Liouville shear is the dynamic version of the filed angular
row-distance. It does not close the dense-crowd branch by itself.

## 7. Four-sentence result

For material WKB covectors in trace-free strain \(S\), the direction field on
\(S^2\) has divergence \(3n\cdot Sn\). Hence a uniform angular density has
Liouville derivative \(3S:Q_n\), so it is immediately sheared away from
uniform. The pressure moment derivative is exactly \((2/5)S\), and the density
derivative is exactly the least-\(L^2\) angular perturbation realizing that
moment. Therefore angular production and angular anti-uniformity co-activate
with sharp constants, but this is the same beta-small service-coordinate row,
not an independent order-one confinement tax.

## 8. State

This note proves the exact angular Liouville identity and its match to the
static angular row-distance constant.

It proves no WKB construction theorem, no WKB exclusion theorem, no legal
certificate compactness theorem, no positive nonlinear anti-equidistribution
modulus, no crowd-cell theorem, no confinement constant, and no MPP closure.
