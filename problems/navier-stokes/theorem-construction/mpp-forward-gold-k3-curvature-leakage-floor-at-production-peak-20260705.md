---
theorem_id: forward-gold-k3-curvature-leakage-floor-at-production-peak-20260705
status: codex-gated-exact-instantaneous-curve-leakage-floor-accepted-not-lifetime-cap
created: 2026-07-05
problem: navier-stokes
route: forward-gold / confinement constant / goal item 1 (K3 curve leakage)
target_object:
  - K3.CurvatureLeakageFloor
  - KillIntegral.ProjectedModelResidual
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-two-tube-exact-tilt-stretch-eviction-ratio-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k3-exact-kernel-finite-ode-obstruction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-kill-integral-crow-reduction-20260705.md
completion_truth: >-
  CODEX GATE SAME DATE:
  mpp-forward-gold-codex-k3-curve-leakage-gate-20260705. Accepted as
  an exact leading-filament local floor, not a lifetime cap.
  Exact leading-filament instantaneous floor, not a lifetime cap. In the
  two-tube coordinates, the curve mode omitted by the four-variable
  straight-skeleton model has scale-normalized normal leakage
  B_d(x)=d||(I-t_1 tensor t_1) partial_zeta^2 dot X_1||, with
  x=beta*zeta/d. The exact formula is
  B_d(x)=(Gamma beta^2)/(pi d^2) *
  sqrt(gamma^2(1-3x^2)^2 + x^2(3-x^2)^2)/(1+x^2)^3. The stretching
  production profile is sigma(x)=(Gamma beta^2)/(pi d^2) *
  x/(1+x^2)^2. At the production maximum x=1/sqrt(3),
  B_d=(3*sqrt(3)/8)(Gamma beta^2)/(pi d^2)=2*sigma_max. Thus the
  curvature leakage that invalidates the finite ODE turns on at exactly
  twice the maximum production rate; it is not higher-order weak and
  cannot be treated as a harmless residual. Remaining open: transport of
  this local leakage along the evolving filament curves, possible
  cancellation/reabsorption, core corrections, high-Re edge timing,
  crowd/bath interaction, and octave composition. No per-encounter cap,
  constant decision, or MPP closure is claimed.
---

# K3 curvature leakage floor at the production peak

## Codex gate, same date

Codex gate filed:
`mpp-forward-gold-codex-k3-curve-leakage-gate-20260705`.

The displayed formula and \(B_d=2\sigma_{\max}\) comparison are accepted
at leading filament order. This pays the local residual floor only; the
kill-integral theorem still must transport that leakage through the
evolving filament lifetime and account for cancellation, reabsorption,
core corrections, and high-Re timing.

## 1. Same physical object

This uses the exact same two-tube kernel as the pair-floor and K3
finite-ODE obstruction notes. No new model is introduced. The point is
to price the curve mode created by the exact kernel after the
four-variable straight-skeleton reduction fails.

Write

\[
x=\frac{\beta\zeta}{d},\qquad
D=d^2(1+x^2),
\]

and use \(P_\perp=I-t_1\otimes t_1\), the projection normal to the
instantaneous tube tangent.

## 2. Normal curve leakage

From the K3 obstruction note,

\[
\partial_\zeta^2\dot X_1
=
\frac{\Gamma}{2\pi}
\left(
\frac{2bd\beta^2(d^2-3\beta^2\zeta^2)}{D^3},\,
\frac{2\beta^3\zeta(3d^2-\beta^2\zeta^2)}{D^3},\,
\frac{2ad\beta^2(d^2-3\beta^2\zeta^2)}{D^3}
\right).
\]

Projecting normal to \(t_1=(a,0,b)\) gives two normal components: the
\(n=t_1\times \hat y=(-b,0,a)\) component and the \(\hat y\) component.
After the change of variables \(x=\beta\zeta/d\),

\[
P_\perp\partial_\zeta^2\dot X_1
=
\frac{\Gamma\beta^2}{\pi d^3(1+x^2)^3}
\left[
-\gamma(1-3x^2)n
+x(3-x^2)\hat y
\right].
\]

The natural rate comparable to stretching on a scale-\(d\) packet is

\[
B_d(x):=
d\left\|P_\perp\partial_\zeta^2\dot X_1\right\|
=
\frac{\Gamma\beta^2}{\pi d^2}
\frac{
\sqrt{\gamma^2(1-3x^2)^2+x^2(3-x^2)^2}
}{(1+x^2)^3}.
\tag{K3F.1}
\]

This is the omitted curve-mode rate. It is shape change, not tangential
reparametrization.

## 3. Compare at the production station

The stretching profile from the two-tube note is

\[
\sigma(x)
=
\frac{\Gamma\beta^2}{\pi d^2}\,
\frac{x}{(1+x^2)^2},
\qquad x>0.
\tag{K3F.2}
\]

Its maximum occurs at

\[
x_*=\frac1{\sqrt3},
\qquad
\sigma_{\max}
=
\frac{3\sqrt3}{16}\,
\frac{\Gamma\beta^2}{\pi d^2}.
\tag{K3F.3}
\]

At this same point, the \(n\)-component of the leakage vanishes because
\(1-3x_*^2=0\), while the \(\hat y\)-component remains:

\[
B_d(x_*)
=
\frac{\Gamma\beta^2}{\pi d^2}
\frac{8/(3\sqrt3)}{(4/3)^3}
=
\frac{3\sqrt3}{8}\,
\frac{\Gamma\beta^2}{\pi d^2}.
\tag{K3F.4}
\]

Therefore

\[
B_d(x_*)=2\,\sigma_{\max}.
\tag{K3F.5}
\]

This is exact at leading filament order for every producing
\(\beta\ne0\). At \(\beta=0\), production and leakage both vanish.

## 4. Meaning

The finite ODE did not fail by leaving a tiny uncontrolled remainder.
At the production station, the omitted curve mode is born at twice the
maximum production rate. A projected four-variable K3 model must either
include this mode or prove that the mode is an eviction/tax channel in
the lifetime accounting.

## 5. Four-sentence result

The exact kernel creates normal curve leakage at the same station where
the tube pair produces most strongly. The scale-normalized leakage rate
there is exactly \(2\sigma_{\max}\). That proves the residual outside
the four-variable model is not higher-order weak. It does not prove the
kill integral; it reduces the next K3 burden to transporting this local
curve-leakage floor through the evolving filament lifetime.
