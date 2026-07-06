---
theorem_id: forward-gold-overlap-bath-many-cell-wkb-support-density-split-20260706
status: strict-reduction-many-cell-wkb-to-sparse-compensator-or-dense-beta-six-fifths-bank
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - ManyCellWKBBranch.SupportDensitySplit
  - SparseWKBBranch.CompensatorRouting
  - DenseWKBBranch.BetaSixFifthsBank
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-many-cell-wkb-parameter-window-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-beltrami-localization-cell-count-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-supercritical-residual-scale-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-gate8-tax-density-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-fixed-density-compensator-routing-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-sparse-nonlocal-allocation-amplification-reduction-20260706.md
completion_truth: >-
  Strict reduction only. The many-cell WKB no-payer window, together with
  the occupancy identity phi=N theta^3 <= 1, splits the survivor. If the WKB
  bath is asked to back a fixed positive support density, then N theta^3 is
  order one, hence N is comparable to theta^(-3). The q=4/5 hiding row then
  forces theta^2 <= C beta^(12/5), i.e. theta <= C beta^(6/5). Therefore the
  portion of the many-cell window with theta larger than the beta^(6/5)
  coherent fixed-density cutoff is necessarily sparse in support and cannot
  itself be a fixed-density retained pressure-tax backing measure. It routes
  to the already named
  compensator/SRP/producer-suppression alternatives unless a nonlocal
  moment-allocation theorem is proved. The sparse-allocation follow-up prices
  that nonlocal theorem: any allocation with total-mass amplification B must
  satisfy B beta^(4/5) phi >= c to back a fixed density. Thus bounded
  allocation cannot rescue sparse support; unbounded allocation is a new
  payer/certificate or the fixed-density compensator remains. The dense
  alternative is sharper:
  theta <= C beta^(6/5), N comparable to theta^(-3), and Re_D >> theta^(-2).
  This note proves no WKB construction, no exclusion, no compensator routing
  theorem, and no MPP closure.
---

# Support-density split inside the many-cell WKB window

## 1. Starting window

The parameter-window note leaves the many-cell WKB branch:
\[
  \theta={\ell\over D},\qquad
  N=\left({L\over\ell}\right)^3,\qquad
  \phi\sim N\theta^3,
  \tag{SD.1}
\]
with
\[
  \beta^{-12/5}\lesssim N\lesssim \beta^{12/5}\theta^{-5},
  \qquad
  \theta\lesssim\beta^{24/25},
  \qquad
  \operatorname{Re}_D\gg\theta^{-2}.
  \tag{SD.2}
\]

The missing distinction is support density. Since \(\phi\) is an occupied
fraction of the \(D\)-bank,
\[
  \phi\lesssim1,
  \qquad\hbox{equivalently}\qquad
  N\lesssim\theta^{-3}.
  \tag{SD.3}
\]

Thus the actual WKB cell-count upper bound is
\[
  N
  \lesssim
  \min\{\beta^{12/5}\theta^{-5},\,\theta^{-3}\}.
  \tag{SD.4}
\]

## 2. Fixed-density demand

If the WKB bath is supposed to back a fixed retained tax density in the
Gate-8 sense, its occupied fraction cannot vanish. For some fixed
\(\theta_0>0\), it must have
\[
  \phi=N\theta^3\gtrsim\theta_0.
  \tag{SD.5}
\]

Together with (SD.3), this pins the cell count at full-bank scale:
\[
  N\sim\theta^{-3}.
  \tag{SD.6}
\]

Substitute this into the \(q=4/5\) hiding row \(N\theta^5\lesssim\beta^{12/5}\):
\[
  \theta^{-3}\theta^5
  =
  \theta^2
  \lesssim
  \beta^{12/5}.
  \tag{SD.7}
\]

