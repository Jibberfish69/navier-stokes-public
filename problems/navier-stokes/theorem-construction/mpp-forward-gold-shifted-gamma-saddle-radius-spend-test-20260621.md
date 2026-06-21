---
ns_viewer:
  theorem_id: forward-gold-shifted-gamma-saddle-radius-spend-test-20260621
  status: direct-test-complete-shifted-gamma-saddle-installs-finite-envelope-but-does-not-close-spend
  proof_role: forward_gold_shifted_gamma_saddle_radius_spend_test
  logical_landing_node: shifted_gamma_saddle_band_radius_spend
  edge_effect: "Pursues the five Stirling/gamma followups after the coupled-radius notes. Finite Robbins/Stirling envelopes give explicit finite-rung constants, so the tower estimates no longer need large-rung language. The balanced middle binomial is a Gaussian saddle and isolates an O(sqrt(n))-wide derivative-split band. Replacing n! by Gamma(n+beta) leaves a tunable balanced-band multiplier of order n^(beta-1), with beta=1 recovering exact factorial cancellation. This multiplier can be fed into the moving-radius spend identity as a polynomial tower-moment charge. The divergent Stirling series should not be used as a tower correction; use exact log Gamma or Binet/convergent remainder potentials instead. Coefficient extraction reformulates the tower as a same-carrier generating-function problem, but current repo countermodels still block the bridge from high-rung analytic collapse to endpoint UI without a same-carrier dynamical theorem."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-factorial-radius-branch-20260617.md
    - problems/navier-stokes/theorem-construction/five-family-binomial-pipeline-note.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-coupled-mixed-tower-radius-lower-bound-direct-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-coupled-mixed-tower-radius-spend-identity-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-summable-coupled-radius-spend-direct-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-rung-tail-to-selected-carrier-direct-test-20260621.md
  downstream_consequence: "The strongest live candidate is not raw Stirling and not arbitrary high-rung collapse. It is a shifted-gamma saddle-band spend theorem: finite-rung gamma-ratio estimates plus a balanced-band lower extraction must prove either integrable logarithmic radius spend in the moving-radius identity or a same-selected-carrier high-rung branch that falls into unweighted action, strict no-waste, endpoint UI failure, or profile production. Without that added same-carrier theorem, the shifted-gamma branch remains a sharpened test, not a forward-gold proof."
external_sources:
  - https://en.wikipedia.org/wiki/Stirling%27s_approximation
  - https://dlmf.nist.gov/5.11
---

# MPP Forward-Gold Shifted-Gamma Saddle Radius-Spend Test

Date: 2026-06-21

## Status

This note pursues the five Stirling/gamma followups after the coupled-radius
work.

The installed state is fixed:

```math
\boxed{
\text{factorial weights cancel the binomial coefficients,}
\quad
\text{and the live obstruction is coupled analytic-radius spend.}
}
\tag{SGS.1}
```

The new question is whether the next layer of Stirling/gamma structure gives a
real theorem input for

```math
\boxed{\text{SummableRadiusSpend.A}}
\tag{SGS.2}
```

or for the controlled-collapse branch

```math
\boxed{
\text{divergent coupled tower-radius spend}
\Longrightarrow
\text{terminal time-face atom/profile or same-witness CM face failure.}
}
\tag{SGS.3}
```

The result is partial but useful. Finite-rung and saddle-band estimates are
real. Shifted-gamma weights create a tunable polynomial charge. The charge does
not by itself close the gold theorem, because the existing high-rung
countermodels show that analytic-radius collapse can miss the selected
finite-order endpoint carrier.

## 1. Finite-rung Stirling envelope

Use the finite Robbins/Stirling envelope, not only the asymptotic formula. For
all \(n\ge1\),

```math
\sqrt{2\pi}\,n^{n+1/2}e^{-n}e^{1/(12n+1)}
<
n!
<
\sqrt{2\pi}\,n^{n+1/2}e^{-n}e^{1/(12n)}.
\tag{SGS.4}
```

Consequently every middle-binomial estimate has explicit finite constants:

