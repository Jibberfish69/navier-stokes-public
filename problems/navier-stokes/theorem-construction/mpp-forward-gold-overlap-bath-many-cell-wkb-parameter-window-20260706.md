---
theorem_id: forward-gold-overlap-bath-many-cell-wkb-parameter-window-20260706
status: strict-reduction-many-cell-wkb-branch-to-explicit-theta-N-Re-window
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - ManyCellWKBBranch.ParameterWindow
  - CutoffDefectOrEnergyPayer.OutsideWindow
  - PersistentHighReCondition.CollapsesToCarrierPersistence
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-beltrami-localization-cell-count-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-supercritical-residual-scale-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-reynolds-edge-refresh-dichotomy-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-overlap-bath-survivor-front-classification-20260706.md
completion_truth: >-
  Strict reduction only. The Beltrami localization split leaves a many-cell WKB
  branch. Write theta=ell/D and N=(L/ell)^3, so phi=N theta^3. Avoiding
  cutoff/Hodge drift requires N >= c beta^(-12/5). Remaining in the q=4/5
  pressure row requires phi theta^2=N theta^5 <= C beta^(12/5). Therefore a
  no-payer many-cell WKB branch has a nonempty parameter window only when
  theta <= C beta^(24/25), with beta^(-12/5) <= N <= C beta^(12/5) theta^(-5).
  Outside this window the branch pays either cutoff/Hodge localization drift or
  residual energy above the q=4/5 row. Under the same q-row inequality, the
  Reynolds-edge high branch Re_D >> phi beta^(-12/5) is weaker than carrier
  persistence Re_D theta^2 >> 1, so the high-Re demand collapses to
  Re_D >> theta^(-2). This note proves no construction or exclusion of the
  remaining window and no MPP closure.
---

# Many-cell WKB parameter window for the Beltrami bath

## 1. Object

The Beltrami localization split leaves the branch where a localized Beltrami
carrier contains enough cells that cutoff/Hodge self-drift is not an order-one
producer-clock payer.

Let
\[
  \theta={\ell\over D},
  \qquad
  N=\left({L\over\ell}\right)^3,
  \qquad
  \phi\sim {L^3\over D^3}=N\theta^3.
  \tag{WKB.1}
\]

Here \(\ell\) is the carrier wavelength, \(L\) is the envelope scale, \(D\) is
the pressure-bank scale, \(N\) is the number of carrier cells in one envelope,
and \(\phi\) is the support fraction of that envelope in the \(D\)-bank.

The branch has to satisfy three already-filed constraints:

1. cutoff/Hodge neutrality;
2. \(q=4/5\) pressure-row hiding;
3. producer-clock persistence.

This note combines them in the same variables.

## 2. Cutoff/Hodge neutrality

The localization split gives the cutoff drift rate
\[
  r_{\rm loc}\sim\delta_D{\ell\over L}.
  \tag{WKB.2}
\]

At the supercritical threshold
\[
  \delta_D/s\sim\beta^{-4/5},
  \tag{WKB.3}
\]
avoiding an order-one drift over one producer clock requires
\[
  {L\over\ell}\gtrsim\beta^{-4/5}.
  \tag{WKB.4}
\]

Equivalently,
\[
  N\gtrsim\beta^{-12/5}.
  \tag{WKB.5}
\]

If (WKB.5) fails, the pocket does not inherit exact Beltrami neutrality. It
pays the cutoff/Hodge drift row or must prove a new cancellation theorem for
the localized Beltrami defect.

## 3. Pressure-row hiding

The residual scale split gives
\[
  {E_{\rm res}\over E_{\rm prod}(D)}
  \sim
  \phi\eta^2\theta^2,
  \qquad
  \eta={\delta_D\over s}.
  \tag{WKB.6}
\]

At \(\eta\sim\beta^{-4/5}\), staying inside the \(q=4/5\) pressure row requires
\[
  \phi\theta^2\lesssim\beta^{12/5}.
  \tag{WKB.7}
\]

Using \(\phi=N\theta^3\), this becomes
\[
  N\theta^5\lesssim\beta^{12/5}.
  \tag{WKB.8}
\]

