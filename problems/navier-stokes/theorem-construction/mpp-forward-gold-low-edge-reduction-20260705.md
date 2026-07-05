---
theorem_id: forward-gold-low-edge-reduction-20260705
status: codex-regated-low-edge-sufficient-not-equivalent
created: 2026-07-05
problem: navier-stokes
route: forward-gold / THE SYMBOLIC COMPARISONS / sheet 1 resolution, part one
authorship: Claude (Fable), 2026-07-05. Physical story Thomas Birnie:
  the enemy's whole middle game stands or falls at its opening move -
  every later chop only slows its relay further against a tax that
  only grows.
completion_truth: >-
  Codex re-gated this note. The monotone carry is accepted as a
  sufficient reduction: if T_del(3) >= (log 2)/2, then
  T_del(N) >= T_req(N) throughout the named N-window. This is not an
  equivalence, and failure at N=3 does not prove the whole middle
  window fails or reduce an interval pass to one point without an
  additional worst-ratio lemma. The exact sufficient seed-margin
  threshold is D_3 >= -log(1 - (log 2)/(6 sigma_min)), with
  D_3 = (Lambda(3)-log(1/theta))_+. Current open items: prove that
  exact low-edge sufficient inequality, or prove a worst-ratio lemma
  if one-point interval fallback is claimed after low-edge failure;
  expand Sheet 2; chapter 10. Filed is not cleared beyond the
  sufficient reduction. No closure claimed.
---

# The low-edge reduction

## Codex re-gate update, same date

Codex re-gate filed at
`mpp-forward-gold-codex-low-edge-regate-20260705.md`. The monotone
carry is accepted as a sufficient condition:
\[
T_{\rm del}(3)\ge\frac{\log2}{2}
\quad\Longrightarrow\quad
T_{\rm del}(N)\ge T_{\rm req}(N)
\]
for every \(N\ge3\) in the named window. It is not an equivalence.
Failure of the low-edge sufficient condition does not by itself prove
that the middle window fails, and it does not reduce an interval pass
to one point without an additional worst-ratio lemma. The exact
low-edge seed margin is
\[
D_3\ge
-\log\left(1-\frac{\log2}{6\sigma_{\min}}\right),
\qquad
D_3=(\Lambda(3)-\log(1/\theta))_+.
\]
The loose "ln(4/3)-scale" language is superseded by this threshold.
Filed is not cleared beyond the sufficient reduction.

## 1. The monotone carry

Required: bounded by half a log-two for every chop number (the filed
composition limit). Delivered: N times a nondecreasing function of an
increasing exponent - so T_del(N) >= (N/3) T_del(3) for N >= 3. If
the low edge beats half a log-two, every chop number in the window is
beaten at once. One inequality carries the whole window.

## 2. The single inequality

  3 sigma_min [1 - exp(-(Lambda(3) - ln(1/theta))_+)] >= (ln 2)/2,
  Lambda(3) = gamma_home c_diff sqrt(3 / ln 2).

With sigma_min above one-half, the prefactor exceeds three-halves -
more than four times the requirement - so the question is ONLY
whether the saturation factor at the low edge is non-tiny: the
low-edge exponent must clear the seed logarithm by an exact margin.
The enemy's whole middle game stands or falls at its opening move.

## 3. What this makes of chapter 10

If the one inequality resolves symbolically: the middle window closes
and chapter 10 keeps only the calibration gates. If it resists: the
interval pass's entire job is ONE comparison at ONE point - the
narrowest chapter 10 ever stated. If it fails: the repair is faced at
one named place. Three exits, one line.

## 4. Register

Sheet 1 reduced to the low-edge inequality; monotone carry displayed;
sheet 2's expansion queued as the parallel unit. Press points: the
carry line; the exact fraction comparison. Filed is not cleared. No
closure claimed.
