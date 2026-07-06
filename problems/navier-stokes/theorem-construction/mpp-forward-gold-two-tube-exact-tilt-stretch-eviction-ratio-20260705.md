---
theorem_id: forward-gold-two-tube-exact-tilt-stretch-eviction-ratio-20260705
status: tube-class-eviction-floor-proved-at-leading-filament-order-sheet-and-crowd-cells-open
created: 2026-07-05
problem: navier-stokes
route: forward-gold / transversality / production-extremizer confinement / two-tube test
authorship: >-
  Derivation: Claude (Fable), 2026-07-05, this session, pen and paper.
  Physical story Thomas Birnie (pose-tax / participation; the spring).
  Successor to the production-extremizer pressure-Hessian frame-rotation
  test note (same date), executing its corrected certification target on
  the closed-form surrogate pose authorized by the owner.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-production-extremizer-pressure-hessian-frame-rotation-test-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-transversality-relay-drift-lock-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-rsf4-angle-pincer-coherence-backscatter-dichotomy-20260704.md
completion_truth: >-
  Exact leading-order filament computation for the symmetric anti-parallel
  tilted pair. Three results, all displayed with exact coefficients:
  (T1) the straight anti-parallel pair has identically zero mutual
  stretching AND identically zero mutual axis rotation - co-vanishing,
  exact; (T2) for mutual tilt 2*alpha, the in-plane axis-rotation rate is
  EXACTLY proportional to the stretching rate, pointwise along the entire
  pair, with ratio cot(2*alpha); an additional out-of-plane rotation
  (Crow-type mutual induction) enters at one order LOWER in the tilt than
  the stretching (first order vs third order in sin(2*alpha) at fixed
  station, second order after profile maximization); (T3) uniform floor:
  over all tilts, max axis-rotation rate >= (8*sqrt(3)/9) * max stretching
  rate. Tube-type configurations therefore cannot produce without paying
  axis eviction at a rate never below an exact order-one constant, and
  parametrically larger when nearly anti-parallel. This proves the
  confinement mechanism (pose never assembled at production-optimal
  alignment) on the tube-pair cell at leading filament order. NOT proved:
  curved-vorticity-line sheets (named live evasion candidate), crowds
  (W1-adjacent), self-stretching single structures, core-dynamics
  corrections (a/d), next-order filament corrections. No retention
  constant for the full producing family, no MPP closure claimed.
---

# Two-tube exact tilt/stretch eviction ratio

## 1. Configuration

Two thin vortex filaments, circulations Gamma each, core radius a << d.
Symmetric X-configuration with tilt half-angle alpha in the x-z plane,
separation d along y:

\[
\hat t_1=(\sin\alpha,\,0,\,\cos\alpha),\qquad
\hat t_2=(\sin\alpha,\,0,\,-\cos\alpha),
\]

tube 1 through (0,-d/2,0), tube 2 through (0,+d/2,0), vorticity along
+\hat t_i. At alpha=0 the pair is exactly anti-parallel. Write

\[
\beta=\sin 2\alpha,\qquad \gamma=\cos 2\alpha .
\]

beta is the symmetry-breaking parameter (beta=0: columnar/anti-parallel;
beta=1: maximal X at 45 degrees).

## 2. Exact kernel evaluation along tube 1

Infinite straight filament velocity gradient:
\[
\nabla u_2=\frac{\Gamma}{2\pi}\Bigl[\frac{T\,P}{\rho^2}
-\frac{2\,(\hat t_2\times\rho)\otimes\rho}{\rho^4}\Bigr],
\]
T the cross-product matrix of \hat t_2, P the perpendicular projector,
rho the perpendicular vector from tube 2's line to the evaluation point.
Along tube 1 at arclength zeta (from the closest point):

\[
\rho(\zeta)=(\beta\cos\alpha\,\zeta,\,-d,\,\beta\sin\alpha\,\zeta),
\qquad
\rho^2=d^2+\beta^2\zeta^2 .
\]

Needed exact contractions:
\[
\hat t_2\times\hat t_1=(0,\,-\beta,\,0),\qquad
\hat t_1\cdot(\hat t_2\times\rho)=-\beta d,\qquad
\rho\cdot\hat t_1=\beta^2\zeta .
\]

## 3. The two rates, exact at leading filament order

