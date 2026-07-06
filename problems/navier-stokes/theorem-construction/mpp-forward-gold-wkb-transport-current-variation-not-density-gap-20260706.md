---
theorem_id: forward-gold-wkb-transport-current-variation-not-density-gap-20260706
status: exact-obstruction-transport-current-variation-alone-does-not-force-density-anti-equidistribution
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB legal anti-equidistribution
target_object:
  - TransportCurrentVariation.NO-DENSITY-GAP-BY-ITSELF
  - WKBTransportDefectVanishesOrCertified.A
  - DensityLevelAntiEquidistribution.NECESSARY
  - NearUniformWKBPressureBath.CONSTRUCTION-EXCLUSION
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-material-ancestry-volume-preserving-not-density-gap-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-material-ancestry-transport-defect-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-transport-defect-current-variation-floor-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-service-coordinate-mismatch-row-distance-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-gram-gap-anti-equidistribution-necessary-condition-20260706.md
completion_truth: >-
  Exact obstruction to one possible ancestry-side density-gap source. A
  nonzero transport defect carried as same-packet current variation does not by
  itself force WKB population density away from uniform. If rho=f omega and
  A=w rho, the current variation is int |w| f d omega; the uniform density
  f=1 can carry nonzero divergence-free current variation by choosing a
  tangential/periodic relative velocity w. Thus current variation is a real
  material-history/action currency, but it is not an L^2 density
  anti-equidistribution theorem. Any use of transport current in the crowd-cell
  Gram gap must be an explicit current/action payer, a service row-distance
  after w is tied to a fixed service coordinate, added ancestry carrier for a
  singular current, material-history failure, or construction/exclusion of the
  near-uniform same-fluid WKB bath. This proves no current-variation budget
  bound, no transport-defect vanishing theorem, no legal carriage theorem, no
  construction/exclusion theorem, no confinement constant, and no MPP closure.
---

# Transport current variation is not density anti-equidistribution

## 1. Object

The material-ancestry split now leaves transport current variation as one
possible ancestry-side branch. The transport-defect note proves the exact
current floor:
\[
  A=J-u\rho=w\rho
  \quad\Longrightarrow\quad
  |A|=|w|\rho .
  \tag{TVG.1}
\]

This note checks whether that current variation can also be used as the density
anti-equidistribution needed by the cross-cell Gram gap:
\[
  \|f-1\|_{L^2_\omega}\ge c.
  \tag{TVG.2}
\]

It cannot, without an additional row tying the current to a nonuniform service
coordinate.

## 2. Uniform-density current model

Let the WKB population mass be
\[
  \rho=f\,\omega,
  \qquad
  f\ge0,
  \qquad
  \int f\,d\omega=1.
  \tag{TVG.3}
\]

Let the transport defect be carried by the same mass:
\[
  A=w\rho=w f\,\omega .
  \tag{TVG.4}
\]

Then the current variation is
\[
  |A|(X)=\int_X |w| f\,d\omega.
  \tag{TVG.5}
\]

Choose the uniform density
\[
  f\equiv1.
  \tag{TVG.6}
\]

On a periodic label cell, or on a compact cell with tangential circulation, one
may choose a nonzero divergence-free relative velocity \(w\) so that
\[
  \operatorname{div}_\omega(w\,\omega)=0,
  \qquad
  \int_X |w|\,d\omega>0.
  \tag{TVG.7}
\]

Then
\[
  \|f-1\|_{L^2_\omega}=0,
  \qquad
  |A|(X)>0.
  \tag{TVG.8}
\]

Thus nonzero current variation is compatible with exactly uniform population
density. Current variation does not imply density anti-equidistribution.

## 3. What the current variation does prove

The transport-defect current-variation floor remains exact and useful:
\[
  A=w\rho
  \quad\Longrightarrow\quad
  |A|(Q)=\int_Q |w|\,d\rho .
  \tag{TVG.9}
\]

So a nonzero hidden current is not free. It is paid in current/action currency.

But the currency is not the same as the density distance:
\[
  |A|(Q)>0
  \not\Longrightarrow
  \|f-1\|_{L^2_\omega}>0 .
  \tag{TVG.10}
\]

The Gram-gap branch needs a lower bound on density separation unless the
current enters as its own explicit payer/certificate.

## 4. Current rows and service rows

A current moment row has the form
\[
  \int_X \Psi\cdot w\,f\,d\omega=\delta .
  \tag{TVG.11}
\]

By the total-variation floor,
\[
  |\delta|
  \le
  \|\Psi\|_{L^\infty}|A|(X).
  \tag{TVG.12}
\]

So a nonzero current moment forces current variation:
\[
  |A|(X)\ge {|\delta|\over \|\Psi\|_{L^\infty}}.
  \tag{TVG.13}
\]

It still does not force \(f\) away from uniform. With \(f\equiv1\), the row can
be carried by choosing \(w\) in the current coordinate whenever the current
certificate permits that relative motion.

To turn a current row into density anti-equidistribution, one needs an added
law that ties \(w\) to a fixed scalar or vector service function of the labels,
for example \(w=m(x)\) or a finite-dimensional service map. Then the branch has
become the already filed service-coordinate row-distance problem:
\[
  \|f-1\|_{L^2_\omega}
  \ge
  {|\delta|\over\|m-\int m\,d\omega\|_{L^2_\omega}}
  \tag{TVG.14}
\]
in the scalar case, or the finite/high-rank Gram formula in general.

## 5. Singular current

If the current defect has a singular part
\[
  A=w\rho+A^\perp,
  \qquad
  A^\perp\perp\rho,
  \tag{TVG.15}
\]
then \(A^\perp\) is not carried by the named population density \(f\omega\).
It needs added legal ancestry mass/current, or it is Part-side material-history
failure.

That is also not a density anti-equidistribution theorem for the original
population. It is an added-carrier branch or a certificate failure.

## 6. Reduced branch

The ancestry-side transport branch now splits as:
\[
\begin{array}{ll}
A=0
  &\text{transport defect vanishes,}\\[1mm]
A=w\rho,\ |A|>0
  &\text{explicit current/action payer, no density gap by itself,}\\[1mm]
\text{current tied to fixed service row}
  &\text{service-coordinate row distance,}\\[1mm]
A^\perp\ne0
  &\text{added ancestry carrier or Part-side failure,}\\[1mm]
\text{near-uniform legal bath persists}
  &\text{construction/exclusion.}
\end{array}
\tag{TVG.16}
\]

So transport current variation is no longer an untyped source for the
cross-cell density gap. It is either a separate payer, a row-distance problem,
an added-carrier / Part-side certificate issue, or part of the near-uniform bath
construction/exclusion branch.

## 7. Four-sentence result

A transport defect carried by the same packet has exact cost
\[
  A=w\rho,\qquad |A|=|w|\rho .
\]
That cost is current variation, not density separation: the uniform WKB density
can carry nonzero divergence-free relative current. A current moment therefore
forces current/action payment, and becomes a density-gap theorem only after an
extra law ties the current to a fixed service coordinate. Thus transport-current
variation is an explicit payer or certificate branch, not a hidden
anti-uniform WKB density theorem.

## 8. State

This note proves only the obstruction
\[
  |A|>0 \not\Rightarrow \|f-1\|_{L^2_\omega}>0.
\]

It proves no bound on total current variation for actual Navier-Stokes WKB
packets, no transport-defect vanishing theorem, no legal carriage theorem, no
near-uniform WKB bath construction or exclusion, no confinement constant, and no
MPP closure.
