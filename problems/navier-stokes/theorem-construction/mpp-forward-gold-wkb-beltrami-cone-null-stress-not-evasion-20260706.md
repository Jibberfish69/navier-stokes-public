---
theorem_id: forward-gold-wkb-beltrami-cone-null-stress-not-evasion-20260706
status: exact-branch-split-beltrami-cone-leray-null-stress-is-not-free-evasion
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB envelope stress
target_object:
  - BeltramiConeNullStress.NotExitByItself
  - ConeCompatibleNullCovariance.ServiceRequiresSelectionOrVariation
  - SelectedConeNullStress.RoutesToPricedForceOrCertificate
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-beltrami-localization-cell-count-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-null-stress-characterization-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-null-covariance-ballast-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-ballast-energy-ledger-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-leray-null-affine-moment-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-null-stress-selection-commutator-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-selector-commutator-hminusone-floor-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-selector-force-full-balance-payment-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-covariance-ballast-field-readout-20260706.md
completion_truth: >-
  Exact branch split only. The Beltrami localization note proves the
  same-helicity pointwise covariance cone C>=0, lambda_max(C)<=tr(C)/2, and
  the Reynolds-null characterization supplies scalar-ballasted Hessian
  examples lying inside that cone while satisfying P div R=0. Thus
  Beltrami-cone membership alone does not exclude the Leray-null covariance
  branch. But the affine-moment obstruction proves that every compact
  Leray-null aggregate has zero total trace-free affine service, and the
  selection notes prove that any positive-patch subobject with nonzero selected
  affine moment creates a Leray selector force with an H^{-1} floor. If that
  force is carried in the same-fluid projected balance, the full-balance split
  routes a fixed fraction of the selected moment to acceleration/frame,
  viscosity, nonlinear stress, or carried-defect currency; PSD defect carriage
  pays trace ballast, and admitted terminal ballast is Field-visible. Therefore
  a Beltrami-cone-compatible null stress is not by itself exit (ii): it is
  either zero affine service as a whole aggregate, non-affine/broadband
  service, selected-force/custody/certificate currency, or certificate/admission
  failure. This proves no uniform conversion of every currency into one
  confinement constant, no WKB bath construction or exclusion, no crowd-cell
  theorem, no confinement constant, and no MPP closure.
---

# Beltrami-cone null stress is not a free evasion

## 1. Question

The Beltrami localization split sharpened the pointwise covariance algebra.
Same-helicity Beltrami cells do not generate arbitrary positive covariance.
They generate exactly the cone
\[
  C\ge0,\qquad
  \lambda_{\max}(C)\le {1\over2}\operatorname{tr}C .
  \tag{BCN.1}
\]

The Reynolds-null characterization then added a local countermodel: a compact
Hessian null stress with small scalar trace ballast can satisfy both
\[
  \mathbb P\operatorname{div}R=0
  \tag{BCN.2}
\]
and the pointwise cone (BCN.1).

This note checks the possible overreading:
\[
  \hbox{Beltrami-cone compatible Leray-null covariance}
  \quad\Rightarrow\quad
  \hbox{free dense-crowd evasion}.
  \tag{BCN.3}
\]

That overreading is false. Cone-compatible null covariance exists locally, but
it is not active affine service unless one leaves the whole compact null
aggregate or selects a subobject, and both exits are already typed.

## 2. The cone does not kill the null branch

Let
\[
  A_\phi:=\nabla^2\phi-{1\over3}(\Delta\phi)I,
  \qquad \phi\in C_c^\infty(\mathbb R^3),
  \tag{BCN.4}
\]
with \(A_\phi\not\equiv0\). Then
\[
  \operatorname{div}A_\phi={2\over3}\nabla\Delta\phi,
  \qquad
  \mathbb P\operatorname{div}A_\phi=0 .
  \tag{BCN.5}
\]

Choose \(\eta\ge0\), \(\eta\equiv1\) on \(\operatorname{supp}A_\phi\), and set
\[
  R_{\rho,\varepsilon}:=\rho\eta I+\varepsilon A_\phi .
  \tag{BCN.6}
\]
For fixed \(\rho>0\) and sufficiently small \(\varepsilon>0\),
\[
  R_{\rho,\varepsilon}\ge0,\qquad
  \lambda_{\max}(R_{\rho,\varepsilon})
  \le {1\over2}\operatorname{tr}R_{\rho,\varepsilon},
  \tag{BCN.7}
\]
and
\[
  \mathbb P\operatorname{div}R_{\rho,\varepsilon}=0 .
  \tag{BCN.8}
\]

So the Beltrami cone excludes over-wide PSD shortcuts such as rank-one
covariance, but it does not exclude scalar-ballasted Hessian null stresses.
This is the local tensor countermodel. It is not yet a same-fluid WKB bath.

## 3. Whole-aggregate affine service vanishes

Let
\[
  R\in C_c^\infty(\mathbb R^3;{\rm Sym}(3)),
  \qquad
  \mathbb P\operatorname{div}R=0 .
  \tag{BCN.9}
\]
Then \(\operatorname{div}R=\nabla q\) for a compact pressure gauge \(q\).
Testing against the incompressible affine field \(x\mapsto Ax\), with
\[
  A\in{\rm Sym}_0(3),
  \tag{BCN.10}
\]
gives
\[
  \int R:A\,dx
  =
  -\int \nabla q\cdot Ax\,dx
  =
  \int q\,\operatorname{tr}A\,dx
  =
  0 .
  \tag{BCN.11}
\]

