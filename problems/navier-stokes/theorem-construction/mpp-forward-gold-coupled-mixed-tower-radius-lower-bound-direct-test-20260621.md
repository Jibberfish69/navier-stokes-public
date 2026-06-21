---
ns_viewer:
  theorem_id: forward-gold-coupled-mixed-tower-radius-lower-bound-direct-test-20260621
  status: direct-test-complete-radius-loss-does-not-supply-coupled-lower-bound
  proof_role: forward_gold_coupled_mixed_tower_radius_test
  logical_landing_node: coupled_mixed_tower_radius_lower_bound
  edge_effect: "Tests CoupledMixedTowerRadiusLowerBound.A against the installed mixed-jet radius-loss machinery. The binomial/factorial convolution and pressure envelope are genuine, but the older H^s radius-loss energy note has a base-transport commutator defect: after Lambda^s, the base transport term does not vanish exactly. The defect is estimable, so the radius-loss shape is repairable, but it is not a no-loss theorem. Cross-cylinder tower transport gives tau_j=lambda_j^2 tau_{j+1}, rho_j=lambda_j rho_{j+1}; the radius-loss inequality requires strict larger-radius slack on the same cylinder. Without a uniform spare-radius or summable radius-spend theorem, an infinite Zeno chain can consume all analytic radius. Thus CoupledMixedTowerRadiusLowerBound.A remains open and reduces to NoLossCoupledTowerRadiusPropagation.A / SummableRadiusSpend.A / controlled radius-collapse into the terminal atom/profile branch."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-mixed-derivative-tower-participation-law-20260621.md
    - problems/navier-stokes/theorem-construction/weighted-mixed-jet-radius-loss-energy-reduction.md
    - problems/navier-stokes/theorem-construction/mixed-jet-hs-quadratic-convolution-reduction.md
    - problems/navier-stokes/theorem-construction/five-family-binomial-pipeline-note.md
  downstream_consequence: "Do not claim that factorial mixed-jet weights plus radius-loss energy prove a positive tower radius across terminal cylinders. The exact remaining supplier is no-loss/summable radius propagation for the coupled mixed tower, or a theorem that routes coupled radius collapse to the terminal time-face atom/profile branch."
---

# MPP Forward-Gold Coupled Mixed Tower Radius Lower Bound Direct Test

Date: 2026-06-21

## Status

This note tests the newly isolated target

\[
\text{CoupledMixedTowerRadiusLowerBound.A}
\tag{CRT.1}
\]

against the older mixed-jet weighted tower reductions.

The result is sharp: the factorial/binomial algebra is real, but it does not
give a lower bound for the coupled tower radius across shrinking terminal
cylinders. The available estimate is a radius-loss estimate. A Zeno chain can
spend radius at every step unless a new no-loss or summable-radius theorem is
proved.

## 1. What is already genuinely installed

For the mixed jets

\[
J_{m,\alpha}=\partial_t^m\partial_x^\alpha u,
\qquad
\Pi_{m,\alpha}=\partial_t^m\partial_x^\alpha p,
\tag{CRT.2}
\]

the factorial weights

\[
w_{m,\alpha}(\tau,\rho)
=
{\tau^m\rho^{|\alpha|}\over m!\,\alpha!}
\tag{CRT.3}
\]

cancel the mixed binomial coefficients:

\[
w_{m,\alpha}(\tau,\rho)
{m\choose a}{\alpha\choose\beta}
=
w_{a,\beta}(\tau,\rho)
w_{m-a,\alpha-\beta}(\tau,\rho).
\tag{CRT.4}
\]

Consequently the nonlinear tower envelope becomes an ordinary quadratic
convolution. The pressure gradient has the same convolution envelope as the
transport term, because the pressure operator is a Calderon-Zygmund/Fourier
multiplier of order one.

That part of the mixed-jet route is sound:

\[
\mathfrak T_s(\tau,\rho)+\mathfrak P_s(\tau,\rho)
\le
C_s\mathfrak A_s(\tau,\rho)^2.
\tag{CRT.5}
\]

