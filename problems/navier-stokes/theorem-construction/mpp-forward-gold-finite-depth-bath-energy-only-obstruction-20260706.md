---
theorem_id: forward-gold-finite-depth-bath-energy-only-obstruction-20260706
status: exact-energy-only-obstruction-for-finite-depth-bath-composition
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / finite-depth bath
target_object:
  - FiniteDepthBath.EnergyOnlyNoGo
  - BathComposition.BetaLowerBoundNeeded
  - FreshHolderSeries.Obstruction
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-goal-decide-the-confinement-constant-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-one-holder-amplitude-floor-bath-ratio-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bath-recursion-summability-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bath-exponent-recursion-energy-nondecay-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k3-tv-toll-funding-allocation-reduction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-custody-row-lift-gate8-allocation-reduction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-depth-beta-depth-correction-20260706.md
completion_truth: >-
  Exact obstruction to an energy-only proof against finite-depth bath leverage,
  not a dense-crowd construction and not a confinement-constant decision. If a
  record event with production/work scale W_n can be held by a fresh finite-depth
  bath at one-tier ratio beta_n^q, then the committed holder energy is modeled
  by H_n = W_n beta_n^q. Even when W_n grows geometrically, beta_n can shrink
  fast enough that sum_n H_n is finite; for W_n = W_0 2^n, choosing
  beta_n = 2^{-(1+epsilon)n/q} gives H_n = W_0 2^{-epsilon n}. Therefore finite
  total energy by itself does not rule out finite-depth bath funding. The
  branch can be killed only by an additional mechanism: a lower bound or
  summability obstruction on the admissible beta_n sequence, same-packet
  allocation/depletion of the holder cost into Gate 8, a reuse/tracking cost for
  the same bath, or an explicit PDE impossibility of the fresh-holder schedule.
  Conversely, an actual fresh finite-depth schedule satisfying the geometric and
  PDE admissibility constraints would be a real exit-II candidate. No such
  schedule is constructed here. Follow-up correction: the summable sequence
  requires beta_n to shrink with n, hence requires growing scale depth. Under a
  uniform finite-depth bound K_n=log_2(1/beta_n)<=K_*, beta_n>=2^{-K_*} and the
  geometric-demand series diverges. Thus this note's summable example is a
  growing-depth/upscale-cascade obstruction, not a bounded finite-depth escape.
---

# Finite-depth bath: energy-only obstruction

## 1. Physical object

The infinite bath chain is one way the crowd can try to hold a producer. A
second way is finite-depth leverage: each record event is held by a bath of
bounded outer depth, and the top holder is supplied by already present
large-scale strain or by a fresh outer structure.

The local one-holder note already records the dangerous fact:
\[
  \frac{E_{\rm bath}}{E_{\rm prod}}\sim\beta^q,
  \qquad q=\frac85
  \tag{FDB.1}
\]
in the filed scaling model. This ratio tends to zero as the holder becomes
large compared to the producer.

The question here is narrower: can finite total energy alone rule out
infinitely many finite-depth bath-funded record events?

## 2. Event-index energy series

Let \(W_n\) be the production or record-work scale of the \(n\)-th event. Let
\(\beta_n\in(0,1)\) be the producer-to-holder small parameter at that event. In
the one-holder model, the committed fresh holder energy has the form
\[
  H_n = C\,W_n\beta_n^q.
  \tag{FDB.2}
\]

For a record ladder, the hard case is geometric demand. Write
\[
  W_n = W_0 2^n.
  \tag{FDB.3}
\]

Then
\[
  H_n = C W_0\,2^n\beta_n^q.
  \tag{FDB.4}
\]

Finite total fresh-holder energy is the series condition
\[
  \sum_n 2^n\beta_n^q < \infty.
  \tag{FDB.5}
\]

This is the finite-depth analogue of the bath-recursion summability criterion,
but indexed by record events rather than by one infinite holder chain.

## 3. Counterexample to energy-only starvation

For any \(\epsilon>0\), choose
\[
  \beta_n = 2^{-(1+\epsilon)n/q}.
  \tag{FDB.6}
\]

Then
\[
  2^n\beta_n^q
  =
  2^n 2^{-(1+\epsilon)n}
  =
  2^{-\epsilon n},
  \tag{FDB.7}
\]
and therefore
\[
  \sum_n H_n
  =
  CW_0\sum_n2^{-\epsilon n}<\infty.
  \tag{FDB.8}
\]

Thus a proof that uses only finite initial energy and the local one-holder
ratio cannot exclude finite-depth bath funding. The holder scale can separate
fast enough from the producer scale to make the fresh-holder costs summable
even while the record demand grows geometrically.

## 4. What this decides

This kills one possible composition shortcut:

\[
  \text{geometric record demand}
  \quad+\quad
  \text{finite total energy}
  \quad\not\Rightarrow\quad
  \text{finite-depth bath starvation}.
  \tag{FDB.9}
\]

The finite-depth bath branch is not automatically consumed by energy
bookkeeping. It must be decided by one of the following stronger mechanisms.

First, a geometric admissibility theorem could force
\[
  \sum_n 2^n\beta_n^q=\infty
  \tag{FDB.10}
\]
on every record-producing finite-depth schedule.

Second, the holder costs could be allocated as no-recount same-packet Gate-8
tax, in which case the K3 toll-funding and row-composition reductions apply.

Third, reuse of the same bath could force tracking/depletion cost rather than a
fresh disjoint holder series. Then the branch returns to node-sitting,
custody, or the up-scale bath recursion.

Fourth, one could exhibit an actual PDE schedule with fresh finite-depth
holders satisfying the summable series and maintaining production. That would
be a real evasion candidate.

Follow-up correction:
`mpp-forward-gold-finite-depth-beta-depth-correction-20260706.md`
separates bounded finite depth from shrinking-\(\beta_n\) depth. Uniform
finite depth means \(K_n=\log_2(1/\beta_n)\le K_*\), so
\(\beta_n\ge2^{-K_*}\). Then geometric record demand forces
\[
  H_n\gtrsim 2^n2^{-qK_*},
\]
and \(\sum_nH_n\) diverges. The summable example in this note has
\(K_n=(1+\epsilon)n/q\), so it is a growing-depth/upscale-cascade threat, not
a bounded finite-depth threat.

## 5. Four-sentence result

Energy-only starvation fails if \(\beta_n\) is allowed to shrink with \(n\).
If the \(n\)-th record event costs \(H_n\sim W_n\beta_n^q\) and \(W_n\sim2^n\),
then choosing \(\beta_n=2^{-(1+\epsilon)n/q}\) makes
\[
  \sum_n H_n<\infty.
\]
But that choice has depth \(K_n=(1+\epsilon)n/q\), so it is not uniformly
finite-depth. The bounded finite-depth branch is killed; the surviving threat
is growing-depth upscale bath construction, same-packet allocation failure, or
reuse/tracking evasion.
