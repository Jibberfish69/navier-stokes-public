---
theorem_id: forward-gold-wkb-ballast-energy-ancestry-tower-landing-20260706
status: exact-ancestry-and-tower-landing-for-positive-reynolds-ballast-energy
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / WKB profile admission / ballast certificate rows
target_object:
  - WKBTransportDefectVanishesOrCertified.A
  - WKBTowerDefectVanishesOrCertified.A
  - WKBReynoldsDefectVanishesOrCertified.A
  - WKBCertificateCompactness.A
  - LimitOfClassTerminalArtifact.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-ballast-energy-ledger-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-ballast-energy-cover-landing-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-material-ancestry-transport-defect-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-same-law-tower-defect-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-legal-label-certificate-compactness-reduction-20260706.md
completion_truth: >-
  Strict reduction only. The positive covariance ballast
  \(\mu_R=(1/2)\operatorname{tr}R\) is unresolved kinetic energy from the same
  weak velocity branch, so after the cover landing it still has the two
  non-cover certificate burdens of an admitted WKB profile. It must lift to a
  material energy current whose transport defect relative to the limiting
  velocity vanishes or is legally carried, and it must lift to the differentiated
  same-law tower whose derivative-graph and nonlinear flux defects vanish or are
  legally carried. If either lift is absent, the positive ballast is not
  retained pressure-null supply: it is Part-side material-ancestry or same-law
  tower failure. If both lifts persist and the terminal carrier frequency is
  unbounded with nonvanishing normalized ballast mass, the already filed
  Sobolev/Field consumer applies. This proves no transport-defect vanishing
  theorem, no tower-defect vanishing theorem, no legal carriage theorem for
  nonzero defects, no WKB profile admission theorem, no WKB
  construction/exclusion theorem, no confinement constant, and no MPP closure.
---

# Positive Reynolds ballast must carry ancestry and tower

## 1. Object

The ballast-energy ledger identifies the trace of an actual PSD Reynolds defect
as positive unresolved kinetic energy:
\[
  \mu_R={1\over2}\operatorname{tr}R .
  \tag{BAT.1}
\]

The cover landing already prices the Pack-side coordinate: if \(\mu_R\) is an
admitted profile measure, it must lift to the finite/readout-compatible cover.

This note prices the two remaining non-cover coordinates. The same trace energy
is not just an observable scalar. Since it comes from the same weak velocity
branch, it must keep the same-material energy history and the same differentiated
tower ledger, or it has already lost Part-side legality.

## 2. Material energy current

Let \(\rho_{R,j}\) be the prelimit ballast-energy density or profile measure
extracted from the unresolved packet energy, and let
\[
  J_{R,j}:=u_j\rho_{R,j}.
  \tag{BAT.2}
\]

The prelimit material-energy ancestry relation has the transport form
\[
  \partial_t\rho_{R,j}+\operatorname{div}J_{R,j}=0
  \tag{BAT.3}
\]
on the selected packet/cloud, modulo the already licensed boundary or original
participation terms of the packet certificate.

Assume
\[
  \rho_{R,j}\rightharpoonup\rho_R,\qquad
  J_{R,j}\rightharpoonup J_R,\qquad
  u_j\rightharpoonup u .
  \tag{BAT.4}
\]
Then
\[
  \partial_t\rho_R+\operatorname{div}J_R=0 .
  \tag{BAT.5}
\]
Define the ballast transport defect
\[
  A_R:=J_R-u\rho_R .
  \tag{BAT.6}
\]

The positive ballast remains same-material energy only when
\[
  A_R=0
  \tag{BAT.7}
\]
in the required graph/current sense, or when \(A_R\) is legally carried as part
of the original-participation certificate. If not, the profile retains a
positive scalar energy measure but has lost the same-fluid history of that
energy.

That failure is Part-side material-ancestry failure. It is not retained
pressure-null supply.

## 3. Differentiated tower ledger

The same ballast also has a tower coordinate. At depth \(|\alpha|\le N\), write
\[
  U_{j,\alpha}:=\partial^\alpha u_j .
  \tag{BAT.8}
\]

