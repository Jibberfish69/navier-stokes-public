---
theorem_id: forward-gold-wkb-beltrami-cone-sharp-trace-ballast-floor-20260706
status: exact-sharp-beltrami-cone-trace-ballast-floor-not-confinement-closure
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB covariance cone
target_object:
  - BeltramiConeCovariance.TraceBallastSharpFloor
  - ConeCompatibleNullCovariance.FieldVisibleTrace
  - NearUniformWKBPressureBath.NOT-CLOSED
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-null-stress-characterization-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-null-covariance-ballast-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-ballast-energy-ledger-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-covariance-ballast-field-readout-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-cone-null-stress-not-evasion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-beltrami-localization-cell-count-split-20260706.md
completion_truth: >-
  Exact sharp pointwise algebra for the same-helicity Beltrami covariance cone.
  If C=(tau/3)I+A, tr A=0, and C lies in the cone C>=0,
  lambda_max(C)<=tr(C)/2, then tau>=max(6 lambda_max(A),
  -3 lambda_min(A))=6 lambda_max(A)>=sqrt(6)|A|_F. The constant is
  sharp, attained by the trace-free eigenvalue ratio (1,1,-2). Thus a
  nonzero trace-free active/null covariance in the same-helicity Beltrami cone
  carries at least sqrt(6) trace ballast, twice the generic PSD ballast floor
  sqrt(3/2). The associated unresolved kinetic energy is
  mu_R=(1/2)tau, so admitted terminal ballast is Field-visible under the
  existing WKB consumer rows. This proves no legal carriage/admission theorem,
  no construction or exclusion of the near-uniform bath, no uniform eviction
  constant, and no MPP closure.
---

# Beltrami-cone covariance has a sharp trace-ballast floor

## 1. Kill question

The generic Reynolds covariance screen says that a trace-free active stress
cannot be an actual covariance defect without positive trace ballast. For
\[
  R={\tau\over3}I+A,
  \qquad
  \operatorname{tr}A=0,
  \tag{BTC.1}
\]
plain positivity gives only
\[
  \tau\ge\sqrt{3\over2}\,|A|_F .
  \tag{BTC.2}
\]

The Beltrami bath is narrower than the full positive-semidefinite covariance
cone. The checked question is whether that narrower cone permits trace ballast
arbitrarily close to the generic PSD floor.

It does not. Same-helicity Beltrami covariance has the sharp stronger floor
\[
  \tau\ge\sqrt6\,|A|_F .
  \tag{BTC.3}
\]

## 2. Cone algebra

Use the pointwise same-helicity Beltrami covariance cone already isolated in
the localization split:
\[
  C\ge0,
  \qquad
  \lambda_{\max}(C)\le {1\over2}\operatorname{tr}C .
  \tag{BTC.4}
\]

Write
\[
  C={\tau\over3}I+A,
  \qquad
  \tau=\operatorname{tr}C,
  \qquad
  \operatorname{tr}A=0 .
  \tag{BTC.5}
\]
Let the eigenvalues of \(A\) be
\[
  a_1\ge a_2\ge a_3,
  \qquad
  a_1+a_2+a_3=0 .
  \tag{BTC.6}
\]

The PSD condition is
\[
  {\tau\over3}+a_3\ge0,
  \qquad\hbox{so}\qquad
  \tau\ge -3a_3 .
  \tag{BTC.7}
\]
The Beltrami-cone upper-eigenvalue condition is
\[
  {\tau\over3}+a_1\le {\tau\over2},
  \qquad\hbox{so}\qquad
  \tau\ge6a_1 .
  \tag{BTC.8}
\]

Thus the exact minimal trace needed to place the trace-free part \(A\) in the
same-helicity Beltrami covariance cone is
\[
  \tau_{\min}^{\rm Bel}(A)
  =
  \max\{6a_1,-3a_3\}.
  \tag{BTC.9}
\]

Because \(A\) is trace-free and ordered, \(a_3\ge-2a_1\). Hence
\[
  -3a_3\le6a_1,
  \qquad
  \tau_{\min}^{\rm Bel}(A)=6\lambda_{\max}(A).
  \tag{BTC.10}
\]

## 3. Sharp norm form

Set
\[
  p=a_1\ge0,
  \qquad
  q=-a_3\ge0 .
  \tag{BTC.11}
\]
Then
\[
  a_2=q-p,
  \qquad
  {1\over2}\le {q\over p}\le2
  \tag{BTC.12}
\]
for nonzero \(A\). Therefore
\[
  |A|_F^2
  =
  p^2+(q-p)^2+q^2
  =
  2(p^2-pq+q^2)
  \le
  6p^2 .
  \tag{BTC.13}
\]
Since \(\tau_{\min}^{\rm Bel}=6p\),
\[
  \tau_{\min}^{\rm Bel}(A)
  \ge
  \sqrt6\,|A|_F .
  \tag{BTC.14}
\]

The constant is sharp. Equality holds at
\[
  (a_1,a_2,a_3)=(a,a,-2a).
  \tag{BTC.15}
\]
Then
\[
  \tau=6a,
  \qquad
  C=\operatorname{diag}(3a,3a,0),
  \qquad
  \lambda_{\max}(C)=3a={1\over2}\operatorname{tr}C .
  \tag{BTC.16}
\]

## 4. Proof-program consequence

For a same-helicity Beltrami WKB covariance, a nonzero trace-free active part
cannot be carried with only the generic PSD trace price. It must carry
\[
  \tau\ge\sqrt6\,|A|_F
  \tag{BTC.17}
\]
pointwise, and the associated unresolved kinetic energy satisfies
\[
  \mu_R={1\over2}\tau
  \ge
  {\sqrt6\over2}|A|_F .
  \tag{BTC.18}
\]

Thus vanishing normalized Beltrami trace ballast forces vanishing normalized
trace-free active covariance. Positive terminal trace ballast remains a
Field-visible WKB consumer after the existing same-solution witness-admission
rows are supplied.

This sharpens the cone-compatible null branch. It does not prove that the
ballast is legally carried through ancestry, finite covers, same-law tower
certificates, or material transport; those rows remain the live dense-crowd
questions.

## 5. Four-sentence result

The same-helicity Beltrami cone is stricter than the full PSD covariance cone.
For \(C=(\tau/3)I+A\), \(\operatorname{tr}A=0\), the cone condition
\(\lambda_{\max}(C)\le\operatorname{tr}C/2\) forces
\(\tau\ge6\lambda_{\max}(A)\), hence \(\tau\ge\sqrt6|A|_F\). The constant is
sharp at eigenvalue ratio \((1,1,-2)\), exactly the covariance shape of one
Beltrami direction. So a Beltrami-cone pressure/null branch can still exist,
but its active trace-free part carries twice the generic PSD trace ballast
floor.

## 6. State

This note proves one exact pointwise algebra row for the same-helicity Beltrami
WKB branch.

It proves no legal carriage theorem for that trace through the same fluid, no
admission theorem for terminal profiles, no construction or exclusion of the
near-uniform WKB bath, no dense-crowd confinement constant, and no MPP closure.