Therefore a fixed-density WKB no-payer must satisfy
\[
  \theta\lesssim\beta^{6/5},
  \qquad
  N\sim\theta^{-3},
  \qquad
  \operatorname{Re}_D\gg\theta^{-2}.
  \tag{SD.8}
\]

The cutoff-neutrality lower bound is then automatic, since
\[
  N\sim\theta^{-3}\gtrsim\beta^{-18/5}\gg\beta^{-12/5}
  \tag{SD.9}
\]
at the edge \(\theta\sim\beta^{6/5}\), and it only grows as \(\theta\)
shrinks.

## 3. Sparse branch

For scales in the larger WKB window but above the coherent fixed-density
cutoff,
\[
  \beta^{6/5}\ll\theta\lesssim\beta^{24/25},
  \tag{SD.10}
\]
the \(q=4/5\) upper bound gives
\[
  \phi=N\theta^3
  \lesssim
  \beta^{12/5}\theta^{-2}.
  \tag{SD.11}
\]

Writing \(\theta=\beta^\alpha\), this is
\[
  \phi\lesssim\beta^{12/5-2\alpha}.
  \tag{SD.12}
\]
In the range \(24/25\le\alpha<6/5\), the exponent is positive:
\[
  {12\over5}-2\alpha>0.
  \tag{SD.13}
\]

So the occupied fraction tends to zero as \(\beta\to0\). This is a genuine
fine/sparse WKB bath, not a fixed-density retained pressure-tax backing
measure.

It therefore routes to the already named compensator branch:

- producer suppression or beta-edge failure;
- finite weighted residue routing;
- SRP moment-readout gate for infinite weighted residue;
- or a new nonlocal moment-allocation theorem proving that vanishing local
  support still backs the retained row in the needed currency.

The sparse-allocation follow-up gives the exact lower bound for that last
door. If an allocation operator with amplification \(B\) sends the sparse
pressure backing into a full-bank fixed tax row, then
\[
  B\,\beta^{4/5}\phi\gtrsim1.
  \tag{SD.16}
\]
Using \(\phi\lesssim\beta^{12/5}\theta^{-2}\), this requires
\[
  B\gtrsim\theta^2\beta^{-16/5}.
  \tag{SD.17}
\]
So bounded nonlocal allocation does not turn sparse support into a retained
fixed-density payer. It is an unbounded allocation/custody row, or the
compensator remains.

## 4. Split result

The many-cell WKB survivor is now a two-way branch.

Sparse branch:
\[
  \theta\lesssim\beta^{24/25},
  \qquad
  \beta^{-12/5}\lesssim N\lesssim\beta^{12/5}\theta^{-5},
  \qquad
  \phi=N\theta^3\to0.
  \tag{SD.14}
\]
This branch is not a fixed-density retained tax payer. It belongs to the
compensator / nonlocal allocation / construction-or-exclusion side.

Dense branch:
\[
  \theta\lesssim\beta^{6/5},
  \qquad
  N\sim\theta^{-3},
  \qquad
  \operatorname{Re}_D\gg\theta^{-2}.
  \tag{SD.15}
\]
This branch can have fixed support density, but it is a sharper object than the
previous WKB window: a nearly full \(D\)-bank of ultra-fine Beltrami cells,
persisting past the carrier viscous clock.

## 5. Four-sentence result

The WKB window alone does not say whether the bath backs a fixed retained
density. Adding the occupancy identity \(\phi=N\theta^3\le1\), fixed-density
backing forces \(N\sim\theta^{-3}\), and the \(q=4/5\) row then forces
\(\theta\lesssim\beta^{6/5}\). The part of the WKB window with
\(\beta^{6/5}\ll\theta\lesssim\beta^{24/25}\) is necessarily sparse in
support, so it routes to compensator/nonlocal allocation rather than a backed
retained tax row. The remaining dense WKB object is
\(\theta\lesssim\beta^{6/5}\), \(N\sim\theta^{-3}\), and
\(\operatorname{Re}_D\gg\theta^{-2}\).