The binomial coefficients are not the obstruction.

## 2. Exactness repair in the old \(H^s\) energy line

The older radius-loss note wrote the base transport contribution as though it
vanished after applying \(\Lambda^s\):

\[
\left\langle
\Lambda^s\big((u\cdot\nabla)J_{m,\alpha}\big),
\Lambda^sJ_{m,\alpha}
\right\rangle
=0.
\tag{CRT.6}
\]

That identity is true at the raw \(L^2\) level. It is not true at the
fractional \(H^s\) level. The exact decomposition is

\[
\begin{aligned}
\left\langle
\Lambda^s\big((u\cdot\nabla)J\big),
\Lambda^sJ
\right\rangle
&=
\left\langle
(u\cdot\nabla)\Lambda^sJ,
\Lambda^sJ
\right\rangle \\
&\quad+
\left\langle
[\Lambda^s,u\cdot\nabla]J,
\Lambda^sJ
\right\rangle .
\end{aligned}
\tag{CRT.7}
\]

The first term vanishes by incompressibility:

\[
\left\langle
(u\cdot\nabla)\Lambda^sJ,
\Lambda^sJ
\right\rangle
=0.
\tag{CRT.8}
\]

The commutator remains:

\[
\left\langle
[\Lambda^s,u\cdot\nabla]J,
\Lambda^sJ
\right\rangle .
\tag{CRT.9}
\]

For \(s>5/2\), a Kato-Ponce/Moser estimate gives the schematic but standard
bound

\[
\big\|[\Lambda^s,u\cdot\nabla]J\big\|_{L^2}
\le
C_s\left(
\|\nabla u\|_{L^\infty}\|J\|_{H^s}
+\|u\|_{H^s}\|J\|_{H^{s+1}}
\right).
\tag{CRT.10}
\]

Pairing with \(\|J\|_{H^s}\) and using Young's inequality yields

\[
\left|
\left\langle
[\Lambda^s,u\cdot\nabla]J,
\Lambda^sJ
\right\rangle
\right|
\le
{\nu\over8}\|J\|_{H^{s+1}}^2
+
C_{s,\nu}\left(1+\|u\|_{H^s}^2\right)\|J\|_{H^s}^2.
\tag{CRT.11}
\]

Thus the old radius-loss energy shape is repairable, but the exact proof must
carry this commutator coefficient. A clean version is

\[
{1\over2}{d\over dt}\mathfrak E_s(\tau,\rho)
+
c\nu\mathfrak D_s(\tau,\rho)
\le
C_{s,\nu}\left(
1+\|u\|_{H^s}^2+\mathfrak A_s(\tau,\rho)^2
\right)
\mathfrak E_s(\tau,\rho).
\tag{CRT.12}
\]

Since the base rung satisfies

\[
\|u\|_{H^s}^2\le \mathfrak E_s(\tau,\rho),
\tag{CRT.13}
\]

this does not destroy the radius-loss route. It does prevent the old note from
being used as an exact no-loss cancellation theorem.

## 3. Radius-loss comparison

For

\[
0\le \tau_0<\tau_1,
\qquad
0\le \rho_0<\rho_1,
\tag{CRT.14}
\]

the factorial weights give

\[
\mathfrak A_s(\tau_0,\rho_0)^2
\le
{1\over
\left(1-(\tau_0/\tau_1)^2\right)
\left(1-(\rho_0/\rho_1)^2\right)^3}
\mathfrak E_s(\tau_1,\rho_1).
\tag{CRT.15}
\]

Combining `(CRT.12)` and `(CRT.15)` gives a corrected radius-loss inequality of
the form

\[
{d\over dt}\mathfrak E_s(\tau_0,\rho_0)
+c\nu\mathfrak D_s(\tau_0,\rho_0)
\le
C_{s,\nu,\tau_0,\tau_1,\rho_0,\rho_1}
\left(1+\mathfrak E_s(\tau_1,\rho_1)\right)
\mathfrak E_s(\tau_0,\rho_0).
\tag{CRT.16}
\]