Therefore a compact Beltrami-cone-compatible Leray-null covariance can be
locally anisotropic, but its whole aggregate supplies no trace-free affine
service:
\[
  \int R:A\,dx=0
  \qquad\forall A\in{\rm Sym}_0(3).
  \tag{BCN.12}
\]

The scalar ballast is invisible to trace-free \(A\), and the trace-free part
cancels in the aggregate.

## 4. Selected service creates a force

To obtain positive affine service, one must either use producer variation across
the support or select a positive patch.

For selection, let
\[
  T:=\chi R .
  \tag{BCN.13}
\]
If
\[
  M_A(T):=\int \chi R:A\,dx\ne0,
  \tag{BCN.14}
\]
then \(T\) cannot remain Leray-null:
\[
  \mathbb P\operatorname{div}T\ne0 .
  \tag{BCN.15}
\]

Writing \(R=qI+S\) with \(\operatorname{div}S=0\), the exact selector
commutator is
\[
  \mathbb P\operatorname{div}(\chi R)=\mathbb P(S\nabla\chi).
  \tag{BCN.16}
\]

If \(T\) is supported in a ball of radius \(D\), the localized affine test gives
\[
  \|\mathbb P\operatorname{div}T\|_{\dot H^{-1}}
  \ge
  c\,{|M_A(T)|\over |A|D^{3/2}} .
  \tag{BCN.17}
\]

So selected affine service has a same-scale force bill. It is not still a free
Beltrami-cone null stress.

## 5. Same-fluid balance has no fifth hiding place

If the selector force is legally carried by the projected same-fluid
Navier-Stokes balance,
\[
  F_{\rm sel}
  +F_{\rm acc}
  +F_{\rm visc}
  +F_{\rm nl}
  +F_{\rm def}
  =0,
  \qquad
  F_{\rm sel}:=\mathbb P\operatorname{div}T,
  \tag{BCN.18}
\]
then pairing with the same localized affine test gives
\[
  M_A(T)
  =
  C_{\rm acc}+C_{\rm visc}+C_{\rm nl}+C_{\rm def}.
  \tag{BCN.19}
\]
Thus one leg carries at least a fixed fraction of the selected moment,
pointwise or in the integrated/rectified interval form.

The four currencies are already typed:
\[
\begin{array}{ll}
C_{\rm acc}
  &\Rightarrow \text{endpoint impulse or moving-frame variation},\\[1mm]
C_{\rm visc}
  &\Rightarrow \text{viscous dissipation currency},\\[1mm]
C_{\rm nl}
  &\Rightarrow \text{interior kinetic stress, collar stress, or Reynolds branch},\\[1mm]
C_{\rm def}
  &\Rightarrow \text{defect moment, trace ballast, signed variation, or certificate failure}.
\end{array}
\tag{BCN.20}
\]

If the carried defect is PSD covariance, nonzero deviatoric carriage pays
positive trace ballast. That trace is unresolved kinetic energy,
\[
  \mu_R={1\over2}\operatorname{tr}R ,
  \tag{BCN.21}
\]
and if it is admitted at terminal WKB frequency with nonvanishing mass, the
Field readout sees it through
\[
  \|\nabla^m u_j\|_2^2
  \gtrsim
  \mu_R\lambda_j^{2m}.
  \tag{BCN.22}
\]

## 6. Reduced branch

The Beltrami-cone-compatible null-stress branch is:
\[
\begin{array}{ll}
\text{whole compact null aggregate}
  &\Rightarrow \text{zero affine trace-free active service},\\[1mm]
\text{non-affine producer variation}
  &\Rightarrow \text{non-affine/broadband transport row},\\[1mm]
\text{positive-patch selected service}
  &\Rightarrow \text{selector force with }H^{-1}\text{ floor},\\[1mm]
\text{same-fluid force carriage}
  &\Rightarrow \text{one of the four full-balance currencies},\\[1mm]
\text{PSD defect carriage}
  &\Rightarrow \text{trace ballast / energy ledger / Field after admission},\\[1mm]
\text{failed carriage or admission}
  &\Rightarrow \text{actual-law, ancestry, cover, or tower failure}.
\end{array}
\tag{BCN.23}
\]

Thus cone membership alone is neither a construction of the dense WKB bath nor
a proved evasion of the confinement tax. It leaves the hard global branch:
build or exclude a same-fluid broadband bath whose non-affine variation,
selector force, ballast energy, and profile certificates all pass the required
rows without producing an order-one tax.

## 7. Four-sentence result

The same-helicity Beltrami covariance cone is narrower than arbitrary PSD
covariance, but it still admits scalar-ballasted Hessian Leray-null stresses.
A compact Leray-null aggregate has zero trace-free affine moment, so the whole
object supplies no affine active service. Extracting positive service by
selection creates a Leray selector force with an \(H^{-1}\) floor; carrying that
force in the same-fluid balance routes it to acceleration/frame, viscosity,
nonlinear stress, or defect-certificate currency. Therefore a
Beltrami-cone-compatible null stress is not a free dense-crowd evasion, though
the uniform conversion of all remaining currencies into the confinement
constant is still open.

## 8. State

This note proves the exact branch split for the Beltrami-cone null-stress
reading by combining the already filed cone, null-stress, affine-moment,
selector-force, full-balance, ballast-energy, and Field-readout identities.

It proves no uniform lower bound converting every full-balance leg into one
record-ladder currency; no construction or exclusion of the dense WKB bath; no
crowd-cell theorem; no confinement constant; and no MPP closure.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
