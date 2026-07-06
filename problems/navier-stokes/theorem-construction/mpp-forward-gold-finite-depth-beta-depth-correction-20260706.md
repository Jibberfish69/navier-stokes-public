---
theorem_id: forward-gold-finite-depth-beta-depth-correction-20260706
status: exact-depth-correction-for-finite-depth-bath-escape
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / finite-depth bath
target_object:
  - FiniteDepthBath.UniformDepthKilled
  - ShrinkingBeta.RequiresGrowingDepth
  - FreshHolderSeries.RetypedAsDeepeningCascade
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-goal-decide-the-confinement-constant-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-depth-bath-energy-only-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-one-holder-amplitude-floor-bath-ratio-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bath-recursion-summability-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bath-steady-or-tracking-dichotomy-20260705.md
completion_truth: >-
  Exact correction to the finite-depth bath fork. The previous energy-only
  obstruction shows that a fresh-holder series can be summable if beta_n is
  allowed to shrink with n. This note identifies the price of that example:
  shrinking beta_n is growing scale depth. If finite depth means a uniform
  octave-depth bound K_n <= K_*, then beta_n >= 2^{-K_*}; for geometric record
  demand W_n = W_0 2^n and holder cost H_n = C W_n beta_n^q, one has
  H_n >= C W_0 2^{-qK_*} 2^n, so sum_n H_n diverges. Therefore uniformly
  finite-depth fresh bath funding is killed in the event-index energy model.
  The summable sequence beta_n = 2^{-(1+epsilon)n/q} requires
  K_n = log_2(1/beta_n) = (1+epsilon)n/q, hence linear depth growth; it must be
  treated as an upscale/deepening cascade, not as a bounded finite-depth
  escape. What remains open is the admissibility of that growing-depth cascade:
  bounded-domain scale exhaustion, same-packet allocation/depletion,
  reuse/tracking, or an explicit PDE construction/impossibility. No dense-crowd
  theorem, confinement-constant decision, composition theorem, or MPP closure is
  claimed.
---

# Finite-depth bath: beta-depth correction

## 1. Physical object

The finite-depth bath fork asks whether a record event can be held by a bounded
number of larger-scale holder layers, rather than by an infinite up-scale bath
chain.

The previous finite-depth note showed that finite energy alone does not exclude
a fresh-holder series when the scale ratio \(\beta_n\) is allowed to shrink:
\[
  H_n\sim W_n\beta_n^q,
  \qquad
  W_n\sim 2^n,
  \qquad
  \beta_n=2^{-(1+\epsilon)n/q}
  \tag{FDC.1}
\]
gives \(\sum_nH_n<\infty\).

This note checks whether that sequence is actually finite-depth.

## 2. Depth variable

Let
\[
  K_n:=\log_2\frac1{\beta_n}.
  \tag{FDC.2}
\]

Thus
\[
  \beta_n=2^{-K_n}.
  \tag{FDC.3}
\]

Uniform finite depth means
\[
  K_n\le K_*
  \qquad\text{for all }n
  \tag{FDC.4}
\]
for some fixed \(K_*<\infty\). Equivalently,
\[
  \beta_n\ge2^{-K_*}.
  \tag{FDC.5}
\]

## 3. Uniform finite depth is killed

Use the event-index holder model
\[
  H_n=C\,W_n\beta_n^q.
  \tag{FDC.6}
\]

For geometric record demand,
\[
  W_n=W_0 2^n.
  \tag{FDC.7}
\]

If \(K_n\le K_*\), then
\[
  H_n
  =
  C W_0 2^n\beta_n^q
  \ge
  C W_0 2^n 2^{-qK_*}.
  \tag{FDC.8}
\]

Therefore
\[
  \sum_nH_n=\infty.
  \tag{FDC.9}
\]

So bounded finite-depth fresh bath funding cannot pay an infinite geometric
record ladder with finite energy in this model. The previous summable example
does not live in the uniformly finite-depth branch.

## 4. What the summable example actually says

For
\[
  \beta_n=2^{-(1+\epsilon)n/q},
  \tag{FDC.10}
\]
the depth is
\[
  K_n
  =
  \log_2\frac1{\beta_n}
  =
  \frac{1+\epsilon}{q}\,n.
  \tag{FDC.11}
\]

The price of summability is linear depth growth. The holder must move farther
up the scale ladder with each record event.

Thus the fresh-holder series has been retyped:

1. uniform finite depth: killed by (FDC.9);
2. shrinking \(\beta_n\): not finite-depth; it is a growing-depth bath cascade;
3. actual PDE construction: must show the producer scales, holder scales,
   geometry, and same-packet costs admit that growing-depth schedule.

## 5. Bounded-domain consequence

If the physical domain has outer scale \(L_\Omega\), and the producer scale for
event \(n\) is \(d_n\), then
\[
  \beta_n=\frac{d_n}{L_n},
  \qquad
  L_n\le L_\Omega
  \tag{FDC.12}
\]
gives
\[
  \beta_n\ge\frac{d_n}{L_\Omega}.
  \tag{FDC.13}
\]

The summable example therefore requires at least
\[
  d_n
  \le
  L_\Omega\,2^{-(1+\epsilon)n/q}.
  \tag{FDC.14}
\]

That is a scale-concentration condition. It is not ruled out by this algebra,
but it no longer sits in a bounded finite-depth holder branch. It is the same
large question as the up-scale bath/crowd cascade: can the true NS field build
and maintain that scale-deepening schedule while production continues and while
same-packet costs are not allocated back into the record ladder?

## 6. Four-sentence result

Uniform finite-depth bath funding is killed in the event-index energy model. If
\(K_n=\log_2(1/\beta_n)\le K_*\), then
\[
  H_n\sim W_0 2^n\beta_n^q\ge C W_0 2^{-qK_*}2^n,
\]
so \(\sum_nH_n\) diverges. The summable example
\(\beta_n=2^{-(1+\epsilon)n/q}\) works only because
\[
  K_n=\frac{1+\epsilon}{q}n,
\]
so the holder depth grows linearly with the record count. The surviving fresh
bath threat is therefore a growing-depth/upscale cascade, not a bounded
finite-depth composition escape.