If the WKB ballast stores derivative-level energy or covariance at carrier
frequency, the limiting tower variables \(U_\alpha\) must remain the derivatives
or finite differences of the same limiting velocity:
\[
  U_\alpha=\partial^\alpha U_0 .
  \tag{BAT.9}
\]
Equivalently, the derivative graph defect
\[
  G_\alpha:=U_\alpha-\partial^\alpha U_0
  \tag{BAT.10}
\]
must vanish or be legally carried.

The differentiated nonlinear law has the parallel flux defect. If
\[
  \partial^\alpha(u_j\otimes u_j)\rightharpoonup M_\alpha ,
  \tag{BAT.11}
\]
then
\[
  R_\alpha
  :=
  M_\alpha
  -
  \sum_{\beta\le\alpha}{\alpha\choose\beta}
  U_\beta\otimes U_{\alpha-\beta}
  \tag{BAT.12}
\]
must close modulo pressure gauge or be legally carried as a same-law tower
certificate.

Thus positive ballast at high frequency has only two tower meanings:
\[
\begin{array}{ll}
G_\alpha,\ R_\alpha\ \hbox{vanish or are legally carried}
  &\Rightarrow \hbox{the ballast is part of the admitted same-law tower},\\[1mm]
G_\alpha\ \hbox{or}\ R_\alpha\ \hbox{is lost}
  &\Rightarrow \hbox{Part-side same-law tower failure}.
\end{array}
\tag{BAT.13}
\]

The second line cannot be re-used as pressure-gauge cancellation. It is a lost
same-law certificate.

## 4. Three-row ballast landing

The PSD Leray-null covariance branch now has an explicit three-row landing for
its positive trace:
\[
\begin{array}{lll}
\hbox{cover row} &:&
  \mu_R\ \hbox{lifts to the finite/readout-compatible cover,}\\
&&\hbox{or the branch is Pack-side cover failure},\\[1mm]
\hbox{ancestry row} &:&
  A_R=J_R-u\rho_R\ \hbox{vanishes or is legally carried,}\\
&&\hbox{or the branch is Part-side material-history failure},\\[1mm]
\hbox{tower row} &:&
  G_\alpha,\ R_\alpha\ \hbox{vanish or are legally carried through }N,\\
&&\hbox{or the branch is Part-side same-law tower failure}.
\end{array}
\tag{BAT.14}
\]

If all three rows persist and the terminal WKB frequency satisfies
\[
  \lambda_j\to\infty,\qquad
  \phi_jD_j^3\mu_{R,j}\ge c_0>0 ,
  \tag{BAT.15}
\]
then the existing covariance-ballast Field consumer applies:
\[
  \|\nabla^m u_j^{\rm WKB}\|_2^2
  \gtrsim
  \phi_jD_j^3\mu_{R,j}\lambda_j^{2m}.
  \tag{BAT.16}
\]

So the branch cannot keep the positive trace as an invisible pressure-null
scalar. It is covered same-material same-tower energy, or it is a typed
certificate failure, or it is consumed by the high-Sobolev Field readout after
lawful admission.

## 5. Four-sentence result

The covariance ballast \(\mu_R=(1/2)\operatorname{tr}R\) is same-branch
unresolved kinetic energy, not pressure gauge. After it lifts to the finite
cover, it must also lift to a material energy current with
\[
  A_R=J_R-u\rho_R
\]
vanishing or legally carried. It must likewise lift to the same-law tower, with
derivative graph defects \(G_\alpha\) and differentiated flux defects
\(R_\alpha\) vanishing or legally carried. Losing either lift is Part-side
material-ancestry or tower failure; retaining both at terminal frequency is the
already installed Field-visible high-Sobolev branch.

## 6. State

This note proves the exact ancestry and tower landing for positive
ballast-energy once that ballast is identified.

It proves no transport-defect vanishing theorem for actual Navier-Stokes WKB
ballast, no tower-defect vanishing theorem, no legal carriage theorem for
nonzero defects, no WKB profile admission theorem, no WKB construction/exclusion
theorem, no confinement constant, and no MPP closure.
