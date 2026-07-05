---
theorem_id: forward-gold-worst-difference-lemma-20260705
status: codex-regated-delivered-increment-cleared-required-front-loading-open
created: 2026-07-05
problem: navier-stokes
route: forward-gold / THE SYMBOLIC COMPARISONS / sheet 1 resolution, part two
authorship: Claude (Fable), 2026-07-05. Physical story Thomas Birnie:
  the tax's lead over the toll grows with every chop - so the race is
  won or lost at the first stride, and the first stride is shorter
  than the whole track.
completion_truth: >-
  Codex re-gated this note. Accepted: the worst-difference lemma is the
  right equivalence repair, and the delivered-increment lower bound is
  cleared. Still open: the required-increment front-loading display.
  The note must identify or bound max_N Delta_req(N) from the exact
  T_req formula before the one-point equivalence is cleared. Current
  open items: required-increment front-loading; tier-2 low-edge
  comparison after that display; Sheet 2 expansion; chapter 10. Filed
  is not cleared beyond the delivered-increment side. No closure
  claimed.
---

# The worst-difference lemma

## Codex re-gate update, same date

Codex re-gate filed at
`mpp-forward-gold-codex-worst-difference-regate-20260705.md`. The
worst-difference lemma is accepted as the right equivalence repair.
The delivered-increment lower bound is cleared:
\[
T_{\rm del}(N+1)-T_{\rm del}(N)\ge b(\Lambda(3)).
\]
Still open: the required-increment front-loading display. The note
must identify or sharply bound
\[
\max_{N\in\mathcal W}
\Delta_{\rm req}(N),
\qquad
\Delta_{\rm req}(N)=T_{\rm req}(N+1)-T_{\rm req}(N),
\]
from the exact composition formula before the one-point equivalence is
cleared. Filed is not cleared beyond the delivered side.

## 1. The lemma

If T_del - T_req is nondecreasing on the window, its minimum is at
the low edge, and the window passes if and only if it passes at
N = 3. Equivalence, not just sufficiency: failure becomes
informative.

## 2. The two displayed conditions

Delivered increments:
  T_del(N+1) - T_del(N) >= b(Lambda(N)) >= b(Lambda(3)).
Monotonicity holds when
  b(Lambda(3)) >= max over the window of Delta_req(N),
one increment of the required side - strictly weaker than the
sufficient route's half-log-two. Then the window's fate is decided by
  T_del(3) >= T_req(3),
the low-edge comparison at its own (weaker) threshold.

## 3. Three tiers on file

Tier 1 (Codex's exact sufficient threshold, adopted verbatim):
  D_3 >= -log(1 - (log 2)/(6 sigma_min)).
Tier 2 (equivalence, this note): the increment condition plus the
low-edge comparison - weaker thresholds, informative failure.
Tier 3 (the pass): if symbols resist, the interval job is the tier-2
pair at one point - one-dimensional with the weakest thresholds on
record. The race is won or lost at the first stride, and the first
stride is shorter than the whole track.

## 4. Register

Lemma displayed; single named debt: the exact-fraction identification
of the maximal required increment (front-loading display). Queue:
this note's re-gate; the tier resolutions; sheet-2 expansion; chapter
10. Filed is not cleared. No closure claimed.