STRETCHING (production) of tube 1 by tube 2:
\[
\sigma(\zeta)=\hat t_1\cdot\nabla u_2\,\hat t_1
=\frac{\Gamma\,\beta^3}{\pi}\,\frac{d\,\zeta}{(d^2+\beta^2\zeta^2)^2}.
\tag{TT.1}
\]
Odd in zeta; zero at the symmetric point; peak at
\(\zeta_*=d/(\sqrt3\,\beta)\) with
\[
\sigma_{\max}=\frac{3\sqrt3}{16}\,\frac{\Gamma\,\beta^2}{\pi d^2}.
\tag{TT.2}
\]
Third order in beta at fixed station; second order after maximization.

AXIS ROTATION (eviction) of tube 1, transverse part of
\(\nabla u_2\,\hat t_1\), decomposed on \(\hat y\) (out-of-plane) and
\(\hat n=\hat t_1\times\hat y=(-\cos\alpha,0,\sin\alpha)\) (in-plane):
\[
\tau_y(\zeta)=\frac{\Gamma\beta}{2\pi}\,
\frac{\beta^2\zeta^2-d^2}{(d^2+\beta^2\zeta^2)^2},
\qquad
\tau_n(\zeta)=-\frac{\Gamma\beta^2\gamma}{\pi}\,
\frac{d\,\zeta}{(d^2+\beta^2\zeta^2)^2}.
\tag{TT.3}
\]

## 4. Results

T1 (columnar co-vanishing, exact). At beta=0: sigma == 0 and tau == 0.
Production and eviction switch on together; neither exists for the
straight anti-parallel pair.

T2 (pointwise proportionality - the continuum relay-drift shadow for
tubes). From (TT.1) and (TT.3), everywhere along the pair:
\[
\frac{\tau_n(\zeta)}{\sigma(\zeta)}=-\frac{\gamma}{\beta}
=-\cot 2\alpha ,
\tag{TT.4}
\]
an EXACT pointwise identity: the in-plane eviction shares the identical
spatial profile with the production and exceeds it whenever
\(2\alpha<45^\circ\), diverging as the pair approaches anti-parallel.
In addition the out-of-plane component tau_y is FIRST order in beta at
the closest point,
\[
\tau_y(0)=-\frac{\Gamma\beta}{2\pi d^2},
\tag{TT.5}
\]
one full order below the stretching: near-anti-parallel pairs rotate
much faster than they stretch.

T3 (uniform floor over all tilts, max form). Comparing (TT.5) against
(TT.2):
\[
\frac{\max_\zeta|\tau|}{\max_\zeta\sigma}
\;\ge\;
\frac{|\tau_y(0)|}{\sigma_{\max}}
=\frac{8}{3\sqrt3\,\beta}
=\frac{8\sqrt3}{9\,\beta}
\;\ge\;
\frac{8\sqrt3}{9}
\qquad(0<\beta\le1).
\tag{TT.6}
\]
An exact algebraic constant, uniform over the tilt family. Tube pairs
cannot produce without paying eviction at no less than 8*sqrt(3)/9 of
their peak production rate, and pay 1/beta more when nearly parallel.

## 5. Physical identification

tau_y is the mutual-induction rotation known from the Crow instability
literature: the mechanism by which anti-parallel pairs destroy their own
plane. tau_n is geometric feedback: stretching reorients the stretched
axis. The identity (TT.4) is the continuum analogue, for tubes, of the
triad relay-drift lock (transfer and drift share a coefficient): here
production and in-plane eviction share an identical profile with ratio
fixed by the tilt alone. The configuration that stretches is the
configuration that rotates itself out of alignment: the tax is the
instability.

## 6. Scope and open cells

Valid at leading filament order: a << d, straight lines, mutual
interaction only. Excluded and named open: (i) curved-vorticity-line
sheets - the live evasion candidate for the confinement claim; (ii)
crowds of many structures (W1-adjacent superposition); (iii) single
curved structures self-stretching via self-induction; (iv) core
dynamics (Moore-Saffman) and next-order a/d corrections; (v) sheets of
straight lines inherit the order counting by superposition of this
kernel, but the exact functional floor for sheets is not displayed.
Kill condition (standing, owner-visible): a producing structure class
that evades BOTH the pointwise ratio (TT.4-type) and the max floor
(TT.6-type) kills the confinement mechanism; the curved-line sheet is
where to hunt for it first. No closure claimed.
