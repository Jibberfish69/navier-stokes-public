---
theorem_id: forward-gold-wkb-unbounded-residual-norm-separation-product-criterion-20260706
status: exact-criterion-unbounded-residual-requires-norm-times-separation-product
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB cross-cell Gram gap
target_object:
  - UnboundedResidualPayer.ProductCriterion
  - ResidualOperatorScale.B_M
  - LegalConeSeparation.d_M
  - CrossCellWKBGramGap.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-residual-gram-positivity-is-anti-equidistribution-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-gram-gap-anti-equidistribution-necessary-condition-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-cross-cell-gram-gap-criterion-20260706.md
completion_truth: >-
  Exact criterion only. After the rank-one uniform-mode payer is removed, an
  unbounded residual can help only through the product of its certified operator
  size and the legal cone's forced distance from the uniform cloud. For a
  zero-mode residual H_M with B_M=||H_M|| and legal separation
  d_M=inf ||a-u_M||_2 over normalized legal positive clouds, any lower bound
  a^T H_M a >= c forces B_M d_M^2 >= c. Conversely, if H_M is positive on
  the zero-mean subspace with lower spectral scale lambda_M and d_M^2 >=
  c/lambda_M, then the residual supplies c. Thus unbounded residual strength is
  not an independent Gram-gap source; it relaxes the anti-equidistribution
  distance scale from order one to order B_M^(-1/2), provided the operator
  growth itself is a same-fluid backed row. If exact or B_M^(-1/2)-near
  uniform legal clouds exist, the residual route still fails. This proves no
  same-fluid backing for B_M, no legal separation theorem, no WKB
  construction/exclusion, no confinement constant, and no MPP closure.
---

# Unbounded residuals obey a norm-separation product law

## 1. Kill question

The residual note left one live residual door:
\[
  \text{unbounded residual payer / same-fluid certificate}.
  \tag{UR.1}
\]

The kill question here is whether "unbounded residual" is itself a Gram-gap
source.

It is not. It is a product criterion: residual strength must multiply legal
separation from the uniform cloud.

## 2. Objects

Work on one fiber with \(M\) effective WKB cells. Let
\[
  u_M=\left({1\over M},\ldots,{1\over M}\right),
  \qquad
  A(a)=\sum_{b=1}^M a_b.
  \tag{UR.2}
\]

Normalize legal positive clouds by
\[
  a\in\mathcal C_M,
  \qquad
  a_b\ge0,
  \qquad
  A(a)=1.
  \tag{UR.3}
\]

Let \(H_M\) be the residual Gram form after subtracting the backed rank-one
uniform-mode payer. In the zero-mode residual case,
\[
  H_Mu_M=0,
  \qquad
  u_M^TH_M=0.
  \tag{UR.4}
\]

Define the residual operator scale and the legal separation:
\[
  B_M:=\|H_M\|_{\ell^2\to\ell^2},
  \qquad
  d_M:=\inf_{\substack{a\in\mathcal C_M\\ A(a)=1}}
       \|a-u_M\|_2.
  \tag{UR.5}
\]

## 3. Necessary product law

For every normalized legal cloud, write
\[
  h=a-u_M,
  \qquad
  \sum_bh_b=0.
  \tag{UR.6}
\]

By the zero-mode property,
\[
  a^TH_Ma=h^TH_Mh.
  \tag{UR.7}
\]

Therefore
\[
  |a^TH_Ma|
  \le
  B_M\|a-u_M\|_2^2.
  \tag{UR.8}
\]

If the residual is claimed to give a count-free floor
\[
  a^TH_Ma\ge c>0
  \tag{UR.9}
\]
for every normalized legal positive cloud, then every such cloud satisfies
\[
  \|a-u_M\|_2^2\ge {c\over B_M}.
  \tag{UR.10}
\]

Equivalently,
\[
  B_M d_M^2\ge c.
  \tag{UR.11}
\]