```math
{2^n\over \sqrt{\pi(n+1)/2}}\,
e^{-c_1/n}
\le
{n\choose \lfloor n/2\rfloor}
\le
{2^n\over \sqrt{\pi n/2}}\,
e^{c_2/n},
\qquad n\ge1,
\tag{SGS.5}
```

for absolute constants \(c_1,c_2\). The exact constants are less important
than the finite-rung form: every use of the central binomial can be written
with an explicit \(e^{O(1/n)}\) factor.

For the mixed tower, the same finite envelope applies separately to the time
index and to each spatial multi-index coordinate. Thus every truncated
mixed-rung estimate can be upgraded from

```math
\text{large rung Stirling}
\tag{SGS.6}
```

to

```math
\text{finite rung with named constants depending only on the truncation floor
and the fixed beta-window.}
\tag{SGS.7}
```

This installs the proposed finite-error object:

```math
\boxed{\text{FiniteRungStirlingEnvelope.A}}
\tag{SGS.8}
```

as a support theorem. It removes a presentation and rigor weakness. It does
not change the proof topology, because the factorial cancellation was already
exact.

## 2. Saddle-band extraction

The middle binomial is a Gaussian saddle. Write

```math
k={n\over2}+q.
\tag{SGS.9}
```

The finite Stirling envelope gives, uniformly for \(|q|=O(n^{2/3})\),

```math
{n\choose k}
=
{2^n\over\sqrt{\pi n/2}}\,
\exp\!\left(-{2q^2\over n}\right)
\exp\!\left(O\!\left({|q|^3\over n^2}+{1\over n}\right)\right).
\tag{SGS.10}
```

Thus the raw split mass sits in a band

```math
|k-n/2|\lesssim \sqrt n,
\tag{SGS.11}
```

with exponential tails outside wider multiples of \(\sqrt n\). After exact
factorial normalization the binomial coefficient disappears algebraically, but
the saddle still identifies where the nonlinear derivative split was trying to
place the burden: balanced pairs of comparable derivative depth.

The useful theorem shape is not a new binomial bound. It is a localization of
the nonlinear tower moment. A model statement is:

```math
\boxed{
\text{if an order }n\text{ tower interaction remains after endpoint and
shallow splits are controlled, then a nontrivial part of it passes through the
balanced saddle band }|k-n/2|\lesssim\sqrt n.
}
\tag{SGS.12}
```

This is the proposed object:

```math
\boxed{\text{SaddleBandTowerMomentExtraction.A}}
\tag{SGS.13}
```

Its possible use is narrow. It tells the pressure/flux commutator search where
to test coercivity: not across the whole split simplex, and not at the
endpoints first, but on the balanced \(O(\sqrt n)\)-wide split band.

It still needs Navier-Stokes sign or no-waste content. A Gaussian saddle
selects a band; it does not make the localized pressure or flux term
sign-definite.

## 3. Shifted-gamma weights

Replace the pure factorial time weight by

```math
w_n^{(\beta)}(\tau):={\tau^n\over \Gamma(n+\beta)},
\qquad \beta>0.
\tag{SGS.14}
```

For the pure time tower, the residual multiplier after the binomial split is

```math
R_\beta(n,k)
:=
{n\choose k}
{\Gamma(k+\beta)\Gamma(n-k+\beta)\over \Gamma(n+\beta)}.
\tag{SGS.15}
```

When \(\beta=1\),

```math
R_1(n,k)=1.
\tag{SGS.16}
```

This is the installed divided-power cancellation. For fixed
\(\beta\) in a compact subinterval of \((0,\infty)\), DLMF gamma-ratio
asymptotics give the finite-rung form

```math
R_\beta(n,k)
=
n^{\beta-1}
\left({k\over n}\left(1-{k\over n}\right)\right)^{\beta-1}
\left(1+O_\beta\!\left({1\over k+1}+{1\over n-k+1}\right)\right)
\tag{SGS.17}
```

away from the two endpoint strips.

On the balanced saddle band \(k=n/2+O(\sqrt n)\), this reduces to

```math
R_\beta(n,k)
=
2^{2-2\beta}n^{\beta-1}
\left(1+O_\beta(n^{-1/2})\right).
\tag{SGS.18}
```

So the user-supplied polynomial charge is exact:

