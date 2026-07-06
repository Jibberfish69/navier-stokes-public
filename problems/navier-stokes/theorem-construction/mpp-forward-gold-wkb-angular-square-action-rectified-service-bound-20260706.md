---
theorem_id: forward-gold-wkb-angular-square-action-rectified-service-bound-20260706
status: exact-rectified-angular-service-bounded-by-square-gap-times-strain-action
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB material-time bath
target_object:
  - AngularRectifiedService.SquareActionBound
  - CyclicAngularService.NotSquareNearUniformOnBoundedStrainClock
  - NearUniformWKBBath.AbsoluteContinuousCyclicBranchKilledUnderActionBound
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-angular-pressure-moment-row-distance-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-variable-strain-angular-entropy-balance-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-angular-entropy-square-coercivity-20260706.md
completion_truth: >-
  Exact absolutely-continuous angular rectified-service bound only. For a
  positive angular density f_t with square gap E(t)=int(f_t-1)^2 d sigma and
  angular pressure moment K(f_t)=int Q_n f_t d sigma, the already filed
  angular row-distance identity TT^*=(2/15)I gives
  |K(f_t)|_F <= sqrt(2/15) sqrt(E(t)). Hence for any trace-free material strain
  S(t), rectified angular service on an interval satisfies
  int |S:K| dt <= sqrt(2/15) int |S|_F sqrt(E(t)) dt. In particular, if
  E(t)<=epsilon and the material strain action int |S|_F dt <= Lambda, then
  rectified service R is at most sqrt(2 epsilon/15) Lambda; order-one cyclic
  service on a bounded strain-action clock therefore forces an order-one square
  gap. This kills the square-near-uniform absolutely continuous cyclic angular
  subcase only under a bounded strain-action/custody hypothesis. Evasion must
  be unbounded strain action or custody, singular/profile admission, failure of
  AC carriage, or actual near-uniform WKB bath construction/exclusion. This
  proves no strain-action bound from Navier-Stokes, no singular-profile theorem,
  no full material-time Liouville exclusion, no crowd theorem, no confinement
  constant, and no MPP closure.
---

# Angular square gap bounds rectified service on a strain-action clock

## 1. Question

The entropy-square note killed sign-coherent angular service from a
square-near-uniform absolutely continuous bath. It left the cyclic exit:
the bath could raise and lower entropy, keeping small endpoint entropy while
producing rectified service.

This note prices the cyclic absolutely continuous subcase when the bath is
required to stay square-near-uniform during the interval and the material strain
action is bounded. On such a clock, rectified service cannot hide.

## 2. Moment bound from square gap

Let \(d\sigma\) be normalized surface measure on \(S^2\), let
\[
  Q_n={1\over3}I-n\otimes n,
  \tag{ASB.1}
\]
and let
\[
  K(f)=\int_{S^2}Q_n f(n)\,d\sigma(n).
  \tag{ASB.2}
\]
Since \(\int Q_n\,d\sigma=0\), writing \(h=f-1\) gives
\[
  K(f)=T h,\qquad T h=\int_{S^2}Q_nh(n)\,d\sigma(n).
  \tag{ASB.3}
\]

The angular pressure-moment row-distance note proved
\[
  TT^*={2\over15}I
  \quad\hbox{on }{\rm Sym}_0(3).
  \tag{ASB.4}
\]
Therefore
\[
  |K(f)|_F
  =
  |Th|_F
  \le
  \sqrt{2\over15}\,\|h\|_{L^2(S^2)}.
  \tag{ASB.5}
\]

With the square gap
\[
  E(f):=\int_{S^2}(f-1)^2\,d\sigma,
  \tag{ASB.6}
\]
this is
\[
  \boxed{
  |K(f)|_F\le\sqrt{2\over15}\,\sqrt{E(f)}.
  }
  \tag{ASB.7}
\]

## 3. Rectified service bound

