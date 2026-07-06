---
theorem_id: forward-gold-wkb-reynolds-null-covariance-ballast-20260706
status: exact-positive-covariance-ballast-for-leray-null-reynolds-defects
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / WKB profile admission / pressure-law certificate
target_object:
  - WKBReynoldsDefectVanishesOrCertified.A
  - WKBActualPressureLawClosedness.A
  - WKBCertificateCompactness.A
  - LimitOfClassTerminalArtifact.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-pressure-law-reynolds-defect-closure-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-null-stress-characterization-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-localized-anisotropic-defect-leray-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-ballast-energy-ledger-20260706.md
completion_truth: >-
  Exact positivity constraint on the Reynolds-null branch. A weak quadratic
  Reynolds defect from actual velocity fields is a positive-semidefinite
  covariance stress. Therefore a nonzero trace-free Hessian null stress is not
  itself an actual covariance defect: a trace-free positive-semidefinite
  symmetric matrix is zero. If a smooth compactly supported Leray-null
  Reynolds defect R is a covariance density, write R=(tau/3)I+A with
  tau=tr R and tr A=0. Then R>=0 forces
  tau/3 >= -lambda_min(A), hence tau >= sqrt(3/2)|A|_F. Thus the
  velocity-law null branch can carry anisotropic trace-free pressure shape only
  with positive trace/energy ballast. The ballast-energy follow-up identifies
  that trace with unresolved kinetic energy mu_R=(1/2)tr R; pressure gauge
  absorption does not erase that energy ledger. This proves no theorem forcing
  actual Navier-Stokes WKB defects into the null class, no legal carriage
  theorem for the positive ballast through ancestry/cover/tower, no profile
  admission theorem, no confinement constant, and no MPP closure.
---

# Reynolds-null covariance defects require positive ballast

## 1. Object

The Reynolds-null characterization says that the pressure-law row accepts
\[
  \mathbb P\,\operatorname{div}R=0
  \tag{BAL.1}
\]
exactly when \(R=qI+S\) with \(\operatorname{div}S=0\). The trace-free Hessian
example shows that this null class contains nonzero anisotropic stresses:
\[
  A_\phi:=\nabla^2\phi-{1\over3}(\Delta\phi)I,
  \qquad
  \mathbb P\,\operatorname{div}A_\phi=0 .
  \tag{BAL.2}
\]

But a rung-zero Reynolds defect coming from weak limits of actual velocity
products is not an arbitrary symmetric tensor. It is covariance-type and hence
positive-semidefinite.

This note records the exact local price of putting anisotropy inside the
actual Reynolds-null branch: positive trace ballast.

## 2. Covariance positivity

Let \(u_j\rightharpoonup u\) locally in \(L^2\), and suppose
\[
  u_j\otimes u_j\rightharpoonup M
  \tag{BAL.3}
\]
as measures or distributions with locally finite quadratic mass. Define
\[
  R:=M-u\otimes u .
  \tag{BAL.4}
\]
Then \(R\) is positive-semidefinite as a matrix-valued measure. Indeed, for
every fixed vector \(\xi\) and nonnegative test function \(\psi\),
\[
  \int \psi\,\xi\cdot R\xi
  =
  \lim_j\int \psi\,|\xi\cdot u_j|^2
  -
  \int \psi\,|\xi\cdot u|^2
  \ge0
  \tag{BAL.5}
\]
by weak lower semicontinuity applied to \(\sqrt{\psi}\,\xi\cdot u_j\).

When \(R\) has a smooth density, this says
\[
  R(x)\ge0
  \quad\hbox{for every }x.
  \tag{BAL.6}
\]

## 3. Trace-free null stress is not a covariance defect by itself

If \(A\) is symmetric, trace-free, and positive-semidefinite, then \(A=0\).
Indeed all eigenvalues of \(A\) are nonnegative and their sum is zero.

Thus a nonzero trace-free Hessian null stress \(A_\phi\) is a legal symmetric
null stress for the velocity-law row, but it is not by itself a Reynolds
covariance defect from actual velocity products.

## 4. Pointwise ballast inequality

