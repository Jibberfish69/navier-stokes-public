---
theorem_id: forward-gold-wkb-selector-force-defect-carriage-moment-floor-20260706
status: exact-moment-floor-for-legal-defect-carriage-of-selector-force
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB envelope stress
target_object:
  - SelectorBoundaryCommutator.DefectCarriageMomentFloor
  - SelectedAffineMoment.CertificateVariationFloor
  - ReynoldsDefectOrSignedCertificate.Currency
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-selector-commutator-hminusone-floor-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-selector-force-nonlinear-stress-localization-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-pressure-law-reynolds-defect-closure-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-signed-stress-certificate-variation-floor-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-ballast-energy-ancestry-tower-landing-20260706.md
completion_truth: >-
  Exact branch floor only. If a carried stress/certificate Z cancels the
  selected force, F_sel + P div Z = 0, then the same localized affine test gives
  M_A(T) = -int Z:grad Psi_A. Hence |M_A(T)| <= C |A| |Z|(B_{2D}); if Z is
  supported in the selected ball, it carries the opposite affine moment
  -int Z:A. Scalar pressure gauge contributes nothing because div Psi_A=0.
  Positive-semidefinite carriage pays trace ballast,
  int tr Z >= c |M_A(T)|/|A|, while signed symmetric carriage pays nuclear
  variation, int ||Z||_* >= c |M_A(T)|/|A|, before any same-packet PSD
  representation or tower certificate can be used. Thus legal defect carriage
  is moment/variation/ballast currency or returns to the already filed
  pressure-law, signed-certificate, ancestry, cover, and tower rows. This proves
  no legal-carriage existence theorem, no full custody theorem, no WKB
  construction/exclusion theorem, no confinement constant, and no MPP closure.
---

# Selector-force defect carriage has an affine-moment floor

## 1. Question

The selector floor begins with a compact selected stress \(T\) in
\(B_D(X)\), a trace-free affine strain \(A\in{\rm Sym}_0(3)\), and
\[
  F_{\rm sel}:=\mathbb P\,\operatorname{div}T,
  \qquad
  M_A(T):=\int T:A\,dx .
  \tag{SDC.1}
\]

The localized affine test \(\Psi_A\) is divergence-free, supported in
\(B_{2D}(X)\), and satisfies
\[
  \Psi_A=A(x-X)\quad\hbox{on }B_D(X),
  \qquad
  \|\nabla\Psi_A\|_\infty\le C|A|.
  \tag{SDC.2}
\]

The already filed selector identity is
\[
  M_A(T)=-\langle F_{\rm sel},\Psi_A\rangle .
  \tag{SDC.3}
\]

The branch tested here is legal stress/certificate carriage of the selected
force:
\[
  F_{\rm sel}+\mathbb P\,\operatorname{div}Z=0 .
  \tag{SDC.4}
\]

Here \(Z\) may be an actual Reynolds covariance, an admitted signed stress
certificate, or a matrix-valued measure in a WKB limit. This note does not
prove that such a \(Z\) exists. It prices what it must carry if it cancels
the selector force.

## 2. Carriage identity

Combining (SDC.3) and (SDC.4),
\[
  M_A(T)
  =
  \langle\mathbb P\,\operatorname{div}Z,\Psi_A\rangle .
  \tag{SDC.5}
\]

Since \(\Psi_A\) is divergence-free, the Leray projection drops out:
\[
  \langle\mathbb P\,\operatorname{div}Z,\Psi_A\rangle
  =
  \langle\operatorname{div}Z,\Psi_A\rangle .
  \tag{SDC.6}
\]

Integrating by parts gives the exact certificate moment identity
\[
  M_A(T)
  =
  -\int Z:\nabla\Psi_A\,dx .
  \tag{SDC.7}
\]

Thus the selected affine moment has not disappeared. It has moved from the
selected stress \(T\) into the carrying stress \(Z\), tested against the same
localized affine gradient.

If \(Z\) is supported in \(B_D(X)\), then \(\nabla\Psi_A=A\) on its support and
\[
  M_A(T)=-\int_{B_D(X)}Z:A\,dx .
  \tag{SDC.8}
\]

So perfectly local defect carriage carries the opposite affine moment.

## 3. Variation floor

Let \(|Z|\) denote the total variation measure of the matrix-valued stress
certificate. From (SDC.7) and (SDC.2),
\[
  |M_A(T)|
  \le
  C|A|\,|Z|(B_{2D}(X)).
  \tag{SDC.9}
\]

