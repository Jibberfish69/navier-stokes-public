---
theorem_id: forward-gold-wkb-small-moment-spatial-gram-charge-obstruction-20260706
status: exact-reduction-small-moment-positive-cloud-has-no-bounded-mean-zero-spatial-gram-tax
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB legal anti-equidistribution
target_object:
  - SmallMomentFinitePositiveCloud.SPATIAL-GRAM-CHARGE
  - BoundedResidualMeanZeroGram.NO-FIXED-TAX-FROM-FINITE-POSITIVE-MOMENT
  - OverlapBath.SPATIAL-CROSS-KERNEL-OBJECTION-REDUCED
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-small-moment-finite-angular-cloud-square-charge-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-cross-cell-gram-gap-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-uniform-mode-charge-compensator-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-raw-cz-bm-growth-is-density-separation-20260706.md
completion_truth: >-
  Exact discrete residual-Gram reduction only. Take the finite positive angular
  cloud realizing a small trace-free pressure moment \(K\), split the neutral
  isotropic mass over \(N\) periodic/quadrature cells, and view the full cloud
  as an \(M=6N+6\) positive weight vector \(a\). For every bounded residual
  cross-cell form \(H\) in the density/quadrature coordinates with the uniform
  mode removed, \(H u_M=0\) and \(\|H\|\le C\), the charge satisfies
  \(|a^THa|\le C\|a-u_M\|_2^2=O(N^{-1}+|K|_F^2)\) after choosing
  \(\varepsilon\lesssim |K|_F\). Bounded diagonal/local corrections have the
  same scale. In the overlap row this is \(O(N^{-1}+\beta^{8/5})\), so finite
  positivity plus a bounded mean-zero spatial residual does not create a fixed
  confinement tax. This proves no actual same-solution WKB construction, no
  spatial placement theorem for the real pressure kernel, no legal
  anti-equidistribution theorem, no confinement constant, and no MPP closure.
---

# Small-moment finite clouds do not force a bounded mean-zero spatial Gram tax

## 1. Object

The finite angular cloud note killed one local objection:

\[
  \text{finite positive cells force a fixed diagonal atom-square tax.}
\]

It did so by realizing every small trace-free pressure moment \(K\) with a
finite positive cloud whose diagonal square mass is

\[
  O\!\left(N^{-1}+|K|_F^2\right).
  \tag{SG.1}
\]

This note checks the next adjacent objection:

\[
  \text{finite positive cells may still force a fixed spatial cross-kernel tax.}
\]

The answer is no for the bounded mean-zero residual Gram class already isolated
in the Gram-gap notes.

## 2. The finite cloud as a weight vector

Let

\[
  K=\sum_{i=1}^3 k_i e_i\otimes e_i,\qquad \sum_i k_i=0,
  \tag{SG.2}
\]

and choose

\[
  \varepsilon\ge 3\lambda_{\max}^+(K),\qquad \varepsilon\lesssim |K|_F.
  \tag{SG.3}
\]

The finite angular note sets

\[
  m_i={\varepsilon\over3}-k_i
  \tag{SG.4}
\]

and puts weight \(m_i/2\) at each of \(\pm e_i\). Add \(N\) neutral isotropic
sextets with weights \((1-\varepsilon)/(6N)\). The full cloud has

\[
  M=6N+6
\]

cells. Let \(a\in\mathbb R^M_+\) be its mass vector, and let

\[
  u_M=\left({1\over M},\ldots,{1\over M}\right).
  \tag{SG.5}
\]

From the finite angular square formula,

\[
  \sum_b a_b^2
  =
  {(1-\varepsilon)^2\over6N}
  +{\varepsilon^2\over6}
  +{|K|_F^2\over2}.
  \tag{SG.6}
\]

Therefore

\[
  \|a-u_M\|_2^2
  \le
  2\sum_b a_b^2+{2\over M}
  =
  O\!\left(N^{-1}+\varepsilon^2+|K|_F^2\right).
  \tag{SG.7}
\]

With \(\varepsilon\lesssim |K|_F\),

\[
  \|a-u_M\|_2^2
  =
  O\!\left(N^{-1}+|K|_F^2\right).
  \tag{SG.8}
\]

## 3. Bounded mean-zero residual Gram forms

Now let \(H_M\) be any residual spatial cross-cell Gram form in the same
density/quadrature coordinates such that

\[
  H_Mu_M=0,\qquad \|H_M\|_{\ell^2\to\ell^2}\le C.
  \tag{SG.9}
\]

This is exactly the bounded residual case from the cross-cell Gram criterion
and uniform-mode pricing notes. Then

\[
  a^TH_Ma
  =
  (a-u_M)^TH_M(a-u_M),
  \tag{SG.10}
\]

and hence

\[
  |a^TH_Ma|
  \le
  C\|a-u_M\|_2^2
  =
  O\!\left(N^{-1}+|K|_F^2\right).
  \tag{SG.11}
\]

Bounded diagonal or local corrections are controlled by the same square mass:

\[
  O\!\left(\sum_b a_b^2\right)
  =
  O\!\left(N^{-1}+|K|_F^2\right).
  \tag{SG.12}
\]

Thus a bounded mean-zero residual spatial form cannot turn the finite positive
small-moment cloud into a fixed tax.

## 4. Overlap scale

In the overlap pressure row,

\[
  |K|_F=O(\beta^{4/5}).
  \tag{SG.13}
\]

So the residual spatial Gram charge of this finite positive cloud is

\[
  O\!\left(N^{-1}+\beta^{8/5}\right).
  \tag{SG.14}
\]

Letting the neutral cloud split over many cells removes the \(N^{-1}\) part.
The beta part is only the already-installed \(q=4/5\) pressure-row square
scale, not an order-one confinement tax.

## 5. Consequence

Finite positivity does not rescue the bounded residual Gram branch. After the
uniform mode is removed and the residual is bounded in the density/quadrature
metric, the finite positive cloud remains near the uniform zero mode up to the
small anisotropic mass needed to carry \(K\).

A fixed spatial tax must therefore come from one of the already priced escape
routes: a backed positive uniform-mode payer, an unbounded residual with its
operator-growth/separation product, a legal anti-equidistribution theorem that
forbids this near-uniform cloud, or direct construction/exclusion of the
overlap bath.

This is not a WKB construction. It is only the local algebraic obstruction to
one proposed payer.

## 6. Four-sentence result

The finite positive angular cloud realizing a small trace-free pressure moment
\(K\) has mass vector \(a\) with
\[
  \|a-u_M\|_2^2=O(N^{-1}+|K|_F^2)
\]
after the neutral mass is split over \(N\) isotropic sextets. Any bounded
residual spatial Gram form with the uniform mode removed satisfies
\[
  |a^THa|\le C\|a-u_M\|_2^2,
\]
and bounded diagonal/local corrections have the same scale. In the overlap row
this gives \(O(N^{-1}+\beta^{8/5})\). Thus finite positive cells plus bounded
mean-zero spatial cross-kernels do not create a fixed confinement tax; the live
burden remains uniform-mode backing, unbounded residual/product, legal
anti-equidistribution, or construction/exclusion.
