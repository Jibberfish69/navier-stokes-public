---
theorem_id: forward-gold-overlap-bath-beltrami-carrier-drift-window-lifetime-20260706
status: strict-reduction-fixed-carrier-active-wkb-bath-has-finite-window-lifetime
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - ActiveBeltramiWKB.FixedPopulation.WindowLifetime
  - CarrierScaleDrift.LogWindowBound
  - RefreshReassemblyOrHighReEdge.REMAINS
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-beltrami-material-phase-service-identity-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-many-cell-wkb-parameter-window-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-many-cell-wkb-support-density-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-reynolds-edge-refresh-dichotomy-20260706.md
completion_truth: >-
  Strict reduction only. The material-phase identity gives
  S:K=sum_i w_i D_t log lambda_i for a positive Beltrami WKB mixture. In the
  fixed-bank gauge theta_i=1/(lambda_i D), with normalized fixed weights
  pi_i=w_i/sum_j w_j, active same-shape service
  |S:K| >= c_svc s sum_i w_i implies
  |D_t sum_i pi_i log theta_i| >= c_svc s. Hence a fixed-weight active WKB
  bath has a finite logarithmic lifetime inside any admissible theta window.
  For the general WKB branch the upper q-row boundary is theta <= C
  beta^(24/25); for fixed-density support it is theta <= C beta^(6/5). The
  carrier-persistence lower edge is theta >= c Re_D^(-1/2). Therefore the
  fixed-population lifetime is bounded by the distance in log theta to the
  relevant boundary divided by c_svc s. This kills the eternal fixed-carrier
  active bath. It does not prove an order-one floor, because an arbitrarily
  high Reynolds number creates a logarithmic carrier-depth reservoir, and
  variable weights, refresh/reassembly, bank-scale retuning, orthogonal-only
  service, or construction/exclusion remain open. No dense-crowd theorem,
  confinement constant, or MPP closure is claimed.
---

# Beltrami carrier-drift window lifetime

## 1. Kill question

The material-phase service identity says active Beltrami pressure service
forces carrier-scale drift. The next question is whether that drift itself is
already a fixed confinement tax.

The checked answer is split. It kills the eternal fixed-population WKB bath,
but it does not yet give an order-one floor.

## 2. Active service gives drift of the weighted mean scale

From the material-phase identity, a positive Beltrami WKB mixture
\[
  K=\sum_i w_iQ_{n_i},
  \qquad w_i\ge0,
  \tag{BCW.1}
\]
satisfies
\[
  S:K=\sum_i w_iD_t\log\lambda_i.
  \tag{BCW.2}
\]

Let
\[
  W=\sum_iw_i,
  \qquad
  \pi_i={w_i\over W}.
  \tag{BCW.3}
\]

For active same-shape pressure service assume
\[
  |S:K|\ge c_{\rm svc}sW
  \tag{BCW.4}
\]
on the producer clock, with \(c_{\rm svc}>0\) fixed by the service angle. Then
\[
  \left|\sum_i\pi_iD_t\log\lambda_i\right|
  \ge c_{\rm svc}s.
  \tag{BCW.5}
\]

In the fixed pressure-bank gauge,
\[
  \theta_i={\ell_i\over D}={1\over\lambda_iD},
  \tag{BCW.6}
\]
so, while the normalized weights are fixed,
\[
  D_t\sum_i\pi_i\log\theta_i
  =
  -\sum_i\pi_iD_t\log\lambda_i.
  \tag{BCW.7}
\]

Thus
\[
  \left|D_t\bar y\right|\ge c_{\rm svc}s,
  \qquad
  \bar y:=\sum_i\pi_i\log\theta_i.
  \tag{BCW.8}
\]

Active fixed-weight service moves the weighted log carrier scale at the
producer rate.

## 3. The admissible window

The many-cell WKB parameter window gives the upper \(q=4/5\) boundary
\[
  \theta\lesssim\beta^{24/25}
  \tag{BCW.9}
\]
in the general WKB branch.

The support-density split sharpens the fixed-density full-bank branch to
\[
  \theta\lesssim\beta^{6/5}.
  \tag{BCW.10}
\]