Let \(S(t)=S(t)^T\), \(\operatorname{tr}S(t)=0\), be the material strain seen
by the WKB angular bath on an interval \(I\). Define rectified angular service
\[
  R_I:=\int_I |S(t):K(f_t)|\,dt
  \tag{ASB.8}
\]
and strain action
\[
  \Lambda_I:=\int_I |S(t)|_F\,dt.
  \tag{ASB.9}
\]

By Cauchy-Schwarz in \({\rm Sym}_0(3)\), followed by (ASB.7),
\[
\begin{aligned}
  |S(t):K(f_t)|
  &\le |S(t)|_F |K(f_t)|_F \\
  &\le
  \sqrt{2\over15}\,|S(t)|_F\,\sqrt{E(t)} .
\end{aligned}
  \tag{ASB.10}
\]
Integrating,
\[
  \boxed{
  R_I
  \le
  \sqrt{2\over15}
  \int_I |S(t)|_F\,\sqrt{E(t)}\,dt .
  }
  \tag{ASB.11}
\]

In particular, if
\[
  E(t)\le\varepsilon
  \quad\hbox{for all }t\in I,
  \tag{ASB.12}
\]
then
\[
  \boxed{
  R_I\le\sqrt{2\varepsilon\over15}\,\Lambda_I .
  }
  \tag{ASB.13}
\]

Equivalently,
\[
  R_I\ge R_0,\qquad \Lambda_I\le\Lambda_0
  \quad\Longrightarrow\quad
  \sup_{t\in I}E(t)
  \ge
  {15\over2}\left({R_0\over\Lambda_0}\right)^2 .
  \tag{ASB.14}
\]

Thus cyclic rectified service of fixed size on a bounded strain-action clock
requires a fixed square anti-uniformity event.

## 4. Meaning for the cyclic angular exit

The variable-strain entropy balance gives
\[
  \int_I |S(t):K(f_t)|\,dt={1\over3}{\rm Var}_I H(f_t).
  \tag{ASB.15}
\]
So a cyclic schedule with small endpoint entropy can still have rectified
service, but (ASB.13) says that it cannot keep the absolutely continuous angular
population uniformly square-near-uniform unless it spends strain action.

The branch therefore has the exact split
\[
\begin{array}{ll}
\sup_I E(t)\ge\varepsilon_0
  &\Rightarrow \text{angular square/profile payer},\\[1mm]
\Lambda_I\hbox{ unbounded or producer-sized}
  &\Rightarrow \text{strain-action / custody branch},\\[1mm]
\hbox{no AC density}
  &\Rightarrow \text{singular/profile admission or AC carriage failure},\\[1mm]
\hbox{bounded }\Lambda_I\hbox{ and }E(t)\to0
  &\Rightarrow R_I\to0 .
\end{array}
  \tag{ASB.16}
\]

So the cyclic absolutely continuous square-near-uniform subcase is not a
no-payer evasion on bounded material strain action. The unpriced part is now
the same-fluid strain-action/custody theorem or the actual bath construction
itself.

## 5. Four-sentence result

The angular pressure moment satisfies
\[
  |K(f)|_F\le\sqrt{2/15}\,\|f-1\|_{L^2(S^2)}.
\]
Therefore rectified angular service obeys
\[
  \int_I|S:K|\,dt
  \le
  \sqrt{2/15}\int_I |S|_F\|f_t-1\|_{L^2}\,dt.
\]
If the absolutely continuous bath stays square-near-uniform with
\(\|f_t-1\|_2^2\le\varepsilon\) and the strain action is bounded by
\(\Lambda\), then \(R_I\le\sqrt{2\varepsilon/15}\Lambda\). Thus cyclic angular
service cannot be both order-one and square-near-uniform on a bounded
strain-action clock; it must pay square/profile, strain-action/custody,
singular/profile, AC-carriage failure, or actual construction/exclusion.

## 6. State

This proves an exact rectified angular service bound for absolutely continuous
angular densities and kills the bounded-strain-action, square-near-uniform
cyclic subcase.

It proves no Navier-Stokes bound on the strain action, no custody theorem, no
singular/profile admission theorem, no actual WKB construction or exclusion, no
crowd theorem, no confinement constant, and no MPP closure.
