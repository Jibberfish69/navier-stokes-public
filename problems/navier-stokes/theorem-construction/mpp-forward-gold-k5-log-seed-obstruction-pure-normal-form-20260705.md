---
theorem_id: forward-gold-k5-log-seed-obstruction-pure-normal-form-20260705
status: pure-neutral-normal-form-cannot-give-seed-independent-cap
created: 2026-07-05
problem: navier-stokes
route: forward-gold / confinement constant / K5 neutral edge obstruction
target_object:
  - K5PureNeutralSeedIndependentCap.NO
  - K5NonlinearSelfExitTooSlow.A
  - K5ExternalLifetimeOrCustody.REQUIRED
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-goal-decide-the-confinement-constant-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-kill-integral-crow-reduction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-neutral-channel-second-order-direct-feed-obstruction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-pacing-identity-normal-form-gate-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-k5-mean-detuning-regate-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-edge-log-viscous-reynolds-split-20260705.md
completion_truth: >-
  Exact obstruction inside the autonomous pure-edge normal form. The K4
  seed-independent cap worked because the growing-band amplitude obeyed a linear
  exponential law: dA/dt ~ s*A while production ~ s*A. At the neutral edge, any
  self-generated exit is nonlinear: dA/dt ~ s*A^m with m>1 for A=|a|^2, while
  production is still ~ s*A. Therefore the integrated production from seed A0 to
  any fixed exit amplitude diverges as A0 -> 0: logarithmically for m=2 and by a
  power for m>2. In particular, even a favorable cubic edge coefficient
  Re Lambda_edge > 0 cannot restore a seed-independent per-encounter cap; it
  gives only one bounded payment per amplitude octave. If Re Lambda_edge <= 0,
  the pure edge channel is worse: it does not self-exit. Thus pure-mode K5 cannot
  close the pair kill integral by nonlinear self-saturation alone. Any rescue
  must come from an external lifetime/seed floor, viscous or core damping,
  custody/re-assembly payment, or sideband/crowd coupling. Same-day follow-up:
  viscosity supplies such an external clock with a cap proportional to local
  Reynolds, closing the log on the unit/marginal family but not uniformly on the
  super-marginal branch. No retention constant or MPP closure is claimed.
---

# K5 log-seed obstruction for the pure neutral normal form

## 1. Kill condition before work

The live K5 question after the direct-feed obstruction is whether the neutral
edge mode can kill itself by nonlinear self-detuning. The required output is a
seed-independent per-encounter cap:

\[
\sup_{A_0>0}
\int_{\rm encounter}\mathcal P(t)\,dt
<\infty ,
\tag{K5L.1}
\]

where \(A_0=|a(0)|^2\) is the seed amplitude squared of the pure edge mode.

The kill condition is:

\[
\text{the autonomous pure-edge normal form leaves }
\int\mathcal P\,dt
\text{ unbounded as }A_0\downarrow0.
\tag{K5L.2}
\]

## 2. Why the Crow interior cap worked

In the growing band, the mode amplitude squared \(A=|a|^2\) obeys

\[
\dot A=2s\gamma A+O(sA^2),
\qquad \gamma>0,
\tag{K5L.3}
\]

and the production has leading form

\[
\mathcal P=s\Pi A+O(sA^2),
\qquad \Pi>0.
\tag{K5L.4}
\]

Then

\[
\int_{A_0}^{A_{\rm exit}}
\frac{\mathcal P}{\dot A}\,dA
=
\frac{\Pi}{2\gamma}(A_{\rm exit}-A_0)+O(A_{\rm exit}^2),
\tag{K5L.5}
\]

so \(A_0\downarrow0\) costs nothing. This is the seed-independent K4 cap.

## 3. Neutral nonlinear self-exit is too slow

At the neutral edge, the linear growth coefficient is zero. Any autonomous
self-exit starts at nonlinear order:

\[
\dot A=s\mu A^m+O(sA^{m+1}),
\qquad m>1,
\tag{K5L.6}
\]

with \(m=2\) for the cubic edge normal form
\(\dot a=s\Lambda_{\rm edge}|a|^2a+\cdots\), where
\(\mu=2\operatorname{Re}\Lambda_{\rm edge}\). The production remains

\[
\mathcal P=s\Pi A+O(sA^2).
\tag{K5L.7}
\]

For \(\mu>0\), the integrated production from \(A_0\) to a fixed exit amplitude
is

\[
\int_{A_0}^{A_{\rm exit}}
\frac{\mathcal P}{\dot A}\,dA
=
\frac{\Pi}{\mu}
\int_{A_0}^{A_{\rm exit}}A^{1-m}\,dA
+O(1).
\tag{K5L.8}
\]

Thus:

\[
m=2:
\quad
\int\mathcal P\,dt
=
\frac{\Pi}{\mu}\log\frac{A_{\rm exit}}{A_0}+O(1),
\tag{K5L.9}
\]

and for \(m>2\),

\[
\int\mathcal P\,dt
\sim
\frac{\Pi}{\mu(m-2)}A_0^{\,2-m}.
\tag{K5L.10}
\]

Both diverge as \(A_0\downarrow0\). A nonlinear self-exit cannot reproduce the
linear Crow cap.

## 4. Nonpositive sign is worse

If \(\mu=0\), the displayed nonlinear exit is absent and the neutral mode has no
K5 self-kill at this order. If \(\mu<0\), the amplitude is driven away from the
exit side. In the model equation

\[
\dot A=-s|\mu|A^2,
\tag{K5L.11}
\]

one has

\[
A(t)=\frac{A_0}{1+s|\mu|A_0t},
\qquad
\int_0^T\mathcal P(t)\,dt
=
\frac{\Pi}{|\mu|}
\log(1+s|\mu|A_0T)+O(1),
\tag{K5L.12}
\]

which has no intrinsic finite encounter cap as \(T\to\infty\). So the favorable
sign is not enough, and the unfavorable sign is a direct pure-channel failure.

## 5. Consequence

The pure edge normal form has no seed-independent cap:

\[
\sup_{A_0>0}
\int_{\rm pure\ edge\ phase}\mathcal P(t)\,dt
=\infty
\tag{K5L.13}
\]

unless another mechanism supplies one of:

1. a lower seed floor \(A_0\ge A_{\min}>0\);
2. a finite external lifetime independent of \(A_0^{-1}\);
3. viscous/core damping that stops the neutral phase before the logarithm grows;
4. a custody payment for maintaining or re-assembling the pure edge mode;
5. sideband/crowd coupling that destroys the pure-mode assumption.

This decides the pure-mode K5 self-saturation route: it cannot close the pair
kill integral by itself. The viscous Reynolds split note then decides item 3:
viscosity closes the log only with a Reynolds-weighted cap.

## 6. Four-sentence result

The K4 cap worked because the growing mode had a linear exponential clock.
The neutral edge has only nonlinear self-exit, so its clock is slower than its
production at small seed. Even with favorable sign, the neutral-phase stretch
contains \(\log(A_{\rm exit}/A_0)\), so the cap is not seed-independent. K5 now
needs an external seed floor, lifetime, custody payment, or sideband/crowd
mechanism; pure-mode self-saturation is not enough. Viscosity supplies the
external clock on the marginal family and leaves the high-Re branch weighted.
