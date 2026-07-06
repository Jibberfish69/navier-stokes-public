---
theorem_id: forward-gold-k3-combined-instantaneous-eviction-floor-20260705
status: exact-combined-instantaneous-pair-floor-proved-not-lifetime-cap
created: 2026-07-05
problem: navier-stokes
route: forward-gold / confinement constant / goal item 1 (K3 instantaneous floor)
target_object:
  - K3.CombinedInstantaneousEvictionFloor
  - TubePair.CurveLeakageAxisRotationNoBlindPoint
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-two-tube-exact-tilt-stretch-eviction-ratio-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k3-exact-kernel-finite-ode-obstruction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k3-curvature-leakage-floor-at-production-peak-20260705.md
completion_truth: >-
  Exact leading-filament instantaneous floor for the two-tube pair,
  not a lifetime cap and not a full-family constant. Curve leakage alone
  is not pointwise coercive: at maximal tilt beta=1 and x=sqrt(3), the
  scale-normalized leakage B_d vanishes while production is positive.
  The full instantaneous eviction vector has no such blind point. With
  E^2=|tau_y|^2+|tau_n|^2+B_d^2 and sigma>0 on the producing half-line,
  exact algebra gives E/sigma >= 1/3 for all 0<beta<=1 and all x>0.
  The proof uses beta^2+gamma^2=1: the ratio is minimized at beta=1,
  gamma=0, then a one-variable inequality in y=x^2 gives the rational
  floor. This proves that cancellation between axis rotation and curve
  leakage cannot erase instantaneous eviction on the two-tube profile.
  Remaining open: transport of this instantaneous floor through the
  evolving filament lifetime, signed time accumulation, core corrections,
  high-Re neutral edge timing, crowd/bath interaction, and octave
  composition. No per-encounter cap, constant decision, or MPP closure is
  claimed.
---

# K3 combined instantaneous eviction floor

## 1. Object

The peak curve-leakage note proves
\[
B_d(x_*)=2\sigma_{\max}
\]
at the production station \(x_*=1/\sqrt3\). That is not a pointwise
domination theorem for \(B_d\) alone. This note checks the full
instantaneous eviction vector on the same two-tube profile:

\[
\mathcal E^2(x)
=
|\tau_y(x)|^2+|\tau_n(x)|^2+B_d(x)^2.
\]

The three components are orthogonal geometric exits: out-of-plane axis
rotation, in-plane axis rotation, and normal curve leakage.

## 2. Exact ratio

Use
\[
x=\frac{\beta\zeta}{d},\qquad
\beta=\sin 2\alpha,\qquad
\gamma=\cos 2\alpha,\qquad
\beta^2+\gamma^2=1.
\]

From the two-tube note and the curve-leakage note,

\[
\sigma(x)
=
\frac{\Gamma\beta^2}{\pi d^2}\frac{x}{(1+x^2)^2},
\]

\[
\tau_y(x)
=
\frac{\Gamma\beta}{2\pi d^2}\frac{x^2-1}{(1+x^2)^2},
\qquad
\tau_n(x)
=
-\frac{\Gamma\beta\gamma}{\pi d^2}\frac{x}{(1+x^2)^2},
\]

and

\[
B_d(x)
=
\frac{\Gamma\beta^2}{\pi d^2}
\frac{\sqrt{\gamma^2(1-3x^2)^2+x^2(3-x^2)^2}}{(1+x^2)^3}.
\]

For \(x>0\),

\[
\frac{\mathcal E^2}{\sigma^2}
=
\frac{(x^2-1)^2}{4\beta^2x^2}
+\frac{\gamma^2}{\beta^2}
+\frac{\gamma^2(1-3x^2)^2+x^2(3-x^2)^2}{x^2(1+x^2)^2}.
\tag{K3C.1}
\]

This is exact at leading filament order.

## 3. Minimize over tilt

Let \(q=\beta^2\). Since \(\gamma^2=1-q\), the right side of (K3C.1)
is strictly decreasing in \(q\). Indeed the terms with \(1/q\) decrease
as \(q\) grows, and the leakage term contains a nonnegative multiple of
\((1-q)\). Therefore the worst case is

\[
\beta=1,\qquad \gamma=0.
\]

At maximal tilt, (K3C.1) reduces to the one-variable function

\[
F(y)
=
\frac{(y-1)^2}{4y}
+\frac{(3-y)^2}{(1+y)^2},
\qquad y=x^2>0.
\tag{K3C.2}
\]

## 4. Rational floor

If
\[
9(y-1)^2\ge 4y,
\]
then the first term in (K3C.2) is at least \(1/9\).

If instead \(9(y-1)^2<4y\), then
\[
y<\frac{11+2\sqrt{10}}9<2.
\]
For \(0<y<2\),
\[
\frac{3-y}{1+y}\ge \frac13,
\]
so the second term in (K3C.2) is at least \(1/9\).

Thus for every \(y>0\),

\[
F(y)\ge \frac19.
\tag{K3C.3}
\]

Combining (K3C.1)-(K3C.3),

\[
\boxed{\mathcal E(x)\ge \frac13\,\sigma(x)}
\qquad
(0<\beta\le1,\ x>0).
\tag{K3C.4}
\]

The constant \(1/3\) is a certified rational floor, not the sharp
one-variable minimum.

## 5. Meaning

Curve leakage alone has a blind point: at \(\beta=1,\ x=\sqrt3\),
\(B_d=0\) while \(\sigma>0\). The full eviction vector has no blind
point because the out-of-plane rotation term is nonzero there. On the
instantaneous two-tube profile, production cannot occur without at
least a fixed fraction of simultaneous geometric exit.

## 6. Four-sentence result

The peak curve-leakage floor was not a pointwise theorem by itself.
The exact combined eviction vector fixes that gap. For every producing
point on the leading-order two-tube profile,
\(\mathcal E\ge\sigma/3\). The remaining problem is lifetime transport:
show that this instantaneous vector floor survives evolution,
integration, core corrections, high-Re timing, and crowds.