This is the exact product law.

## 4. Sufficiency requires positivity and backing

The product law is only necessary for a general signed residual. A residual
actually supplies a floor only after it is positive in the relevant directions.

For example, if
\[
  h^TH_Mh\ge \lambda_M\|h\|_2^2
  \qquad
  (\sum_bh_b=0),
  \tag{UR.12}
\]
then
\[
  a^TH_Ma\ge \lambda_M\|a-u_M\|_2^2.
  \tag{UR.13}
\]

So the pair of certified inputs
\[
  \lambda_M d_M^2\ge c
  \tag{UR.14}
\]
does give the residual floor.

But both inputs are real. The spectral scale \(\lambda_M\) is a same-fluid
operator-strength claim, and \(d_M\) is a legal-cone anti-equidistribution
claim. Neither is supplied by the phrase "unbounded residual."

## 5. Row-drift variant

If only the constant term has been removed,
\[
  u_M^TH_Mu_M=0,
  \qquad
  B_M=\|H_M\|,
  \tag{UR.15}
\]
then
\[
  a^TH_Ma
  =
  2h^TH_Mu_M+h^TH_Mh.
  \tag{UR.16}
\]

Thus
\[
  |a^TH_Ma|
  \le
  2B_M\|a-u_M\|_2+B_M\|a-u_M\|_2^2.
  \tag{UR.17}
\]

A count-free row-drift floor therefore requires
\[
  B_M(2d_M+d_M^2)\ge c.
  \tag{UR.18}
\]

This is the same structure with a linear distance term. A signed row surviving
near the uniform cloud is not a free pressure-kernel effect; it is a separate
same-fluid certificate row.

## 6. Consequences

The unbounded residual branch has only three honest meanings:
\[
\begin{array}{ll}
B_Md_M^2\gtrsim1
  &\text{zero-mode residual floor, if positivity is certified},\\[1mm]
B_Md_M\gtrsim1
  &\text{row-drift residual floor, if the signed row is backed},\\[1mm]
d_M=0\text{ or }d_M\ll B_M^{-1/2}
  &\text{near-uniform legal bath defeats the residual}.
\end{array}
\tag{UR.19}
\]

So unbounded residual strength only changes the anti-equidistribution scale.
It replaces an order-one separation demand by a \(B_M^{-1/2}\) separation
demand in the zero-mode case, or by a \(B_M^{-1}\) demand in the row-drift
case. It does not remove the need to prove legal separation or to construct /
exclude the near-uniform bath.

## 7. Physical meaning

In the fluid story, \(B_M\) is not a number in a matrix. It is the strength of a
same-fluid interaction/certificate row across a many-cell WKB pressure bath.

If \(B_M\) grows with effective cell count, that growth must be generated by
the actual Navier-Stokes packet: pressure coupling, material ancestry,
certificate geometry, carrier frequency, boundary/collar work, or another
named same-fluid mechanism. Otherwise it is only an unsupported high-frequency
Gram coefficient.

Thus the unbounded-residual door is now:
\[
  \text{certify }B_M
  \quad+\quad
  \text{certify legal separation at the matching scale}
  \quad\text{or}\quad
  \text{construct/exclude the bath}.
  \tag{UR.20}
\]

## 8. Four-sentence result

After the rank-one uniform-mode payer is removed, a zero-mode residual with
operator size \(B_M\) can only give a count-free floor on legal clouds when
\[
  B_Md_M^2\gtrsim1,
\]
where \(d_M\) is the legal cone's distance from the uniform cloud. If the
residual has only a row-drift term, the matching condition is
\[
  B_Md_M\gtrsim1.
\]
Thus unbounded residual strength does not replace anti-equidistribution; it
only weakens the separation scale that must be proved, and the growth \(B_M\)
itself needs same-fluid backing. Exact or sufficiently near-uniform legal
clouds still defeat the residual route.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