Carrier persistence gives the lower high-Re edge
\[
  \operatorname{Re}_D\theta^2\gg1,
  \qquad\hbox{so}\qquad
  \theta\gtrsim\operatorname{Re}_D^{-1/2}.
  \tag{BCW.11}
\]

Therefore, up to fixed constants, a fixed carrier population must keep its
weighted log scale inside
\[
  -{1\over2}\log\operatorname{Re}_D
  \lesssim
  \bar y
  \lesssim
  a\log\beta,
  \tag{BCW.12}
\]
where
\[
  a={24\over25}
  \tag{BCW.13}
\]
for the general sparse WKB window, and
\[
  a={6\over5}
  \tag{BCW.14}
\]
for the fixed-density full-bank WKB branch.

Because \(\log\beta<0\), non-emptiness requires
\[
  \operatorname{Re}_D\gtrsim\beta^{-2a},
  \tag{BCW.15}
\]
which is the same carrier-persistence edge already recorded.

## 4. Lifetime bound

If the active service sign is maintained and the normalized weights are fixed,
(BCW.8) gives the exit time estimate
\[
  T_{\rm win}
  \le
  {1\over c_{\rm svc}s}
  \operatorname{dist}\!\left(
    \bar y(0),
    \partial I_{\rm WKB}
  \right),
  \tag{BCW.16}
\]
where
\[
  I_{\rm WKB}
  =
  \left[
    -{1\over2}\log\operatorname{Re}_D,
    \;a\log\beta
  \right]
  \tag{BCW.17}
\]
with \(a=24/25\) or \(a=6/5\) depending on the branch.

Equivalently,
\[
  T_{\rm win}
  \lesssim
  {1\over c_{\rm svc}s}
  \left(
    {1\over2}\log\operatorname{Re}_D
    -
    a|\log\beta|
  \right)_+.
  \tag{BCW.18}
\]

This is a logarithmic reservoir, not a constant reservoir. The WKB population
can hold active service only until the weighted carrier scale hits either the
q-row/support boundary or the viscous persistence boundary.

## 5. What this kills

This kills the fixed-population version of the WKB evasion:
\[
  \text{active Beltrami WKB service}
  +
  \text{fixed carrier weights}
  +
  \text{no window exit}
  \Rightarrow
  \text{indefinite no-payer bath}.
  \tag{BCW.19}
\]

The weighted log carrier scale has to drift at the production rate, and the
admissible WKB window has finite logarithmic width at fixed \(\beta\) and
\(\operatorname{Re}_D\).

## 6. What remains

This does not decide the confinement constant.

It leaves exactly these branches:

1. variable normalized weights \(\pi_i(t)\), which is refresh or reassembly of
   the carrier population;
2. pressure-bank scale retuning \(D(t)\), which is same-fluid bank custody;
3. very high Reynolds number, which provides a logarithmic carrier-depth
   reservoir and exports to the high-Re/log-vs-ladder row;
4. orthogonal-only service \(S:K=0\), which cannot supply the active
   same-shape amplitude row by itself;
5. construction or exclusion of a drifting WKB bath satisfying the summability
   criterion.

The next certification target is not another static Beltrami algebra check. It
is the cost of changing the weights, retuning the bank, or spending the
high-Re logarithmic reservoir in record-ladder currency.

## 7. Four-sentence result

For a positive Beltrami WKB mixture, active service gives
\[
  \left|D_t\sum_i\pi_i\log\theta_i\right|\ge c_{\rm svc}s
\]
in the fixed-bank, fixed-weight gauge. The admissible carrier window is bounded
above by \(\theta\lesssim\beta^{24/25}\), or by
\(\theta\lesssim\beta^{6/5}\) in the fixed-density branch, and below by
\(\theta\gtrsim\operatorname{Re}_D^{-1/2}\). Hence a fixed active carrier
population has lifetime at most
\[
  T_{\rm win}\lesssim {1\over c_{\rm svc}s}
  \left(
    {1\over2}\log\operatorname{Re}_D-a|\log\beta|
  \right)_+.
\]
The eternal fixed-carrier bath is dead, but the logarithmic high-Re reservoir,
refresh/reassembly, bank retuning, and drifting-bath construction/exclusion
remain open.
