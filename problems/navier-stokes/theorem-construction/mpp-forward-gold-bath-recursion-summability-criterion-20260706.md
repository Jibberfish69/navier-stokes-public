---
theorem_id: forward-gold-bath-recursion-summability-criterion-20260706
status: exact-energy-summability-criterion-for-upscale-bath-recursion
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / bath recursion
target_object:
  - BathRecursion.SummabilityCriterion
  - ShallowingExponentLaw.NO-INFINITE-CHAIN
  - ExactMatrixEscape.Requirement
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-goal-decide-the-confinement-constant-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bath-exponent-recursion-energy-nondecay-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-one-holder-amplitude-floor-bath-ratio-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bath-steady-or-tracking-dichotomy-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-dense-crowd-two-channel-regate-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-depth-beta-depth-correction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-pressure-source-scaling-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-exact-shear-cell-pressure-hessian-display-20260706.md
completion_truth: >-
  Exact criterion for the energy recursion model, not a dense-crowd theorem.
  Write beta_n=e^{-x_n}, x_n>0, and suppose the holder-energy ratio at octave n
  is e_n=beta_n^q=e^{-q x_n} for fixed q>0. Then the committed holder energy
  satisfies E_N=E_0 exp(-q sum_{j<N} x_j), and the infinite bath chain has finite
  total energy exactly when sum_N exp(-q sum_{j<N} x_j) is finite. In the power
  law x_{n+1}=p x_n, the chain is never finite-energy for 0<p<1, because the
  partial sums converge and E_N tends to a positive limit; p=1 gives geometric
  energy decay; p>1 gives super-geometric decay. Therefore every exponent law
  that shallows the small parameter toward order one, including the filed
  p=4/5 law, cannot be the infinite finite-energy bath escape. A surviving exact
  matrix/node-sitting construction must instead produce non-shallowing
  accumulated smallness, a different non-power law with divergent cumulative
  x_j, or a growing-depth fresh-holder cascade. Uniform finite depth is killed
  separately by the beta-depth correction. Follow-up pressure-source scaling
  sets q=4/5 for producer-clock pressure-Hessian retuning, while static/collar
  rows use q=8/5. Follow-up exact shear-cell display checks that the source
  mean-zero constraint does not change q=4/5. The criterion itself is
  unchanged. No no-eviction crowd, confinement constant, composition theorem,
  or MPP closure is claimed.
---

# Bath recursion: energy summability criterion

## 1. Kill condition

The local cheap-bath ratio is real:
\[
  e_n=\frac{E_{n+1}}{E_n}=\beta_n^q
  \tag{BSC.1}
\]
with \(q=8/5\) in the static/collar scaling model and \(q=4/5\) in the
pressure-source retuning row. The open question is whether those cheap ratios
compose into a finite-energy infinite holder chain.

The kill condition for this subcell is a recursion for \(\beta_n\) under which
\[
  \sum_{N\ge0}E_N<\infty.
  \tag{BSC.2}
\]

## 2. Exact criterion

Write
\[
  \beta_n=e^{-x_n},
  \qquad x_n>0.
  \tag{BSC.3}
\]

Then
\[
  e_n=\beta_n^q=e^{-q x_n}.
  \tag{BSC.4}
\]

The committed energy after \(N\) holder tiers is
\[
  E_N
  =
  E_0\prod_{j=0}^{N-1}e_j
  =
  E_0\exp\!\left(-q\sum_{j=0}^{N-1}x_j\right).
  \tag{BSC.5}
\]

Therefore the infinite holder chain has finite energy exactly when
\[
  \sum_{N\ge0}
  \exp\!\left(-q\sum_{j=0}^{N-1}x_j\right)
  <\infty.
  \tag{BSC.6}
\]

This is the criterion. It is independent of the particular \(4/5\) exponent.

## 3. Power-law exponent schedules

For a power law
\[
  x_{n+1}=p x_n,
  \tag{BSC.7}
\]
one has
\[
  x_n=p^n x_0.
  \tag{BSC.8}
\]

If \(0<p<1\), then
\[
  \sum_{j=0}^{N-1}x_j
  =
  x_0\frac{1-p^N}{1-p}
  \longrightarrow
  \frac{x_0}{1-p}.
  \tag{BSC.9}
\]

Thus
\[
  E_N
  \longrightarrow
  E_0\exp\!\left(-\frac{q x_0}{1-p}\right)>0,
  \tag{BSC.10}
\]
so
\[
  \sum_N E_N=\infty.
  \tag{BSC.11}
\]

If \(p=1\), then \(\sum_{j<N}x_j=Nx_0\) and
\[
  E_N=E_0 e^{-qNx_0},
  \tag{BSC.12}
\]
so the total energy is finite.

If \(p>1\), then
\[
  \sum_{j<N}x_j=x_0\frac{p^N-1}{p-1},
  \tag{BSC.13}
\]
and \(E_N\) decays super-geometrically. The total energy is finite.

## 4. Consequence for the filed bath law

The filed dense-crowd law is
\[
  \beta_{n+1}=\beta_n^{4/5}.
  \tag{BSC.14}
\]

In \(x\)-variables this is
\[
  x_{n+1}=\frac45 x_n.
  \tag{BSC.15}
\]

This is the \(0<p<1\) case, so it cannot yield a finite-energy infinite bath
chain. The earlier note's computation
\[
  E_N/E_0=\beta_0^{8(1-(4/5)^N)}
  \tag{BSC.16}
\]
is exactly (BSC.10) with \(q=8/5\) and \(p=4/5\).

## 5. What an exact matrix escape must do

A different exact matrix/node-sitting schedule cannot merely improve constants
inside a shallowing law. It must make the cumulative smallness
\[
  \sum_{j<N}x_j
  \tag{BSC.17}
\]
grow enough that (BSC.6) holds.

In power-law language, it must avoid \(0<p<1\). More generally, it must produce
enough non-shallowing or renewed smallness that
\[
  \sum_N e^{-qS_N}<\infty,
  \qquad S_N:=\sum_{j<N}x_j.
  \tag{BSC.18}
\]

Thus the live matrix question is sharpened:

1. \(x_n\) summable: infinite bath escape killed by energy nondecay;
2. \(S_N\) divergent fast enough for (BSC.6): finite-energy bath construction
   becomes live;
3. bounded finite-depth outer scale: killed by geometric demand in the
   beta-depth correction;
4. growing-depth outer scale: re-enters the up-scale cascade problem.

## 6. Four-sentence result

Write \(\beta_n=e^{-x_n}\). If the holder ratio is
\[
  e_n=\beta_n^q,
\]
then
\[
  E_N=E_0\exp\!\left(-q\sum_{j<N}x_j\right),
\]
so the infinite bath chain is finite-energy exactly when
\[
  \sum_N\exp\!\left(-q\sum_{j<N}x_j\right)<\infty.
\]
Any shallowing power law \(x_{n+1}=p x_n\) with \(0<p<1\), including the filed
\(p=4/5\), leaves \(E_N\) bounded below and cannot be the infinite bath escape.
The exact matrix escape must therefore produce non-shallowing accumulated
smallness, or else the remaining fresh-holder threat is growing-depth up-scale
composition.
