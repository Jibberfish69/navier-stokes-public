---
theorem_id: forward-gold-overlap-bath-terminal-frequency-viscous-refresh-cancellation-20260706
status: strict-reduction-terminal-frequency-viscosity-to-persistence-or-refresh-row
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - TerminalWKBFrequencyEscape.ViscousRefreshCancellation
  - FixedPressureMoment.HighFrequencyNotAutomaticPayer
  - WKBPressureMoment.PersistenceOrRefreshRow
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-terminal-frequency-escape-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-high-re-log-reservoir-persistence-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-pressure-source-scaling-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-fine-sparse-beltrami-self-drift-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-reynolds-edge-refresh-dichotomy-20260706.md
completion_truth: >-
  Strict reduction only. The terminal-frequency fork shows that a retained
  nonvanishing pressure moment at lambda -> infinity becomes high-Sobolev
  Field/readout material, while a vanishing or intermittent moment aliases to
  the high-factor source branch. This companion note checks the separate
  viscous shortcut: terminal frequency by itself is not an automatic
  order-one viscous payer for a fixed pressure-Hessian moment. If a carrier
  of wavelength ell=theta D and support fraction phi supplies Hessian size H,
  fixed moment requires A^2 lambda^2~H, hence stored kinetic energy
  E_cell~phi H theta^2 D^5. Its producer-clock persistence number is
  Re_D theta^2. If it does not persist, maintaining the moment for one producer
  clock costs E_cell/(Re_D theta^2), so the theta factor cancels and the
  normalized row is phi(H/s^2)/Re_D. For H~s^2 beta^(4/5), this is
  phi beta^(4/5)/Re_D; for H~s^2 eta^2 it recovers the Reynolds-edge row
  phi eta^2/Re_D, hence phi beta^(-8/5)/Re_D at eta~beta^(-4/5). Therefore
  viscosity routes terminal frequency to high-Re persistence or explicit
  refresh/custody; it does not close the confinement constant. No WKB
  construction, no WKB exclusion, no Gate-8 custody theorem, no crowd-cell
  clearance, and no MPP closure are claimed.
---

# Terminal frequency viscous-refresh cancellation

## 1. Object

The terminal-frequency fork has already typed the readout horn:
\[
  \lambda\to\infty
  \Rightarrow
  \hbox{high-Sobolev readout or high-factor source alias}.
  \tag{TFV.1}
\]

This note checks the separate viscous shortcut:
\[
  \lambda\to\infty
  \Rightarrow
  \hbox{automatic order-one viscous payer}.
  \tag{TFV.2}
\]

For fixed pressure-Hessian moment, that shortcut is false. Higher carrier
frequency increases the viscous rate, but lowers the carrier energy by the
same scale factor.

## 2. Fixed moment at carrier scale

Let the carrier wavelength be
\[
  \ell=\theta D,
  \qquad
  \lambda=\ell^{-1}.
  \tag{TFV.3}
\]

Let the carrier occupy support fraction \(\phi\) in the \(D\)-bank and supply
pressure-Hessian size
\[
  |K|\sim H.
  \tag{TFV.4}
\]

For a Beltrami or shear-type WKB carrier of velocity amplitude \(A\),
\[
  |\nabla u|^2\sim A^2\lambda^2\sim H.
  \tag{TFV.5}
\]

Thus fixed \(H\) requires
\[
  A^2\sim {H\over\lambda^2}=H\ell^2.
  \tag{TFV.6}
\]

The stored kinetic energy is
\[
  E_{\rm cell}
  \sim
  \phi A^2D^3
  \sim
  \phi H\theta^2D^5.
  \tag{TFV.7}
\]

So terminal frequency does not store more energy for a fixed pressure moment.
It stores less.

## 3. Viscous clock

The viscous lifetime is
\[
  \tau_\nu\sim {1\over\nu\lambda^2}={\ell^2\over\nu}.
  \tag{TFV.8}
\]

On the producer clock \(s^{-1}\), the persistence number is
\[
  P_{\rm pers}
  =
  s\tau_\nu
  =
  {s\ell^2\over\nu}
  =
  \operatorname{Re}_D\theta^2,
  \qquad
  \operatorname{Re}_D={sD^2\over\nu}.
  \tag{TFV.9}
\]

If \(P_{\rm pers}\gg1\), this is the high-Re persistence branch. If
\(P_{\rm pers}\lesssim1\), then maintaining the moment for one producer clock
requires about \(P_{\rm pers}^{-1}\) refreshes.

The refresh work is therefore
\[
  W_{\rm refresh}
  \gtrsim
  {E_{\rm cell}\over \operatorname{Re}_D\theta^2}
  \sim
  {\phi H D^5\over \operatorname{Re}_D}.
  \tag{TFV.10}
\]

The \(\theta^2\) cancels.

## 4. Normalized row

Since
\[
  E_{\rm prod}(D)\sim s^2D^5,
  \tag{TFV.11}
\]
the normalized refresh row is
\[
  {W_{\rm refresh}\over E_{\rm prod}(D)}
  \gtrsim
  {\phi\over\operatorname{Re}_D}{H\over s^2}.
  \tag{TFV.12}
\]

For the cheap active pressure row,
\[
  H\sim s^2\beta^{4/5},
  \tag{TFV.13}
\]
this gives
\[
  {W_{\rm refresh}\over E_{\rm prod}(D)}
  \gtrsim
  {\phi\beta^{4/5}\over\operatorname{Re}_D}.
  \tag{TFV.14}
\]

For a supercritical residual with \(H\sim s^2\eta^2\), the same law gives
\[
  {W_{\rm refresh}\over E_{\rm prod}(D)}
  \gtrsim
  {\phi\eta^2\over\operatorname{Re}_D}.
  \tag{TFV.15}
\]

At \(\eta\sim\beta^{-4/5}\), this is exactly the Reynolds-edge refresh row
\[
  {\phi\beta^{-8/5}\over\operatorname{Re}_D}.
  \tag{TFV.16}
\]

## 5. Consequence

Terminal frequency has no third viscous meaning:
\[
  \hbox{terminal frequency}
  \Rightarrow
  \begin{cases}
  \operatorname{Re}_D\theta^2\gg1,
  &\hbox{persistent high-Re carrier},\\
  \phi(H/s^2)/\operatorname{Re}_D,
  &\hbox{explicit refresh/custody row}.
  \end{cases}
  \tag{TFV.17}
\]

So \(\lambda\to\infty\) does not itself pay the confinement constant. A proof
still has to price the refresh row through Gate-8/custody, route it through
the high-factor source branch, or build/exclude the dynamic WKB bath.

## 6. Four-sentence result

For a WKB carrier of wavelength \(\ell=\theta D\) supplying Hessian size \(H\),
fixed pressure moment means \(A^2\lambda^2\sim H\), hence
\[
  E_{\rm cell}\sim\phi H\theta^2D^5.
\]
The producer-clock lifetime is \(\operatorname{Re}_D\theta^2\), so refresh over
one producer clock costs
\[
  {W_{\rm refresh}\over E_{\rm prod}(D)}
  \gtrsim
  {\phi\over\operatorname{Re}_D}{H\over s^2}.
\]
The frequency factor cancels. Terminal frequency is high-Re persistence or an
explicit refresh/custody row, not automatic viscous eviction.
