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
  First resolution unit on sheet 1, pending re-gate; the sheet is NOT
  resolved here - it is REDUCED to one inequality at the window's low
  edge, with the carry above it displayed. (THE MONOTONE CARRY) The
  required side is BOUNDED: T_req(N) = ln 2 + N ln c*(2^(-1/N)) rises
  from zero at two steps toward its limit of half a log-two - bounded
  above by half a log-two for every N (the filed composition limit).
  The delivered side is SUPERLINEAR IN THE SATURATING REGIME: T_del(N)
  = N b(Lambda(N)) with b nondecreasing in Lambda (filed monotonicity)
  and Lambda increasing in N (the square-root law); hence for all
  N >= 3,  T_del(N) >= (N/3) T_del(3) >= T_del(3).  Therefore: IF
  T_del(3) >= (ln 2)/2, THEN T_del(N) >= T_req(N) for every N in the
  window simultaneously - the bounded requirement is beaten everywhere
  by the value at the low edge alone. THE WHOLE MIDDLE WINDOW REDUCES
  TO ONE DISPLAYED INEQUALITY AT N = 3:
  3 sigma_min [1 - exp(-(Lambda(3) - ln(1/theta))_+)] >= (ln 2)/2,
  with Lambda(3) = gamma_home c_diff sqrt(3/ln 2). (THE CRUX, honestly
  located) Since sigma_min exceeds one-half (the cleared drain-share
  floor), the prefactor 3 sigma_min exceeds three-halves, which
  exceeds half a log-two by more than a factor of four - so the
  inequality holds IF AND ONLY IF the saturation factor at the low
  edge is not tiny: explicitly, it suffices that
  (Lambda(3) - ln(1/theta))_+ >= ln(4/3)-scale - i.e. the low-edge
  exponent clears the seed logarithm by an exact margin. The entire
  middle window now hangs on ONE seed-versus-exponent inequality at
  its low edge - the rectification note's structural threshold asked
  at one specific place, in fully filed symbols: gamma_home (one minus
  the bracket deficit at the half-min width, around the cleared
  identity), c_diff (the exact difference-factor constant), theta (the
  displayed amplitude-split choice). RESOLUTION PATH, stated: expand
  the three symbols from their filed closed forms and attempt the sign
  by exact means; the three honest exits stand - and if this ONE
  inequality resists symbolically, the interval pass's entire job is
  ONE COMPARISON AT ONE POINT, the narrowest chapter 10 the campaign
  has ever stated. (SHEET 2 STATUS) The poor-horn line's five-symbol
  expansion is queued as the parallel unit with the same procedure;
  its structure (a product of cleared floors against an octave form)
  has no analogue of the seed threshold and is expected to be the
  easier sheet - expectation labeled, not leaned on. PRESS POINTS:
  the monotone-carry display (N/3 factor - one line from b's
  monotonicity and Lambda's increase); the three-halves versus half-
  log-two line (exact fraction comparison, lane currency). Filed is
  not cleared. No closure claimed.
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