Let a smooth covariance-density Reynolds defect \(R\) be decomposed as
\[
  R={\tau\over3}I+A,
  \qquad
  \tau:=\operatorname{tr}R,
  \qquad
  \operatorname{tr}A=0 .
  \tag{BAL.7}
\]
If \(R\ge0\), then every eigenvalue \(a_i\) of \(A\) obeys
\[
  {\tau\over3}+a_i\ge0 .
  \tag{BAL.8}
\]
Therefore
\[
  {\tau\over3}\ge -\lambda_{\min}(A).
  \tag{BAL.9}
\]

For a trace-free symmetric \(3\times3\) matrix,
\[
  |A|_F^2\le6\,\lambda_{\min}(A)^2
  \quad\hbox{when }\lambda_{\min}(A)<0 .
  \tag{BAL.10}
\]
Hence
\[
  \boxed{\tau\ge \sqrt{3\over2}\,|A|_F .}
  \tag{BAL.11}
\]
The constant is sharp, attained by the trace-free eigenvalue pattern
\[
  (2m,-m,-m).
  \tag{BAL.12}
\]

## 5. Hessian-gauge covariance branch

For the Hessian null stress \(A_\phi\), a covariance-density null branch has
the form
\[
  R=\rho I+A_\phi .
  \tag{BAL.13}
\]
It remains Leray-null because
\[
  \operatorname{div}R
  =
  \nabla\rho+{2\over3}\nabla\Delta\phi
  =
  \nabla\left(\rho+{2\over3}\Delta\phi\right).
  \tag{BAL.14}
\]
But positivity forces
\[
  \rho(x)\ge -\lambda_{\min}(A_\phi(x))
  \quad\hbox{for every }x.
  \tag{BAL.15}
\]
Equivalently,
\[
  \operatorname{tr}R=3\rho
  \ge
  \sqrt{3\over2}\,|A_\phi|_F .
  \tag{BAL.16}
\]

Thus the pressure-law row has not killed the anisotropic null branch, but it
has converted it into a positive covariance-ballast branch.

## 6. Proof-program landing

The corrected pressure-row split is:

```text
R = 0
or R is Leray-null and covariance-positive, hence its trace-free anisotropy
   pays positive trace ballast
or R is legally carried as a Reynolds/null-stress certificate
or actual-pressure-law / tower certificate failure.
```

The ballast is not itself a confinement constant. It is only the exact local
price of making an anisotropic null stress into an actual Reynolds covariance
defect. The remaining dense-crowd question is whether that ballast can be
carried through material ancestry, finite cover, and same-law tower without
paying the eviction/custody cost.

The ballast is also not pressure erasure. If
\[
  u_j\otimes u_j\rightharpoonup u\otimes u+R,
\]
then the unresolved kinetic energy is
\[
  \mu_R={1\over2}\operatorname{tr}R .
\]
The pressure gauge \(q\) satisfying \(\operatorname{div}R=\nabla q\) removes
the velocity force, while \(\mu_R\) remains a nonnegative profile ledger item.

## 7. Four-sentence result

The pressure-law null class is larger than scalar pressure, but actual Reynolds
defects are positive covariances. A nonzero trace-free Hessian null stress is
therefore not an actual covariance defect unless it is padded by positive
scalar trace. Pointwise, if \(R=(\tau/3)I+A\ge0\) and \(\operatorname{tr}A=0\),
then \(\tau/3\ge-\lambda_{\min}(A)\), hence
\(\tau\ge\sqrt{3/2}|A|_F\). So the dense-crowd pressure escape is no longer
free anisotropy; it is anisotropy plus positive trace ballast, equivalently
positive unresolved kinetic energy, that the other certificate rows must carry.

## 8. State

This note proves the exact covariance-ballast constraint for Leray-null
Reynolds defects and records its energy-ledger interpretation.

It proves no theorem forcing actual Navier-Stokes WKB defects into the null
class, no legal carriage theorem for the positive ballast through
ancestry/cover/tower, no WKB profile admission theorem, no crowd-cell decision,
no confinement constant, and no MPP closure.
