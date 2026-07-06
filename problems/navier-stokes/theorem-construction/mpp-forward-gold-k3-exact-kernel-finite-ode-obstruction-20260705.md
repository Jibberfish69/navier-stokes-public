---
theorem_id: forward-gold-k3-exact-kernel-finite-ode-obstruction-20260705
status: codex-gated-exact-kernel-straight-skeleton-not-invariant-local-leakage-floor-accepted
created: 2026-07-05
problem: navier-stokes
route: forward-gold / confinement constant / goal item 1 (K3 kill integral)
target_object:
  - K3.FourVariableODE
  - KillIntegral.ExactKernelLifetime
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-two-tube-exact-tilt-stretch-eviction-ratio-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-kill-angle-sheet-hunt-self-cell-sweep-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-kill-integral-crow-reduction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k3-curvature-leakage-floor-at-production-peak-20260705.md
completion_truth: >-
  CODEX GATE SAME DATE:
  mpp-forward-gold-codex-k3-curve-leakage-gate-20260705. Accepted:
  the straight-skeleton four-variable ODE is not an invariant exact
  reduction, and the same-day local leakage floor is exact at the
  production station. Open: lifetime transport/cancellation/core/high-Re
  composition.
  Strict obstruction/retyping, not kill-integral closure. The named K3
  four-variable ODE (separation, in-plane tilt, skew, closest-point
  drift) is not an exact invariant reduction of the leading filament
  kernel. Direct differentiation of the exact two-line Biot-Savart
  profile shows that an initially straight producing pair develops
  curvature immediately: the arclength derivative of the induced velocity
  is not constant, and the second arclength derivative is generically
  nonzero whenever beta != 0. The finite ODE can still be a projected
  certification model, but only with an explicit curve-leakage residual.
  The exact K3 object is the filament-curve evolution, or a projection
  theorem proving that the omitted curvature modes pay eviction/tax.
  SAME-DAY FOLLOW-UP: the local instantaneous curve-leakage floor is
  paid at the production station: the scale-normalized normal leakage
  rate equals exactly 2*sigma_max. This does not prove a per-encounter
  cap; it reduces the next burden to transporting that local floor
  through the evolving filament lifetime. No per-encounter cap, doubling
  comparison, crowd theorem, composition theorem, or MPP closure is
  claimed.
---

# K3 obstruction: the exact kernel does not close on four variables

## Codex gate, same date

Codex gate filed:
`mpp-forward-gold-codex-k3-curve-leakage-gate-20260705`.

The obstruction is accepted: the exact kernel immediately creates
curvature for producing \(\beta\ne0\), so the four-variable straight
skeleton is a projected model. The same-day local floor is also
accepted: at the production station the normal curve leakage satisfies
\(B_d=2\sigma_{\max}\). The remaining K3 theorem is lifetime transport
of that local leakage through the evolving filament curve, including
cancellation, reabsorption, core corrections, and high-Re timing.

## 1. Setup

Use the two-tube coordinates from the exact ratio note:

\[
t_1=(a,0,b),\qquad t_2=(a,0,-b),\qquad
\beta=\sin 2\alpha=2ab,\qquad \gamma=\cos 2\alpha=b^2-a^2,
\]

with tube 1 through \((0,-d/2,0)\), tube 2 through \((0,d/2,0)\), and
arclength \(\zeta\) on tube 1. The perpendicular vector from tube 2 to
the point \(X_1(\zeta)\) is

\[
\rho(\zeta)=(\beta b\zeta,\,-d,\,\beta a\zeta),\qquad
D(\zeta)=|\rho|^2=d^2+\beta^2\zeta^2 .
\]

The exact infinite-filament kernel gives

\[
\dot X_1(\zeta)
=
\frac{\Gamma}{2\pi}\,
\frac{t_2\times \rho(\zeta)}{D(\zeta)}
=
\frac{\Gamma}{2\pi}\,
\frac{(-bd,\,-\beta\zeta,\,-ad)}{d^2+\beta^2\zeta^2}.
\tag{K3.1}
\]

This is the exact velocity profile used by the straight-pair leading
filament computation.

## 2. Tangent evolution recovers the pair rates

Differentiate (K3.1) in arclength:

