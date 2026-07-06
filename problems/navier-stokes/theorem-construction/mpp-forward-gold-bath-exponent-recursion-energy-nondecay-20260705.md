---
theorem_id: forward-gold-bath-exponent-recursion-energy-nondecay-20260705
status: cheap-bath-exponent-recursion-energy-nondecay-proved-scaling-model
created: 2026-07-05
problem: navier-stokes
route: forward-gold / confinement constant / dense crowd bath recursion
target_object:
  - BathExponentRecursion.NonDecay
  - CheapInsideBath.InfiniteChain.NO
  - EOctVanishing.ScalingModelObstruction
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bath-steady-or-tracking-dichotomy-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-regress-demand-cascade-two-channel-display-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-dense-crowd-two-channel-regate-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-exact-matrix-node-sitting-correction-tracking-floor-merge-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-one-holder-amplitude-floor-bath-ratio-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bath-recursion-summability-criterion-20260706.md
completion_truth: >-
  Exact calculation inside the already-filed scaling recursion; not a
  full bath theorem. Under the cheap-bath law recorded in BD2/BD3 and
  the dense-crowd exponent cascade beta_{n+1}=beta_n^(4/5), the
  per-tier cheap energy ratio is e_n=beta_n^(8/5). Then
  product_{j<N} e_j = beta_0^{8(1-(4/5)^N)}, so the holder energy at
  level N tends to beta_0^8 times the starting energy, not to zero.
  Hence the infinite up-scale cheap-bath chain has infinite total
  energy in this scaling model, and e_n tends to one rather than to
  zero. This kills the naive claim that the single-tier
  beta^(8/5)-cheap bath self-finances indefinitely under the same
  exponent recursion. Follow-up summability criterion types the remaining
  infinite-chain escape: an exact matrix/node-sitting schedule must make
  sum_N exp(-q sum_{j<N} x_j) finite after writing beta_n=e^{-x_n}. Thus
  constants inside any shallowing power law 0<p<1 cannot decide the escape.
  Remaining open: a non-shallowing or non-power schedule satisfying that
  criterion, finite-depth outer-scale escape, allocation of the resulting
  tracking floor into Gate 8, and the full crowd/composition theorem. No
  confinement-constant decision or MPP closure is claimed.
---

# Bath exponent recursion: cheap single tier does not compose

## 1. Physical object

A small producing pair can be held cheaply for one tier by a smooth
strain bath: the bath uses weaker strain than the pair's own working
strain, and the filed BD2 scaling says its energy can be only
\(\beta^{8/5}\) of the pair energy.

The question is whether that cheap tier can be repeated upward forever.
The bath is itself a field configuration; holding it requires the next
bath. The same filed dense-crowd scaling gives the exponent update

\[
  \beta_{n+1}=\beta_n^{4/5}.
  \tag{BEN.1}
\]

This note tests that exact recursion.

## 2. Energy recurrence

Let \(E_n\) be the committed energy at level \(n\). The BD2 cheap-bath
energy ratio is

\[
  \frac{E_{n+1}}{E_n}
  =
  \beta_n^{8/5}.
  \tag{BEN.2}
\]

Iterating (BEN.1),

\[
  \beta_n=\beta_0^{(4/5)^n}.
  \tag{BEN.3}
\]

Therefore

\[
  \frac{E_N}{E_0}
  =
  \prod_{j=0}^{N-1}\beta_j^{8/5}
  =
  \beta_0^{(8/5)\sum_{j=0}^{N-1}(4/5)^j}
  =
  \beta_0^{8(1-(4/5)^N)}.
  \tag{BEN.4}
\]

For \(0<\beta_0<1\),

\[
  E_N\longrightarrow E_0\beta_0^8>0.
  \tag{BEN.5}
\]

The holder energies do not decay to zero.

## 3. Consequence for the infinite chain

The total committed up-scale energy in this scaling model satisfies

\[
  \sum_{n\ge0}E_n=\infty,
  \tag{BEN.6}
\]

because the summands tend to the positive limit \(E_0\beta_0^8\).
Equivalently, the per-octave recursion cost

\[
  e_n:=\frac{E_{n+1}}{E_n}
  =
  \beta_0^{(8/5)(4/5)^n}
  \tag{BEN.7}
\]

tends to \(1\), not to \(0\).

Thus the one-tier cheap-bath threat does not self-finance through the
same exponent cascade. It is cheap at finite depth; it is not an
infinite finite-energy holding construction under (BEN.1)-(BEN.2).

## 4. What this kills and what it leaves

Killed in the filed scaling model: the naive construction where each
larger bath is cheaper by the same mechanism and the up-scale chain
has summable energy.

Still open: the exact joint transfer matrix may admit a node-sitting or
co-optimized schedule whose induced \(x_n\) sequence satisfies the
summability criterion
\[
  \sum_N \exp\!\left(-q\sum_{j<N}x_j\right)<\infty.
\]
Finite outer-scale depth may also move the question into composition rather
than an infinite-chain energy sum; and the positive tracking cost must still
be transcribed into the same-packet Gate-8 row economy before it starves
records.

## 5. Four-sentence result

The cheap bath is cheap for one tier because its energy ratio is
\(\beta^{8/5}\). But the filed dense-crowd recursion changes the next
small parameter to \(\beta^{4/5}\), so the cheap ratios multiply to
\(\beta_0^8\), not to zero. The absolute holder energies therefore
approach a positive fraction of the starting energy, and the infinite
up-scale chain has infinite total energy in this scaling model. The
remaining bath escape must change the exponent law through the exact
matrix/node-sitting schedule or become a finite-depth composition
problem.

Follow-up:
`mpp-forward-gold-one-holder-amplitude-floor-bath-ratio-obstruction-20260706.md`
uses this same recursion to kill the separate one-holder amplitude-floor target.
The ratio \(\beta^{8/5}\) is cheap enough to make the local floor vanish; this
note's nondecay computation is exactly why that one-tier cheapness still does
not by itself produce an infinite finite-energy holding chain.

Second follow-up:
`mpp-forward-gold-bath-recursion-summability-criterion-20260706.md`
gives the general criterion behind this computation. For
\(\beta_n=e^{-x_n}\) and \(e_n=\beta_n^q\), the total bath energy is finite
exactly when
\[
  \sum_N\exp\!\left(-q\sum_{j<N}x_j\right)<\infty.
\]
All shallowing power laws \(x_{n+1}=p x_n\), \(0<p<1\), including \(p=4/5\),
fail this criterion.
