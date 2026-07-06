---
theorem_id: forward-gold-normalized-crow-sidecar-doubling-comparison-20260706
status: normalized-crow-sidecar-single-encounter-doubling-excluded-full-interval-certification-open
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / doubling comparison sidecar
target_object:
  - NormalizedCrowSidecarDoubling.NO
  - FullCrowIntervalCertification.OPEN
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-goal-decide-the-confinement-constant-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-kill-angle-sheet-hunt-self-cell-sweep-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-kill-integral-crow-reduction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-doubling-comparison-certification-spec-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-high-re-edge-uniform-cap-obstruction-20260705.md
completion_truth: >-
  Exact certification for the normalized Crow-lifetime sidecar only. For the
  sidecar expression I(beta)=(3*sqrt(3)/8) beta^2 log(1/beta) on 0<beta<=1,
  the maximum occurs at beta=e^(-1/2) and equals 3*sqrt(3)/(16e). This is
  strictly below log 2 by the elementary bounds sqrt(3)<2, e>2, and log 2>1/2.
  Therefore the normalized sidecar excludes a single coherent two-tube event
  completing a factor-two record. This does not execute the full doubling
  certification spec: the full marginal Crow-band comparison still needs
  interval inputs for gamma_eff(kappa), Delta, the Crow eigenmode profile
  factor, and the viscous damping constant, and high-Re certification remains
  restricted by the K5 high-Re payer obstruction. No full pair-cell kill
  integral, confinement constant, composition theorem, or MPP closure is
  claimed.
---

# Normalized Crow sidecar: doubling comparison

## 1. Kill condition

The normalized sidecar from the kill-angle note gives the imported
Crow-lifetime stretch cap

\[
  I(\beta)=\frac{3\sqrt3}{8}\,\beta^2\log\frac1\beta,
  \qquad 0<\beta\le1.
  \tag{NC.1}
\]

The single-encounter doubling channel survives this sidecar only if

\[
  \sup_{0<\beta\le1} I(\beta)\ge\log2.
  \tag{NC.2}
\]

## 2. Exact maximum

Differentiate:

\[
  I'(\beta)
  =
  \frac{3\sqrt3}{8}\,\beta
  \left(2\log\frac1\beta-1\right).
  \tag{NC.3}
\]

Thus the only interior critical point is

\[
  \beta=e^{-1/2}.
  \tag{NC.4}
\]

The endpoints give zero, so this is the maximum:

\[
  \sup_{0<\beta\le1} I(\beta)
  =
  \frac{3\sqrt3}{16e}.
  \tag{NC.5}
\]

## 3. Exact comparison with \(\log2\)

Use only elementary bounds:

\[
  \sqrt3<2,\qquad e>2,\qquad \log2=\int_1^2\frac{dx}{x}>\frac12.
  \tag{NC.6}
\]

Then

\[
  \frac{3\sqrt3}{16e}
  <
  \frac{6}{32}
  =
  \frac{3}{16}
  <
  \frac12
  <
  \log2.
  \tag{NC.7}
\]

Therefore

\[
  \sup_{0<\beta\le1} I(\beta)<\log2.
  \tag{NC.8}
\]

## 4. Consequence

Inside this normalized Crow-lifetime sidecar, a single coherent two-tube
encounter cannot complete a factor-two record. A factor-two record would need
multiple encounters, a non-normalized physical input that changes the cap, or a
different high-Re/crowd/custody funding mechanism.

This does not close the full item-2 certification. The full comparison is

\[
  K(\kappa)
  =
  \frac{3\sqrt3}{16}\,
  \Delta^2
  \frac{\kappa^2}{\gamma_{\rm eff}(\kappa)}
  \times
  \text{profile factor},
  \tag{NC.9}
\]

on the marginal/unit-Re branch, with interval inputs named in the certification
spec. The high-Re branch remains outside this certification until the
return-race, custody, or sideband/crowd payer is proved.

## 5. Four-sentence result

The normalized Crow sidecar has exact maximum
\[
  3\sqrt3/(16e).
\]
That number is strictly below \(\log2\), by elementary inequalities alone.
So the normalized sidecar excludes single-encounter doubling. The full
Crow-band doubling comparison is still open because the physical interval
inputs and the high-Re payer have not been certified.
