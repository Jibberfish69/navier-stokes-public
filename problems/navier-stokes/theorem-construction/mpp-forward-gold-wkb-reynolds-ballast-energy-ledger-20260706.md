---
theorem_id: forward-gold-wkb-reynolds-ballast-energy-ledger-20260706
status: exact-energy-ledger-identity-for-positive-reynolds-ballast
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / WKB profile admission / pressure-law certificate
target_object:
  - WKBReynoldsDefectVanishesOrCertified.A
  - WKBActualPressureLawClosedness.A
  - WKBCertificateCompactness.A
  - LimitOfClassTerminalArtifact.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-null-covariance-ballast-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-null-stress-characterization-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-pressure-law-reynolds-defect-closure-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-legal-label-certificate-compactness-reduction-20260706.md
completion_truth: >-
  Strict reduction only. The positive trace ballast required to make an
  anisotropic Leray-null stress into an actual Reynolds covariance defect is
  unresolved kinetic energy, not disposable pressure gauge. If u_j converges
  weakly in L2_loc, u_j tensor u_j converges to u tensor u plus R, and the
  energy densities converge as measures, then the energy defect is
  mu_R=(1/2)tr R. This identity is independent of the pressure gauge q used in
  div R=grad q. Thus absorbing div(qI) into pressure can remove the velocity
  force, but it cannot erase the nonnegative trace energy that made the defect
  a covariance. Combined with the ballast inequality, any nonzero trace-free
  anisotropic null component forces a positive energy-defect ledger comparable
  to its size. This proves no theorem that the energy ledger is legally carried
  through ancestry/cover/tower, no WKB profile admission theorem, no WKB
  construction/exclusion theorem, no confinement constant, and no MPP closure.
---

# Reynolds ballast is an energy ledger, not pressure erasure

## 1. Object

The covariance-ballast note proved the local algebraic price for putting a
trace-free anisotropic stress into the actual Reynolds-null branch. If
\[
  R={\tau\over3}I+A,\qquad \operatorname{tr}A=0,\qquad R\ge0,
  \tag{BEL.1}
\]
then
\[
  {\tau\over3}\ge-\lambda_{\min}(A),
  \qquad
  \tau\ge\sqrt{3\over2}|A|_F .
  \tag{BEL.2}
\]

The remaining danger is a wording one with mathematical content: since the
pressure-law row can absorb a gradient force into pressure, the positive
isotropic part might be treated as if it disappeared. It does not. The trace
of an actual Reynolds covariance defect is unresolved kinetic energy.

This note records that identity.

## 2. Energy defect identity

Let
\[
  u_j\rightharpoonup u
  \quad\hbox{weakly in }L^2_{\rm loc},
  \tag{BEL.3}
\]
and suppose
\[
  u_j\otimes u_j\rightharpoonup u\otimes u+R
  \tag{BEL.4}
\]
as matrix-valued measures on a compact spacetime window. Taking traces gives
\[
  |u_j|^2\rightharpoonup |u|^2+\operatorname{tr}R .
  \tag{BEL.5}
\]
Thus the unresolved kinetic-energy defect is
\[
  \mu_R
  :=
  {1\over2}
  \left(\hbox{w-}\lim_j |u_j|^2-|u|^2\right)
  =
  {1\over2}\operatorname{tr}R .
  \tag{BEL.6}
\]

Because \(R\ge0\) as a covariance measure,
\[
  \mu_R\ge0 .
  \tag{BEL.7}
\]

This identity is the same weak lower-semicontinuity content as covariance
positivity, but expressed in the scalar energy ledger.

## 3. Pressure gauge does not erase trace energy

The pressure-law null condition is
\[
  \mathbb P\operatorname{div}R=0,
  \tag{BEL.8}
\]
equivalently
\[
  \operatorname{div}R=\nabla q
  \tag{BEL.9}
\]
for a pressure gauge \(q\). Absorbing \(q\) changes the pressure coordinate in
the velocity equation. It does not change the covariance identity (BEL.6).

In particular, in the Hessian-gauge covariance branch
\[
  R=\rho I+A_\phi,
  \qquad
  A_\phi=\nabla^2\phi-{1\over3}(\Delta\phi)I,
  \tag{BEL.10}
\]
the velocity force is
\[
  \operatorname{div}R
  =
  \nabla\left(\rho+{2\over3}\Delta\phi\right),
  \tag{BEL.11}
\]
so the pressure gauge is
\[
  q=\rho+{2\over3}\Delta\phi .
  \tag{BEL.12}
\]
But the unresolved kinetic-energy defect is
\[
  \mu_R={1\over2}\operatorname{tr}R={3\over2}\rho .
  \tag{BEL.13}
\]

The pressure gauge \(q\) and the energy ballast \(\rho\) are not the same
coordinate. The gauge removes the force from the velocity equation; the trace
records positive unresolved kinetic energy in the profile ledger.

## 4. Ballast lower bound in energy currency

Combining (BEL.2) with (BEL.6) gives
\[
  \mu_R
  =
  {1\over2}\tau
  \ge
  {1\over2}\sqrt{3\over2}\,|A|_F .
  \tag{BEL.14}
\]

So nonzero trace-free anisotropic null covariance has a positive energy defect
of comparable pointwise size:
\[
  A\ne0,\quad R\ge0,\quad \mathbb P\operatorname{div}R=0
  \quad\Longrightarrow\quad
  \mu_R>0
  \tag{BEL.15}
\]
wherever the anisotropic component is nonzero.

This is the exact ledger meaning of the ballast. It is not a new pressure
service supply. It is unresolved kinetic energy that must be carried by the
material ancestry, cover, and tower certificate rows, or else becomes the first
row failure.

## 5. Reduced burden

The current pressure-law survivor is:

```text
R = 0
or R is PSD Leray-null covariance and its positive trace energy
   mu_R=(1/2)tr R is carried by the profile certificates
or a signed/non-PSD stress is carried by an explicit legal certificate outside
   the rung-zero Reynolds covariance claim, with trace-variation floor
   tr P + tr N >= ||S||_* for any PSD representation S=P-N
or actual-pressure-law / covariance-energy / ancestry / cover / tower failure.
```

Thus the null covariance branch has two coordinates:

1. pressure coordinate:
   \[
     \operatorname{div}R=\nabla q ;
     \tag{BEL.16}
   \]
2. energy/profile coordinate:
   \[
     \mu_R={1\over2}\operatorname{tr}R\ge0 .
     \tag{BEL.17}
   \]

The first can be absorbed into pressure. The second cannot. It has to be part
of the admitted WKB witness ledger or it marks certificate failure.

## 6. Four-sentence result

The positive ballast in a PSD Leray-null Reynolds defect is unresolved kinetic
energy. If \(u_j\otimes u_j\rightharpoonup u\otimes u+R\), then the weak limit
of energy densities satisfies
\[
  {1\over2}|u_j|^2\rightharpoonup {1\over2}|u|^2+{1\over2}\operatorname{tr}R .
\]
Absorbing \(\operatorname{div}R=\nabla q\) into pressure removes the velocity
force, but it does not erase \((1/2)\operatorname{tr}R\). Therefore anisotropic
null covariance forces a positive energy/profile ledger item that the
ancestry, cover, and tower rows must carry.

## 7. State

This note proves the exact energy-ledger identity for positive Reynolds
ballast and records its consequence for the WKB pressure-law survivor.

It proves no legal carriage theorem for that energy ledger through
ancestry/cover/tower, no WKB profile admission theorem, no WKB
construction/exclusion theorem, no confinement constant, and no MPP closure.
