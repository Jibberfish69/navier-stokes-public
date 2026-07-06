---
theorem_id: forward-gold-k5-neutral-channel-second-order-direct-feed-obstruction-20260705
status: direct-second-order-growing-band-feed-coefficient-zero-mean-detuning-open
created: 2026-07-05
problem: navier-stokes
route: forward-gold / confinement constant / K5 neutral-channel saturation
target_object:
  - K5DirectGrowingBandFeed.A
  - NeutralCrowModeQuadraticSelection.A
  - EdgeMeanDetuningCoefficient.OPEN
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-goal-decide-the-confinement-constant-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-kill-integral-crow-reduction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-two-tube-exact-tilt-stretch-eviction-ratio-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-kill-angle-sheet-hunt-self-cell-sweep-20260705.md
completion_truth: >-
  K5's advertised direct second-order feed mechanism is false for a pure
  single near-edge Crow Fourier mode. The exact obstruction is axial
  translation symmetry: the quadratic term in any translation-invariant
  filament expansion conserves axial wavenumber, so a mode supported at +/-k
  self-couples only into wavenumbers 0 and +/-2k. Near the upper Crow band edge,
  +/-2k is outside the growing band and 0 is a mean geometry/detuning mode, not
  direct growing-band feed. Therefore the second-order direct projection
  coefficient from one neutral edge mode into the interior growing band is
  identically zero. This does not yet prove the neutral channel survives:
  the mean mode can change separation, effective kappa, core-log parameters,
  or kill geometry, and sideband packets can difference-couple. K5 is retargeted
  to the edge mean-detuning coefficient and to sideband/crowd channels. No
  per-encounter tax, retention constant, or MPP closure is claimed.
---

# K5 neutral-channel second-order direct-feed obstruction

## 1. Kill condition before work

K5 was stated as:

\[
\text{near-neutral Crow mode}
\quad\Longrightarrow\quad
\text{second-order feed into the growing band at rate }s\beta^2.
\tag{K5.1}
\]

The kill condition for this unit is:

\[
\text{a pure neutral producing mode survives second order without feeding a
growing mode.}
\tag{K5.2}
\]

This note decides the direct-feed part of K5. It does not decide the whole
neutral-channel problem.

## 2. Fourier selection rule

Let \(z\) be the axial coordinate of the anti-parallel pair and write the
near-edge Crow perturbation as a single Fourier mode

\[
\eta(z)
=
\beta\bigl(q e^{ikz}+\overline q e^{-ikz}\bigr),
\qquad
k\approx k_{\rm edge}.
\tag{K5.3}
\]

The filament equation expanded around the straight anti-parallel pair has the
translation-invariant normal form

\[
\partial_t\eta
=
L\eta+B(\eta,\eta)+O(\eta^3),
\tag{K5.4}
\]

where \(L\) is the Crow linear operator and \(B\) is the quadratic Biot-Savart
interaction term. Translation invariance in \(z\) forces the Fourier convolution
law

\[
\widehat{B(\eta,\eta)}(\ell)
=
\sum_{m+n=\ell}B_{m,n}(\widehat\eta(m),\widehat\eta(n)).
\tag{K5.5}
\]

For data supported only at \(+k\) and \(-k\), the quadratic output is supported
only at

\[
\ell\in\{0,\,+2k,\,-2k\}.
\tag{K5.6}
\]

No other wavenumber is available at second order.

## 3. Direct growing-band coefficient

The upper Crow band edge is a finite wavenumber \(k_{\rm edge}\), with the
linear growing band lying below it. For \(k\) near \(k_{\rm edge}\), the second
harmonic \(2k\) lies outside that growing band, while \(\ell=0\) is a mean
geometry mode rather than a Crow growing perturbation.

Therefore the direct second-order projection from a pure near-edge mode into
the interior growing band is exactly zero:

\[
C^{(2)}_{k\to \ell}=0
\qquad
\text{for every growing-band }0<|\ell|<k_{\rm edge}
\text{ generated directly from } \{\pm k\}.
\tag{K5.7}
\]

This is not a small coefficient. It is forbidden by wavenumber selection.

## 4. What survives

The false route is direct pure-mode feed into the growing band. The surviving
neutral-channel routes are different objects:

1. Mean detuning: the \(\ell=0\) output may change separation, core-log
   parameter, effective \(\kappa=kd\), or kill geometry. If that drift moves the
   edge mode into the unstable side at rate \(s\beta^2\), K5 can still cap the
   encounter.
2. Second harmonic: the \(\ell=2k\) output is outside the Crow growing band near
   the upper edge, but it can alter core geometry or feed later nonlinear
   interactions.
3. Sideband packets: two nearby modes \(k_1,k_2\) produce difference and sum
   wavenumbers. That is no longer the pure single-mode K5 coefficient; it is a
   sideband/crowd version of the problem.

Thus K5 is retyped as:

\[
\text{compute the mean-detuning coefficient at the band edge,}
\tag{K5.8}
\]

and, separately, decide whether sideband packets create or evade the same
tax.

## 5. Result in four sentences

A single neutral Crow Fourier mode does not feed the growing band at second
order. The quadratic interaction can only make a mean mode and a second
harmonic. Near the upper band edge, the second harmonic is outside the growing
band, and the mean mode is a detuning problem rather than direct growth. The
next exact coefficient is the mean detuning: whether the induced mean geometry
moves the neutral mode into the unstable side or lets it persist.
