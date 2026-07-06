---
theorem_id: forward-gold-k5-pacing-identity-normal-form-gate-20260705
status: normal-form-coefficient-displayed-local-kappa-rejected-log-seed-obstruction
created: 2026-07-05
problem: navier-stokes
route: forward-gold / confinement constant / K5 neutral-channel gate
target_object:
  - K5EdgeNormalFormCoefficient.A
  - K5LocalKappaCriterion.REJECTED
  - K5PureModePacingSign.OPEN
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-goal-decide-the-confinement-constant-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-kill-integral-crow-reduction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-neutral-channel-second-order-direct-feed-obstruction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-neutral-channel-saturation-pacing-identity-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-log-seed-obstruction-pure-normal-form-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-edge-log-viscous-reynolds-split-20260705.md
completion_truth: >-
  Codex gate on the K5 pacing-identity note. The direct quadratic feed into the
  growing band remains zero by wavenumber selection. The surviving pure-mode
  mechanism is a cubic edge-mode normal form: the quadratic output creates mean
  and second-harmonic geometry, and those corrections couple back to the edge
  mode at relative rate s*|a|^2. This note displays the exact normal-form
  coefficient in operator currency. The sign is not proved. The proposed local
  band-entry test "local kappa below kappa_edge at troughs" is rejected as a
  certification criterion: the 2k modulation is same-scale, not WKB-slow, so the
  Crow dispersion for a constant-separation pair cannot be applied pointwise.
  The correct gate is the resonant Floquet/normal-form coefficient
  Lambda_edge. A second obstruction appears even if Re Lambda_edge > 0:
  the amplitude equation is cubic, so integrated production through the
  neutral phase is logarithmic in the seed amplitude, not seed-independent.
  If Re Lambda_edge <= 0 or vanishes by symmetry, the pure neutral mode survives
  this K5 channel outright. If Re Lambda_edge > 0, K5 supplies only an
  amplitude-octave pacing law. The viscous Reynolds split later supplies the
  external clock on the unit/marginal branch and leaves the super-marginal branch
  Reynolds-weighted.
---

# K5 pacing identity normal-form gate

## 1. What is being gated

The pacing note proposes that a neutral Crow edge mode self-modulates its
separation, locally enters the growing band, and therefore pays a
seed-independent stretch cap. The direct quadratic feed into the growing band has
already been killed by wavenumber selection. The remaining pure-mode question is
therefore:

\[
\partial_t a
=
s\,\Lambda_{\rm edge}|a|^2a+O(s|a|^4a)
\tag{K5G.1}
\]

for the complex amplitude \(a\) of the edge Crow mode. The K5 sign gate is

\[
\operatorname{Re}\Lambda_{\rm edge}>0.
\tag{K5G.2}
\]

If this holds, the neutral edge mode leaves neutrality on the same
amplitude-squared clock as its production. That is still weaker than the K4
interior-band cap: the resulting integrated stretch is logarithmic in the seed.
If it fails, the pure-mode pacing route does not close K5 at all.

## 2. Normal-form setup

Expand the translation-invariant filament equation around the straight
anti-parallel pair:

\[
\partial_t\eta
=
s\{L\eta+B(\eta,\eta)+C(\eta,\eta,\eta)+O(\eta^4)\},
\tag{K5G.3}
\]

with \(B\) symmetric bilinear and \(C\) symmetric trilinear after polarization.
Let \(q e^{ikz}\) be the neutral edge eigenmode,

\[
L_kq=0,\qquad L_k^\ast q^\ast=0,\qquad \langle q^\ast,q\rangle=1,
\qquad k=k_{\rm edge}.
\tag{K5G.4}
\]

The first-order perturbation is

\[
\eta_1=a\,q e^{ikz}+\overline a\,\overline q e^{-ikz}.
\tag{K5G.5}
\]

At second order, wavenumber selection gives only mean and second harmonic:

\[
\eta_2
=
|a|^2 h_0
+a^2 h_2e^{2ikz}
+\overline a^{\,2}\overline h_2e^{-2ikz}.
\tag{K5G.6}
\]