```math
\boxed{
\text{shifted-gamma weights leave a tunable balanced-band multiplier }
n^{\beta-1}.
}
\tag{SGS.19}
```

The cases have different proof meanings:

```math
\beta<1
\quad\Longrightarrow\quad
\text{balanced high-rung splits are damped by }n^{-(1-\beta)};
\tag{SGS.20}
```

```math
\beta=1
\quad\Longrightarrow\quad
\text{exact factorial cancellation};
\tag{SGS.21}
```

```math
\beta>1
\quad\Longrightarrow\quad
\text{balanced high-rung splits carry a visible polynomial charge.}
\tag{SGS.22}
```

For the mixed tower, use

```math
w_{m,\alpha}^{(\beta_t,\beta_x)}(\tau,\rho)
:=
{\tau^m\rho^{|\alpha|}\over
\Gamma(m+\beta_t)\prod_{i=1}^3\Gamma(\alpha_i+\beta_x)}.
\tag{SGS.23}
```

The residual multiplier is the product of one time ratio and three spatial
coordinate ratios. On a balanced mixed split it behaves like

```math
m^{\beta_t-1}
\prod_{i=1}^3 \alpha_i^{\beta_x-1}
\tag{SGS.24}
```

up to constants depending on the fixed balanced-sector aperture and the
beta-window.

Feeding this into the moving-radius identity changes the tower moment being
paid. Instead of only

```math
\mu_t\mathfrak M_t+\mu_x\mathfrak M_x,
\tag{SGS.25}
```

the shifted test naturally asks for polynomially tilted moments such as

```math
\mu_t\mathfrak M_t^{(\beta)}
+\mu_x\mathfrak M_x^{(\beta)}
\tag{SGS.26}
```

where the high-rung part carries the saddle multiplier from `(SGS.24)`.

This is the strongest concrete candidate from the five items:

```math
\boxed{\text{ShiftedGammaSaddleBandSpend.A}}
\tag{SGS.27}
```

with the intended conclusion:

```math
\boxed{
\text{the shifted saddle-band charge either makes logarithmic radius spend
summable, or forces a same-selected-carrier endpoint branch.}
}
\tag{SGS.28}
```

Current inputs do not prove `(SGS.28)`. What they now provide is the exact
finite-rung algebra for testing it.

## 4. Corrected logarithmic radius potential

The divergent Stirling series should not be stacked into the tower as though
more Bernoulli terms meant more proof. The Stirling series has zero radius of
convergence. In this branch, the safe object is the exact logarithmic gamma
potential, or a Binet/convergent-remainder version of it.

Define the one-dimensional shifted potential

```math
\Phi_\beta(n;\tau)
:=
n\log\tau-\log\Gamma(n+\beta).
\tag{SGS.29}
```

Equivalently,

```math
{ \tau^n\over \Gamma(n+\beta)}
=
\exp(\Phi_\beta(n;\tau)).
\tag{SGS.30}
```

Use the exact decomposition

```math
\log\Gamma(z)
=
\left(z-{1\over2}\right)\log z-z+{1\over2}\log(2\pi)+B(z),
\tag{SGS.31}
```

where \(B(z)\) is the Binet remainder, with its convergent integral form and
controlled sign/size on the positive real axis.

Then

```math
\Phi_\beta(n;\tau)
=
n\log\tau
-\left(n+\beta-{1\over2}\right)\log(n+\beta)
+(n+\beta)
-{1\over2}\log(2\pi)
-B(n+\beta).
\tag{SGS.32}
```

This is a real potential, not an asymptotic slogan. Along a Zeno cylinder chain,
the candidate telescope is the exact difference

```math
\Delta_j\Phi_\beta
=
\Phi_\beta(n_{j+1};\tau_{j+1})
-\Phi_\beta(n_j;\tau_j),
\tag{SGS.33}
```

with the Binet remainder difference

```math
B(n_j+\beta)-B(n_{j+1}+\beta)
\tag{SGS.34}
```

kept as an actual signed remainder instead of replaced by a divergent Bernoulli
tail.

This installs the safe correction object:

```math
\boxed{\text{BinetCorrectedRadiusPotential.A}}
\tag{SGS.35}
```

