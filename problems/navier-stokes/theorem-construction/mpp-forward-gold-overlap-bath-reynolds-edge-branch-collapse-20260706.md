---
theorem_id: forward-gold-overlap-bath-reynolds-edge-branch-collapse-20260706
status: strict-reduction-reynolds-edge-not-independent-evasion-branch
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - ReynoldsEdge.NotIndependentEvasionBranch
  - RefreshRow.FixedTaxDichotomy
  - FixedDensityCompensator.OrPersistentHighReWKB
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-reynolds-edge-refresh-dichotomy-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-many-cell-wkb-parameter-window-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-many-cell-wkb-support-density-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-fixed-density-compensator-routing-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-overlap-bath-survivor-front-classification-20260706.md
completion_truth: >-
  Strict branch collapse only. The Reynolds-edge refresh row is not an
  independent dense-crowd evasion source. For a supercritical residual with
  active support fraction phi, active length theta D, and producer-scale
  Reynolds number Re_D, failure of producer-clock persistence creates the
  refresh density r_ref ~ phi beta^(-8/5)/Re_D. Against any demanded fixed tax
  theta_0, either r_ref >= theta_0 and the edge supplies the fixed tax, or
  r_ref < theta_0 and the missing amount is exactly the fixed-density
  compensator residue (theta_0-r_ref)_+ mu_prod on the same producer row. If
  the residual avoids this split by producer-clock persistence, then it has
  crossed into the already named persistent high-Re WKB construction/exclusion
  branch, sharpened by Re_D theta^2 >> 1 and the many-cell WKB parameter and
  support-density windows. Thus Reynolds edge remains a routing/payer test, not
  a fourth independent evasion class. This proves no persistent high-Re WKB
  construction or exclusion, no compensator routing theorem, no fixed positive
  confinement constant, and no MPP closure.
---

# Reynolds edge is payer, compensator, or persistent high-Re WKB

## 1. Kill question

The current overlap-bath front lists a Reynolds-edge bridge next to
non-affine/broadband transport, fixed-density compensator routing, and
construction/exclusion.

The kill question is whether Reynolds edge is a separate evasion class.

It is not. Once the refresh row is measured against a fixed retained tax, the
edge is either a payer, the fixed-density compensator, or the persistent
high-Re WKB bath already named by the broadband branch.

## 2. Refresh row

The refresh dichotomy gives, for a supercritical residual at
\[
  \eta={\delta_D\over s}\sim\beta^{-4/5},
  \qquad
  \ell=\theta D,
  \tag{REB.1}
\]
the producer-clock refresh density
\[
  r_{\rm ref}
  \sim
  {\phi\beta^{-8/5}\over \operatorname{Re}_D}.
  \tag{REB.2}
\]

This is a density relative to the same producer-throughput row
\(\mu_{\rm prod}\). The refresh work over one producer clock is
\[
  r_{\rm ref}\,\mu_{\rm prod}.
  \tag{REB.3}
\]

The derivation is the cancellation from the refresh note:
\[
  {W_{\rm refresh}\over E_{\rm prod}(D)}
  \gtrsim
  {E_{\rm res}/E_{\rm prod}(D)\over \operatorname{Re}_D\theta^2}
  =
  {\phi\eta^2\over\operatorname{Re}_D}
  \sim
  {\phi\beta^{-8/5}\over\operatorname{Re}_D}.
  \tag{REB.4}
\]

## 3. Fixed-tax dichotomy

Fix a demanded retained tax density \(\theta_0>0\). The Reynolds-edge row has
only two states relative to that demand.

If
\[
  r_{\rm ref}\ge\theta_0,
  \tag{REB.5}
\]
then refresh supplies the fixed tax on the same producer row. This is a payer,
not an evasion branch.

If
\[
  r_{\rm ref}<\theta_0,
  \tag{REB.6}
\]
then the unbacked fixed-tax residue is exactly
\[
  \rho_{\theta_0}^{\rm ref}
  =
  (\theta_0-r_{\rm ref})_+\,\mu_{\rm prod}.
  \tag{REB.7}
\]

For beta-small rows where \(r_{\rm ref}\le \theta_0/2\), this residue is
producer-equivalent:
\[
  {\theta_0\over2}\mu_{\rm prod}
  \le
  \rho_{\theta_0}^{\rm ref}
  \le
  \theta_0\mu_{\rm prod}.
  \tag{REB.8}
\]

That is the same fixed-density compensator measure already priced in the
fixed-density compensator note. The edge has not created a new class. It has
chosen the compensator branch.

## 4. Persistence exit from the split

The refresh split applies when the residual fails producer-clock persistence.
The persistence number is
\[
  P_{\rm pers}
  =
  \operatorname{Re}_D\theta^2.
  \tag{REB.9}
\]

If
\[
  P_{\rm pers}\gg1,
  \tag{REB.10}
\]
then the residual does not need repeated refresh over one producer clock. This
is exactly the persistent high-Re branch.

The many-cell WKB notes sharpen that branch. In the cheap pressure row,
\[
  \theta\lesssim\beta^{24/25},
  \qquad
  \beta^{-12/5}\lesssim N\lesssim\beta^{12/5}\theta^{-5},
  \qquad
  \operatorname{Re}_D\gg\theta^{-2}.
  \tag{REB.11}
\]

If fixed support density is demanded, the support-density split gives the
sharper dense branch
\[
  \theta\lesssim\beta^{6/5},
  \qquad
  N\sim\theta^{-3},
  \qquad
  \operatorname{Re}_D\gg\theta^{-2}.
  \tag{REB.12}
\]

Sparse support routes to compensator/nonlocal allocation unless an unbounded
allocation payer is proved.

## 5. Branch collapse

Therefore the Reynolds-edge bridge is not a fourth independent evasion source:
\[
\begin{array}{ll}
r_{\rm ref}\ge\theta_0
  &\Rightarrow \text{fixed refresh payer},\\[1mm]
r_{\rm ref}<\theta_0
  &\Rightarrow \text{fixed-density compensator residue},\\[1mm]
\operatorname{Re}_D\theta^2\gg1
  &\Rightarrow \text{persistent high-Re WKB construction/exclusion branch}.
\end{array}
\tag{REB.13}
\]

The edge remains important as a routing test. It decides whether the bath pays
through refresh, leaves a compensator, or has enough Reynolds room to enter the
persistent WKB problem.

It is not, by itself, an evading configuration class.

## 6. Four-sentence result

The Reynolds-edge refresh row has density
\[
  r_{\rm ref}\sim\phi\beta^{-8/5}/\operatorname{Re}_D
\]
on the same producer row. Compared with a fixed retained tax \(\theta_0\), it
either backs the tax or leaves the exact residue
\((\theta_0-r_{\rm ref})_+\mu_{\rm prod}\), which is the fixed-density
compensator branch. If the residual avoids refresh by lasting for a producer
clock, it has entered the persistent high-Re WKB construction/exclusion branch
with \(\operatorname{Re}_D\theta^2\gg1\). Thus Reynolds edge is a payer/router,
not an independent dense-crowd evasion class.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