The coefficients solve

\[
L_0 h_0
=
-P_0B(q,\overline q),
\qquad
\mathcal I(h_0)=0,
\tag{K5G.7}
\]

and

\[
L_{2k}h_2
=
-P_{2k}B(q,q).
\tag{K5G.8}
\]

Here \(\mathcal I(h_0)=0\) is the impulse constraint: the uniform separation
component is removed. If \(L_0\) has remaining symmetry kernel, \(h_0\) is the
impulse-gauge pseudoinverse solution.

## 3. The coefficient

Project the resonant \(e^{ikz}\) component at order \(a|a|^2\) onto the adjoint
edge mode. With the symmetric \(B,C\) convention above,

\[
\Lambda_{\rm edge}
=
\left\langle q^\ast,\,
P_k\Bigl(
2B(q,h_0)
+2B(\overline q,h_2)
+3C(q,q,\overline q)
\Bigr)
\right\rangle .
\tag{K5G.9}
\]

The corresponding amplitude and production clocks are

\[
\partial_t |a|^2
=
2s\,\operatorname{Re}\Lambda_{\rm edge}|a|^4
+O(s|a|^6),
\tag{K5G.10}
\]

while the two-tube production scales as

\[
\mathcal P_{\rm edge}(a)
=
s\,\Pi_{\rm edge}|a|^2+O(s|a|^4),
\qquad
\Pi_{\rm edge}>0
\tag{K5G.11}
\]

after the profile factor is fixed. Thus a positive
\(\operatorname{Re}\Lambda_{\rm edge}\) gives an amplitude-octave pacing law:

\[
\int_{\rm neutral\ phase}\mathcal P_{\rm edge}\,dt
=
\frac{\Pi_{\rm edge}}{2\operatorname{Re}\Lambda_{\rm edge}}
\log\frac{|a_{\rm exit}|^2}{|a_{\rm seed}|^2},
+O(1),
\tag{K5G.12}
\]

up to the exact normal-form validity thresholds. This is not seed-independent.
It is one bounded payment per amplitude octave. Therefore pure-mode K5 pacing,
even with the favorable sign, does not by itself complete the pair kill
integral.

## 4. Local-kappa criterion rejected

The pacing note's pointwise test was:

\[
k\,d_{\rm local}(z)<k_{\rm edge}
\quad\text{at troughs.}
\tag{K5G.13}
\]

That is not a certification criterion. The induced separation modulation is at
wavenumber \(2k\), the same scale as the edge mode, not a slow background
parameter. Crow's constant-separation dispersion \(\gamma_c(kd)\) cannot be
applied pointwise to this periodically modulated pair.

The correct replacement is the resonant Floquet/normal-form test
\((\mathrm{K5G}.2)\). The \(2k\) modulation matters because it couples
\(e^{ikz}\) to \(e^{-ikz}\) and \(e^{3ikz}\), not because each trough can be
assigned an independent local Crow growth rate.

## 5. K5 state after the gate

Decided:

\[
\text{direct pure-mode second-order feed into the growing band}=0.
\tag{K5G.14}
\]

Displayed:

\[
\Lambda_{\rm edge}
\text{ in exact normal-form/operator currency.}
\tag{K5G.15}
\]

Open and obstructed:

\[
\operatorname{Re}\Lambda_{\rm edge}>0
\quad\text{versus}\quad
\operatorname{Re}\Lambda_{\rm edge}\le0
\text{ or symmetry-zero.}
\tag{K5G.16}
\]

Even in the favorable case \(\operatorname{Re}\Lambda_{\rm edge}>0\), the
neutral-phase integral carries

\[
\log\frac{|a_{\rm exit}|}{|a_{\rm seed}|}.
\tag{K5G.17}
\]

The follow-up viscous Reynolds split decides the external-clock option:
unit/marginal Reynolds removes the logarithm with an order-one cap, while
super-marginal Reynolds leaves a weighted high-Re branch. The crowd cell,
custody, and octave composition remain untouched.
