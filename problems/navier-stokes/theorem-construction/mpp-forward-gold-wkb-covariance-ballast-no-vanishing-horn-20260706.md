---
theorem_id: forward-gold-wkb-covariance-ballast-no-vanishing-horn-20260706
status: exact-no-vanishing-energy-horn-for-psd-covariance-ballast
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / WKB profile admission / pressure-law certificate
target_object:
  - WKBReynoldsDefectVanishesOrCertified.A
  - NonvanishingBallast.FieldFaceReduction
  - LimitOfClassTerminalArtifact.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-null-covariance-ballast-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-ballast-energy-ledger-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-covariance-ballast-field-readout-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-wkb-field-admission-reduction-20260706.md
completion_truth: >-
  Exact branch kill for PSD covariance ballast. The pressure-Hessian moment K
  has a vanishing-energy horn because K can stay nonzero while a^2 vanishes as
  lambda^{-2}. Positive covariance ballast has no analogous horn. If
  R=(tau/3)I+A is positive semidefinite with tr A=0, then
  |A|_F <= sqrt(2/3) tau = 2 sqrt(2/3) mu_R. Therefore, on any normalized WKB
  bank, vanishing trace-energy mass phi D^3 mu_R forces the anisotropic
  covariance mass phi D^3 |A|_F to vanish. If the trace mass has positive
  limsup, a terminal subtail has nonvanishing mass and the installed
  ballast-to-Field consumer applies after witness admission. Thus the PSD
  Leray-null covariance branch is only nonvanishing admitted ballast, vanished
  covariance defect, certificate failure, or explicit signed-stress carriage.
  This proves no legal carriage/admission theorem, no WKB
  construction/exclusion theorem, no confinement constant, and no MPP closure.
---

# PSD covariance ballast has no vanishing-energy horn

## 1. Object

The terminal WKB pressure-Hessian moment \(K\) has a real vanishing-energy
horn. For a WKB packet,
\[
  |K|\sim a^2\lambda^2,
  \qquad
  a^2\sim {|K|\over\lambda^2}.
  \tag{NVH.1}
\]
Thus \(K\) can remain nonzero while the kinetic energy \(a^2\) tends to zero.
That is why the terminal-frequency fork has a high-factor source branch.

Positive covariance ballast is different. Its trace is the energy:
\[
  \mu_R={1\over2}\operatorname{tr}R .
  \tag{NVH.2}
\]
This note records the consequence: a PSD null covariance cannot keep
anisotropic stress while its trace ballast vanishes.

## 2. Pointwise and measure inequality

Let
\[
  R={\tau\over3}I+A,\qquad \operatorname{tr}A=0,\qquad R\ge0 .
  \tag{NVH.3}
\]
The ballast inequality gives
\[
  \tau\ge\sqrt{3\over2}|A|_F.
  \tag{NVH.4}
\]
Equivalently,
\[
  |A|_F\le\sqrt{2\over3}\,\tau
  =
  2\sqrt{2\over3}\,\mu_R .
  \tag{NVH.5}
\]

The same statement holds for matrix-valued measures by taking the
Radon-Nikodym density of \(R\) with respect to its trace measure \(\tau\).
Thus for every nonnegative test weight \(\psi\),
\[
  \int \psi\,d|A|
  \le
  \sqrt{2\over3}\int \psi\,d\tau
  =
  2\sqrt{2\over3}\int\psi\,d\mu_R .
  \tag{NVH.6}
\]

So trace-energy disappearance forces anisotropic covariance disappearance.

## 3. Normalized terminal bank consequence

On a normalized terminal \(D_j\)-bank, set
\[
  M_j:=\phi_jD_j^3\mu_{R,j},
  \qquad
  B_j:=\phi_jD_j^3|A_j|_F .
  \tag{NVH.7}
\]
Then
\[
  B_j\le 2\sqrt{2\over3}\,M_j .
  \tag{NVH.8}
\]

Therefore
\[
  M_j\to0
  \quad\Longrightarrow\quad
  B_j\to0 .
  \tag{NVH.9}
\]

The vanishing trace branch is not a hidden pressure-law survivor. It is
vanishing PSD covariance anisotropy.

## 4. Intermittency is a subtail fork

If
\[
  \limsup_j M_j>0,
  \tag{NVH.10}
\]
then there is a terminal subtail with
\[
  M_j\ge c_0>0 .
  \tag{NVH.11}
\]
On that subtail, the covariance-ballast Field-readout consumer applies after
same-solution witness admission:
\[
  \|\nabla^m u_j^{\rm WKB}\|_2^2
  \gtrsim
  M_j\lambda_j^{2m}.
  \tag{NVH.12}
\]

If no such subtail exists in the retained terminal witness, then \(M_j\to0\)
along that witness and the anisotropic covariance mass vanishes by (NVH.9).
Any record effect still attributed to intermittent arrivals is not a fixed
retained PSD null covariance branch. It is refresh, reselection, source flux,
or a separate signed-stress certificate.

## 5. Corrected fork

The PSD Leray-null covariance branch is:

```text
positive trace ballast has nonzero terminal subtail
  -> after witness admission, Field-visible high Sobolev readout;
trace ballast vanishes on the retained terminal witness
  -> trace-free anisotropic covariance vanishes with it;
positive trace survives only outside the legal witness
  -> cover / ancestry / tower / admission failure;
stress is not PSD covariance
  -> requires explicit signed-stress certificate.
```

There is no fifth branch in which trace energy vanishes while the PSD
anisotropic null covariance remains as retained pressure service.

## 6. Four-sentence result

The pressure-Hessian moment \(K\) can have a vanishing-energy horn because
\(|K|\sim a^2\lambda^2\). PSD covariance ballast cannot: the anisotropic part
obeys \(|A|_F\le 2\sqrt{2/3}\,\mu_R\). Hence vanishing normalized trace energy
forces vanishing normalized anisotropic covariance. A positive limsup gives a
nonvanishing terminal subtail and the already installed Field-readout consumer
after admission.

## 7. State

This note kills the vanishing-energy horn for PSD covariance ballast.

It proves no legal carriage theorem through cover, ancestry, or tower; no WKB
profile admission theorem; no WKB construction/exclusion theorem; no crowd-cell
decision; no confinement constant; and no MPP closure.
