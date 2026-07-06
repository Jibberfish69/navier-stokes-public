---
theorem_id: forward-gold-wkb-raw-cz-bm-growth-is-density-separation-20260706
status: exact-normalization-raw-cz-bm-growth-is-not-new-payer
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB cross-cell Gram gap
target_object:
  - ResidualOperatorScale.B_M
  - RawPressureCZKernel.NO-NEW-UNBOUNDED-PAYER
  - DensityLevelAntiEquidistribution.NECESSARY
  - UnboundedResidualPayer.ProductCriterion
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-pressure-kernel-zero-mode-gram-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-unbounded-residual-norm-separation-product-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-gram-gap-anti-equidistribution-necessary-condition-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-near-uniform-local-cloud-gram-countermodel-20260706.md
completion_truth: >-
  Exact normalization reduction only. A raw translation-invariant mean-zero
  pressure / Calderon-Zygmund kernel has scale-invariant L^2 operator norm in
  the correct density/quadrature norm. If the same form is written in cell-mass
  coordinates a_b, its Euclidean matrix norm may grow like M, but this is only
  the conversion h_b=a_b-1/M=(1/M)g_b from density perturbation g to mass
  perturbation h. The product criterion B_M d_M^2 >= c then becomes
  M d_M^2 >= c/C, equivalently ||g||_{L^2_\omega}^2 >= c/C. Thus raw CZ
  B_M-growth does not create a new payer; it merely restates density-level
  anti-equidistribution away from the uniform cloud. Exact uniform clouds and
  density-near-uniform legal clouds still defeat the raw kernel. This proves no
  legal separation theorem, no non-raw certificate row, no construction or
  exclusion of the WKB bath, no confinement constant, and no MPP closure.
---

# Raw CZ norm growth is density separation, not a new payer

## 1. Kill question

The unbounded-residual criterion says a zero-mode residual can pay only through
\[
  B_Md_M^2\gtrsim1.
  \tag{CZB.1}
\]

The kill question here is whether the raw pressure / Calderon-Zygmund kernel
itself supplies useful unbounded \(B_M\) as the WKB cell count grows.

The answer is no in the physical norm. The only \(B_M\sim M\) growth comes from
writing a bounded density operator in cell-mass coordinates.

## 2. Density versus mass coordinates

Let \(M\) equal WKB/quadrature cells carry weights
\[
  \omega_b={1\over M}.
  \tag{CZB.2}
\]

A normalized positive cloud is a mass vector \(a\) with
\[
  a_b\ge0,
  \qquad
  \sum_b a_b=1.
  \tag{CZB.3}
\]

Write it as a density over the quadrature measure:
\[
  a_b=\omega_b f_b.
  \tag{CZB.4}
\]

The uniform cloud is \(u_b=\omega_b\), so
\[
  h_b:=a_b-u_b=\omega_b g_b,
  \qquad
  g_b:=f_b-1,
  \qquad
  \sum_b\omega_b g_b=0.
  \tag{CZB.5}
\]

The two distances are related by
\[
  \|h\|_{\ell^2}^2
  =
  \sum_b\omega_b^2g_b^2
  =
  {1\over M}\|g\|_{\ell^2_\omega}^2,
  \qquad
  \|g\|_{\ell^2_\omega}^2:=\sum_b\omega_bg_b^2.
  \tag{CZB.6}
\]

Thus mass-distance \(d_M\) of size \(M^{-1/2}\) is already order-one density
separation.

## 3. Raw CZ operator bound