\[
\partial_\zeta \dot X_1
=
\frac{\Gamma}{2\pi}
\left(
\frac{2bd\beta^2\zeta}{D^2},\,
\frac{\beta(\beta^2\zeta^2-d^2)}{D^2},\,
\frac{2ad\beta^2\zeta}{D^2}
\right).
\tag{K3.2}
\]

Projecting (K3.2) along \(t_1\), \(\hat y\), and
\(n=t_1\times\hat y=(-b,0,a)\) recovers exactly the previous
stretching and eviction profiles:

\[
\sigma(\zeta)
=
\frac{\Gamma\beta^3}{\pi}
\frac{d\zeta}{(d^2+\beta^2\zeta^2)^2},
\]

\[
\tau_y(\zeta)
=
\frac{\Gamma\beta}{2\pi}
\frac{\beta^2\zeta^2-d^2}{(d^2+\beta^2\zeta^2)^2},
\qquad
\tau_n(\zeta)
=
-\frac{\Gamma\beta^2\gamma}{\pi}
\frac{d\zeta}{(d^2+\beta^2\zeta^2)^2}.
\]

So this display is not a new model; it is the same exact kernel written
at the level needed for the lifetime question.

## 3. The closure obstruction

A closed ODE for a straight two-line skeleton would require the induced
tangent evolution to remain inside the chosen finite tangent directions.
It does not. A second arclength derivative gives

\[
\partial_\zeta^2 \dot X_1
=
\frac{\Gamma}{2\pi}
\left(
\frac{2bd\beta^2(d^2-3\beta^2\zeta^2)}{D^3},\,
\frac{2\beta^3\zeta(3d^2-\beta^2\zeta^2)}{D^3},\,
\frac{2ad\beta^2(d^2-3\beta^2\zeta^2)}{D^3}
\right).
\tag{K3.3}
\]

This is generically nonzero whenever \(\beta\ne0\). At \(\zeta=0\),

\[
\partial_\zeta^2\dot X_1(0)
=
\frac{\Gamma}{2\pi}
\left(
\frac{2b\beta^2}{d^3},\,0,\,
\frac{2a\beta^2}{d^3}
\right),
\]

so an initially straight producing line acquires curvature immediately.
The production-dead case \(\beta=0\) is the degenerate case where this
obstruction disappears.

## 4. Consequence for K3

The exact K3 lifetime object is not a closed ODE for
\((d,\text{in-plane tilt},\text{skew},\text{closest-point drift})\).
Those four variables are a projection of the real filament-curve
evolution. A certification through them must carry a residual term:

\[
R_{\rm curve}
=
\left\|
(I-P_{\rm four})\,\partial_\zeta^2\dot X
\right\|,
\]

or an equivalent estimate proving that the curvature modes omitted by
the projection pay eviction/tax rather than hiding production.

The exact replacement object is the curve equation, schematically

\[
\partial_t X_i(s,t)
=
\sum_{j\ne i}
\frac{\Gamma_j}{2\pi}
\frac{T_j(s_j,t)\times \rho_{ij}}{|\rho_{ij}|^2}
\quad+\quad
\text{core/LIA terms},
\]

with the kill integral measured on the evolving curves:

\[
\mathcal I(T)
=
\int_0^T\int
\left[T_i\cdot\nabla u\,T_i\right]_+\,ds\,dt .
\]

Any finite K3 model is now typed as a projected model until it proves
control of \(R_{\rm curve}\).

Same-day follow-up
`mpp-forward-gold-k3-curvature-leakage-floor-at-production-peak-20260705.md`
proves that this residual is not higher-order weak: at the station of
maximum production, the scale-normalized normal leakage satisfies
\[
B_d=2\sigma_{\max}.
\]
The remaining K3 problem is not whether curve leakage exists, but
whether that local leakage floor transports through the evolving
filament lifetime without cancellation or reabsorption.

## 5. Four-sentence result

The exact two-line kernel immediately bends a producing straight pair.
That kills the proposed four-variable ODE as an exact theorem object.
The pair-floor identities still stand because they are pointwise
leading-order identities on the instantaneous profile. The lifetime
problem has moved to filament-curve evolution, or to a projected
four-variable model with an explicit curvature-leakage estimate.