If (WKB.8) fails, the branch is not the cheap \(q=4/5\) overlap row. It is a
larger residual-energy payer, already routed by the scale-split note.

## 4. The window

Combining (WKB.5) and (WKB.8) gives
\[
  \beta^{-12/5}
  \lesssim
  N
  \lesssim
  \beta^{12/5}\theta^{-5}.
  \tag{WKB.9}
\]

This window is nonempty only if
\[
  \beta^{-12/5}
  \lesssim
  \beta^{12/5}\theta^{-5},
  \tag{WKB.10}
\]
that is
\[
  \theta\lesssim\beta^{24/25}.
  \tag{WKB.11}
\]

Therefore the many-cell WKB survivor is not merely "fine". To remain a
nonpaying \(q=4/5\) branch after localization, the carrier scale must satisfy
\[
  {\ell\over D}\lesssim\beta^{24/25},
  \tag{WKB.12}
\]
and the cell count must lie in the explicit window (WKB.9).

In support-fraction variables the same window reads
\[
  \beta^{-12/5}\theta^3
  \lesssim
  \phi
  \lesssim
  \beta^{12/5}\theta^{-2}.
  \tag{WKB.13}
\]

Outside this window there is no hidden Beltrami WKB no-payer:
few-cell localization pays, and too much occupied support pays through residual
energy.

## 5. Reynolds condition collapses to carrier persistence

The refresh dichotomy states that the persistent high-Re branch requires
\[
  \operatorname{Re}_D\gg\phi\beta^{-12/5}.
  \tag{WKB.14}
\]

Carrier persistence itself requires
\[
  \operatorname{Re}_D\theta^2\gg1,
  \qquad\hbox{or}\qquad
  \operatorname{Re}_D\gg\theta^{-2}.
  \tag{WKB.15}
\]

On the \(q=4/5\) hiding row (WKB.7),
\[
  \phi\beta^{-12/5}\lesssim\theta^{-2}.
  \tag{WKB.16}
\]

Thus, once the WKB pocket is in the cheap pressure row, the refresh high-Re
condition is weaker than carrier persistence. The high-Re demand is simply
\[
  \operatorname{Re}_D\gg\theta^{-2}.
  \tag{WKB.17}
\]

At the edge \(\theta\sim\beta^{24/25}\), this is
\[
  \operatorname{Re}_D\gg\beta^{-48/25}.
  \tag{WKB.18}
\]

Smaller carrier scales demand still higher Reynolds number.

## 6. What remains

The survivor is now typed as:
\[
  \theta\lesssim\beta^{24/25},
  \qquad
  \beta^{-12/5}\lesssim N\lesssim \beta^{12/5}\theta^{-5},
  \qquad
  \operatorname{Re}_D\gg\theta^{-2},
  \tag{WKB.19}
\]
plus the actual same-fluid requirements:

- finite-energy WKB localization with the Hodge correction controlled;
- transport of the envelope on the producer clock;
- pressure-Hessian moment matching through the actual Navier-Stokes kernel;
- Gate-8 no-recount allocation or compensator routing;
- construction or exclusion of the resulting many-cell bath.

This is a smaller branch than "persistent fine/sparse high-Re cascade." It is
an ultra-fine, many-cell, high-Re WKB Beltrami bath, or a new cancellation of
the cutoff-defect term.

## 7. Four-sentence result

Write \(N=(L/\ell)^3\) and \(\theta=\ell/D\). Cutoff neutrality requires
\(N\gtrsim\beta^{-12/5}\), while remaining in the \(q=4/5\) pressure row
requires \(N\theta^5\lesssim\beta^{12/5}\). Hence a many-cell WKB no-payer
exists only in the explicit window
\[
  \theta\lesssim\beta^{24/25},
  \qquad
  \beta^{-12/5}\lesssim N\lesssim\beta^{12/5}\theta^{-5}.
\]
Inside that window, the Reynolds-edge condition collapses to carrier
persistence \(\operatorname{Re}_D\gg\theta^{-2}\); outside it, the branch pays
by cutoff/Hodge drift or residual energy.
