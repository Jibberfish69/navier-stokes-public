---
theorem_id: forward-gold-wkb-angular-entropy-square-coercivity-20260706
status: exact-signed-angular-service-forces-square-antiuniformity
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB material-time bath
target_object:
  - AngularEntropy.SquareCoercivity
  - SignedAngularService.EndpointAntiUniformity
  - NearUniformWKBBath.AbsoluteContinuousBranchKilled
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-variable-strain-angular-entropy-balance-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-angular-pressure-moment-row-distance-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-material-time-liouville-bath-reduction-20260706.md
completion_truth: >-
  Exact absolutely-continuous angular square coercivity only. For a positive
  angular density f with int f d sigma=1, relative entropy satisfies
  H(f)=int f log f d sigma <= log int f^2 d sigma, hence
  int (f-1)^2 d sigma >= exp(H(f))-1. Combining this with the variable-strain
  angular entropy balance gives, for a bath starting from uniform and carrying
  signed coherent angular service A on an interval, endpoint angular square
  charge int (f_1-1)^2 d sigma >= exp(3A)-1. Therefore an absolutely
  continuous angular bath cannot deliver order-one signed active service and
  remain near-uniform in square distance. Evasion must be singular/profile
  admission, failure of angular AC density carriage, or rectified cyclic
  entropy variation / refresh-custody; this proves no full material-time
  Liouville theorem, no singular-profile admission/exclusion theorem, no crowd
  theorem, no confinement constant, and no MPP closure.
---

# Angular entropy coerces square anti-uniformity

## 1. Question

The variable-strain angular balance says
\[
  {d\over dt}H(f_t)=3S(t):K(f_t),
  \qquad
  H(f)=\int_{S^2}f\log f\,d\sigma .
  \tag{ESC.1}
\]

That proves signed angular service is entropy creation. The remaining question
inside the absolutely continuous angular bath is whether this entropy is only a
profile label, or whether it already forces a square anti-uniformity payer.

It does. Relative entropy controls the angular square gap by a sharp
one-line Jensen bound.

## 2. Entropy-to-square inequality

Let \(f\ge0\) and
\[
  \int_{S^2}f\,d\sigma=1,
  \tag{ESC.2}
\]
with \(d\sigma\) normalized surface measure.

Apply Jensen to the probability measure \(f\,d\sigma\) and the concave function
\(\log\):
\[
  \int f\log f\,d\sigma
  =
  \int \log f\, f\,d\sigma
  \le
  \log\int f^2\,d\sigma .
  \tag{ESC.3}
\]

Since
\[
  \int f^2\,d\sigma
  =
  1+\int (f-1)^2\,d\sigma,
  \tag{ESC.4}
\]
we get
\[
  \boxed{
  \int_{S^2}(f-1)^2\,d\sigma
  \ge
  e^{H(f)}-1.
  }
  \tag{ESC.5}
\]

Thus positive angular entropy cannot hide inside an absolutely continuous
near-uniform density.

## 3. Signed service consequence

Let \(f_t\) be transported by the material WKB angular flow under a
time-dependent trace-free strain \(S(t)\). For signed coherent service
\[
  A_{[t_0,t_1]}
  :=
  \int_{t_0}^{t_1}S(t):K(f_t)\,dt>0,
  \tag{ESC.6}
\]
the entropy balance gives
\[
  H(f_{t_1})-H(f_{t_0})=3A_{[t_0,t_1]}.
  \tag{ESC.7}
\]

If the bath starts uniform on this interval,
\[
  f_{t_0}=1,
  \qquad
  H(f_{t_0})=0,
  \tag{ESC.8}
\]
then
\[
  H(f_{t_1})=3A_{[t_0,t_1]}.
  \tag{ESC.9}
\]

Combining (ESC.5) and (ESC.9),
\[
  \boxed{
  \int_{S^2}(f_{t_1}-1)^2\,d\sigma
  \ge
  e^{3A_{[t_0,t_1]}}-1.
  }
  \tag{ESC.10}
\]