Equivalently,
\[
  |Z|(B_{2D}(X))
  \ge
  c\,{|M_A(T)|\over |A|}.
  \tag{SDC.10}
\]

This is the exact no-free-carriage statement. A certificate that cancels the
selector force cannot have vanishing same-scale stress variation while the
selected affine moment stays nonzero.

If the support of \(Z\) leaks into the cutoff collar
\[
  C_D:=B_{2D}(X)\setminus B_D(X),
  \tag{SDC.11}
\]
then (SDC.7) splits as
\[
  M_A(T)
  =
  -\int_{B_D}Z:A\,dx
  -
  \int_{C_D}Z:\nabla\Psi_A\,dx .
  \tag{SDC.12}
\]

Thus the same two locations appear as in the nonlinear-stress split: interior
opposite affine moment or collar localization stress.

## 4. Gauge, PSD ballast, and signed stress

Scalar pressure gauge cannot carry this moment. If \(Z=qI\), then
\[
  Z:\nabla\Psi_A=q\,\operatorname{div}\Psi_A=0,
  \tag{SDC.13}
\]
so \(qI\) contributes nothing to (SDC.7). Only the deviatoric/tensor
certificate can serve the selected affine moment.

If \(Z\ge0\) is a positive-semidefinite Reynolds covariance measure, its
matrix variation is its trace, up to the chosen equivalent matrix norm. Hence
(SDC.10) gives
\[
  \int_{B_{2D}(X)}\operatorname{tr}Z
  \ge
  c\,{|M_A(T)|\over |A|}.
  \tag{SDC.14}
\]

In the Reynolds branch this is positive trace ballast. In energy currency it
is \((1/2)\operatorname{tr}Z\).

If \(Z\) is a symmetric signed stress certificate, then the sharp pointwise
currency is the nuclear norm:
\[
  \int_{B_{2D}(X)}\|Z\|_*\,dx
  \ge
  c\,{|M_A(T)|\over |A|}.
  \tag{SDC.15}
\]

If that signed stress is represented by same-packet PSD pieces,
\[
  Z=P-N,\qquad P,N\ge0,
  \tag{SDC.16}
\]
then the signed-stress variation floor gives
\[
  \operatorname{tr}P+\operatorname{tr}N\ge\|Z\|_*
  \tag{SDC.17}
\]
pointwise, and the same statement holds for matrix-valued measures after
taking a common dominating measure.

So signed carriage is not zero currency. It is nuclear variation, or positive
trace variation in the representing PSD subcertificates.

## 5. WKB reading

In a WKB weak limit, a stress \(Z\) that cancels the selector force is exactly
a Reynolds-defect or stress-certificate carrier:
\[
  F_{\rm sel}+\mathbb P\,\operatorname{div}Z=0 .
  \tag{SDC.18}
\]

The pressure-law closure fork already typed this object. It must be:
\[
\begin{array}{ll}
\text{PSD covariance}
  &\Rightarrow \text{trace ballast plus cover/ancestry/tower rows},\\[1mm]
\text{signed stress certificate}
  &\Rightarrow \text{nuclear variation plus legal same-packet certificate},\\[1mm]
\text{pressure gauge only}
  &\Rightarrow \text{zero selected affine service},\\[1mm]
\text{not legally carried}
  &\Rightarrow \text{actual-law / ancestry / cover / tower failure}.
\end{array}
\tag{SDC.19}
\]

Thus legal defect carriage does not bypass the selector force. It changes the
currency from \(H^{-1}\) force into tensor moment, trace ballast, signed
variation, or the already named certificate rows.

## 6. Four-sentence result

If a carried stress certificate \(Z\) cancels the selector force, then the
same localized affine test gives
\[
  M_A(T)=-\int Z:\nabla\Psi_A .
\]
Therefore \(|M_A(T)|\le C|A|\,|Z|(B_{2D})\), and local carriage carries the
opposite affine moment \(-\int Z:A\). PSD carriage pays trace ballast; signed
carriage pays nuclear variation; scalar pressure gauge pays no selected
affine moment at all. The branch is now priced as moment/variation/certificate
currency, not closed into a full confinement constant.

## 7. State

This note closes the zero-cost reading of legal defect carriage for the
selector-force branch.

It proves no existence of a legal \(Z\), no legal same-packet representation
for signed \(Z\), no cover/ancestry/tower carriage theorem for positive
ballast, no WKB construction/exclusion theorem, no crowd-cell decision, no
confinement constant, and no MPP closure.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
