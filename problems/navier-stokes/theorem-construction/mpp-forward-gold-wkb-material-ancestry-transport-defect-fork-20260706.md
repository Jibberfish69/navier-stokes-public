---
theorem_id: forward-gold-wkb-material-ancestry-transport-defect-fork-20260706
status: exact-material-ancestry-closedness-criterion-transport-defect-zero-or-certified
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / WKB profile admission / legal certificate compactness
target_object:
  - WKBCertificateCompactness.A
  - WKBMaterialAncestryClosedness.A
  - WKBTransportDefectVanishesOrCertified.A
  - LimitOfClassTerminalArtifact.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-legal-label-certificate-compactness-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-pressure-law-reynolds-defect-closure-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-witness-closed-graph-admission-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-wkb-admission-microlocal-profile-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-actual-wkb-carrier-extraction-finite-menu-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-pulse-same-witness-admission-recheck-20260620.md
completion_truth: >-
  Strict reduction only. The material-ancestry/original-participation
  coordinate in WKBCertificateCompactness.A is closed under WKB profile passage
  only after either Lagrangian flow maps compactify strongly enough to pass the
  ODE relation to the limit, or the Eulerian transport current has zero
  transport defect relative to the limiting velocity, or that defect is carried
  as a legal same-solution certificate. Weak WKB convergence alone is
  insufficient: a divergence-free oscillatory shear can converge weakly to zero
  while material trajectories selected on favorable phases converge to a curve
  with nonzero velocity. Such a limit has an observable curve/profile but has
  lost same-fluid ancestry. This note proves the flow/transport closedness
  criterion and the weak-topology countermodel; it does not prove compactness
  or defect-vanishing for actual Navier-Stokes WKB packets, does not prove
  WKBCertificateCompactness.A, does not prove profile admission, does not
  decide the confinement constant, and does not close the MPP.
---

# WKB material ancestry: transport defect fork

## 1. Object

The certificate-compactness reduction left four legality coordinates:

1. actual velocity-pressure law;
2. material ancestry or licensed original participation;
3. finite/readout-compatible cover;
4. differentiated same-law tower.

The pressure-law coordinate is already sharpened by the Reynolds-defect fork:
weak WKB limits preserve the Navier-Stokes law only when the quadratic defect is
killed modulo pressure gauge or legally carried.

This note gives the analogous test for the second coordinate. A limiting WKB
profile is not same-solution merely because its observable phase labels and
pressure-service moment converge. The same-fluid history has to converge too.

## 2. Lagrangian closedness criterion

Let \(Q=[t_0,T]\times K\) be a compact spacetime cylinder. Suppose
\[
  \dot\gamma_j(t)=u_j(t,\gamma_j(t)),
  \qquad
  \gamma_j(t_0)=a_j,
  \tag{MAT.1}
\]
with each \(\gamma_j\) an actual material trajectory for the prelimit smooth
Navier-Stokes branch.

Assume:
\[
  a_j\to a,\qquad
  \gamma_j\to\gamma\quad\hbox{uniformly on }[t_0,T],
  \tag{MAT.2}
\]
and
\[
  u_j\to u
  \quad\hbox{in }L^1_t C^0_x(K).
  \tag{MAT.3}
\]
Then the material relation is closed. Indeed,
\[
  \gamma_j(t)=a_j+\int_{t_0}^t u_j(s,\gamma_j(s))\,ds.
  \tag{MAT.4}
\]
Passing to the limit in (MAT.4) gives
\[
  \gamma(t)=a+\int_{t_0}^t u(s,\gamma(s))\,ds.
  \tag{MAT.5}
\]
Thus
\[
  \dot\gamma(t)=u(t,\gamma(t))
  \tag{MAT.6}
\]
in the integral sense.

Consequently, a sufficient Lagrangian certificate compactness row is:

```text
uniform flow-map compactness + strong enough velocity convergence along the
selected material paths.
```

The first part can come from an Arzela-Ascoli input on the paths or flow maps.
The second part is the load-bearing clause: weak WKB convergence by itself does
not pass \(u_j(t,\gamma_j(t))\) to \(u(t,\gamma(t))\).

## 3. Eulerian transport-current form

