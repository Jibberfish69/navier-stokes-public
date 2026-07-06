---
theorem_id: forward-gold-wkb-custody-bank-variation-not-density-gap-20260706
status: exact-obstruction-custody-bank-variation-alone-does-not-force-density-anti-equidistribution
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB legal anti-equidistribution
target_object:
  - CustodyBankVariation.NO-DENSITY-GAP-BY-ITSELF
  - VariableWeightWKBBranch.TotalVariationLedger
  - BankScaleMotion.LogVariationBill
  - DensityLevelAntiEquidistribution.NECESSARY
  - NearUniformWKBPressureBath.CONSTRUCTION-EXCLUSION
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-variable-weight-refresh-variation-ledger-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-bank-scale-motion-variation-ledger-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-bounded-custody-wkb-no-neutral-persistence-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-material-ancestry-volume-preserving-not-density-gap-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-transport-current-variation-not-density-gap-20260706.md
completion_truth: >-
  Exact obstruction to the last ancestry-side density-gap shortcut. Weight
  total variation, refresh/reassembly variation, and bank log-variation are
  real custody/action currencies, but they do not by themselves force WKB
  population density away from uniform. A uniform density can undergo
  measure-preserving circulation in label space with nonzero flux variation,
  or a whole bank can move in log scale with all labels still uniformly filled.
  Thus custody/bank variation can be used only as an explicit variation payer,
  a service-coordinate row-distance payer after a fixed mismatch row is added,
  a Gate-8/no-recount custody obligation, a material-history certificate
  failure, or construction/exclusion of the near-uniform same-fluid WKB bath.
  This proves no variation budget bound, no Gate-8 custody theorem, no bank
  motion exclusion, no WKB construction/exclusion theorem, no confinement
  constant, and no MPP closure.
---

# Custody and bank variation are not density anti-equidistribution

## 1. Object

The variable-weight and moving-bank ledgers prove that active WKB pressure
service is not neutral. In a relative log-window of width \(\Delta\),
\[
  A
  \le
  W\Delta+{\Delta\over2}V_w+WV_D,
  \tag{CBV.1}
\]
where \(V_w\) is population/weight total variation and \(V_D\) is bank
log-variation.

This note checks whether those variation currencies also prove the density
anti-equidistribution needed by the cross-cell Gram gap,
\[
  \|f-1\|_{L^2_\omega}\ge c .
  \tag{CBV.2}
\]

They do not, without an additional fixed service row.

## 2. Population variation with uniform density

Let \((X,\omega)\) be the normalized WKB label cloud and let
\[
  f_t\ge0,
  \qquad
  \int_X f_t\,d\omega=1
  \tag{CBV.3}
\]
be the instantaneous population density.

Choose
\[
  f_t\equiv1
  \tag{CBV.4}
\]
for all \(t\). Let \(b_t\) be a nonzero divergence-free velocity on the
label cell:
\[
  \operatorname{div}_\omega(b_t\,\omega)=0 .
  \tag{CBV.5}
\]

Then the label continuity equation
\[
  \partial_t f_t+\operatorname{div}_\omega(b_tf_t)=0
  \tag{CBV.6}
\]
holds with \(f_t\equiv1\), while the population flux has nonzero variation
whenever \(b_t\ne0\):
\[
  \int |b_t|\,f_t\,d\omega
  =
  \int |b_t|\,d\omega
  >0 .
  \tag{CBV.7}
\]

Thus population refresh, circulation, or relabeling variation is compatible
with exactly uniform instantaneous density:
\[
  \|f_t-1\|_{L^2_\omega}=0
  \quad\hbox{for every }t.
  \tag{CBV.8}
\]

Population motion can be a custody bill. It is not automatically a density gap.

## 3. Bank log-variation with uniform density

Bank motion is even more direct. Let the bank scale \(D(t)\) move with
\[
  V_D(I)=\int_I |D_t\log D|\,dt>0.
  \tag{CBV.9}
\]

This can be imposed while the label population remains
\[
  f_t\equiv1 .
  \tag{CBV.10}
\]

The entire bank has travelled in log scale, so the scale-custody ledger sees
the bill \(V_D\). But the density readout on the normalized label cloud still
has
\[
  \|f_t-1\|_{L^2_\omega}=0.
  \tag{CBV.11}
\]

Therefore
\[
  V_D>0
  \not\Longrightarrow
  \|f-1\|_{L^2_\omega}>0.
  \tag{CBV.12}
\]

## 4. What variation can prove

Variation rows are still real rows. For example a demanded active service
amount \(A\) beyond endpoint room forces, from (CBV.1),
\[
  {\Delta\over2}V_w+WV_D
  \ge
  (A-W\Delta)_+ .
  \tag{CBV.13}
\]

This is a variation/action payer. It becomes a density anti-equidistribution
theorem only after an additional law ties the motion to a fixed service
coordinate or a fixed moment mismatch. In that case the branch is the already
filed row-distance mechanism:
\[
  \|f-1\|_{L^2_\omega}
  \ge
  {|a-\int m\,d\omega|\over
    \|m-\int m\,d\omega\|_{L^2_\omega}},
  \tag{CBV.14}
\]
or its finite/high-rank Gram version.

Without such a fixed mismatch row, the variation can be paid by motion inside
a uniformly filled cloud.

## 5. Reduced custody/bank branch

Custody/bank variation now splits as
\[
\begin{array}{ll}
V_w,V_D\ \hbox{bounded}
  &\text{only bounded sign-coherent active service,}\\[1mm]
V_w\ \hbox{large}
  &\text{refresh/reassembly total-variation payer or Gate-8 custody row,}\\[1mm]
V_D\ \hbox{large}
  &\text{bank log-travel / scale-custody payer,}\\[1mm]
\text{fixed service mismatch added}
  &\text{service-coordinate row distance,}\\[1mm]
\text{legal carriage fails}
  &\text{material-history or same-packet certificate failure,}\\[1mm]
\text{near-uniform legal bath persists}
  &\text{construction/exclusion.}
\end{array}
\tag{CBV.15}
\]

So custody/bank variation is no longer an untyped density-gap source. It is a
variation payer, a row-distance problem after an added fixed mismatch, a
certificate failure, or part of the near-uniform WKB construction/exclusion
branch.

## 6. Four-sentence result

Weight variation and bank log-variation are real bills: active service beyond
endpoint room must appear as \(V_w\), \(V_D\), or another routed currency. They
do not by themselves force the WKB population density away from uniform,
because a uniformly filled label cloud can circulate or a whole bank can move
in log scale while \(f\equiv1\). To become a density-gap theorem, variation
must be tied to a fixed service-coordinate mismatch, which is the already filed
row-distance mechanism. Thus custody/bank variation is an explicit payer or
certificate branch, not a hidden anti-uniform density theorem.

## 7. State

This note proves only the obstruction
\[
  V_w>0\ \hbox{or}\ V_D>0
  \not\Rightarrow
  \|f-1\|_{L^2_\omega}>0 .
\]

It proves no bound on variation for actual Navier-Stokes WKB packets, no
Gate-8 custody theorem, no bank-motion exclusion, no near-uniform WKB bath
construction or exclusion, no confinement constant, and no MPP closure.