The important word is "loss": control at \((\tau_1,\rho_1)\) controls a strictly
smaller pair \((\tau_0,\rho_0)\).

## 4. Cross-cylinder radius transport

For adjacent terminal cylinders

\[
\lambda_j={r_{j+1}\over r_j},
\tag{CRT.17}
\]

the coupled mixed tower obeys

\[
W_{j+1,m,\alpha}
=
\lambda_j^{2m+|\alpha|+1}
W_{j,m,\alpha}(\lambda_j^2s,\lambda_j y).
\tag{CRT.18}
\]

Therefore the same physical analytic increment is transported by

\[
\tau_j=\lambda_j^2\tau_{j+1},
\qquad
\rho_j=\lambda_j\rho_{j+1}.
\tag{CRT.19}
\]

This is an exact identity, not an estimate.

## 5. Why radius-loss does not give the desired lower bound

`CoupledMixedTowerRadiusLowerBound.A` would need a positive lower bound, or a
controlled-collapse alternative, for the transported radius pair along the
whole terminal chain.

The radius-loss inequality `(CRT.16)` only says:

\[
\text{larger radius on one cylinder}
\Longrightarrow
\text{smaller radius on the same cylinder.}
\tag{CRT.20}
\]

The cross-cylinder identity `(CRT.19)` says:

\[
\text{child radius}
\Longleftrightarrow
\text{parent radius multiplied by }\lambda_j^2\text{ in time and }\lambda_j
\text{ in space.}
\tag{CRT.21}
\]

These two facts do not combine into a uniform positive lower bound. To use
`(CRT.16)` at each Zeno step, one needs spare radius:

\[
\tau_{0,j}<\tau_{1,j},
\qquad
\rho_{0,j}<\rho_{1,j}.
\tag{CRT.22}
\]

The constants contain

\[
\left(1-(\tau_{0,j}/\tau_{1,j})^2\right)^{-1}
\left(1-(\rho_{0,j}/\rho_{1,j})^2\right)^{-3}.
\tag{CRT.23}
\]

If the ratios approach one, these constants blow up. If fixed slack is spent at
infinitely many scales, the available radius can be exhausted. Nothing in the
installed radius-loss inequality replenishes that radius.

Thus the installed tower machinery proves:

\[
\text{factorial cancellation}
+
\text{radius-loss propagation},
\tag{CRT.24}
\]

not

\[
\text{no-loss coupled radius propagation through a terminal Zeno chain.}
\tag{CRT.25}
\]

## 6. Exact remaining theorem

The direct lower-bound route closes only with an additional theorem such as

\[
\boxed{
\text{NoLossCoupledTowerRadiusPropagation.A}
}
\tag{CRT.26}
\]

or

\[
\boxed{
\text{SummableRadiusSpend.A}
}
\tag{CRT.27}
\]

where the total radius loss along the terminal cylinder chain is finite.

The other possible closure is a controlled-collapse theorem:

\[
\boxed{
\text{coupled mixed tower radius collapse}
\Longrightarrow
\text{terminal time-face atom/profile branch already classified by the gold
route.}
}
\tag{CRT.28}
\]

## Verdict

The coupled mixed tower is the correct object. The factorial weights solve the
binomial problem. The pressure term belongs to the same quadratic convolution.

The exact obstruction is now:

\[
\boxed{
\text{radius-loss tower control does not by itself prevent the transported
analytic radius from collapsing along infinitely many heat-scale cylinders.}
}
\tag{CRT.29}
\]

So `CoupledMixedTowerRadiusLowerBound.A` remains open. The narrowed live
alternatives are:

\[
\boxed{
\text{no-loss coupled radius propagation, summable radius spend, or controlled
collapse into the terminal atom/profile branch.}
}
\tag{CRT.30}
\]
