---
theorem_id: forward-gold-wkb-uniform-mode-charge-compensator-reduction-20260706
status: strict-reduction-positive-uniform-mode-charge-to-rank-one-payer-or-compensator
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB cross-cell Gram gap
target_object:
  - CrossCellWKBGramGap.A
  - PositiveUniformModeCharge.A
  - FixedDensityCompensator.MeasureEquivalence
  - RankOneAllToAllPayer.ExactCoordinate
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-cross-cell-gram-gap-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-gram-gap-anti-equidistribution-necessary-condition-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-pressure-kernel-zero-mode-gram-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-common-identity-not-gram-gap-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-finite-cover-not-bounded-cell-count-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-gate8-tax-density-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-fixed-density-compensator-routing-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-residual-gram-positivity-is-anti-equidistribution-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-unbounded-residual-norm-separation-product-criterion-20260706.md
completion_truth: >-
  Strict reduction only. A positive uniform-mode charge on an identity fiber is
  the average row-sum / monopole component of the cross-cell Gram form. In
  normalized positive weights, its rank-one part is exactly a count-free
  all-to-all payer: gamma_F (sum_b a_b)^2. Thus an order-one positive
  uniform-mode charge is not hidden in diagonal terms, finite cover, or common
  identity; it is a new rank-one density on the retained producer row. For the
  overlap-bath pressure-service channel, Gate-8 backing supplies only
  beta^(4/5) density, so demanding order-one gamma_F is exactly the
  fixed-density compensator branch already priced as producer-equivalent
  residue. After subtracting any actually backed rank-one payer, the remaining
  zero-mode component is again subject to the anti-equidistribution / near-
  uniform countermodel; the residual follow-up makes this exact by reducing
  bounded residual positivity to legal anti-equidistribution, with unbounded
  residuals routed by the product criterion B_M d_M^2 >= c for zero-mode use
  or B_M d_M >= c for row-drift use. This proves no
  positive uniform-mode theorem, no
  anti-equidistribution law, no WKB construction/exclusion, no confinement
  constant, and no MPP closure.
---

# Positive uniform mode is a rank-one payer

## 1. Kill question

The WKB Gram-gap notes left two possible escapes from the uniform zero-mode
countermodel:
\[
  \text{positive uniform-mode charge}
  \quad\hbox{or}\quad
  \text{legal anti-equidistribution}.
  \tag{UMC.1}
\]

The kill question here is whether "positive uniform-mode charge" is a hidden
benefit of same-packet identity, finite cover, or the pressure kernel.

The answer is no. A positive uniform mode is an explicit all-to-all density
payer. In the overlap bath pressure channel, an order-one version of it is the
fixed-density compensator branch.

## 2. Linear algebra on one identity fiber

Let \(F\) be a legal identity fiber with \(M\) effective WKB cells. Let
\[
  e=(1,\ldots,1),
  \qquad
  u={1\over M}e,
  \qquad
  A(a)=e^Ta.
  \tag{UMC.2}
\]
Normalize positive weights by
\[
  a_b\ge0,
  \qquad
  A(a)=1.
  \tag{UMC.3}
\]

Let \(G_F\) be the cross-cell Gram matrix on the fiber. The uniform-mode charge
is
\[
  \gamma_F:=u^TG_Fu
  ={1\over M^2}\sum_{b,b'\in F}G_F(b,b').
  \tag{UMC.4}
\]

The rank-one all-to-all form with the same uniform charge is
\[
  R_F:=\gamma_F\,ee^T.
  \tag{UMC.5}
\]
For every normalized positive cloud,
\[
  a^TR_Fa
  =
  \gamma_F(e^Ta)^2
  =
  \gamma_F.
  \tag{UMC.6}
\]

Thus a positive uniform-mode charge is exactly a count-free payer only through
its rank-one component. It is not a diagonal square, not a finite-cover count,
and not identity bookkeeping.

## 3. Subtracting the monopole returns the zero-mode problem

Write
\[
  G_F=R_F+H_F.
  \tag{UMC.7}
\]
Then
\[
  a^TG_Fa=\gamma_F+a^TH_Fa
  \tag{UMC.8}
\]
on \(A(a)=1\).

