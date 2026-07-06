---
theorem_id: forward-gold-wkb-leray-null-affine-moment-obstruction-20260706
status: exact-branch-kill-compact-leray-null-stress-has-zero-affine-tracefree-moment
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB envelope stress
target_object:
  - LerayNullEnvelopeStress.AffineMomentZero
  - PSDNullCovariance.NoNetAffineActiveService
  - NonAffineOrSignSelectedService.AsRemainingBranch
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-envelope-stress-defect-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-null-stress-characterization-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-null-covariance-ballast-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-isotropic-null-vs-active-service-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-affine-transport-pressure-bank-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-nonaffine-transport-threshold-obstruction-20260706.md
completion_truth: >-
  Exact branch kill only. If R is a compactly supported symmetric stress on
  R^3 with P div R=0, then div R=grad q with compactly supported pressure gauge
  q. Testing against any constant trace-free affine incompressible field
  Ax gives int R:A = 0. Therefore a compact Leray-null WKB envelope stress,
  including a PSD covariance stress with trace ballast, supplies no net active
  trace-free service to an affine producer strain. Any active use of that null
  aggregate must come from non-affine producer variation across the support,
  sign-selected/localized subregions rather than the whole null aggregate, or
  legal certificate/custody rows. This proves no WKB construction or exclusion,
  no sign-selection custody theorem, no non-affine floor, no crowd theorem, no
  confinement constant, and no MPP closure.
---

# Leray-null affine moment obstruction

## 1. Question

The WKB envelope-stress branch has an exact null option:
\[
  \mathbb P\,\operatorname{div}R=0.
  \tag{LAM.1}
\]

The null-stress characterization says this can happen for nonzero anisotropic
stresses, and the covariance-ballast note says an actual Reynolds covariance
can carry such anisotropy only with positive trace ballast.

This leaves a tempting reading:

\[
  \text{use the Leray-null aggregate as active trace-free pressure service.}
  \tag{LAM.2}
\]

That reading is false at affine producer level. A compact Leray-null stress has
zero total trace-free affine moment.

## 2. Exact affine test

Let
\[
  R\in C_c^\infty(\mathbb R^3;{\rm Sym}(3)),
  \qquad
  \mathbb P\,\operatorname{div}R=0.
  \tag{LAM.3}
\]

By the null-stress characterization,
\[
  \operatorname{div}R=\nabla q
  \tag{LAM.4}
\]
for some compactly supported smooth pressure gauge \(q\).

Let \(A\in{\rm Sym}_0(3)\) be a constant trace-free strain matrix and set
\[
  \Phi(x)=Ax.
  \tag{LAM.5}
\]
Then
\[
  \nabla\Phi=A,
  \qquad
  \operatorname{div}\Phi=\operatorname{tr}A=0.
  \tag{LAM.6}
\]

Integrating by parts,
\[
  \int_{\mathbb R^3} R:A\,dx
  =
  \int R:\nabla\Phi\,dx
  =
  -\int (\operatorname{div}R)\cdot\Phi\,dx.
  \tag{LAM.7}
\]
Using (LAM.4),
\[
  -\int \nabla q\cdot\Phi\,dx
  =
  \int q\,\operatorname{div}\Phi\,dx
  =
  0.
  \tag{LAM.8}
\]

Therefore
\[
  \boxed{
  \mathbb P\,\operatorname{div}R=0,\quad R\in C_c^\infty
  \quad\Longrightarrow\quad
  \int_{\mathbb R^3} R:A\,dx=0
  \quad\forall A\in{\rm Sym}_0(3).
  }
  \tag{LAM.9}
\]

Equivalently,
\[
  \int_{\mathbb R^3}
  \left(R-{1\over3}(\operatorname{tr}R)I\right)dx=0.
  \tag{LAM.10}
\]

## 3. Meaning for WKB covariance

If \(R\) is an actual WKB Reynolds covariance, then \(R\ge0\). The
covariance-ballast note says that local trace-free anisotropy requires positive
trace ballast:
\[
  R={\tau\over3}I+A,
  \qquad
  R\ge0,
  \qquad
  \tau\ge\sqrt{3\over2}|A|_F.
  \tag{LAM.11}
\]

The affine moment identity adds the global cancellation:
\[
  \int A\,dx=0.
  \tag{LAM.12}
\]

Thus the PSD null covariance branch may contain local anisotropic patches, but
those patches cannot give net active service to a constant incompressible
producer strain. For every constant producer strain \(S_0\),
\[
  \int S_0:R\,dx
  =
  \int S_0:A\,dx
  =
  0.
  \tag{LAM.13}
\]

The scalar ballast is invisible to \(S_0\) because \(\operatorname{tr}S_0=0\);
the trace-free part cancels by (LAM.12).

## 4. Remaining active-service routes

If a Leray-null envelope covariance is to supply active service, it must leave
the affine whole-aggregate reading. There are only three routes.

First, the producer strain may vary across the support:
\[
  S(x)=S_0+\widetilde S(x).
  \tag{LAM.14}
\]
Then (LAM.13) gives
\[
  \int S(x):R(x)\,dx
  =
  \int \widetilde S(x):R(x)\,dx.
  \tag{LAM.15}
\]
So the service is exactly non-affine spatial variation. It belongs to the
already named non-affine / broadband transport threshold.

Second, the proof may select only the positive patches of \(S_0:R\). That
selection destroys the whole compact Leray-null aggregate identity unless the
selected subobject carries its own law, cover, ancestry, and tower certificates.
This is sign-selected custody, not free null stress service.

Third, the nonzero stress may be carried as a legal certificate rather than
treated as active pressure supply. Then the ballast energy, cover, ancestry,
and tower rows must carry it, or the first failed certificate is a Pack/Part or
Field-facing limit-of-class failure.

## 5. Reduced branch

The compact Leray-null WKB envelope branch is now:
\[
\begin{array}{ll}
\text{affine producer strain}
  &\Rightarrow \text{zero net trace-free active service},\\[1mm]
\text{non-affine producer variation}
  &\Rightarrow \text{non-affine/broadband threshold row},\\[1mm]
\text{positive-patch selection}
  &\Rightarrow \text{selection/custody/certificate burden},\\[1mm]
\text{certificate carriage}
  &\Rightarrow \text{ballast energy + cover/ancestry/tower rows}.
\end{array}
\tag{LAM.16}
\]

Thus Leray-null aggregation hides the velocity force, but it does not create a
net affine active-service bank.

## 6. Four-sentence result

A compact Leray-null stress has zero total trace-free affine moment. Indeed
\(\mathbb P\operatorname{div}R=0\) gives
\(\operatorname{div}R=\nabla q\), and testing against the incompressible affine
field \(x\mapsto Ax\) with \(\operatorname{tr}A=0\) gives
\(\int R:A=0\). Therefore a PSD null WKB covariance may hide from the velocity
law and carry trace ballast, but its whole aggregate gives no net service to a
constant producer strain. Active use must come from non-affine producer
variation, sign-selected custody, or legal certificate carriage.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
