---
theorem_id: forward-gold-wkb-beltrami-cone-service-ballast-support-function-20260706
status: exact-beltrami-cone-active-service-per-trace-ballast-support-function
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB covariance cone
target_object:
  - BeltramiConeCovariance.ServiceBallastSupportFunction
  - SameHelicityBeltrami.ActiveServiceCeiling
  - NearUniformWKBPressureBath.NOT-CLOSED
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-beltrami-localization-cell-count-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-cone-sharp-trace-ballast-floor-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-isotropic-null-vs-active-service-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-beltrami-material-phase-service-identity-20260706.md
completion_truth: >-
  Exact pointwise support-function calculation for the same-helicity Beltrami
  covariance cone. Let S be a trace-free symmetric strain matrix with ordered
  eigenvalues s1>=s2>=s3 and let C be a same-helicity Beltrami covariance with
  trace tau, equivalently C>=0 and lambda_max(C)<=tau/2. Then the maximal
  active trace-free service at fixed trace is
  sup S:C = -(tau/2)s3 = (tau/2)(-lambda_min(S)). The supremum is sharp and is
  attained by the extreme Beltrami covariance C=(tau/2)(I-n3 tensor n3), where
  n3 is a most-compressive eigenvector of S. Equivalently, with unresolved
  kinetic energy mu_R=tau/2, active service is at most
  mu_R(-lambda_min(S)). This is stricter than arbitrary PSD covariance, whose
  trace-tau support is tau lambda_max(S), but it is not a confinement closure:
  it proves no legal carriage, admission, time-uniform ballast budget,
  construction, or exclusion of the near-uniform same-fluid WKB bath.
---

# Beltrami-cone service per trace ballast

## 1. Kill question

The sharp trace-ballast floor says a same-helicity Beltrami covariance cannot
carry trace-free active stress with vanishing trace. The next local question is
what that trace can buy against a fixed producer strain.

Let \(S\) be the trace-free symmetric strain read by the active pressure-service
row. For a same-helicity Beltrami covariance \(C\), the active service is
\[
  S:C .
  \tag{BSB.1}
\]
Since \(\operatorname{tr}S=0\), this is also \(S:A\) for
\[
  A=C-{\tau\over3}I,
  \qquad
  \tau=\operatorname{tr}C .
  \tag{BSB.2}
\]

The kill question is whether the Beltrami cone can obtain arbitrary
trace-free service per unit trace ballast.

It cannot. The exact support function is
\[
  \sup S:C
  =
  {\tau\over2}\bigl(-\lambda_{\min}(S)\bigr).
  \tag{BSB.3}
\]

## 2. Cone and eigenvalues

The same-helicity Beltrami covariance cone is
\[
  C\ge0,
  \qquad
  \lambda_{\max}(C)\le {1\over2}\operatorname{tr}C .
  \tag{BSB.4}
\]

Fix the trace
\[
  \operatorname{tr}C=\tau>0.
  \tag{BSB.5}
\]
Let the eigenvalues of \(S\) be
\[
  s_1\ge s_2\ge s_3,
  \qquad
  s_1+s_2+s_3=0 .
  \tag{BSB.6}
\]

The eigenvalues \(c_1\ge c_2\ge c_3\) of \(C\) obey
\[
  c_i\ge0,
  \qquad
  c_1\le{\tau\over2},
  \qquad
  c_1+c_2+c_3=\tau .
  \tag{BSB.7}
\]

By the rearrangement/von Neumann trace inequality, the maximum of \(S:C\) for
fixed eigenvalues of \(C\) occurs when \(S\) and \(C\) are co-diagonal with
largest eigenvalues paired.

Thus it remains to maximize
\[
  s_1c_1+s_2c_2+s_3c_3
  \tag{BSB.8}
\]
over the simplex (BSB.7).

## 3. Support function

The feasible eigenvalue polytope is linear, and the objective is linear. Its
maximizer puts no trace on the most-compressive eigendirection and saturates
the Beltrami upper-eigenvalue cap:
\[
  (c_1,c_2,c_3)
  =
  \left({\tau\over2},{\tau\over2},0\right).
  \tag{BSB.9}
\]

Indeed, any positive \(c_3\) spends trace on the smallest eigenvalue \(s_3\).
Moving that trace into \(c_1\) or \(c_2\) increases the objective until the cap
\(c_1,c_2\le\tau/2\) forces (BSB.9).

Therefore
\[
  \sup S:C
  =
  {\tau\over2}(s_1+s_2)
  =
  -{\tau\over2}s_3
  =
  {\tau\over2}\bigl(-\lambda_{\min}(S)\bigr).
  \tag{BSB.10}
\]

The extremizer is the rank-two Beltrami covariance
\[
  C_\ast={\tau\over2}(I-n_3\otimes n_3),
  \tag{BSB.11}
\]
where \(n_3\) is an eigenvector of \(S\) for \(\lambda_{\min}(S)\).

## 4. Energy reading

The unresolved kinetic-energy ballast attached to the covariance is
\[
  \mu_R={1\over2}\operatorname{tr}C={\tau\over2}.
  \tag{BSB.12}
\]
Thus the same result can be written as
\[
  S:C\le \mu_R\bigl(-\lambda_{\min}(S)\bigr).
  \tag{BSB.13}
\]

The geometry of the optimizer is also exact: the Beltrami wave vector points
along the most compressive strain eigendirection, while the covariance plane is
the two-dimensional plane orthogonal to that direction.

## 5. Comparison with full PSD covariance

For an arbitrary positive-semidefinite covariance \(M\ge0\) with
\(\operatorname{tr}M=\tau\), the support function is
\[
  \sup_{M\ge0,\ \operatorname{tr}M=\tau} S:M
  =
  \tau\,\lambda_{\max}(S).
  \tag{BSB.14}
\]

The same-helicity Beltrami cone replaces this by
\[
  {\tau\over2}\bigl(-\lambda_{\min}(S)\bigr).
  \tag{BSB.15}
\]

So the cone forces a specific strain-frame geometry. It does not allow the
trace ballast to concentrate along the top stretching eigendirection. Active
service is paid by a rank-two covariance plane avoiding the compressive
eigendirection.

This is a static cone restriction only. A near-uniform WKB bath still survives
as a possible branch if the same fluid can legally carry the trace ballast and
the required material phases through ancestry, cover, and tower certificates.

## 6. Four-sentence result

At fixed trace ballast \(\tau\), same-helicity Beltrami covariance can deliver
at most \((\tau/2)(-\lambda_{\min}S)\) units of active service against a
trace-free strain \(S\). The maximizer is the rank-two covariance
\((\tau/2)(I-n_3\otimes n_3)\), with \(n_3\) the most-compressive strain
direction. Thus Beltrami service is not arbitrary PSD service concentrated on
the top stretching direction; it is compression-plane service with a fixed
support function. This sharpens the dense-crowd bath algebra, but it proves no
legal carriage, admission, construction, exclusion, or confinement constant.

## 7. State

This note proves the exact static service-per-ballast ceiling for the
same-helicity Beltrami covariance cone.

It proves no time-uniform ballast budget, no same-fluid legal carriage theorem,
no WKB profile admission theorem, no construction or exclusion of the
near-uniform bath, no dense-crowd confinement constant, and no MPP closure.
