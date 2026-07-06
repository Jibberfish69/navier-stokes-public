---
theorem_id: forward-gold-wkb-same-law-tower-defect-fork-20260706
status: exact-same-law-tower-closedness-criterion-derivative-and-nonlinear-defects-zero-or-certified
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / WKB profile admission / legal certificate compactness
target_object:
  - WKBCertificateCompactness.A
  - WKBDifferentiatedSameLawTowerClosedness.A
  - WKBTowerDefectVanishesOrCertified.A
  - LimitOfClassTerminalArtifact.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-legal-label-certificate-compactness-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-pressure-law-reynolds-defect-closure-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-material-ancestry-transport-defect-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-finite-cover-certificate-compactness-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-wkb-admission-microlocal-profile-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-wkb-field-admission-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/r3-cm-contrapositive-sobolev-hs-energy-20260528.md
  - problems/navier-stokes/theorem-construction/mpp-material-packet-closure-program.md
completion_truth: >-
  Strict reduction only. The differentiated same-law tower coordinate in
  WKBCertificateCompactness.A is closed under WKB profile passage only after
  two defects are controlled. First, the derivative graph must close: the
  limiting tower variables must be the actual derivatives or finite
  differences of the limiting same Navier-Stokes velocity, or the derivative
  graph defect must be legally carried. Second, the differentiated nonlinear
  law must close: the weak limits of differentiated products must equal the
  differentiated products of the limiting tower variables, modulo pressure
  gauge and legally carried commutator/tower defects. Weak WKB convergence
  alone is insufficient: \(u_j=j^{-1}\sin(jy)e_1\) converges uniformly to zero
  while \(\partial_y u_j=\cos(jy)e_1\) carries nonzero profile mass, so an
  observable derivative tower can survive after the same field's actual
  derivative tower has vanished. Such a limit is differentiated same-law tower
  loss, hence Part-side certificate failure or Field-side consumer only after
  lawful admission. This note proves the closedness criterion and the
  derivative-profile countermodel; it does not prove tower-defect vanishing or
  legal carriage for actual Navier-Stokes WKB packets, does not prove
  WKBCertificateCompactness.A, does not prove profile admission, does not
  decide the confinement constant, and does not close the MPP.
---

# WKB same-law tower: derivative and nonlinear defect fork

## 1. Object

The certificate-compactness row has four coordinates:

1. actual velocity-pressure law;
2. material ancestry or licensed original participation;
3. finite/readout-compatible cover;
4. differentiated same-law tower.

The first three now have exact forks. The last coordinate is the one consumed
by the Sobolev/H^s CM face theorem: the WKB readout becomes a Field-side object
only after it is a synchronized same-solution terminal witness with a
differentiated same-law tower through the chosen depth \(N\).

This note tests what closedness of that tower means.

## 2. Two tower relations

Write
\[
  U_{j,\alpha}:=\partial^\alpha u_j,
  \qquad
  P_{j,\alpha}:=\partial^\alpha p_j,
  \qquad
  |\alpha|\le N .
  \tag{TDC.1}
\]

A differentiated same-law tower has two separate relations.

First, it is a derivative graph over one field:
\[
  U_{j,\alpha}=\partial^\alpha U_{j,0}.
  \tag{TDC.2}
\]

Second, every rung satisfies the differentiated Navier-Stokes law:
\[
  \partial_tU_{j,\alpha}
  +\partial^\alpha\operatorname{div}(u_j\otimes u_j)
  +\nabla P_{j,\alpha}
  -\nu\Delta U_{j,\alpha}
  =0 .
  \tag{TDC.3}
\]

Weak WKB profile passage can lose either relation. The profile may carry a
nonzero derivative readout which is not the derivative of the limiting velocity,
or it may carry differentiated product fluxes which are not the differentiated
products of the limiting tower variables.

## 3. Derivative-graph closedness

Assume
\[
  U_{j,0}\to U_0
  \quad\hbox{and}\quad
  U_{j,\alpha}\to U_\alpha
  \tag{TDC.4}
\]
in a topology strong enough to pass distributional derivatives through the
limit. Then
\[
  U_\alpha=\partial^\alpha U_0 .
  \tag{TDC.5}
\]

This is the first certificate clause.

If the limiting WKB profile stores a derivative-level measure or microlocal
energy not represented by \(\partial^\alpha U_0\), define the derivative graph
defect
\[
  G_\alpha:=U_\alpha-\partial^\alpha U_0
  \tag{TDC.6}
\]
in the chosen tower-coordinate topology. The derivative graph closes only when
\[
  G_\alpha=0
  \tag{TDC.7}
\]
for every \(|\alpha|\le N\), or when \(G_\alpha\) is itself carried as a legal
tower certificate.