The scalar \(\gamma_F\) is the only part seen by the perfectly uniform cloud
as a rank-one all-to-all payer. Whatever remains in \(H_F\) must still be
controlled on the admissible cone. If \(H_F\) is mean-zero / bounded-local on
near-uniform legal clouds, the anti-equidistribution obstruction applies to
the residual part exactly as before.

So positive uniform mode does not remove the Gram-gap burden by wording. It
splits it into:
\[
\begin{array}{ll}
\text{rank-one backed payer } \gamma_F
  &\text{available count-free density},\\[1mm]
\text{residual }H_F
  &\text{anti-equidistribution / residual Gram control}.
\end{array}
\tag{UMC.9}
\]

## 4. Pressure channel: order-one uniform mode is the compensator

In the overlap bath pressure-service row, the available same-packet backing
has density
\[
  d\beta_{\rm ph}
  \le
  C\beta^{4/5}\,d\mu_{\rm prod}.
  \tag{UMC.10}
\]

An order-one uniform-mode payer with
\[
  \gamma_F\ge\theta_0>0
  \tag{UMC.11}
\]
is a fixed-density tax row on the same producer-throughput support:
\[
  dT_{\rm unif}
  =
  \theta_0\,d\mu_{\rm prod}
  \tag{UMC.12}
\]
up to fixed constants.

The Gate-8 tax-density obstruction says this row is not backed by the
pressure-service budget when
\[
  C\beta^{4/5}<\theta_0.
  \tag{UMC.13}
\]
The fixed-density compensator note then gives the canonical deficit
\[
  \rho_{\theta_0}
  =
  \theta_0\mu_{\rm prod}-T_{\theta_0},
  \qquad
  {\theta_0\over2}\mu_{\rm prod}
  \le
  \rho_{\theta_0}
  \le
  \theta_0\mu_{\rm prod}
  \tag{UMC.14}
\]
in the beta-small regime.

Therefore, in the pressure-service overlap bath, an order-one positive uniform
mode is not a free Gram-gap source. It is exactly the fixed-density
compensator/residue branch unless a new non-pressure backing measure is proved.

## 5. What remains

This reduction does not say a positive uniform-mode charge is impossible. It
says what it would have to be.

It must be one of:
\[
\begin{array}{ll}
\text{backed rank-one payer}
  &\text{a genuine all-to-all same-packet density},\\[1mm]
\text{fixed-density compensator}
  &\text{producer-equivalent residue in the beta-small overlap bath},\\[1mm]
\text{external/non-pressure payer}
  &\text{new source outside the raw mean-zero pressure kernel},\\[1mm]
\text{construction/exclusion}
  &\text{build or rule out the dynamic bath carrying it}.
\end{array}
\tag{UMC.15}
\]

After any backed rank-one payer is removed, the residual Gram form still owes
legal anti-equidistribution, unbounded residual payer backing at the matching
separation scale, or construction/exclusion. The bounded-residual phrase has
now been reduced: if
the residual \(H\) has the uniform mode removed and \(\|H\|\le C\), then
\[
  |a^THa|
  \le
  C\|a-u\|_2^2.
  \tag{UMC.16}
\]
So a count-free residual lower bound is exactly the legal
anti-equidistribution theorem in residual-metric coordinates.

The unbounded-residual follow-up gives the remaining exact condition. With
\[
  B_M=\|H_M\|,
  \qquad
  d_M=\inf\|a-u_M\|_2,
  \tag{UMC.17}
\]
zero-mode residual use requires \(B_Md_M^2\gtrsim1\), while row-drift residual
use requires \(B_Md_M\gtrsim1\). The unbounded branch is therefore not merely
"large residual"; it is backed operator growth plus legal separation at the
matching scale.

## 6. Four-sentence result

A positive uniform-mode charge is the average all-to-all component of the Gram
matrix on an identity fiber. Its rank-one part contributes
\[
  \gamma_F(\sum_b a_b)^2
\]
to every normalized positive cloud, so an order-one \(\gamma_F\) is a genuine
fixed-density payer. The mean-zero pressure kernel, finite cover, and common
identity do not create that payer; in the overlap bath pressure channel,
demanding it is exactly the fixed-density compensator branch already priced as
producer-equivalent residue. After the backed rank-one part is subtracted,
bounded residual positivity is exactly anti-equidistribution, while unbounded
residual positivity obeys the operator-growth versus separation product law.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