For a measure-level profile, material ancestry can also be expressed as a
transport current. Let \(\rho_j\) be the packet/cloud ancestry measure and
\[
  J_j:=u_j\rho_j.
  \tag{MAT.7}
\]
The prelimit ancestry relation is
\[
  \partial_t\rho_j+\operatorname{div}J_j=0.
  \tag{MAT.8}
\]

Assume
\[
  \rho_j\rightharpoonup\rho,\qquad
  J_j\rightharpoonup J,\qquad
  u_j\rightharpoonup u.
  \tag{MAT.9}
\]
Then
\[
  \partial_t\rho+\operatorname{div}J=0.
  \tag{MAT.10}
\]
Define the transport defect
\[
  A:=J-u\rho.
  \tag{MAT.11}
\]
The limiting density is transported by the limiting velocity only when
\[
  \partial_t\rho+\operatorname{div}(u\rho)=0,
  \tag{MAT.12}
\]
equivalently
\[
  \operatorname{div}A=0
  \tag{MAT.13}
\]
for the scalar continuity equation. For path-level original participation,
the stronger graph condition
\[
  J=u\rho
  \tag{MAT.14}
\]
or a legally carried current defect is the natural certificate: a solenoidal
hidden current may be invisible to the scalar density equation, but it is not
invisible to same-fluid ancestry.

Thus the Eulerian certificate fork is:

```text
transport defect vanishes in the required graph/current sense, or the defect is
itself part of the legal original-participation certificate.
```

If neither clause holds, the limiting profile has lost material ancestry.

## 4. Weak topology countermodel

The failure is elementary even with divergence-free fields. Work locally on the
torus and set
\[
  u_j(x,y,z)=(\sin(jy),0,0).
  \tag{MAT.15}
\]
Then
\[
  \operatorname{div}u_j=0,
  \qquad
  u_j\rightharpoonup0.
  \tag{MAT.16}
\]

Choose phases
\[
  y_j={\pi/2+2\pi m_j\over j}\to0
  \tag{MAT.17}
\]
and material curves
\[
  \gamma_j(t)=(t,y_j,0).
  \tag{MAT.18}
\]
Since \(\sin(jy_j)=1\),
\[
  \dot\gamma_j(t)=u_j(\gamma_j(t)).
  \tag{MAT.19}
\]
But
\[
  \gamma_j\to\gamma(t)=(t,0,0),
  \qquad
  u_j\rightharpoonup0.
  \tag{MAT.20}
\]
The limiting curve satisfies
\[
  \dot\gamma(t)=(1,0,0)\ne0=u(\gamma(t)).
  \tag{MAT.21}
\]

So material trajectories selected from favorable WKB phases can converge to an
observable path that is not a material trajectory for the weak limiting
velocity. This is not a Navier-Stokes blow-up construction. It is the exact
topological warning: the material-ancestry graph is not closed under weak WKB
velocity convergence.

## 5. Reduced burden

The ancestry coordinate in `WKBCertificateCompactness.A` is now:

```text
WKBTransportDefectVanishesOrCertified.A
```

Statement shape:

For the actual same-solution WKB terminal branch, the selected material paths,
flow maps, or ancestry currents either compactify so that the limiting profile
is transported by the limiting Navier-Stokes velocity, or the transport defect
\[
  A=J-u\rho
\]
is legally carried as an original-participation certificate. If neither holds,
the limiting WKB profile is an observable microlocal object with lost
same-fluid history.

This is a Part-side participation/tower failure, not retained pressure-service
supply.

## 6. Four-sentence result

The material-ancestry certificate is not closed under weak WKB convergence by
observable profile compactness alone. Passing material histories to a limiting
profile requires either strong enough flow-map compactness to pass the ODE
relation, or an Eulerian transport current whose defect relative to the
limiting velocity vanishes or is legally carried. A simple divergence-free
oscillatory shear shows the weak topology failure: legal prelimit material
paths can converge to a curve not transported by the weak limiting velocity.
Failure of this test is original-participation / Part-side certificate loss,
not admitted retained WKB supply.

## 7. State

This note proves the Lagrangian and Eulerian closedness criteria for the
material-ancestry certificate and gives the weak-topology countermodel.

It proves no actual Navier-Stokes WKB flow-map compactness theorem, no
transport-defect vanishing theorem, no legal carriage theorem for a nonzero
transport defect, no `WKBCertificateCompactness.A`, no profile admission, no
WKB construction/exclusion theorem, no confinement constant, and no MPP
closure.