Let \(T_M\) be the quadrature discretization of a mean-zero pressure /
Calderon-Zygmund component acting on density perturbations:
\[
  (T_Mg)_b=\sum_{b'}\omega_{b'}K(x_b-x_{b'})g_{b'}.
  \tag{CZB.7}
\]

The raw CZ statement is the scale-invariant \(L^2\) bound
\[
  \|T_Mg\|_{\ell^2_\omega}
  \le
  C_{\rm CZ}\|g\|_{\ell^2_\omega}
  \tag{CZB.8}
\]
after the principal-value/local row has been typed.

The associated mass-coordinate quadratic form is
\[
  Q(h)
  =
  \sum_{b,b'} h_b K(x_b-x_{b'}) h_{b'}
  =
  \langle g,T_Mg\rangle_{\ell^2_\omega}.
  \tag{CZB.9}
\]

Therefore
\[
  |Q(h)|
  \le
  C_{\rm CZ}\|g\|_{\ell^2_\omega}^2
  =
  C_{\rm CZ}M\|h\|_{\ell^2}^2.
  \tag{CZB.10}
\]

So the Euclidean mass-coordinate operator scale may be
\[
  B_M\lesssim C_{\rm CZ}M.
  \tag{CZB.11}
\]

That is not new pressure strength. It is the coordinate conversion in
(CZB.6).

## 4. Product criterion becomes density anti-equidistribution

Insert (CZB.11) into the residual product law. A raw-CZ zero-mode residual
floor requires
\[
  C_{\rm CZ}M d_M^2\gtrsim1.
  \tag{CZB.12}
\]

By (CZB.6), this is exactly
\[
  \|g\|_{\ell^2_\omega}^2\gtrsim C_{\rm CZ}^{-1}.
  \tag{CZB.13}
\]

Thus the raw CZ branch does not replace anti-equidistribution. It only says the
legal cloud must be separated from uniformity at density level.

Exact uniform clouds have \(g=0\). Density-near-uniform legal clouds with
\[
  \|g^{(M)}\|_{\ell^2_\omega}\to0
  \tag{CZB.14}
\]
still force the raw kernel charge to vanish.

## 5. Row drift

For a translation-invariant mean-zero kernel,
\[
  T_M1=0
  \tag{CZB.15}
\]
in the exact periodic/quadrature model, so there is no raw row-drift payer.

If quadrature or boundary effects produce a row vector
\[
  r_M:=T_M1,
  \tag{CZB.16}
\]
then the linear term is controlled by
\[
  |\langle g,r_M\rangle_{\ell^2_\omega}|
  \le
  \|r_M\|_{\ell^2_\omega}\|g\|_{\ell^2_\omega}.
  \tag{CZB.17}
\]

Asymptotic row cancellation gives no count-free payer. A count-free row-drift
effect requires an order-one row in density norm, which is a non-raw geometry,
boundary, certificate, or same-packet row.

## 6. What remains

The raw pressure kernel supplies:
\[
\begin{array}{ll}
\text{zero uniform mode}
  &\text{no charge on exact uniform clouds},\\[1mm]
\text{scale-invariant density }L^2\text{ bound}
  &\text{no hidden operator-growth payer},\\[1mm]
B_M\lesssim C_{\rm CZ}M\text{ in mass coordinates}
  &\text{only density-level separation},\\[1mm]
\text{row drift}
  &\text{non-raw if count-free}.
\end{array}
\tag{CZB.18}
\]

So any actual unbounded residual payer must come from a structure outside the
raw mean-zero pressure/CZ interaction: certificate geometry, non-translation
same-packet coupling, near-diagonal/local singularity not already typed as a
bounded local row, boundary/collar effects, or construction/exclusion of the
bath.

## 7. Four-sentence result

The raw pressure/CZ kernel is bounded in the density \(L^2\) quadrature norm.
When rewritten in cell-mass coordinates, this can appear as
\[
  B_M\lesssim C_{\rm CZ}M,
\]
but the same conversion gives \(\|a-u\|_2^2=M^{-1}\|f-1\|_{L^2_\omega}^2\).
Thus the product law \(B_Md_M^2\gtrsim1\) is just density-level
anti-equidistribution, not a new raw-kernel payer. Any count-free row drift or
stronger \(B_M\) growth must be backed by non-raw same-fluid geometry or by
construction/exclusion.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