For small service this reads
\[
  \int (f_{t_1}-1)^2\,d\sigma
  \ge
  3A_{[t_0,t_1]}+O(A_{[t_0,t_1]}^2).
  \tag{ESC.11}
\]

For order-one signed service it is an order-one angular square gap.

## 4. Nonuniform starting density

Without the uniform start, (ESC.7) gives
\[
  H(f_{t_1})=H(f_{t_0})+3A_{[t_0,t_1]}.
  \tag{ESC.12}
\]

Thus
\[
  \int (f_{t_1}-1)^2\,d\sigma
  \ge
  e^{H(f_{t_0})+3A_{[t_0,t_1]}}-1.
  \tag{ESC.13}
\]

In particular, if both endpoints are required to remain in a square-near-uniform
class
\[
  \int (f_t-1)^2\,d\sigma\le\varepsilon
  \tag{ESC.14}
\]
at \(t=t_0,t_1\), then signed service is bounded by
\[
  A_{[t_0,t_1]}
  \le
  {1\over3}\log(1+\varepsilon).
  \tag{ESC.15}
\]

So signed angular service cannot be repeatedly extracted while returning to the
same square-near-uniform state for free.

## 5. Rectified and singular exits

The square coercivity is endpoint signed-service coercivity. It does not close
rectified cyclic schedules. From the entropy balance,
\[
  \int_{t_0}^{t_1}|S(t):K(f_t)|\,dt
  =
  {1\over3}\operatorname{Var}_{[t_0,t_1]}H(f_t),
  \tag{ESC.16}
\]
so a cycle with small endpoint change must still pay entropy variation. Pricing
that variation as same-fluid refresh, mixing, or frame custody remains a
separate branch.

The square coercivity also assumes that the angular population is represented
by an absolutely continuous density \(f\,d\sigma\). If the branch forms a
singular angular measure, the conclusion is not square-near-uniform failure
inside \(L^2\); it is profile formation. That routes to the existing
microlocal/profile admission and material-time Liouville rows.

## 6. Consequence for the dense bath

The absolutely continuous signed angular bath branch now has the exact
dichotomy:
\[
\begin{array}{ll}
\hbox{signed coherent service }A
  &\Rightarrow
  \displaystyle \int (f-1)^2\,d\sigma\ge e^{3A}-1,\\[2mm]
\hbox{square-near-uniform endpoints}
  &\Rightarrow
  \displaystyle A\le {1\over3}\log(1+\varepsilon),\\[2mm]
\hbox{no AC density / singular limit}
  &\Rightarrow
  \hbox{profile admission or construction/exclusion},\\[1mm]
\hbox{rectified cyclic service}
  &\Rightarrow
  \hbox{entropy-variation / custody branch}.
\end{array}
\tag{ESC.17}
\]

Thus the near-uniform absolutely continuous angular service branch is no longer
a no-payer candidate for signed service. The remaining dense-crowd work is the
same-solution legal carriage of the endpoint square/profile object and the
cyclic entropy-variation custody branch.

## 7. Four-sentence result

For every positive angular density \(f\), Jensen gives
\[
  H(f)=\int f\log f\,d\sigma\le\log\int f^2\,d\sigma,
\]
so \(\int(f-1)^2\,d\sigma\ge e^{H(f)}-1\). Combined with
\(dH/dt=3S(t):K(f_t)\), signed coherent angular service \(A\) from a uniform
bath forces endpoint square anti-uniformity at least \(e^{3A}-1\). Hence an
absolutely continuous near-uniform angular bath cannot be the signed-service
no-eviction crowd. The remaining exits are singular/profile admission,
failure of AC angular carriage, or cyclic entropy-variation custody.

## 8. State

This proves exact angular entropy-to-square coercivity and kills the
absolutely continuous square-near-uniform signed angular service branch.

It proves no singular/profile admission theorem, no cyclic-refresh custody
theorem, no full material-time Liouville exclusion, no crowd theorem, no
confinement constant, and no MPP closure.