## 4. Differentiated nonlinear-law closedness

Assume, in distributions,
\[
  \partial^\alpha(u_j\otimes u_j)\rightharpoonup M_\alpha .
  \tag{TDC.8}
\]
If the limiting tower variables are \(U_\beta\), the expected differentiated
product is
\[
  \sum_{\beta\le\alpha}{\alpha\choose\beta}
  U_\beta\otimes U_{\alpha-\beta}.
  \tag{TDC.9}
\]
Define the tower flux defect
\[
  R_\alpha
  :=
  M_\alpha
  -
  \sum_{\beta\le\alpha}{\alpha\choose\beta}
  U_\beta\otimes U_{\alpha-\beta}.
  \tag{TDC.10}
\]

Passing (TDC.3) to the limit gives
\[
  \partial_tU_\alpha
  +\operatorname{div}
  \sum_{\beta\le\alpha}{\alpha\choose\beta}
  U_\beta\otimes U_{\alpha-\beta}
  +\nabla P_\alpha
  -\nu\Delta U_\alpha
  =
  -\operatorname{div}R_\alpha .
  \tag{TDC.11}
\]

Thus the differentiated same-law rung closes only when
\[
  \mathbb P\,\operatorname{div}R_\alpha=0
  \tag{TDC.12}
\]
with compatible pressure-rung coordinates, or when \(R_\alpha\) is legally
carried as a tower certificate.

This is the tower analogue of the Reynolds-defect fork at rung zero.

## 5. Derivative-profile countermodel

The derivative-graph obstruction is visible without nonlinear complexity. Let
\[
  u_j(x,y,z)=j^{-1}\sin(jy)e_1 .
  \tag{TDC.13}
\]
Then
\[
  \operatorname{div}u_j=0,
  \qquad
  u_j\to0\quad\hbox{uniformly}.
  \tag{TDC.14}
\]
But
\[
  \partial_yu_j=\cos(jy)e_1
  \tag{TDC.15}
\]
has nonzero WKB/microlocal profile mass:
\[
  |\partial_yu_j|^2\rightharpoonup {1\over2}|e_1|^2 .
  \tag{TDC.16}
\]

The limiting velocity is zero, so its actual derivative tower is zero:
\[
  \partial_y u=0.
  \tag{TDC.17}
\]
An observable profile which keeps the derivative-level mass in (TDC.16) is
therefore not the differentiated tower of the limiting same field unless that
defect is carried as a legal tower certificate.

This is not a Navier-Stokes blow-up construction. It is the exact weak-topology
warning: derivative readout compactness does not imply differentiated
same-law-tower compactness.

## 6. Reduced burden

The tower coordinate in `WKBCertificateCompactness.A` is now:

```text
WKBTowerDefectVanishesOrCertified.A
```

Statement shape:

For the actual same-solution WKB terminal branch, the limiting tower variables
through depth \(N\) either are the derivatives/finite differences of the same
limiting velocity and satisfy the differentiated Navier-Stokes tower modulo
pressure gauge, or the derivative-graph defects \(G_\alpha\) and nonlinear
tower defects \(R_\alpha\) are legally carried as same-solution tower
certificates. If neither holds, the WKB profile has lost the differentiated
same-law tower.

The proof-program landing is:
\[
\begin{array}{ll}
\text{tower certificate fails}
  &\Rightarrow \text{Part-side same-law tower failure},\\[1mm]
\text{tower certificate persists with high Sobolev readout}
  &\Rightarrow \text{Field-side Sobolev consumer}.
\end{array}
\tag{TDC.18}
\]

## 7. Four-sentence result

The differentiated same-law tower is not closed under WKB profile compactness
by derivative readout alone. The limit must retain both the derivative graph
over the same velocity and the differentiated nonlinear Navier-Stokes law; the
defects are \(G_\alpha=U_\alpha-\partial^\alpha U_0\) and the flux defects
\(R_\alpha\). A high-frequency example with
\(u_j=j^{-1}\sin(jy)e_1\) shows why: the base velocity converges to zero while
the first derivative carries nonzero profile mass. Losing this certificate is
Part-side same-law tower failure, while retaining it with nonzero high Sobolev
readout is the Field-side consumer already installed.

## 8. State

This note proves the differentiated-tower closedness criterion and the
derivative-profile countermodel.

It proves no tower-defect vanishing theorem for actual Navier-Stokes WKB
packets, no legal carriage theorem for nonzero tower defects, no
`WKBCertificateCompactness.A`, no profile admission theorem, no WKB
construction/exclusion theorem, no confinement constant, and no MPP closure.