Its job is to support `(SGS.27)`: finite-rung shifted-gamma estimates and
Zeno-chain telescoping should use exact log gamma or Binet remainders, not
truncated Stirling corrections as proof mass.

## 5. Coefficient extraction and same-carrier bridge

The factorial tower is naturally a coefficient-extraction object:

```math
{1\over n!}=[z^n]e^z
={1\over2\pi i}\oint {e^z\over z^{n+1}}\,dz.
\tag{SGS.36}
```

The shifted-gamma tower has the corresponding Mittag-Leffler generating
function:

```math
E_{1,\beta}(z)
:=
\sum_{n=0}^\infty {z^n\over\Gamma(n+\beta)}.
\tag{SGS.37}
```

For the coupled mixed tower, define the shifted generating family

```math
\mathcal G_j^{(\beta_t,\beta_x)}(\zeta,z;s)
:=
\sum_{m,\alpha}
{\zeta^m z^\alpha\over
\Gamma(m+\beta_t)\prod_{i=1}^3\Gamma(\alpha_i+\beta_x)}
\chi\,\partial_s^m\partial_y^\alpha v_j(s).
\tag{SGS.38}
```

For \(\beta_t=\beta_x=1\), this is the ordinary exponential mixed-jet
generating family already implicit in the coupled tower survival note.

The complex/saddle formulation changes the bridge question. It is no longer
"does the tower have large high rungs?" The right question is:

```math
\boxed{
\text{does the same selected endpoint carrier see the boundary singularity of
the shifted mixed-jet generating family?}
}
\tag{SGS.39}
```

The existing countermodels matter here. The note
`mpp-forward-gold-high-rung-tail-to-selected-carrier-direct-test-20260621.md`
shows that high-rung analytic tail divergence does not dominate a finite-order
selected carrier at the data level. Therefore coefficient extraction alone
does not close the bridge.

The corrected bridge candidate is:

```math
\boxed{\text{SelectedEndpointCoefficientExtractionBridge.A}}
\tag{SGS.40}
```

with the necessary same-carrier hypothesis:

```math
\boxed{
\begin{gathered}
\text{the shifted generating-family singularity is produced by the same
rescaled Navier-Stokes solution,}\\
\text{on the same selected carrier, with no-waste/source-square/profile
dynamics preventing remote high-rung tail escape.}
\end{gathered}
}
\tag{SGS.41}
```

Under `(SGS.41)`, a saddle singularity could plausibly force one of:

```math
\boxed{
\neg\text{SelectedCarrierEndpointUI.A},\quad
\text{UnweightedTerminalCriticalActionReserve.A},\quad
\text{StrictRescaledNoWasteLyapunov.A},\quad
\text{or MinimalZenoProfileProduction.A}.
}
\tag{SGS.42}
```

Without `(SGS.41)`, it is only high-rung analytic-radius failure, and the
existing repo already keeps that separate from endpoint UI failure.

## Verdict

The five followups produce one real narrowed candidate:

```math
\boxed{
\text{finite-rung shifted-gamma saddle-band estimates}
\quad+\quad
\text{moving-radius spend identity}
\quad+\quad
\text{same-selected-carrier coefficient bridge}.
}
\tag{SGS.43}
```

The first two pieces are now concrete enough to use:

```math
\boxed{
R_\beta(n,k)
\sim
n^{\beta-1}
\left({k\over n}\left(1-{k\over n}\right)\right)^{\beta-1}
}
\tag{SGS.44}
```

and, on the middle saddle band,

```math
\boxed{
R_\beta(n,k)\sim 2^{2-2\beta}n^{\beta-1}.
}
\tag{SGS.45}
```

The third piece remains the proof blocker. The shifted-gamma saddle can create
a polynomial high-rung charge, but current inputs do not prove that this charge
is seen by the selected endpoint carrier.

So the exact status is:

```math
\boxed{
\text{ShiftedGammaSaddleBandSpend.A is a sharpened live test for
SummableRadiusSpend.A / controlled collapse.}
}
\tag{SGS.46}
```

and

```math
\boxed{
\text{it closes only after a same-carrier no-waste, source-square, unweighted
action, endpoint-UI-failure, or profile-production bridge is proved.}
}
\tag{SGS.47}
```

